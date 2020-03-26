Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A036B194623
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 19:10:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSkqE0QnUHqi5EH4/WwzGAW6LdA2am/LgqGVbUHBexM=; b=cpFtM4GN1WtsM0
	aDkux3U+xRMU8LRGYJpu5t8h7Uxde/bdZkJbWota79juF1DI7INzGnRpBRakQGsfYdn/osN86BDwH
	lowuNXu3ho7kCg56Lq/HZGnqgMBlrShel1GIHVNYLkV+p7swMe18bcqSbbMZyKhHNVZd0kiOq3uAl
	vByEOTeEEoGHr1zBh/uTnFh/cmANoPiIFDHa4/zfF/UuBDoLWUheRXvFLJyhle+94INuVOQVJKWvI
	+rCnGjb0Ce1EIINKbf/ghdI1mxp34uEsPDoOB2lh2IIlWHRY/9lhkGokj3KvtyIgR+SALuBut/ZZH
	JIKKdYz0BLwCbkiDxUvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWxh-0001Km-4P; Thu, 26 Mar 2020 18:10:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvg-00076h-7z; Thu, 26 Mar 2020 18:08:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C45C7FA;
 Thu, 26 Mar 2020 11:08:31 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E19AB3F71E;
 Thu, 26 Mar 2020 11:08:29 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kexec@lists.infradead.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot memory
 resource names
Date: Thu, 26 Mar 2020 18:07:29 +0000
Message-Id: <20200326180730.4754-3-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110832_347102_8B5576E6 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Memory added to the system by hotplug has a 'System RAM' resource created
for it. This is exposed to user-space via /proc/iomem.

This poses problems for kexec on arm64. If kexec decides to place the
kernel in one of these newly onlined regions, the new kernel will find
itself booting from a region not described as memory in the firmware
tables.

Arm64 doesn't have a structure like the e820 memory map that can be
re-written when memory is brought online. Instead arm64 uses the UEFI
memory map, or the memory node from the DT, sometimes both. We never
rewrite these.

Allow an architecture to specify a different name for these hotplug
regions.

Signed-off-by: James Morse <james.morse@arm.com>
---
 mm/memory_hotplug.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 0a54ffac8c68..69b03dd7fc74 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -42,6 +42,10 @@
 #include "internal.h"
 #include "shuffle.h"
 
+#ifndef MEMORY_HOTPLUG_RES_NAME
+#define MEMORY_HOTPLUG_RES_NAME "System RAM"
+#endif
+
 /*
  * online_page_callback contains pointer to current page onlining function.
  * Initially it is generic_online_page(). If it is required it could be
@@ -103,7 +107,7 @@ static struct resource *register_memory_resource(u64 start, u64 size)
 {
 	struct resource *res;
 	unsigned long flags =  IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
-	char *resource_name = "System RAM";
+	char *resource_name = MEMORY_HOTPLUG_RES_NAME;
 
 	if (start + size > max_mem_size)
 		return ERR_PTR(-E2BIG);
-- 
2.25.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
