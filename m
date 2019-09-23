Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A4ABBD06
	for <lists+kexec@lfdr.de>; Mon, 23 Sep 2019 22:36:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9TgRs5EzsSgIF1H6ieB1it76v+jHPSvUrVmEoO6Xl0=; b=fr4PnKoqSVpfWN
	Z7TQA5YB+6xoH5FbABZAUr9U8WDUw3AJbjyBXvBqCeZnjOS/gDRHPjs1P3T63tMQMFPNySXMKR6y4
	ZB4qa4fonkOCxubhhd5QhQRfkf/ebY9kG9r5m9HZp+d2kGhEqlpep1Rin76R1x0kvGTROESEHkvxr
	SgFCbbLOxR3RIi9XFPBPbpoXjItQsNbasQ4nquS/9sDzTgSbs25M4YVWMrUsUzyY8B1ryPdxeGtGe
	wSLEluumjxz7J8zt6gFdDMKsOArrMVA1c1D8xEGrRZCn/sGLOzU6Dl3sPLxMV4J9Afzan1yabfrb7
	7UvRC909+LEtpaqxkwvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV4Q-00058B-G7; Mon, 23 Sep 2019 20:36:30 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2n-0002IZ-6t
 for kexec@lists.infradead.org; Mon, 23 Sep 2019 20:34:50 +0000
Received: by mail-pl1-x641.google.com with SMTP id s17so5530553plp.6
 for <kexec@lists.infradead.org>; Mon, 23 Sep 2019 13:34:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=MH284WpfdMmTT4sRM0t5AqX3XpYou6gu7tWPymm7DjQ=;
 b=dFemtziUUFaRYULYpBmu8NJmI/dbD4cbh1SYA7qB7chGTOR6LFk7fQr6OFdm2Yx62O
 3dpbS1qsBx8c9nCZNRgwfg9bKOijVMBFikwwnEjYXpVcTl4t9HBqGQBnjciA7ttafi8d
 KDKRj/LLWiGmuAfNEqz8+vSSUcdJjH/QdS1UQxIoe1gBHiZcgrte8geeaSyAdZTwwgLr
 ne2TUvQVTeDJ520F9gX/mMBrJUUtKsJzX7KjCXEYNUuUVdoGWzR/nWBrwoLWgDp/YPlr
 6/2j4PssNh9GleF3Uvl7WCswZ7cirfpyTjmuaAZPVr6MymjPpiGuXB2sVm1Q3Hym4IFq
 cVvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MH284WpfdMmTT4sRM0t5AqX3XpYou6gu7tWPymm7DjQ=;
 b=tXbI3x7beGIETLxq05n87g5Cb6M6lxDRWUvvcgY2W+lvHsEP6lHPslWfy1HgFBxNFD
 Iy/6a+hJIOYilT/S0vw6JogCdDCLVso0xmnRM/Srv4Hhvd7KM4SXg7hvKdCWQ4BINMyD
 VqcSZRLHAs1x/lsC7soP6s77G0m4t1Zw3LczuyrjQW2wO39zppRoZhsMTMQv8mJ+ryAc
 WPaVicAVozJ/GU9T+w1dcThnsLacvx/NP3zsMtiz8Rnmok886mlmtwPNrdYL3ivC7i95
 jpN2gyThhlma0xN/jHUuzdats7J0cIuOjo4q++O9qi4YBGfWg/+6QAhiJaF6qkRjs2Q9
 yOcA==
X-Gm-Message-State: APjAAAVkxmnWlVmNPgfZFsEbd/KNBpkDyXrrhbTtch2tmBUxtoCQSEoe
 G0wE8fxSV2uAkTeMIfW8XnCi3Q==
X-Google-Smtp-Source: APXvYqzsQjO1TnwmDcDODrVrxdzYDe42E+P66K/SdBySMPGcvfbOVfLz14Ppu7ESXE+9kNDFkqZ90w==
X-Received: by 2002:a17:902:8bca:: with SMTP id
 r10mr1657503plo.43.1569270887591; 
 Mon, 23 Sep 2019 13:34:47 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:46 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 04/17] arm64: hibernate: use get_safe_page directly
Date: Mon, 23 Sep 2019 16:34:14 -0400
Message-Id: <20190923203427.294286-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133449_345869_2920344A 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

create_safe_exec_page() uses hibernate's allocator to create a set of page
table to map a single page that will contain the relocation code.

Remove the allocator related arguments, and use get_safe_page directly, as
it is done in other local functions in this file to simplify function
prototype.

Removing this function pointer makes it easier to refactor the code later.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Matthias Brugger <mbrugger@suse.com>
---
 arch/arm64/kernel/hibernate.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index ef46ce66d7e8..34297716643f 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -196,9 +196,7 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
  */
 static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
-				 void *(*allocator)(gfp_t mask),
-				 gfp_t mask)
+				 phys_addr_t *phys_dst_addr)
 {
 	int rc = 0;
 	pgd_t *trans_pgd;
@@ -206,7 +204,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
+	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
 	if (!dst) {
 		rc = -ENOMEM;
@@ -216,7 +214,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
-	trans_pgd = allocator(mask);
+	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
 	if (!trans_pgd) {
 		rc = -ENOMEM;
 		goto out;
@@ -224,7 +222,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
+		pudp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pudp) {
 			rc = -ENOMEM;
 			goto out;
@@ -234,7 +232,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
+		pmdp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pmdp) {
 			rc = -ENOMEM;
 			goto out;
@@ -244,7 +242,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
+		ptep = (void *)get_safe_page(GFP_ATOMIC);
 		if (!ptep) {
 			rc = -ENOMEM;
 			goto out;
@@ -530,8 +528,7 @@ int swsusp_arch_resume(void)
 	 */
 	rc = create_safe_exec_page(__hibernate_exit_text_start, exit_size,
 				   (unsigned long)hibernate_exit,
-				   &phys_hibernate_exit,
-				   (void *)get_safe_page, GFP_ATOMIC);
+				   &phys_hibernate_exit);
 	if (rc) {
 		pr_err("Failed to create safe executable page for hibernate_exit code.\n");
 		goto out;
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
