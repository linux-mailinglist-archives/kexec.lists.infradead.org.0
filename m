Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B52982E0
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 20:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4t982vJEsSlVn6XHxT02PJ72fr2oQ6lcZBGUpIaANhM=; b=u3KBooj1bbh1UP
	SCnrh9VIaMfcsmKqGpL4Ljngifnefg4oX+5LiCmmNxxUZc3igqtsd3MngxGlIdCnwqzyOWQm4gA+q
	Yp1AcFf5wjoGekQ6cEUzWvcp/8Km4CsKcUqyOoGG5vK/Rxsgsy026QhuM0GzgUPoaKUQbTpmjsFzL
	oqBiazcdNPxfpBZZAT4lqHn4RCTKfISpUferBRU57rUHFgD0X8U2eyJ8Ulou91GmiPxNEPf7x3FAx
	DgTEYbJ3VsNAi4wM1dILbLwW/OpKrjpCHWvRacrx8V1ZkxLHAO1onl9Q6edZDdNx014M9lOw6bewS
	MI3EeWj7QTLWRLPwtdkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VPO-0004Rp-V3; Wed, 21 Aug 2019 18:32:34 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VOz-0003y5-OD
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 18:32:12 +0000
Received: by mail-qk1-x741.google.com with SMTP id u190so2736729qkh.5
 for <kexec@lists.infradead.org>; Wed, 21 Aug 2019 11:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=sBcmTKCPArGqx1dLEuzw7dGqn3biKX2D2IdqnHxnWGU=;
 b=X2bYtpl73i+ZQotUx4rPisykcv7elNg3338iVDx51XS8IAesuAET+FJOq1+cDPHG3r
 9rXZdHhqVDL3/xQGl5vT6Oz1ojz+sochUryLWNC1UkgH72k4uApv4TU3RPAclgoyyqhi
 PtlrcnmGLE9h7VsHDPnkFYU5m0ABJTH/PIiWiIwSHa0+lVdUA+kmwFkX7o0khAOFTlSO
 mjutz0tdYRK2G5NUrq7EhUcZ2mAb37l6c2Nnbno0RHr3dhJsbHYDZXP896fB8kwPSIjI
 1XE3mEsJ/pqIbN/NdSziIya/6qdVEfThdKypQFpVlOqjbOH3B1UilgXm0yfhqpBaYVAs
 eABw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBcmTKCPArGqx1dLEuzw7dGqn3biKX2D2IdqnHxnWGU=;
 b=aD5dIW8QM6jkZXd3ox6uW88Gqdjr0gFUrQ5iDm0GUuoPEOkenASNVpsQjhiT+npusc
 QdUXkPagmqMk2z0fJ8GcGyZ82qyrpWuDlHwcnagJpEA0JPpHQOGejT36bmncUWUBHn9e
 zXL+1GosLTHMJloGkk40oSsFcZWy2IoLZfNkFoNMXQnijdUdom1/hwl6ygDpoSMf8e0C
 ih1w41/vlWD6qp6nXfurGot05uOCIEELp9Q1Uhw8Mh+T1wP98h0FTOLUIYg6g4DYBUYh
 CFDkADYd1rp5AebLPaPFKuofcb2KiNc5eUAyLJsjD9trVVeezdoYuCxYeyPefhwPkjdA
 VHpQ==
X-Gm-Message-State: APjAAAUlF6B+Tj9BbKP5ojjtxiyTcD2wOf6miBVmCbCuHrUAUncZDEFA
 OmryOLOlFT7vBwX5C+ISe3Q4JA==
X-Google-Smtp-Source: APXvYqwTD5jDmCNqAlhQx5bPMjXa8Ne5sUA8XkdytBk284LEJsuvSjr3IvAfqjwgKcf+e9prxBD89g==
X-Received: by 2002:a37:6290:: with SMTP id
 w138mr31111453qkb.139.1566412329038; 
 Wed, 21 Aug 2019 11:32:09 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:08 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 02/17] arm64, hibernate: use get_safe_page directly
Date: Wed, 21 Aug 2019 14:31:49 -0400
Message-Id: <20190821183204.23576-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113209_790842_891561E3 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

create_safe_exec_page is a local function that uses the
get_safe_page() to allocate page table and pages and one pages
that is getting mapped.

Remove the allocator related arguments, and use get_safe_page
directly, as it is done in other local functions in this
file.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9341fcc6e809..4bb4d17a6a7c 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -196,16 +196,14 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
  */
 static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
-				 void *(*allocator)(gfp_t mask),
-				 gfp_t mask)
+				 phys_addr_t *phys_dst_addr)
 {
 	int rc = 0;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
+	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
 	if (!dst) {
 		rc = -ENOMEM;
@@ -215,9 +213,9 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
+	pgdp = pgd_offset_raw((void *)get_safe_page(GFP_ATOMIC), dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
+		pudp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pudp) {
 			rc = -ENOMEM;
 			goto out;
@@ -227,7 +225,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
+		pmdp = (void *)get_safe_page(GFP_ATOMIC);
 		if (!pmdp) {
 			rc = -ENOMEM;
 			goto out;
@@ -237,7 +235,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
+		ptep = (void *)get_safe_page(GFP_ATOMIC);
 		if (!ptep) {
 			rc = -ENOMEM;
 			goto out;
@@ -523,8 +521,7 @@ int swsusp_arch_resume(void)
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
