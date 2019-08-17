Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7D490C46
	for <lists+kexec@lfdr.de>; Sat, 17 Aug 2019 04:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Oy5TgwRiynivagQ10+McuaHSI5Y4dHHWiZW5mP0EQc=; b=ZJurINLI5G9lFS
	tEZw9NhZz+mEMRrcojv+GPXyhSaWbvqEe7spuQ+biHuIpP4BkjH533UAqfe78eS0Oml2kwjxAnDFJ
	3qbnP7FCMUYallbPqhkqYX5kdBR7jOgV2mcU3tiv4wVc8Pp1uOkFBtW2mmmemcSdxSK7vrR4Gle/e
	/QUg3AfqX+ovWknsOnQphy3Hsfy8u1MrXDoxNrPYXhax0V8PdnJfCIp6toftoAEJ8zVkUpssCVg6c
	jvS9LY1AKdu4Y+utuarCmnur1qd33C5uVV9hkhvEYZ7TPvgTIC4azhOKDdGDzow1mQLcXr2PqKxcN
	rBJGteiSLiA9/KJWraCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyokn-0003Pm-L2; Sat, 17 Aug 2019 02:47:41 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojl-0002Po-R0
 for kexec@lists.infradead.org; Sat, 17 Aug 2019 02:46:41 +0000
Received: by mail-qt1-x842.google.com with SMTP id i4so8194669qtj.8
 for <kexec@lists.infradead.org>; Fri, 16 Aug 2019 19:46:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=K4mtuNsym73dHWEDL4hJM0gd2cT9s68JdquM/qnM6EE=;
 b=KemMiArfhB/bkmgPhLe269DxdJ2sfUaz9BBRBWeEwBei3UcHKilv5YTdxNIM4RiWZH
 Lom5gHj4hJWo1eaeNJD82dMK3k2fH0A5/ReY1tb8n89jgfH9sJymNlsHbUReswF741Ee
 D6XAyOB5PE3OJRfWPTXL7s49Q2cskfn/e6NkuL9zjzno9KVLjDTcc6sP7R0OOIkFKtit
 5jdvxdN8IjqB75e7PwasKxUnAxP2j8IdmYiNE7eLGhlFq1ZcUQLsE2Y/r6NPFy3Ajc1O
 HvoVAdk5fv0xOTZIGQZmY96Kd3bjixZ21+14XkaZMM1xQJg/N2IKZsH4DVlHDwJs6nP2
 PhUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K4mtuNsym73dHWEDL4hJM0gd2cT9s68JdquM/qnM6EE=;
 b=Op6N326zNJ1t2QqQteJ8qh+fUTcAhcK/9zxxQFclVlevo31EuJoehm0StemvhoWsky
 kWtF+mQfqERpkjOvQ+ACIB6B8aS4eBAGKlJRQksAs5SGmqQOQoBGuH28yTUkeTXvub+n
 o+FsET9f19dKbHYJPmve/KjOnVpvaO3PvBsRD9OmgiWqoqrcmcMou2Zrxpo8hygSFd8w
 Byky/JeJiPaVDqwkgUEq7aKajWTsq0+WZM5Rfu8SxsIWLHOx1hBVKsCYJzRNeuwOIIT4
 f/om1OxkYDiaz2/puENOkTVVf9av8XC1LVOVwNbT44F55JYj2wZ1pXf0UGHtwej0tdZ4
 jTbw==
X-Gm-Message-State: APjAAAVEwfVN1SdZWIL1Dybjmdz1qv+vusFVlzxkBDwbvN0rt6xxfl76
 WmuLes7pREdU2kzGcqgJtYzWHw==
X-Google-Smtp-Source: APXvYqwLah3JFnz5InFyJaEdMbrmW5wa4z0VC1v4yTqNJxq6j6zENAvViIR8vGnHzPMR31kzpHCCug==
X-Received: by 2002:a0c:ffc5:: with SMTP id h5mr3894666qvv.43.1566009994194;
 Fri, 16 Aug 2019 19:46:34 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:33 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 02/14] arm64, hibernate: create_safe_exec_page cleanup
Date: Fri, 16 Aug 2019 22:46:17 -0400
Message-Id: <20190817024629.26611-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194637_892512_C5CB3B81 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

create_safe_exec_page() is going to be split into two parts in preparation
of moving page table handling code out of hibernate.c

Remove allocator parameter, and rename dst to page. Also, remove the
goto's, as we can return directly without cleanups.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 60 +++++++++++++++--------------------
 1 file changed, 26 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 9341fcc6e809..96b6f8da7e49 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -196,57 +196,51 @@ EXPORT_SYMBOL(arch_hibernation_header_restore);
  */
 static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr,
-				 void *(*allocator)(gfp_t mask),
-				 gfp_t mask)
+				 phys_addr_t *phys_dst_addr)
 {
-	int rc = 0;
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_table;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = (unsigned long)allocator(mask);
 
-	if (!dst) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	if (!page)
+		return -ENOMEM;
+
+	memcpy((void *)page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	trans_table = (void *)get_safe_page(GFP_ATOMIC);
+	if (!trans_table)
+		return -ENOMEM;
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
+	pgdp = pgd_offset_raw(trans_table, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
-		pudp = allocator(mask);
-		if (!pudp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		pudp = (void *)get_safe_page(GFP_ATOMIC);
+		if (!pudp)
+			return -ENOMEM;
 		pgd_populate(&init_mm, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
-		pmdp = allocator(mask);
-		if (!pmdp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		pmdp = (void *)get_safe_page(GFP_ATOMIC);
+		if (!pmdp)
+			return -ENOMEM;
 		pud_populate(&init_mm, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
-		ptep = allocator(mask);
-		if (!ptep) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		ptep = (void *)get_safe_page(GFP_ATOMIC);
+		if (!ptep)
+			return -ENOMEM;
 		pmd_populate_kernel(&init_mm, pmdp, ptep);
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -262,13 +256,12 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_table)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys((void *)page);
 
-out:
-	return rc;
+	return 0;
 }
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
@@ -523,8 +516,7 @@ int swsusp_arch_resume(void)
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
2.22.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
