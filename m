Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F10E1D9AB5
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9TgRs5EzsSgIF1H6ieB1it76v+jHPSvUrVmEoO6Xl0=; b=Qm3pcYGydD82uC
	Beo4yQQ7ySPVT7PH1CMAlKz6rccpe6U1sw2EtGTHDPxyO20e2UmYL/2ae6/J9YoigZ7fPXKzisfIe
	30cMIZTdiJEJyJ+vzXbDCi0WUoQhwq3W5/2WXJ6k6Klmp8DtZK/FaC22CWjx3ObXoUxjndESjCjJb
	GCRWzC6kS3XKa6M5OddM3oVFhG2VQ3ylLuf7b5RBtjKeZ3Cbsx1C1EPeHP2HTEax+/nRocIhuQLyx
	OGeqsJ8uefyMri2539qqNByYKVg9oQT+pSN6S5En6rBAIBmPAmxfwcJ4Z3KGdAptLMAqJzk/O3Gbr
	il24P6Vmr2he1eMsIfJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpVr-00068S-UX; Wed, 16 Oct 2019 20:03:16 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTU-00049p-41
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:50 +0000
Received: by mail-qk1-x743.google.com with SMTP id y189so24012230qkc.3
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=MH284WpfdMmTT4sRM0t5AqX3XpYou6gu7tWPymm7DjQ=;
 b=DuqfqRWMPOvEPNM2SwMz7BaMdbSnbr2AOXFceodEDGBgvpTPxvzCCJRKO0XMXLWKTh
 p5mnTcTZu0KDFMwnKTHbaqAZXwXzW6PFYUveTxH/wBfPgzGiNCjn6GlWf+4Nvr1oufFO
 6V5GE/32z3BR70juhuUHJ2Hz52ZWJMuLiPhG90YCqIEOJXq8wQx1xpZz76Bqv5Dcsx6P
 6sZ/O1FIS2CgbuXRByzyFtw17uNhQjJiSkouOqEmo+3ol6GZE2Cc8gXwjti8Bt0HuDJd
 jNPp9QaZq6Kdh5YZ6MEpUQ5Sad/E+JSdbx+Q59PlgQop26kj0b3Bg5LY8JloRVaBAb+J
 YKdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MH284WpfdMmTT4sRM0t5AqX3XpYou6gu7tWPymm7DjQ=;
 b=WstPPpXKgZxEUmQ+sWXjCyjn2aKmvW2rvQ4/Z3wfwbhlmYLULKCcCEGSs2xvHkbHM5
 bpWZ5vPnABAOl6iVYxA3PL6ApWtbKzJ9roM7E3KbQ1K5LAMHxNmZ1NC9IYT6LfY+WSAU
 z2sU1JKzSNVdk5Z6qrDn58J7dZlqPH2/dSgjw/JHBLJUBoGpfDpwZ5PpCrWvk1rAIGTg
 T4Ehq1ZPAHa6If3R56qxp/FvlulIb2h/N8sQ0QPT/rKVqv2IzDaG1R+R59/thRCZIsHv
 UD2gtwErQY5QDTa0Nem1PYZCJj9APtVRQr5kVi6uUSHypOCzrVtb8eQG0gOTIKNtWRk1
 y9Fw==
X-Gm-Message-State: APjAAAVIEnaoiYERj03VGtUG5YpgPLt5mraRFEWIC0Un3P/umh/VrPdo
 ApktT9Nkv8u2BGlotoFh/pI8qg==
X-Google-Smtp-Source: APXvYqwQfg+AMEijbvYInDKw1rQxmB6TO6d7tt0LCd8e4XMQCW2+/wCpDuDVQi3KUQIh6WJn1VFpNg==
X-Received: by 2002:a37:c40d:: with SMTP id d13mr6599119qki.371.1571256047252; 
 Wed, 16 Oct 2019 13:00:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:46 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 06/25] arm64: hibernate: use get_safe_page directly
Date: Wed, 16 Oct 2019 16:00:15 -0400
Message-Id: <20191016200034.1342308-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130048_183803_04BFA7F7 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
