Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5DEEF8D9F
	for <lists+kexec@lfdr.de>; Tue, 12 Nov 2019 12:09:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OeppWit6Kzfp5lqC03+batP7IznE/7jpquNN5tTLbbg=; b=QEnkHXMXT3fhjbpqcxY156WAR9
	wj+ciEdVOA2mfx/p3u0VS3o4ms+KJ3dcEGe0DfgX3Sq45jitd68/NIZS4Kg4RDKSJpMMjtFCPnaGc
	Rbf43Ia/xvx6m7whtHHpxONBpRb4/gUpPA6lJpA6y6FhBDjXyN1s+UF0uCJtddLwYRx+KLbKbmINC
	JIL0VCmmDvtgk/Okw3upQXRhV1NJj3iJyCDkkqHL1F2qTeqt6qaB01QcGMEBZRT8UTFjOzFY+y9us
	XQbrj+UdVrgjiXBODv3ao6y9vdbK0FhpEK36CG3mtLWJKPLSkDhiBdUrynHXH0t7Ovec5JItQNDZ9
	zHDjOf6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUU3H-0000ay-E8; Tue, 12 Nov 2019 11:09:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUU3B-0000Uu-Mb
 for kexec@lists.infradead.org; Tue, 12 Nov 2019 11:09:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573556972;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gIcaYi/Jrj6vOMEIh4AskDvU1zYAjXoiqPfytVb+9sQ=;
 b=BIL1JpkVTUCdWr1ZHdPlyVeyG+CI8f1hibSCZF2B0nhM0eklO2VLFIEVJQj1RTkMbQwPqD
 8F8RsjItrq/k6lEGYtD0oy2yPz/2A2eygT6wvpegt3mBUyd+etO9w3JrDVgbbwTsYsY2Gd
 LrMQAAw4f9rNgMh5mTZAEm4Std+v4Kw=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-170-p2QJBWL2PFu9S_MdIw4oQw-1; Tue, 12 Nov 2019 06:09:23 -0500
Received: by mail-pl1-f197.google.com with SMTP id a11so12693524plp.21
 for <kexec@lists.infradead.org>; Tue, 12 Nov 2019 03:09:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GRZ90/AN577p9VX5BizZHzyZFMkMbp/vxmMxD5Xdaxs=;
 b=rGb/KIn4PimWcBk+DWS6RwMMQr1M2qATDV4A+q3swkNRe6oAV1HvKh21cS1cQu/QtT
 Y73SKNScjf0S8eWy9S7mP2/NFkTOslHbd57mRIBKXBEDqh7B5dusHFav2+nnkJz/JeRr
 wgFVMfhiHpyBLvxv++85HPM46Aa8xuVuwabQc75PBovoR/jHBKCBxUGfYo23F98c4x7a
 8O6og4wP7mBwQiYaLobMzE7QK/cWz5SFrhFcdb/k28RnZjZourlZivLnRO8+PunGPfoC
 YZEuFb1pYp+6FBF0wQjiL8noMfKoiJ8HlAPhaT7EJEX9nFQLXpxZroE1u+qpuKtYmK6B
 8a0g==
X-Gm-Message-State: APjAAAWY2w3PXhRSMQamVOEwgg7l/cOI/Jn6bxgHTeZubbSMHzg0DdBa
 8q1iCHLCp7+26JannoX0rgpEQEi3N8phCc18n+xa1aBg1V5O8Zv8+wPrHOgTbpwElrvvQta8MJM
 rHWp6yuJOWShkyfc4aIdX
X-Received: by 2002:a63:495b:: with SMTP id y27mr34307841pgk.438.1573556962023; 
 Tue, 12 Nov 2019 03:09:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqzB3XRHM6gDTr/+6PBnZif++jJQ2lXyaca607uIizLEdhQaw5bmdkcfBb/sMFGSmwFc82H65g==
X-Received: by 2002:a63:495b:: with SMTP id y27mr34307805pgk.438.1573556961695; 
 Tue, 12 Nov 2019 03:09:21 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id v19sm2126742pjr.14.2019.11.12.03.09.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 Nov 2019 03:09:19 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v4 1/4] tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from vmcoreinfo
 (if available)
Date: Tue, 12 Nov 2019 16:38:56 +0530
Message-Id: <1573556939-17803-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: p2QJBWL2PFu9S_MdIw4oQw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_030933_888672_62DADF3C 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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

This patch adds a common feature for archs (except arm64, for which
similar support is added via subsequent patch) to retrieve
'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).

I recently posted a kernel patch (see [0]) which appends
'MAX_PHYSMEM_BITS' to vmcoreinfo in the core code itself rather than
in arch-specific code, so that user-space code can also benefit from
this addition to the vmcoreinfo and use it as a standard way of
determining 'SECTIONS_SHIFT' value in 'makedumpfile' utility.

This patch ensures backward compatibility for kernel versions in which
'MAX_PHYSMEM_BITS' is not available in vmcoreinfo.

[0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html

Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: John Donnelly <john.p.donnelly@oracle.com>
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm.c     |  8 +++++++-
 arch/ia64.c    |  7 ++++++-
 arch/ppc.c     |  8 +++++++-
 arch/ppc64.c   | 49 ++++++++++++++++++++++++++++---------------------
 arch/s390x.c   | 29 ++++++++++++++++++-----------
 arch/sparc64.c |  9 +++++++--
 arch/x86.c     | 34 ++++++++++++++++++++--------------
 arch/x86_64.c  | 27 ++++++++++++++++-----------
 8 files changed, 109 insertions(+), 62 deletions(-)

diff --git a/arch/arm.c b/arch/arm.c
index af7442ac70bf..33536fc4dfc9 100644
--- a/arch/arm.c
+++ b/arch/arm.c
@@ -81,7 +81,13 @@ int
 get_machdep_info_arm(void)
 {
 	info->page_offset = SYMBOL(_stext) & 0xffff0000UL;
-	info->max_physmem_bits = _MAX_PHYSMEM_BITS;
+
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+	else
+		info->max_physmem_bits = _MAX_PHYSMEM_BITS;
+
 	info->kernel_start = SYMBOL(_stext);
 	info->section_size_bits = _SECTION_SIZE_BITS;
 
diff --git a/arch/ia64.c b/arch/ia64.c
index 6c33cc7c8288..fb44dda47172 100644
--- a/arch/ia64.c
+++ b/arch/ia64.c
@@ -85,7 +85,12 @@ get_machdep_info_ia64(void)
 	}
 
 	info->section_size_bits = _SECTION_SIZE_BITS;
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
+
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+	else
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
 
 	return TRUE;
 }
diff --git a/arch/ppc.c b/arch/ppc.c
index 37c6a3b60cd3..ed9447427a30 100644
--- a/arch/ppc.c
+++ b/arch/ppc.c
@@ -31,7 +31,13 @@ get_machdep_info_ppc(void)
 	unsigned long vmlist, vmap_area_list, vmalloc_start;
 
 	info->section_size_bits = _SECTION_SIZE_BITS;
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
+
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+	else
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
+
 	info->page_offset = __PAGE_OFFSET;
 
 	if (SYMBOL(_stext) != NOT_FOUND_SYMBOL)
diff --git a/arch/ppc64.c b/arch/ppc64.c
index 9d8f2525f608..a3984eebdced 100644
--- a/arch/ppc64.c
+++ b/arch/ppc64.c
@@ -466,30 +466,37 @@ int
 set_ppc64_max_physmem_bits(void)
 {
 	long array_len = ARRAY_LENGTH(mem_section);
-	/*
-	 * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
-	 * newer kernels 3.7 onwards uses 46 bits.
-	 */
-
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
-	if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
-		|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
-		return TRUE;
-
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
-	if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
-		|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
-		return TRUE;
 
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
-	if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
-		|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
 		return TRUE;
+	} else {
+		/*
+		 * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
+		 * newer kernels 3.7 onwards uses 46 bits.
+		 */
 
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
-	if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
-		|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
-		return TRUE;
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
+		if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
+				|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+			return TRUE;
+
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
+		if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
+				|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+			return TRUE;
+
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
+		if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
+				|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+			return TRUE;
+
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
+		if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
+				|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+			return TRUE;
+	}
 
 	return FALSE;
 }
diff --git a/arch/s390x.c b/arch/s390x.c
index bf9d58e54fb7..4d17a783e5bd 100644
--- a/arch/s390x.c
+++ b/arch/s390x.c
@@ -63,20 +63,27 @@ int
 set_s390x_max_physmem_bits(void)
 {
 	long array_len = ARRAY_LENGTH(mem_section);
-	/*
-	 * The older s390x kernels uses _MAX_PHYSMEM_BITS as 42 and the
-	 * newer kernels uses 46 bits.
-	 */
 
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
-	if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
-		|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
 		return TRUE;
+	} else {
+		/*
+		 * The older s390x kernels uses _MAX_PHYSMEM_BITS as 42 and the
+		 * newer kernels uses 46 bits.
+		 */
 
-	info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_3;
-	if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
-		|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
-		return TRUE;
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
+		if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
+				|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+			return TRUE;
+
+		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_3;
+		if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
+				|| (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
+			return TRUE;
+	}
 
 	return FALSE;
 }
diff --git a/arch/sparc64.c b/arch/sparc64.c
index 1cfaa854ce6d..b93a05bdfe59 100644
--- a/arch/sparc64.c
+++ b/arch/sparc64.c
@@ -25,10 +25,15 @@ int get_versiondep_info_sparc64(void)
 {
 	info->section_size_bits = _SECTION_SIZE_BITS;
 
-	if (info->kernel_version >= KERNEL_VERSION(3, 8, 13))
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+	else if (info->kernel_version >= KERNEL_VERSION(3, 8, 13))
 		info->max_physmem_bits = _MAX_PHYSMEM_BITS_L4;
-	else {
+	else
 		info->max_physmem_bits = _MAX_PHYSMEM_BITS_L3;
+
+	if (info->kernel_version < KERNEL_VERSION(3, 8, 13)) {
 		info->flag_vmemmap = TRUE;
 		info->vmemmap_start = VMEMMAP_BASE_SPARC64;
 		info->vmemmap_end = VMEMMAP_BASE_SPARC64 +
diff --git a/arch/x86.c b/arch/x86.c
index 3fdae93084b8..f1b43d4c8179 100644
--- a/arch/x86.c
+++ b/arch/x86.c
@@ -72,21 +72,27 @@ get_machdep_info_x86(void)
 {
 	unsigned long vmlist, vmap_area_list, vmalloc_start;
 
-	/* PAE */
-	if ((vt.mem_flags & MEMORY_X86_PAE)
-	    || ((SYMBOL(pkmap_count) != NOT_FOUND_SYMBOL)
-	      && (SYMBOL(pkmap_count_next) != NOT_FOUND_SYMBOL)
-	      && ((SYMBOL(pkmap_count_next)-SYMBOL(pkmap_count))/sizeof(int))
-	      == 512)) {
-		DEBUG_MSG("\n");
-		DEBUG_MSG("PAE          : ON\n");
-		vt.mem_flags |= MEMORY_X86_PAE;
-		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_PAE;
-	} else {
-		DEBUG_MSG("\n");
-		DEBUG_MSG("PAE          : OFF\n");
-		info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+	else {
+		/* PAE */
+		if ((vt.mem_flags & MEMORY_X86_PAE)
+				|| ((SYMBOL(pkmap_count) != NOT_FOUND_SYMBOL)
+					&& (SYMBOL(pkmap_count_next) != NOT_FOUND_SYMBOL)
+					&& ((SYMBOL(pkmap_count_next)-SYMBOL(pkmap_count))/sizeof(int))
+					== 512)) {
+			DEBUG_MSG("\n");
+			DEBUG_MSG("PAE          : ON\n");
+			vt.mem_flags |= MEMORY_X86_PAE;
+			info->max_physmem_bits  = _MAX_PHYSMEM_BITS_PAE;
+		} else {
+			DEBUG_MSG("\n");
+			DEBUG_MSG("PAE          : OFF\n");
+			info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
+		}
 	}
+
 	info->page_offset = __PAGE_OFFSET;
 
 	if (SYMBOL(_stext) == NOT_FOUND_SYMBOL) {
diff --git a/arch/x86_64.c b/arch/x86_64.c
index 876644f932be..eff90307552c 100644
--- a/arch/x86_64.c
+++ b/arch/x86_64.c
@@ -268,17 +268,22 @@ get_machdep_info_x86_64(void)
 int
 get_versiondep_info_x86_64(void)
 {
-	/*
-	 * On linux-2.6.26, MAX_PHYSMEM_BITS is changed to 44 from 40.
-	 */
-	if (info->kernel_version < KERNEL_VERSION(2, 6, 26))
-		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG;
-	else if (info->kernel_version < KERNEL_VERSION(2, 6, 31))
-		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_26;
-	else if(check_5level_paging())
-		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_5LEVEL;
-	else
-		info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_31;
+	/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
+	if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
+		info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
+	} else {
+		/*
+		 * On linux-2.6.26, MAX_PHYSMEM_BITS is changed to 44 from 40.
+		 */
+		if (info->kernel_version < KERNEL_VERSION(2, 6, 26))
+			info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG;
+		else if (info->kernel_version < KERNEL_VERSION(2, 6, 31))
+			info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_26;
+		else if(check_5level_paging())
+			info->max_physmem_bits  = _MAX_PHYSMEM_BITS_5LEVEL;
+		else
+			info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_31;
+	}
 
 	if (!get_page_offset_x86_64())
 		return FALSE;
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
