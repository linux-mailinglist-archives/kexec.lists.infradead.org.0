Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A99619461C
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 19:09:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k60fifo8a2rIAANzPSg+QijxT7sZOOmiW96XgF/VcYQ=; b=no9d7rXWouazmq
	lS/K9nkhs+kzMftnUykeUuPFKvvTXPv8D6yLiO8N5AvsSmImiDsLsiaihoXaiD9tuw4W3yRO8dXFR
	8xw4GyEsp/bJU9iljGX5K9aHrOpNvoVxSpJDkuv4YF+/Vo6Udor/H1Xh4nt5XFtbRZ6ribDy77f5A
	9BKv/rkGe5cTBv6de5aCtsm5et5c+zr04t/XtUeIFXt83UNZoR5x3njcMftYBzF1TaWzWxvf8GttF
	MLaU093ymiqGh9IZDvky1ye9a3NFHP0fapPBoyz8oRT4ZCzSMDQclm9NWXH9R5e6R1AhY13ocD8qk
	ab9aHjxasJ++0Z3kccow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWwu-00080J-5c; Thu, 26 Mar 2020 18:09:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvW-0006vg-3k; Thu, 26 Mar 2020 18:08:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E13227FA;
 Thu, 26 Mar 2020 11:08:18 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 90B6D3F71E;
 Thu, 26 Mar 2020 11:08:17 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kexec@lists.infradead.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental use
Date: Thu, 26 Mar 2020 18:07:27 +0000
Message-Id: <20200326180730.4754-1-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110822_275320_B9383F66 
X-CRM114-Status: GOOD (  13.28  )
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

Hello!

arm64 recently queued support for memory hotremove, which led to some
new corner cases for kexec.

If the kexec segments are loaded for a removable region, that region may
be removed before kexec actually occurs. This causes the first kernel to
lockup when applying the relocations. (I've triggered this on x86 too).

The first patch adds a memory notifier for kexec so that it can refuse
to allow in-use regions to be taken offline.


This doesn't solve the problem for arm64, where the new kernel must
initially rely on the data structures from the first boot to describe
memory. These don't describe hotpluggable memory.
If kexec places the kernel in one of these regions, it must also provide
a DT that describes the region in which the kernel was mapped as memory.
(and somehow ensure its always present in the future...)

To prevent this from happening accidentally with unaware user-space,
patches two and three allow arm64 to give these regions a different
name.

This is a change in behaviour for arm64 as memory hotadd and hotremove
were added separately.


I haven't tried kdump.
Unaware kdump from user-space probably won't describe the hotplug
regions if the name is different, which saves us from problems if
the memory is no longer present at kdump time, but means the vmcore
is incomplete.


These patches are based on arm64's for-next/core branch, but can all
be merged independently.

Thanks,

James Morse (3):
  kexec: Prevent removal of memory in use by a loaded kexec image
  mm/memory_hotplug: Allow arch override of non boot memory resource
    names
  arm64: memory: Give hotplug memory a different resource name

 arch/arm64/include/asm/memory.h | 11 +++++++
 kernel/kexec_core.c             | 56 +++++++++++++++++++++++++++++++++
 mm/memory_hotplug.c             |  6 +++-
 3 files changed, 72 insertions(+), 1 deletion(-)

-- 
2.25.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
