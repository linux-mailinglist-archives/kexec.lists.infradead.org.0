Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA44F197
	for <lists+kexec@lfdr.de>; Tue, 30 Apr 2019 09:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gm0ns394dkZTJbuuDlEO9shEtRpI9m6pLDzxcxSZQkg=; b=qaa9r2ofJ6veN02gQi5Vvlwh7E
	gyOOW3T0JRZiKzOfrg5fTyk2mnn9ivLpCl9NvVCGgptYmTzYQQGAjSqYuvUDEXpeg2Zv0YjHN2E3r
	dAcIN4Dv4XF6XG4kw7a1/cKloudB5BJhyCmjIZjB93VnI9RNbvwhMQi/sUTyODqdOJ8r1NyOT0Hda
	NlWVCKJMMilI3sRooRH23XRybpCa27hls/mwwrcic94gmnxlOWGekH7Nr3XSHaXwYVrayR/I3jvrC
	RccbwrhPLDFTRBo8wowBNTvvd+DZ3JiTM7SCE0stjRk2XkMjzvOFqLCQu0/DgfuPxY5XdroukG7iO
	a9uRh6sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNRq-0003Jh-NZ; Tue, 30 Apr 2019 07:45:06 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNRn-0002xG-EB
 for kexec@lists.infradead.org; Tue, 30 Apr 2019 07:45:04 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E168E3082A24;
 Tue, 30 Apr 2019 07:45:02 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-43.pek2.redhat.com
 [10.72.12.43])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A3E15799A;
 Tue, 30 Apr 2019 07:44:51 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/3 v3] x86/kexec: Set the C-bit in the identity map page
 table when SEV is active
Date: Tue, 30 Apr 2019 15:44:20 +0800
Message-Id: <20190430074421.7852-3-lijiang@redhat.com>
In-Reply-To: <20190430074421.7852-1-lijiang@redhat.com>
References: <20190430074421.7852-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 30 Apr 2019 07:45:03 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004503_503314_3F5FF247 
X-CRM114-Status: GOOD (  12.43  )
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

When SEV is active, the second kernel image is loaded into the
encrypted memory. Lets make sure that when kexec builds the
identity mapping page table it adds the memory encryption mask(C-bit).

Co-developed-by: Brijesh Singh <brijesh.singh@amd.com>
Signed-off-by: Brijesh Singh <brijesh.singh@amd.com>
Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 arch/x86/kernel/machine_kexec_64.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
index f60611531d17..11fe352f7344 100644
--- a/arch/x86/kernel/machine_kexec_64.c
+++ b/arch/x86/kernel/machine_kexec_64.c
@@ -56,6 +56,7 @@ static int init_transition_pgtable(struct kimage *image, pgd_t *pgd)
 	pte_t *pte;
 	unsigned long vaddr, paddr;
 	int result = -ENOMEM;
+	pgprot_t prot = PAGE_KERNEL_EXEC_NOENC;
 
 	vaddr = (unsigned long)relocate_kernel;
 	paddr = __pa(page_address(image->control_code_page)+PAGE_SIZE);
@@ -92,7 +93,11 @@ static int init_transition_pgtable(struct kimage *image, pgd_t *pgd)
 		set_pmd(pmd, __pmd(__pa(pte) | _KERNPG_TABLE));
 	}
 	pte = pte_offset_kernel(pmd, vaddr);
-	set_pte(pte, pfn_pte(paddr >> PAGE_SHIFT, PAGE_KERNEL_EXEC_NOENC));
+
+	if (sev_active())
+		prot = PAGE_KERNEL_EXEC;
+
+	set_pte(pte, pfn_pte(paddr >> PAGE_SHIFT, prot));
 	return 0;
 err:
 	return result;
@@ -129,6 +134,11 @@ static int init_pgtable(struct kimage *image, unsigned long start_pgtable)
 	level4p = (pgd_t *)__va(start_pgtable);
 	clear_page(level4p);
 
+	if (sev_active()) {
+		info.page_flag |= _PAGE_ENC;
+		info.kernpg_flag = _KERNPG_TABLE;
+	}
+
 	if (direct_gbpages)
 		info.direct_gbpages = true;
 
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
