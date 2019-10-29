Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E01BE7E70
	for <lists+kexec@lfdr.de>; Tue, 29 Oct 2019 03:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fQf7oLFa0IowarKuPMaG2vGag0PyTiqyVHsBtN7P8D0=; b=mx1yq/8UQ/+bLNRBzIboUcq7Wu
	tOQO+/oibXbRNsz6JAU7PJsJEe7UlhQSMBCnOUFNxA+GQSgzttoPn1514RV/dvix62Nhii/ThlGj2
	xqXi4Q2GwtysB2y8y2lAJnNX7rfk2zmGl0QW/AX2UTzDmCOEJq4MP/rLfjMpYxloqOnRugpaHUgDC
	4PEeJyTgWozTFn8yrgb7lv/QTi1365gXyxrx1RqqB6Hj4gfy3KK6DriRHQxwC8Dmf1K0Gi8bT8z1F
	4JLOBzKh0mpyrBxuhGwNn6HV3erK8pgHdu3dsRFxjoQ9ZgSH/3NV8AWlPeKuIvACLHssD3Qyhwt7v
	VI8qmhXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPGyw-0002yF-US; Tue, 29 Oct 2019 02:11:38 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPGyt-0002x7-Te
 for kexec@lists.infradead.org; Tue, 29 Oct 2019 02:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572315094;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hnh/cEOnCtz15+Vm+cdDfXEaQONmAZZKvLF31txQOks=;
 b=KDApa/4fr0daAX0WJyXFtbwwG7b35Ylexk1Vg9mr7suwXMf1jNsTyu6/Wx5KtmFNXbQmXP
 hGHRrFRvXVwbFnBGA2SiA9vpt7bVmo8bYGfAnbdvWaOzM0rJD5kkQcMAWpDqa0OVlLV4cm
 Nc34Rox98v17YLE/5IG+sIJ1el8Vu2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-qwYsCiBGN7Ct6PQCfzJ_-g-1; Mon, 28 Oct 2019 22:11:30 -0400
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 14F93107AD28;
 Tue, 29 Oct 2019 02:11:29 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-41.pek2.redhat.com
 [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4B83A1000180;
 Tue, 29 Oct 2019 02:11:17 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2 v7] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Date: Tue, 29 Oct 2019 10:10:58 +0800
Message-Id: <20191029021059.22070-2-lijiang@redhat.com>
In-Reply-To: <20191029021059.22070-1-lijiang@redhat.com>
References: <20191029021059.22070-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-MC-Unique: qwYsCiBGN7Ct6PQCfzJ_-g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_191136_034635_2CDF31C2 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Kdump kernel will reuse the first 640k region because the real mode
trampoline has to work in this area. When the vmcore is dumped, the
old memory in this area may be accessed, therefore, kernel has to
copy the contents of the first 640k area to a backup region so that
kdump kernel can read the old memory from the backup area of the
first 640k area, which is done in the purgatory().

But, the current handling of copying the first 640k area runs into
problems when SME is enabled, kernel does not properly copy these
old memory to the backup area in the purgatory(), thereby, kdump
kernel reads out the encrypted contents, because the kdump kernel
must access the first kernel's memory with the encryption bit set
when SME is enabled in the first kernel. Please refer to this link:

Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204793

Finally, it causes the following errors, and the crash tool gets
invalid pointers when parsing the vmcore.

crash> kmem -s|grep -i invalid
kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
crash>

To avoid the above errors, when the crashkernel option is specified,
lets reserve the remaining low 1MiB memory(after reserving real mode
memory) so that the allocated memory does not fall into the low 1MiB
area, which makes us not to copy the first 640k content to a backup
region in purgatory(). This indicates that it does not need to be
included in crash dumps or used for anything except the processor
trampolines that must live in the low 1MiB.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 arch/x86/include/asm/crash.h |  6 ++++++
 arch/x86/kernel/crash.c      | 15 +++++++++++++++
 arch/x86/realmode/init.c     |  2 ++
 3 files changed, 23 insertions(+)

diff --git a/arch/x86/include/asm/crash.h b/arch/x86/include/asm/crash.h
index 0acf5ee45a21..3e966a3dc823 100644
--- a/arch/x86/include/asm/crash.h
+++ b/arch/x86/include/asm/crash.h
@@ -8,4 +8,10 @@ int crash_setup_memmap_entries(struct kimage *image,
 		struct boot_params *params);
 void crash_smp_send_stop(void);
 
+#ifdef CONFIG_KEXEC_CORE
+void __init kexec_reserve_low_1MiB(void);
+#else
+static inline void __init kexec_reserve_low_1MiB(void) { }
+#endif
+
 #endif /* _ASM_X86_CRASH_H */
diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
index eb651fbde92a..144f519aef29 100644
--- a/arch/x86/kernel/crash.c
+++ b/arch/x86/kernel/crash.c
@@ -24,6 +24,7 @@
 #include <linux/export.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/memblock.h>
 
 #include <asm/processor.h>
 #include <asm/hardirq.h>
@@ -39,6 +40,7 @@
 #include <asm/virtext.h>
 #include <asm/intel_pt.h>
 #include <asm/crash.h>
+#include <asm/cmdline.h>
 
 /* Used while preparing memory map entries for second kernel */
 struct crash_memmap_data {
@@ -68,6 +70,19 @@ static inline void cpu_crash_vmclear_loaded_vmcss(void)
 	rcu_read_unlock();
 }
 
+/*
+ * When the crashkernel option is specified, only use the low
+ * 1MiB for the real mode trampoline.
+ */
+void __init kexec_reserve_low_1MiB(void)
+{
+	if (cmdline_find_option(boot_command_line, "crashkernel",
+				NULL, 0) > 0) {
+		memblock_reserve(0, 1<<20);
+		pr_info("Reserving the low 1MiB of memory for crashkernel\n");
+	}
+}
+
 #if defined(CONFIG_SMP) && defined(CONFIG_X86_LOCAL_APIC)
 
 static void kdump_nmi_callback(int cpu, struct pt_regs *regs)
diff --git a/arch/x86/realmode/init.c b/arch/x86/realmode/init.c
index 7dce39c8c034..b8bbd0017ca8 100644
--- a/arch/x86/realmode/init.c
+++ b/arch/x86/realmode/init.c
@@ -8,6 +8,7 @@
 #include <asm/pgtable.h>
 #include <asm/realmode.h>
 #include <asm/tlbflush.h>
+#include <asm/crash.h>
 
 struct real_mode_header *real_mode_header;
 u32 *trampoline_cr4_features;
@@ -34,6 +35,7 @@ void __init reserve_real_mode(void)
 
 	memblock_reserve(mem, size);
 	set_real_mode_mem(mem);
+	kexec_reserve_low_1MiB();
 }
 
 static void __init setup_real_mode(void)
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
