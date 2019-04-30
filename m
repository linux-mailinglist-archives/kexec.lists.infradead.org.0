Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C316F195
	for <lists+kexec@lfdr.de>; Tue, 30 Apr 2019 09:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aeXy6oVkg9Ihs9n3HO8JOO9c0yQSC1FF9wbOzpvClUs=; b=TYkNPttuiopdTXocSbC9ehDQSk
	P+MzzvSo2rxyWuOEUA9NuLt9MWavjOTm84Ywt+yjXZ7s4XedLbziXJOeR3cs3iAbmdQyJFRe7TN2d
	RFO3UsxCwjjgjyzKsQiGiM5Jd/ipokUsoO84/qX7eN1mCCrKrdYINUlSMggVBGP89an64JhQf5Vjk
	rsWwTxbUEUpVeBgesm3nM5vKcNrRBHrf3FFqtd1Dgw/KBkRNgeiU+TWWUlblDgf0N1nNARviuCpNs
	ael6WtMbe9IW0dZb7u5nrIg3/4cYc3TBnLjp8s5v8z160VdEbBpPOFCUFiNOWNWG/DHdGLAUJtkYq
	aCMUZ7fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNRd-0002dG-LC; Tue, 30 Apr 2019 07:44:53 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNRa-0002cC-Of
 for kexec@lists.infradead.org; Tue, 30 Apr 2019 07:44:52 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 74112811A9;
 Tue, 30 Apr 2019 07:44:50 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-43.pek2.redhat.com
 [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD13188EB;
 Tue, 30 Apr 2019 07:44:41 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/3 v3] x86/kexec: Do not map the kexec area as decrypted when
 SEV is active
Date: Tue, 30 Apr 2019 15:44:19 +0800
Message-Id: <20190430074421.7852-2-lijiang@redhat.com>
In-Reply-To: <20190430074421.7852-1-lijiang@redhat.com>
References: <20190430074421.7852-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Tue, 30 Apr 2019 07:44:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004450_842605_3FD42CE4 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When a virtual machine panic, also need to dump its memory for analysis.
But, for the SEV virtual machine, the memory is encrypted. To support
the SEV kdump, these changes would be necessary, otherwise, it will not
work.

Lets consider the following situations:

[1] How to load the images(kernel and initrd) when SEV is enabled in the
    first kernel?

    Based on the amd-memory-encryption.txt and SEV's patch series, the
    boot images must be encrypted before guest(VM) can be booted(Please
    see Secure Encrypted Virutualization Key Management 'Launching a
    guest(usage flow)'). Naturally use the similar way to load the images
    (kernel and initrd) to the crash reserved areas, and these areas are
    encrypted when SEV is active.

    That is to say, when SEV is active in the first kernel, need to load
    the kernel and initrd to the encrypted areas, so i made the following
    changes:

    [a] Do not map the kexec area as decrypted when SEV is active.
        Currently, the arch_kexec_post_{alloc,free}_pages() unconditionally
        maps the kexec areas as decrypted. Obviously, for the SEV case, it
        can not work well, need to improve them.

    [b] Set the C-bit in the identity map page table when SEV is active.
        Because the second kernel images(kernel and initrd) are loaded to
        the encrypted areas, in order to correctly access these encrypted
        memory(pages), need to set the C-bit in the identity mapping page
        table when kexec builds the identity mapping page table.

[2] How to dump the old memory in the second kernel?

    Here, it is similar to the SME kdump, if SEV was enabled in the first
    kernel, the old memory is also encrypted, the old memory has to be
    remapped with memory encryption mask in order to access it properly.

    [a] The ioremap_encrypted() is still necessary.
        Used to remap the old memory with memory encryption mask.

    [b] Enable dumping encrypted memory when SEV was active.
        Because the whole memory is encrypted in the first kernel when SEV
        is enabled, that is to say, the notes and elfcorehdr are also
        encrypted, and they are also saved to the encrypted memory.
        Following commit 992b649a3f01 ("kdump, proc/vmcore: Enable kdumping
        encrypted memory with SME enabled"), both SME and SEV cases need to
        be considered and modified correctly.

As above mentioned, currently, the arch_kexec_post_{alloc,free}_pages()
unconditionally maps the kexec area as decrypted. Lets make sure that
arch_kexec_post_{alloc,free}_pages() does not clear the memory encryption
mask from the kexec area when SEV is active.

Co-developed-by: Brijesh Singh <brijesh.singh@amd.com>
Signed-off-by: Brijesh Singh <brijesh.singh@amd.com>
Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 arch/x86/kernel/machine_kexec_64.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
index ceba408ea982..f60611531d17 100644
--- a/arch/x86/kernel/machine_kexec_64.c
+++ b/arch/x86/kernel/machine_kexec_64.c
@@ -559,18 +559,33 @@ void arch_kexec_unprotect_crashkres(void)
 	kexec_mark_crashkres(false);
 }
 
+/*
+ * During a traditional boot under SME, SME will encrypt the kernel,
+ * so the SME kexec kernel also needs to be un-encrypted in order to
+ * replicate a normal SME boot.
+ * During a traditional boot under SEV, the kernel has already been
+ * loaded encrypted, so the SEV kexec kernel needs to be encrypted in
+ * order to replicate a normal SEV boot.
+ */
 int arch_kexec_post_alloc_pages(void *vaddr, unsigned int pages, gfp_t gfp)
 {
+	if (sev_active())
+		return 0;
+
 	/*
 	 * If SME is active we need to be sure that kexec pages are
 	 * not encrypted because when we boot to the new kernel the
 	 * pages won't be accessed encrypted (initially).
 	 */
 	return set_memory_decrypted((unsigned long)vaddr, pages);
+
 }
 
 void arch_kexec_pre_free_pages(void *vaddr, unsigned int pages)
 {
+	if (sev_active())
+		return;
+
 	/*
 	 * If SME is active we need to reset the pages back to being
 	 * an encrypted mapping before freeing them.
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
