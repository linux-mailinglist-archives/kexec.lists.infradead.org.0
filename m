Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3327EF8DA0
	for <lists+kexec@lfdr.de>; Tue, 12 Nov 2019 12:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C/7fodHs0aThPcLCoyH7bbuMp2UcDcFVQ+iNbPrTf0c=; b=R6cFfWklXKPEBrKqMNVKIt4WDn
	A81jJuGfw54mTuRQMUH/h6i1V3DLQ9qitYJ46Wfd7eBmObT6CJxzpm+JVzmuANvuP6ubVWoeCkAjS
	ecW2UjWAMNlsjRiPlZ1KkxOPpcHZ4w1fVlcT7kFMNMrF7KESD/be3g9mVKoqPsnaWZimB6S1QS2Ab
	ZufMuaM2eYqJ+0b2ekAjx/7qNCNMv/rulbWhp6SOym1jaysjKbYc/Jh+ojzrZCzlOJmbdWhnikG9S
	e5RycqdVgoJYCKAjSBMmUuSRLLpuLn4fFt6KGDT41vvvRBf8sLx0jTMnsRDf54iSJDZUC/U6QjM0a
	enhKdbmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUU3J-0000ds-Ej; Tue, 12 Nov 2019 11:09:41 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUU3D-0000V5-Nv
 for kexec@lists.infradead.org; Tue, 12 Nov 2019 11:09:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573556973;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TgS5+IVi98/ViMp8tU1p2PmVYeTPuERV3g+EjElXUE4=;
 b=PFfbfeqiMZemGYATHMOXjn+V5mjOeLYBTUds7h1vVzUNfEbcTXpwwevBccbA23k75ugk7k
 nAqGuhbCDaQol2TyfAirH79d8U+yA97TGZB//j11abuQ1SdzjjccJccgIgtAZyaXnj515c
 zMdq9QMXh9nmb71w8T0z+OFUmEHJhQk=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-IEFc4AgoNRO1mF37DdBe9A-1; Tue, 12 Nov 2019 06:09:32 -0500
Received: by mail-pg1-f200.google.com with SMTP id s8so9557818pgv.5
 for <kexec@lists.infradead.org>; Tue, 12 Nov 2019 03:09:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UuAVkHKymM8PFDBMVwPNPTd8sZg2wraWBQDhpzLzpyM=;
 b=uEMrOgEscBbbr/TceG0mDM+Jd/pXA/Z7yvY69qByjLKYTv3/UIj5hCcNjaSe3M7x1r
 T9DRQ9UznCsHMMYfWi+A2/6DVMHB6x1Brk0Rc9+Gb66JwZO+rBZ8XwGq5AwvPHHbe4ku
 ciEpw1GAzj/GSkdZWZIyStXKYdUs8u6mRjQ75ClmxYO5mve+em9Gnx+lcmCBhXzu8a9e
 60R1RXiU14onMVYhZZtjNP2yfIVGvVxTNesGZd2Gw4ghtKa0Au2uSF40rnKQwgciOmNa
 dkCLmsGnEeVxqVPGcjvEXCWaeSxqaUtUa2pftngjGYPOed/92i8V7NnyaYVtNj59gJzj
 WU8w==
X-Gm-Message-State: APjAAAU29w/pmB/aYk0eINOEclFXPLPbocLQJL1KYDvSrJRat3vCzrht
 tSdBMFXHur2bzIV+CQSJlw9qLrad+ZxvdK+coEtCxl3byPxwku3j2RqN4XFV8R/65TuIYlRHnlb
 Nal+Y7iS3XV6HGKrDyrNy
X-Received: by 2002:a17:902:8d98:: with SMTP id
 v24mr15177801plo.265.1573556970345; 
 Tue, 12 Nov 2019 03:09:30 -0800 (PST)
X-Google-Smtp-Source: APXvYqyV0sDD34BxOunAWIDshKk3TqDBzdIGfRg5KzGN5HOR4DqrXUjBeo6tHP4DyUp5wTYfm+oGNQ==
X-Received: by 2002:a17:902:8d98:: with SMTP id
 v24mr15177753plo.265.1573556969875; 
 Tue, 12 Nov 2019 03:09:29 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id w62sm20295304pfb.15.2019.11.12.03.09.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 03:09:28 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v4 3/4] makedumpfile/arm64: Add support for ARMv8.2-LVA
 (52-bit kernel VA support)
Date: Tue, 12 Nov 2019 16:38:58 +0530
Message-Id: <1573556939-17803-4-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: IEFc4AgoNRO1mF37DdBe9A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030935_860592_6D21532F 
X-CRM114-Status: GOOD (  20.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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

With ARMv8.2-LVA architecture extension availability, arm64 hardware
which supports this extension can support upto 52-bit virtual
addresses. It is specially useful for having a 52-bit user-space virtual
address space while the kernel can still retain 48-bit/52-bit virtual
addressing.

Since at the moment we enable the support of this extension in the
kernel via a CONFIG flag (CONFIG_ARM64_VA_BITS_52), so there are
no clear mechanisms in user-space to determine this CONFIG
flag value and use it to determine the kernel-space VA address range
values.

'makedumpfile' can instead use 'TCR_EL1.T1SZ' value from vmcoreinfo
which indicates the size offset of the memory region addressed by
TTBR1_EL1 (and hence can be used for determining the
vabits_actual value).

The user-space computation for determining whether an address lies in
the linear map range is the same as we have in kernel-space:

  #define __is_lm_address(addr)	(!(((u64)addr) & BIT(vabits_actual - 1)))

I have sent a kernel patch upstream to add 'TCR_EL1.T1SZ' to
vmcoreinfo for arm64 (see [0]).

This patch is in accordance with ARMv8 Architecture Reference Manual
version D.a

Note that with these changes the '--mem-usage' option will not work
properly for arm64 (a subsequent patch in this series will address the
same) and there is a discussion on-going with the arm64 maintainers to
find a way-out for the same (via standard kernel symbols like _stext).

[0].http://lists.infradead.org/pipermail/kexec/2019-November/023962.html

Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: John Donnelly <john.p.donnelly@oracle.com>
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64.c   | 148 +++++++++++++++++++++++++++++++++++++++++++++------------
 makedumpfile.c |   2 +
 makedumpfile.h |   3 +-
 3 files changed, 122 insertions(+), 31 deletions(-)

diff --git a/arch/arm64.c b/arch/arm64.c
index ecb19139e178..094d73b8a60f 100644
--- a/arch/arm64.c
+++ b/arch/arm64.c
@@ -47,6 +47,7 @@ typedef struct {
 static int lpa_52_bit_support_available;
 static int pgtable_level;
 static int va_bits;
+static int vabits_actual;
 static unsigned long kimage_voffset;
 
 #define SZ_4K			4096
@@ -218,12 +219,19 @@ pmd_page_paddr(pmd_t pmd)
 #define pte_index(vaddr) 		(((vaddr) >> PAGESHIFT()) & (PTRS_PER_PTE - 1))
 #define pte_offset(dir, vaddr) 		(pmd_page_paddr((*dir)) + pte_index(vaddr) * sizeof(pte_t))
 
+/*
+ * The linear kernel range starts at the bottom of the virtual address
+ * space. Testing the top bit for the start of the region is a
+ * sufficient check and avoids having to worry about the tag.
+ */
+#define is_linear_addr(addr)	(!(((unsigned long)addr) & (1UL << (vabits_actual - 1))))
+
 static unsigned long long
 __pa(unsigned long vaddr)
 {
 	if (kimage_voffset == NOT_FOUND_NUMBER ||
-			(vaddr >= PAGE_OFFSET))
-		return (vaddr - PAGE_OFFSET + info->phys_base);
+			is_linear_addr(vaddr))
+		return (vaddr + info->phys_base - PAGE_OFFSET);
 	else
 		return (vaddr - kimage_voffset);
 }
@@ -253,6 +261,7 @@ static int calculate_plat_config(void)
 			(PAGESIZE() == SZ_64K && va_bits == 42)) {
 		pgtable_level = 2;
 	} else if ((PAGESIZE() == SZ_64K && va_bits == 48) ||
+			(PAGESIZE() == SZ_64K && va_bits == 52) ||
 			(PAGESIZE() == SZ_4K && va_bits == 39) ||
 			(PAGESIZE() == SZ_16K && va_bits == 47)) {
 		pgtable_level = 3;
@@ -287,6 +296,16 @@ get_phys_base_arm64(void)
 		return TRUE;
 	}
 
+	/* If both vabits_actual and va_bits are now initialized, always
+	 * prefer vabits_actual over va_bits to calculate PAGE_OFFSET
+	 * value.
+	 */
+	if (vabits_actual && va_bits && vabits_actual != va_bits) {
+		info->page_offset = (-(1UL << vabits_actual));
+		DEBUG_MSG("page_offset    : %lx (via vabits_actual)\n",
+				info->page_offset);
+	}
+
 	if (get_num_pt_loads() && PAGE_OFFSET) {
 		for (i = 0;
 		    get_pt_load(i, &phys_start, NULL, &virt_start, NULL);
@@ -406,6 +425,73 @@ get_stext_symbol(void)
 	return(found ? kallsym : FALSE);
 }
 
+static int
+get_va_bits_from_stext_arm64(void)
+{
+	ulong _stext;
+
+	_stext = get_stext_symbol();
+	if (!_stext) {
+		ERRMSG("Can't get the symbol of _stext.\n");
+		return FALSE;
+	}
+
+	/* Derive va_bits as per arch/arm64/Kconfig. Note that this is a
+	 * best case approximation at the moment, as there can be
+	 * inconsistencies in this calculation (for e.g., for
+	 * 52-bit kernel VA case, even the 48th bit might be set in
+	 * the _stext symbol).
+	 *
+	 * So, we need to rely on the actual VA_BITS symbol in the
+	 * vmcoreinfo for a accurate value.
+	 *
+	 * TODO: Improve this further once there is a closure with arm64
+	 * kernel maintainers on the same.
+	 */
+	if ((_stext & PAGE_OFFSET_52) == PAGE_OFFSET_52) {
+		va_bits = 52;
+	} else if ((_stext & PAGE_OFFSET_48) == PAGE_OFFSET_48) {
+		va_bits = 48;
+	} else if ((_stext & PAGE_OFFSET_47) == PAGE_OFFSET_47) {
+		va_bits = 47;
+	} else if ((_stext & PAGE_OFFSET_42) == PAGE_OFFSET_42) {
+		va_bits = 42;
+	} else if ((_stext & PAGE_OFFSET_39) == PAGE_OFFSET_39) {
+		va_bits = 39;
+	} else if ((_stext & PAGE_OFFSET_36) == PAGE_OFFSET_36) {
+		va_bits = 36;
+	} else {
+		ERRMSG("Cannot find a proper _stext for calculating VA_BITS\n");
+		return FALSE;
+	}
+
+	DEBUG_MSG("va_bits    : %d (_stext) (approximation)\n", va_bits);
+
+	return TRUE;
+}
+
+static void
+get_page_offset_arm64(void)
+{
+	/* Check if 'vabits_actual' is initialized yet.
+	 * If not, our best bet is to use 'va_bits' to calculate
+	 * the PAGE_OFFSET value, otherwise use 'vabits_actual'
+	 * for the same.
+	 *
+	 * See arch/arm64/include/asm/memory.h for more details.
+	 */
+	if (!vabits_actual) {
+		info->page_offset = (-(1UL << va_bits));
+		DEBUG_MSG("page_offset    : %lx (approximation)\n",
+					info->page_offset);
+	} else {
+		info->page_offset = (-(1UL << vabits_actual));
+		DEBUG_MSG("page_offset    : %lx (accurate)\n",
+					info->page_offset);
+	}
+
+}
+
 int
 get_machdep_info_arm64(void)
 {
@@ -420,8 +506,33 @@ get_machdep_info_arm64(void)
 	/* Check if va_bits is still not initialized. If still 0, call
 	 * get_versiondep_info() to initialize the same.
 	 */
+	if (NUMBER(VA_BITS) != NOT_FOUND_NUMBER) {
+		va_bits = NUMBER(VA_BITS);
+		DEBUG_MSG("va_bits        : %d (vmcoreinfo)\n",
+				va_bits);
+	}
+
+	/* Check if va_bits is still not initialized. If still 0, call
+	 * get_versiondep_info() to initialize the same from _stext
+	 * symbol.
+	 */
 	if (!va_bits)
-		get_versiondep_info_arm64();
+		if (get_va_bits_from_stext_arm64() == FALSE)
+			return FALSE;
+
+	get_page_offset_arm64();
+
+	/* See TCR_EL1, Translation Control Register (EL1) register
+	 * description in the ARMv8 Architecture Reference Manual.
+	 * Basically, we can use the TCR_EL1.T1SZ
+	 * value to determine the virtual addressing range supported
+	 * in the kernel-space (i.e. vabits_actual).
+	 */
+	if (NUMBER(tcr_el1_t1sz) != NOT_FOUND_NUMBER) {
+		vabits_actual = 64 - NUMBER(tcr_el1_t1sz);
+		DEBUG_MSG("vabits_actual  : %d (vmcoreinfo)\n",
+				vabits_actual);
+	}
 
 	if (!calculate_plat_config()) {
 		ERRMSG("Can't determine platform config values\n");
@@ -459,34 +570,11 @@ get_xen_info_arm64(void)
 int
 get_versiondep_info_arm64(void)
 {
-	ulong _stext;
-
-	_stext = get_stext_symbol();
-	if (!_stext) {
-		ERRMSG("Can't get the symbol of _stext.\n");
-		return FALSE;
-	}
-
-	/* Derive va_bits as per arch/arm64/Kconfig */
-	if ((_stext & PAGE_OFFSET_36) == PAGE_OFFSET_36) {
-		va_bits = 36;
-	} else if ((_stext & PAGE_OFFSET_39) == PAGE_OFFSET_39) {
-		va_bits = 39;
-	} else if ((_stext & PAGE_OFFSET_42) == PAGE_OFFSET_42) {
-		va_bits = 42;
-	} else if ((_stext & PAGE_OFFSET_47) == PAGE_OFFSET_47) {
-		va_bits = 47;
-	} else if ((_stext & PAGE_OFFSET_48) == PAGE_OFFSET_48) {
-		va_bits = 48;
-	} else {
-		ERRMSG("Cannot find a proper _stext for calculating VA_BITS\n");
-		return FALSE;
-	}
-
-	info->page_offset = (0xffffffffffffffffUL) << (va_bits - 1);
+	if (!va_bits)
+		if (get_va_bits_from_stext_arm64() == FALSE)
+			return FALSE;
 
-	DEBUG_MSG("va_bits      : %d\n", va_bits);
-	DEBUG_MSG("page_offset  : %lx\n", info->page_offset);
+	get_page_offset_arm64();
 
 	return TRUE;
 }
diff --git a/makedumpfile.c b/makedumpfile.c
index 4a000112ba59..baf559e4d74e 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -2314,6 +2314,7 @@ write_vmcoreinfo_data(void)
 	WRITE_NUMBER("HUGETLB_PAGE_DTOR", HUGETLB_PAGE_DTOR);
 #ifdef __aarch64__
 	WRITE_NUMBER("VA_BITS", VA_BITS);
+	WRITE_NUMBER_UNSIGNED("tcr_el1_t1sz", tcr_el1_t1sz);
 	WRITE_NUMBER_UNSIGNED("PHYS_OFFSET", PHYS_OFFSET);
 	WRITE_NUMBER_UNSIGNED("kimage_voffset", kimage_voffset);
 #endif
@@ -2720,6 +2721,7 @@ read_vmcoreinfo(void)
 	READ_NUMBER("KERNEL_IMAGE_SIZE", KERNEL_IMAGE_SIZE);
 #ifdef __aarch64__
 	READ_NUMBER("VA_BITS", VA_BITS);
+	READ_NUMBER_UNSIGNED("tcr_el1_t1sz", tcr_el1_t1sz);
 	READ_NUMBER_UNSIGNED("PHYS_OFFSET", PHYS_OFFSET);
 	READ_NUMBER_UNSIGNED("kimage_voffset", kimage_voffset);
 #endif
diff --git a/makedumpfile.h b/makedumpfile.h
index ac11e906b5b7..7eab6507c8df 100644
--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -974,7 +974,7 @@ int get_versiondep_info_arm64(void);
 int get_xen_basic_info_arm64(void);
 int get_xen_info_arm64(void);
 unsigned long get_kaslr_offset_arm64(unsigned long vaddr);
-#define paddr_to_vaddr_arm64(X) (((X) - info->phys_base) | PAGE_OFFSET)
+#define paddr_to_vaddr_arm64(X) (((X) - (info->phys_base - PAGE_OFFSET)))
 
 #define find_vmemmap()		stub_false()
 #define vaddr_to_paddr(X)	vaddr_to_paddr_arm64(X)
@@ -1937,6 +1937,7 @@ struct number_table {
 	long	KERNEL_IMAGE_SIZE;
 #ifdef __aarch64__
 	long 	VA_BITS;
+	unsigned long	tcr_el1_t1sz;
 	unsigned long	PHYS_OFFSET;
 	unsigned long	kimage_voffset;
 #endif
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
