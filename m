Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27736F8D9E
	for <lists+kexec@lfdr.de>; Tue, 12 Nov 2019 12:09:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dS/5l32/8vd8eNIANiPL8nIpzK5zGaJwJ6ZJluGl1Wo=; b=AA4o5dmHGxWGoY6jauhWmzwx//
	BMDm1p1UjTSr9RpnspnII9KdufiKN4Lcvxwt/Z4esaUVd02unu5t9M2s7cwvG3RRHHyJVU7ppRF8m
	SdgFKbKWXNY2pusIqWrgWzom9kLq1KXj8x3HV2Mobg9mDr/hQ9LX/mI9+49z3hFrb8ELb7Ywo81tk
	/5KkeOqdSvkZiq3Y4CzofXomUVT2pAGPYb6bQ+wY/DdYLZzVfJI2DY+B/EGoONmPp/D/kbJ1GrgUe
	neK/6/dyRZ9WeeUErPascv7cUonrXFo00+YZ0oDKWkchTg+OYG8tyPH5quS7QEAivpo6btFbPMmX6
	f5jXipoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUU3C-0000VN-Rf; Tue, 12 Nov 2019 11:09:34 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUU38-0000TL-Ae
 for kexec@lists.infradead.org; Tue, 12 Nov 2019 11:09:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573556968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AQXnI4SBp+dtin9smDcxvk7lWxYtKLEect4+keWSsbg=;
 b=a1CFW5MXwL0mBw2bsCnSMyb1EDe/Q8M++IGuDPzFRP2qBdSaMQ94Io7KQIgkazNaZtN6qt
 RlOTMUnhdlB4KrlMsq41h+sW9WQccdolan94OSBqZ/WFNgtNm+QRHiMbz8O6eSfbbXk88Y
 zCqf35JLM/xHMIFzdvIHioGf/sUqg2c=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-NLM2LYsdPFiQgpwNYjAiOQ-1; Tue, 12 Nov 2019 06:09:27 -0500
Received: by mail-pg1-f200.google.com with SMTP id l5so13037652pgu.13
 for <kexec@lists.infradead.org>; Tue, 12 Nov 2019 03:09:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nHvS4tUdu7f2FRK7es67CrmKYX9bb/CCPmCrk4T90PE=;
 b=r/DSmAa/xcso5/BFPu7uUfegK2NLwFeRjCljteIS0U+GKej9TVzyVmMTDYDQ3Isv60
 BGoL+PUOlw2zlkgpNDWyXT/OUifd9C0Qr2DSx8UYIEiQpA2RIuZuqM7fNKBWcnsTiNpO
 GkGHIumh3KkbQsQtqilwUsLvHbuxB98cgYx6J4Y3FISOKYCrOMSjB4Yw8uqon/SEHOcD
 vxMwmn3vhybdPb6t2w0iPB3QDJ8TsfAMi/oijzN/+x7aV5ySxqAWls8HSSc/ERAsvtJv
 ak9ZIvkWI665sursWEJjFXTf57oYoxPe1eR1xYOGZfxUnIF/43T8MH3Udcqr+Nz2eHuh
 basw==
X-Gm-Message-State: APjAAAW8T75gCpBBvJRLz5M6+8xoiOXTDTvL8L2bg5X6G+/ZcZfiZI6L
 Zpvc59rzZr9mbZzkbIpRaOKSQxDerPwf7BxJfmb7IY3M0WLcKmRrgCGbQan4cP7MPxPxi/E/5JW
 IZXVfsfTuF84kQL2J6CZF
X-Received: by 2002:a17:90a:ab98:: with SMTP id
 n24mr5775246pjq.96.1573556966184; 
 Tue, 12 Nov 2019 03:09:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqwnXrdfrmYQW5Zg901OPNE5/wdFfgMEUFMcA5LC65O9n722EOBOOy2VULacYtieJ0s2HO/eDA==
X-Received: by 2002:a17:90a:ab98:: with SMTP id
 n24mr5775201pjq.96.1573556965845; 
 Tue, 12 Nov 2019 03:09:25 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id u7sm18299426pfh.84.2019.11.12.03.09.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 03:09:24 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v4 2/4] makedumpfile/arm64: Add support for ARMv8.2-LPA
 (52-bit PA support)
Date: Tue, 12 Nov 2019 16:38:57 +0530
Message-Id: <1573556939-17803-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: NLM2LYsdPFiQgpwNYjAiOQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030930_513604_5779C247 
X-CRM114-Status: GOOD (  19.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: John Donnelly <john.p.donnelly@oracle.com>, bhsharma@redhat.com,
 bhupesh.linux@gmail.com, Kazuhito Hagio <k-hagio@ab.jp.nec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

ARMv8.2-LPA architecture extension (if available on underlying hardware)
can support 52-bit physical addresses, while the kernel virtual
addresses remain 48-bit.

Make sure that we read the 52-bit PA address capability from
'MAX_PHYSMEM_BITS' variable (if available in vmcoreinfo) and
accordingly change the pte_to_phy() mask values and also traverse
the page-table walk accordingly.

Also make sure that it works well for the existing 48-bit PA address
platforms and also on environments which use newer kernels with 52-bit
PA support but hardware which is not ARM8.2-LPA compliant.

I have sent a kernel patch upstream to add 'MAX_PHYSMEM_BITS' to
vmcoreinfo for arm64 (see [0]).

This patch is in accordance with ARMv8 Architecture Reference Manual
version D.a

[0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html

Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: John Donnelly <john.p.donnelly@oracle.com>
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64.c | 292 +++++++++++++++++++++++++++++++++++++++++------------------
 1 file changed, 204 insertions(+), 88 deletions(-)

diff --git a/arch/arm64.c b/arch/arm64.c
index 3516b340adfd..ecb19139e178 100644
--- a/arch/arm64.c
+++ b/arch/arm64.c
@@ -39,72 +39,184 @@ typedef struct {
 	unsigned long pte;
 } pte_t;
 
+#define __pte(x)	((pte_t) { (x) } )
+#define __pmd(x)	((pmd_t) { (x) } )
+#define __pud(x)	((pud_t) { (x) } )
+#define __pgd(x)	((pgd_t) { (x) } )
+
+static int lpa_52_bit_support_available;
 static int pgtable_level;
 static int va_bits;
 static unsigned long kimage_voffset;
 
-#define SZ_4K			(4 * 1024)
-#define SZ_16K			(16 * 1024)
-#define SZ_64K			(64 * 1024)
-#define SZ_128M			(128 * 1024 * 1024)
+#define SZ_4K			4096
+#define SZ_16K			16384
+#define SZ_64K			65536
 
-#define PAGE_OFFSET_36 ((0xffffffffffffffffUL) << 36)
-#define PAGE_OFFSET_39 ((0xffffffffffffffffUL) << 39)
-#define PAGE_OFFSET_42 ((0xffffffffffffffffUL) << 42)
-#define PAGE_OFFSET_47 ((0xffffffffffffffffUL) << 47)
-#define PAGE_OFFSET_48 ((0xffffffffffffffffUL) << 48)
+#define PAGE_OFFSET_36		((0xffffffffffffffffUL) << 36)
+#define PAGE_OFFSET_39		((0xffffffffffffffffUL) << 39)
+#define PAGE_OFFSET_42		((0xffffffffffffffffUL) << 42)
+#define PAGE_OFFSET_47		((0xffffffffffffffffUL) << 47)
+#define PAGE_OFFSET_48		((0xffffffffffffffffUL) << 48)
+#define PAGE_OFFSET_52		((0xffffffffffffffffUL) << 52)
 
 #define pgd_val(x)		((x).pgd)
 #define pud_val(x)		(pgd_val((x).pgd))
 #define pmd_val(x)		(pud_val((x).pud))
 #define pte_val(x)		((x).pte)
 
-#define PAGE_MASK		(~(PAGESIZE() - 1))
-#define PGDIR_SHIFT		((PAGESHIFT() - 3) * pgtable_level + 3)
-#define PTRS_PER_PGD		(1 << (va_bits - PGDIR_SHIFT))
-#define PUD_SHIFT		get_pud_shift_arm64()
-#define PUD_SIZE		(1UL << PUD_SHIFT)
-#define PUD_MASK		(~(PUD_SIZE - 1))
-#define PTRS_PER_PTE		(1 << (PAGESHIFT() - 3))
-#define PTRS_PER_PUD		PTRS_PER_PTE
-#define PMD_SHIFT		((PAGESHIFT() - 3) * 2 + 3)
-#define PMD_SIZE		(1UL << PMD_SHIFT)
-#define PMD_MASK		(~(PMD_SIZE - 1))
+/* See 'include/uapi/linux/const.h' for definitions below */
+#define __AC(X,Y)	(X##Y)
+#define _AC(X,Y)	__AC(X,Y)
+#define _AT(T,X)	((T)(X))
+
+/* See 'include/asm/pgtable-types.h' for definitions below */
+typedef unsigned long pteval_t;
+typedef unsigned long pmdval_t;
+typedef unsigned long pudval_t;
+typedef unsigned long pgdval_t;
+
+#define PAGE_SHIFT	PAGESHIFT()
+
+/* See 'arch/arm64/include/asm/pgtable-hwdef.h' for definitions below */
+
+#define ARM64_HW_PGTABLE_LEVEL_SHIFT(n)	((PAGE_SHIFT - 3) * (4 - (n)) + 3)
+
+#define PTRS_PER_PTE		(1 << (PAGE_SHIFT - 3))
+
+/*
+ * PMD_SHIFT determines the size a level 2 page table entry can map.
+ */
+#define PMD_SHIFT		ARM64_HW_PGTABLE_LEVEL_SHIFT(2)
+#define PMD_SIZE		(_AC(1, UL) << PMD_SHIFT)
+#define PMD_MASK		(~(PMD_SIZE-1))
 #define PTRS_PER_PMD		PTRS_PER_PTE
 
-#define PAGE_PRESENT		(1 << 0)
+/*
+ * PUD_SHIFT determines the size a level 1 page table entry can map.
+ */
+#define PUD_SHIFT		ARM64_HW_PGTABLE_LEVEL_SHIFT(1)
+#define PUD_SIZE		(_AC(1, UL) << PUD_SHIFT)
+#define PUD_MASK		(~(PUD_SIZE-1))
+#define PTRS_PER_PUD		PTRS_PER_PTE
+
+/*
+ * PGDIR_SHIFT determines the size a top-level page table entry can map
+ * (depending on the configuration, this level can be 0, 1 or 2).
+ */
+#define PGDIR_SHIFT		ARM64_HW_PGTABLE_LEVEL_SHIFT(4 - (pgtable_level))
+#define PGDIR_SIZE		(_AC(1, UL) << PGDIR_SHIFT)
+#define PGDIR_MASK		(~(PGDIR_SIZE-1))
+#define PTRS_PER_PGD		(1 << ((va_bits) - PGDIR_SHIFT))
+
+/*
+ * Section address mask and size definitions.
+ */
 #define SECTIONS_SIZE_BITS	30
-/* Highest possible physical address supported */
-#define PHYS_MASK_SHIFT		48
-#define PHYS_MASK		((1UL << PHYS_MASK_SHIFT) - 1)
+
 /*
- * Remove the highest order bits that are not a part of the
- * physical address in a section
+ * Hardware page table definitions.
+ *
+ * Level 1 descriptor (PUD).
  */
-#define PMD_SECTION_MASK	((1UL << 40) - 1)
+#define PUD_TYPE_TABLE		(_AT(pudval_t, 3) << 0)
+#define PUD_TABLE_BIT		(_AT(pudval_t, 1) << 1)
+#define PUD_TYPE_MASK		(_AT(pudval_t, 3) << 0)
+#define PUD_TYPE_SECT		(_AT(pudval_t, 1) << 0)
 
-#define PMD_TYPE_MASK		3
-#define PMD_TYPE_SECT		1
-#define PMD_TYPE_TABLE		3
+/*
+ * Level 2 descriptor (PMD).
+ */
+#define PMD_TYPE_MASK		(_AT(pmdval_t, 3) << 0)
+#define PMD_TYPE_FAULT		(_AT(pmdval_t, 0) << 0)
+#define PMD_TYPE_TABLE		(_AT(pmdval_t, 3) << 0)
+#define PMD_TYPE_SECT		(_AT(pmdval_t, 1) << 0)
+#define PMD_TABLE_BIT		(_AT(pmdval_t, 1) << 1)
+
+/*
+ * Level 3 descriptor (PTE).
+ */
+#define PTE_ADDR_LOW		(((_AT(pteval_t, 1) << (48 - PAGE_SHIFT)) - 1) << PAGE_SHIFT)
+#define PTE_ADDR_HIGH		(_AT(pteval_t, 0xf) << 12)
+
+static inline unsigned long
+get_pte_addr_mask_arm64(void)
+{
+	if (lpa_52_bit_support_available)
+		return (PTE_ADDR_LOW | PTE_ADDR_HIGH);
+	else
+		return PTE_ADDR_LOW;
+}
+
+#define PTE_ADDR_MASK		get_pte_addr_mask_arm64()
 
-#define PUD_TYPE_MASK		3
-#define PUD_TYPE_SECT		1
-#define PUD_TYPE_TABLE		3
+#define PAGE_MASK		(~(PAGESIZE() - 1))
+#define PAGE_PRESENT		(1 << 0)
 
+/* Helper API to convert between a physical address and its placement
+ * in a page table entry, taking care of 52-bit addresses.
+ */
+static inline unsigned long
+__pte_to_phys(pte_t pte)
+{
+	if (lpa_52_bit_support_available)
+		return ((pte_val(pte) & PTE_ADDR_LOW) | ((pte_val(pte) & PTE_ADDR_HIGH) << 36));
+	else
+		return (pte_val(pte) & PTE_ADDR_MASK);
+}
+
+/* Find an entry in a page-table-directory */
 #define pgd_index(vaddr) 		(((vaddr) >> PGDIR_SHIFT) & (PTRS_PER_PGD - 1))
-#define pgd_offset(pgdir, vaddr)	((pgd_t *)(pgdir) + pgd_index(vaddr))
 
-#define pte_index(vaddr) 		(((vaddr) >> PAGESHIFT()) & (PTRS_PER_PTE - 1))
-#define pmd_page_paddr(pmd)		(pmd_val(pmd) & PHYS_MASK & (int32_t)PAGE_MASK)
-#define pte_offset(dir, vaddr) 		((pte_t*)pmd_page_paddr((*dir)) + pte_index(vaddr))
+static inline pte_t
+pgd_pte(pgd_t pgd)
+{
+	return __pte(pgd_val(pgd));
+}
 
-#define pmd_index(vaddr)		(((vaddr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
-#define pud_page_paddr(pud)		(pud_val(pud) & PHYS_MASK & (int32_t)PAGE_MASK)
-#define pmd_offset_pgtbl_lvl_2(pud, vaddr) ((pmd_t *)pud)
-#define pmd_offset_pgtbl_lvl_3(pud, vaddr) ((pmd_t *)pud_page_paddr((*pud)) + pmd_index(vaddr))
+#define __pgd_to_phys(pgd)		__pte_to_phys(pgd_pte(pgd))
+#define pgd_offset(pgd, vaddr)		((pgd_t *)(pgd) + pgd_index(vaddr))
+
+static inline pte_t pud_pte(pud_t pud)
+{
+	return __pte(pud_val(pud));
+}
 
+static inline unsigned long
+pgd_page_paddr(pgd_t pgd)
+{
+	return __pgd_to_phys(pgd);
+}
+
+/* Find an entry in the first-level page table. */
 #define pud_index(vaddr)		(((vaddr) >> PUD_SHIFT) & (PTRS_PER_PUD - 1))
-#define pgd_page_paddr(pgd)		(pgd_val(pgd) & PHYS_MASK & (int32_t)PAGE_MASK)
+#define __pud_to_phys(pud)		__pte_to_phys(pud_pte(pud))
+
+static inline unsigned long
+pud_page_paddr(pud_t pud)
+{
+	return __pud_to_phys(pud);
+}
+
+/* Find an entry in the second-level page table. */
+#define pmd_index(vaddr)		(((vaddr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
+
+static inline pte_t pmd_pte(pmd_t pmd)
+{
+	return __pte(pmd_val(pmd));
+}
+
+#define __pmd_to_phys(pmd)		__pte_to_phys(pmd_pte(pmd))
+
+static inline unsigned long
+pmd_page_paddr(pmd_t pmd)
+{
+	return __pmd_to_phys(pmd);
+}
+
+/* Find an entry in the third-level page table. */
+#define pte_index(vaddr) 		(((vaddr) >> PAGESHIFT()) & (PTRS_PER_PTE - 1))
+#define pte_offset(dir, vaddr) 		(pmd_page_paddr((*dir)) + pte_index(vaddr) * sizeof(pte_t))
 
 static unsigned long long
 __pa(unsigned long vaddr)
@@ -116,32 +228,22 @@ __pa(unsigned long vaddr)
 		return (vaddr - kimage_voffset);
 }
 
-static int
-get_pud_shift_arm64(void)
+static pud_t *
+pud_offset(pgd_t *pgda, pgd_t *pgdv, unsigned long vaddr)
 {
-	if (pgtable_level == 4)
-		return ((PAGESHIFT() - 3) * 3 + 3);
+	if (pgtable_level > 3)
+		return (pud_t *)(pgd_page_paddr(*pgdv) + pud_index(vaddr) * sizeof(pud_t));
 	else
-		return PGDIR_SHIFT;
+		return (pud_t *)(pgda);
 }
 
 static pmd_t *
 pmd_offset(pud_t *puda, pud_t *pudv, unsigned long vaddr)
 {
-	if (pgtable_level == 2) {
-		return pmd_offset_pgtbl_lvl_2(puda, vaddr);
-	} else {
-		return pmd_offset_pgtbl_lvl_3(pudv, vaddr);
-	}
-}
-
-static pud_t *
-pud_offset(pgd_t *pgda, pgd_t *pgdv, unsigned long vaddr)
-{
-	if (pgtable_level == 4)
-		return ((pud_t *)pgd_page_paddr((*pgdv)) + pud_index(vaddr));
+	if (pgtable_level > 2)
+		return (pmd_t *)(pud_page_paddr(*pudv) + pmd_index(vaddr) * sizeof(pmd_t));
 	else
-		return (pud_t *)(pgda);
+		return (pmd_t*)(puda);
 }
 
 static int calculate_plat_config(void)
@@ -307,6 +409,14 @@ get_stext_symbol(void)
 int
 get_machdep_info_arm64(void)
 {
+	/* Determine if the PA address range is 52-bits: ARMv8.2-LPA */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+		if (info->max_physmem_bits == 52)
+			lpa_52_bit_support_available = 1;
+	} else
+		info->max_physmem_bits = 48;
+
 	/* Check if va_bits is still not initialized. If still 0, call
 	 * get_versiondep_info() to initialize the same.
 	 */
@@ -319,12 +429,11 @@ get_machdep_info_arm64(void)
 	}
 
 	kimage_voffset = NUMBER(kimage_voffset);
-	info->max_physmem_bits = PHYS_MASK_SHIFT;
 	info->section_size_bits = SECTIONS_SIZE_BITS;
 
 	DEBUG_MSG("kimage_voffset   : %lx\n", kimage_voffset);
-	DEBUG_MSG("max_physmem_bits : %lx\n", info->max_physmem_bits);
-	DEBUG_MSG("section_size_bits: %lx\n", info->section_size_bits);
+	DEBUG_MSG("max_physmem_bits : %ld\n", info->max_physmem_bits);
+	DEBUG_MSG("section_size_bits: %ld\n", info->section_size_bits);
 
 	return TRUE;
 }
@@ -382,6 +491,19 @@ get_versiondep_info_arm64(void)
 	return TRUE;
 }
 
+/* 1GB section for Page Table level = 4 and Page Size = 4KB */
+static int
+is_pud_sect(pud_t pud)
+{
+	return ((pud_val(pud) & PUD_TYPE_MASK) == PUD_TYPE_SECT);
+}
+
+static int
+is_pmd_sect(pmd_t pmd)
+{
+	return ((pmd_val(pmd) & PMD_TYPE_MASK) == PMD_TYPE_SECT);
+}
+
 /*
  * vaddr_to_paddr_arm64() - translate arbitrary virtual address to physical
  * @vaddr: virtual address to translate
@@ -419,10 +541,9 @@ vaddr_to_paddr_arm64(unsigned long vaddr)
 		return NOT_PADDR;
 	}
 
-	if ((pud_val(pudv) & PUD_TYPE_MASK) == PUD_TYPE_SECT) {
-		/* 1GB section for Page Table level = 4 and Page Size = 4KB */
-		paddr = (pud_val(pudv) & (PUD_MASK & PMD_SECTION_MASK))
-					+ (vaddr & (PUD_SIZE - 1));
+	if (is_pud_sect(pudv)) {
+		paddr = (pud_page_paddr(pudv) & PUD_MASK) +
+				(vaddr & (PUD_SIZE - 1));
 		return paddr;
 	}
 
@@ -432,29 +553,24 @@ vaddr_to_paddr_arm64(unsigned long vaddr)
 		return NOT_PADDR;
 	}
 
-	switch (pmd_val(pmdv) & PMD_TYPE_MASK) {
-	case PMD_TYPE_TABLE:
-		ptea = pte_offset(&pmdv, vaddr);
-		/* 64k page */
-		if (!readmem(PADDR, (unsigned long long)ptea, &ptev, sizeof(ptev))) {
-			ERRMSG("Can't read pte\n");
-			return NOT_PADDR;
-		}
+	if (is_pmd_sect(pmdv)) {
+		paddr = (pmd_page_paddr(pmdv) & PMD_MASK) +
+				(vaddr & (PMD_SIZE - 1));
+		return paddr;
+	}
 
-		if (!(pte_val(ptev) & PAGE_PRESENT)) {
-			ERRMSG("Can't get a valid pte.\n");
-			return NOT_PADDR;
-		} else {
+	ptea = (pte_t *)pte_offset(&pmdv, vaddr);
+	if (!readmem(PADDR, (unsigned long long)ptea, &ptev, sizeof(ptev))) {
+		ERRMSG("Can't read pte\n");
+		return NOT_PADDR;
+	}
 
-			paddr = (PAGEBASE(pte_val(ptev)) & PHYS_MASK)
-					+ (vaddr & (PAGESIZE() - 1));
-		}
-		break;
-	case PMD_TYPE_SECT:
-		/* 512MB section for Page Table level = 3 and Page Size = 64KB*/
-		paddr = (pmd_val(pmdv) & (PMD_MASK & PMD_SECTION_MASK))
-					+ (vaddr & (PMD_SIZE - 1));
-		break;
+	if (!(pte_val(ptev) & PAGE_PRESENT)) {
+		ERRMSG("Can't get a valid pte.\n");
+		return NOT_PADDR;
+	} else {
+		paddr = __pte_to_phys(ptev) +
+				(vaddr & (PAGESIZE() - 1));
 	}
 
 	return paddr;
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
