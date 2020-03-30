Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB05198331
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 20:16:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zPbCsOqZcNfRYXPwRlWChiOmFdik3AWnZSOgmnedXdY=; b=BuhyBbZ6Of7Vq9
	e6UJH2riUAPQ7nxYghabb28GEHB2qCJTpWnn6dEjV1sINLRzPcEw2DScSfvtCGThtqIRb2x8fwWCQ
	hv1tcZfDVRwOHebgCSmQ3E1RcaSjJnjRpN0E4nTDKqsnQSINIZHZdjVDzB3w+vatc3ikUov0bxxkD
	jJCqxfd7kEjVYIjXg8NCZADW7v9RLMxu5vRqv4H8LSB3LMFVrxzBtoqVPMYqD3H1QDkKCVILSAYSD
	DOJ4Ca4ck3AfeeqGCyQopufFEuigfNy+G53QUUVj7fFaK2ZSD2vyNgMzPObb847AgzeKhskL4aouA
	tIEzQLSxOP8mjuQYkDTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIyxm-00022D-Tv; Mon, 30 Mar 2020 18:16:42 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIyxY-0001s3-UU
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 18:16:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585592187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=7DjDFsYHR6g0Apa3zR6vDBd2N+92jMQpUXuk9YaC+4o=;
 b=Nmkk0VrX4CtywxIav8/i1C5k9XkMwGAX34WWaPJ4wZer0rVOBoeNFXVQGkV5WOZ7k0xDk7
 bpRodFhqzwDevWYDTpbsksM5xvAeePhG/bq9NFUhBmT7WfJ6n9Z8xw6CpPUXZHndXsVBF4
 u9BdpYlTv5qAvCh0PsBmGZVslJbHKRQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474-MQB-bG8gPSmah6nbFvMhxw-1; Mon, 30 Mar 2020 14:16:26 -0400
X-MC-Unique: MQB-bG8gPSmah6nbFvMhxw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0694ADB60;
 Mon, 30 Mar 2020 18:16:25 +0000 (UTC)
Received: from kasong-rh-laptop.redhat.com (ovpn-12-175.pek2.redhat.com
 [10.72.12.175])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9806797B01;
 Mon, 30 Mar 2020 18:16:19 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] crash_dump: remove saved_max_pfn
Date: Tue, 31 Mar 2020 02:15:44 +0800
Message-Id: <20200330181544.1595733-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_111629_175774_0ED9AD97 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kairui Song <kasong@redhat.com>, kexec@lists.infradead.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Eric Biederman <ebiederm@xmission.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This variable is no longer used.

saved_max_pfn was originally introduce in commit 92aa63a5a1bf ("[PATCH]
kdump: Retrieve saved max pfn"), used to make sure that user does not
try to read the physical memory beyond saved_max_pfn. But since
commit 921d58c0e699 ("vmcore: remove saved_max_pfn check")
it's no longer used for the check.

Only user left is Calary IOMMU, which start using it from
commit 95b68dec0d52 ("calgary iommu: use the first kernels TCE tables
in kdump"). But again, recently in commit 90dc392fc445 ("x86: Remove
the calgary IOMMU driver"), Calary IOMMU is removed and this variable
no longer have any user.

So just remove it.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 arch/x86/kernel/e820.c     | 8 --------
 include/linux/crash_dump.h | 2 --
 kernel/crash_dump.c        | 6 ------
 3 files changed, 16 deletions(-)

diff --git a/arch/x86/kernel/e820.c b/arch/x86/kernel/e820.c
index c5399e80c59c..4d13c57f370a 100644
--- a/arch/x86/kernel/e820.c
+++ b/arch/x86/kernel/e820.c
@@ -910,14 +910,6 @@ static int __init parse_memmap_one(char *p)
 		return -EINVAL;
 
 	if (!strncmp(p, "exactmap", 8)) {
-#ifdef CONFIG_CRASH_DUMP
-		/*
-		 * If we are doing a crash dump, we still need to know
-		 * the real memory size before the original memory map is
-		 * reset.
-		 */
-		saved_max_pfn = e820__end_of_ram_pfn();
-#endif
 		e820_table->nr_entries = 0;
 		userdef = 1;
 		return 0;
diff --git a/include/linux/crash_dump.h b/include/linux/crash_dump.h
index 4664fc1871de..bc156285d097 100644
--- a/include/linux/crash_dump.h
+++ b/include/linux/crash_dump.h
@@ -97,8 +97,6 @@ extern void unregister_oldmem_pfn_is_ram(void);
 static inline bool is_kdump_kernel(void) { return 0; }
 #endif /* CONFIG_CRASH_DUMP */
 
-extern unsigned long saved_max_pfn;
-
 /* Device Dump information to be filled by drivers */
 struct vmcoredd_data {
 	char dump_name[VMCOREDD_MAX_NAME_BYTES]; /* Unique name of the dump */
diff --git a/kernel/crash_dump.c b/kernel/crash_dump.c
index 9c23ae074b40..92da32275af5 100644
--- a/kernel/crash_dump.c
+++ b/kernel/crash_dump.c
@@ -5,12 +5,6 @@
 #include <linux/errno.h>
 #include <linux/export.h>
 
-/*
- * If we have booted due to a crash, max_pfn will be a very low value. We need
- * to know the amount of memory that the previous kernel used.
- */
-unsigned long saved_max_pfn;
-
 /*
  * stores the physical address of elf header of crash image
  *
-- 
2.25.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
