Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1A6CC31C
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 20:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7cXE/KyE56OfD2TYKkZMDLtFJ1M72ejAm8kcQ8Bx+Y=; b=FRiMlD3vmoyY7M
	4pgGMUAf1s/LkXsUaoMqMCcNCpObOt54ohkoeBd1/yBeqJbuEHPEoq6DYgaSG6f8OuMA1iYYaSLON
	czzjWRfdN+5kWuDlUJ0LKTbqcVKdGPAz+h3hXrVw8mcLDF0tTo11dNo6Tkfyn273OCAuDRFzOuvJE
	dR6xg8YaK5C9HiOfy5ZV8dQDAoZNmP84MEup+LrsEa7XMUqbcp2JUzroUJ78KeWIqJ36u/u+ykrAG
	S6vD182TxWXcEWPLFr1CWKERioDWRIBILB1G1w095rcDrdg/3qZ84HYVbMgVfpEPunirGxgRsI9vA
	tLExU1qScfwc/jvQ8dIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSkS-0006Mp-74; Fri, 04 Oct 2019 18:56:16 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSh7-0002Cj-Hl
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 18:52:51 +0000
Received: by mail-qt1-x843.google.com with SMTP id l3so9974436qtr.4
 for <kexec@lists.infradead.org>; Fri, 04 Oct 2019 11:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O0CBEozBtTGW2pERGsJgZuZ1bw9J0cp5B10jh4ayzug=;
 b=dMLyKgxhiHHOM9Jl5LyXO1zGCa+0TVkQV3LMuLICjYCIJ6sVu0L4lyfe8lM4h1jX+e
 SzauJW6dRSZeci1id4vb0RHcZVXzaRyXfDiltuA7HuWYsphUyKsDdzPAn2golwmOY21k
 WGyFeH+QKwpEYrAn6BIVQAPYMV00OwgRBSVwxE4axE+ui0udvdxZ7psPWGSvLvkBvAwY
 8+cmLln8YlmKYexAVIX3uMAWBOF9rb4vCxmxDgetMJk32dFFNj3qmVp6L0Hd59p6+b/U
 HqTIdSF7PalHzjYJvT5tofuJbYa4T5EdcERQQ2mxOQtwtcoc9C4Fo9YXL+T+OL380VYM
 xKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O0CBEozBtTGW2pERGsJgZuZ1bw9J0cp5B10jh4ayzug=;
 b=fV05P78aKwwRXhJ5k7ribZwdN7DDKjfkxdJrWQ3llWLqXZRZNzmNvWncbwbn8TVfnc
 jCfI32QotxWmeemcHcmORHZzm9AetXV/cKFLglHj+6ViWYTHy3hphnLc8AaP3daYsMsa
 Z/7tlCbUSMqQyOgbEub+g6cHh8+2MZpMCnLTlDNXpKbC0IGR2hQu5nWgJvR1O0y0QU/w
 C+yoJxwsme/+GTwFQ3RoFDeopfMX/oHgxZPJxQpk4QWarix9ALLwlXrtVsLLMYjPCfwe
 gzxLKPMRt2PszfjQ10aA1H92zJwmYjpMxwE5Z6LON9ANcevryTX+WlfFT3sKlDHNwqCI
 aKBQ==
X-Gm-Message-State: APjAAAVFLYDrTpUVBGgne2YZpj1fQLiDi8BDaBrLCnTUvKSWl062SEU7
 NQ2g+AQ53ZZyCT4JOObojgsOzA==
X-Google-Smtp-Source: APXvYqxXhDwS8p9Q78xI+9V+vIJfUvep9QSLBQt+3nGM+M7w73/jXJx6kNv+/7UkSIPjTzUyh/yNnw==
X-Received: by 2002:ac8:444f:: with SMTP id m15mr17621211qtn.110.1570215168607; 
 Fri, 04 Oct 2019 11:52:48 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:48 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 08/17] arm64: hibernate: add trans_pgd public functions
Date: Fri,  4 Oct 2019 14:52:25 -0400
Message-Id: <20191004185234.31471-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115249_595262_1A7EF6B7 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

trans_pgd_create_copy() and trans_pgd_map_page() are going to be
the basis for new shared code that handles page tables for cases
which are between kernels: kexec, and hibernate.

Note: Eventually, get_safe_page() will be moved into a function pointer
passed via argument, but for now keep it as is.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 88 ++++++++++++++++++++++++-----------
 1 file changed, 60 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index ce60bceed357..ded9034b9d39 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)
 }
 EXPORT_SYMBOL(arch_hibernation_header_restore);
 
-/*
- * Copies length bytes, starting at src_start into an new page,
- * perform cache maintentance, then maps it at the specified address low
- * address as executable.
- *
- * This is used by hibernate to copy the code it needs to execute when
- * overwriting the kernel text. This function generates a new set of page
- * tables, which it loads into ttbr0.
- *
- * Length is provided as we probably only want 4K of data, even on a 64K
- * page system.
- */
-static int create_safe_exec_page(void *src_start, size_t length,
-				 unsigned long dst_addr,
-				 phys_addr_t *phys_dst_addr)
+int trans_pgd_map_page(pgd_t *trans_pgd, void *page,
+		       unsigned long dst_addr,
+		       pgprot_t pgprot)
 {
-	void *page = (void *)get_safe_page(GFP_ATOMIC);
-	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
 
-	if (!page)
-		return -ENOMEM;
-
-	memcpy(page, src_start, length);
-	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
-
-	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_pgd)
-		return -ENOMEM;
-
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = (void *)get_safe_page(GFP_ATOMIC);
@@ -242,6 +218,44 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	ptep = pte_offset_kernel(pmdp, dst_addr);
 	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
+	return 0;
+}
+
+/*
+ * Copies length bytes, starting at src_start into an new page,
+ * perform cache maintenance, then maps it at the specified address low
+ * address as executable.
+ *
+ * This is used by hibernate to copy the code it needs to execute when
+ * overwriting the kernel text. This function generates a new set of page
+ * tables, which it loads into ttbr0.
+ *
+ * Length is provided as we probably only want 4K of data, even on a 64K
+ * page system.
+ */
+static int create_safe_exec_page(void *src_start, size_t length,
+				 unsigned long dst_addr,
+				 phys_addr_t *phys_dst_addr)
+{
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
+	pgd_t *trans_pgd;
+	int rc;
+
+	if (!page)
+		return -ENOMEM;
+
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
+
+	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
+	if (!trans_pgd)
+		return -ENOMEM;
+
+	rc = trans_pgd_map_page(trans_pgd, page, dst_addr,
+				PAGE_KERNEL_EXEC);
+	if (rc)
+		return rc;
+
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
 	 * ensure that TLBs are free of any entries that may overlap with the
@@ -462,6 +476,24 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
 	return 0;
 }
 
+int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
+			  unsigned long end)
+{
+	int rc;
+	pgd_t *trans_pgd = (pgd_t *)get_safe_page(GFP_ATOMIC);
+
+	if (!trans_pgd) {
+		pr_err("Failed to allocate memory for temporary page tables.\n");
+		return -ENOMEM;
+	}
+
+	rc = copy_page_tables(trans_pgd, start, end);
+	if (!rc)
+		*dst_pgdp = trans_pgd;
+
+	return rc;
+}
+
 /*
  * Setup then Resume from the hibernate image using swsusp_arch_suspend_exit().
  *
@@ -488,7 +520,7 @@ int swsusp_arch_resume(void)
 		pr_err("Failed to allocate memory for temporary page tables.\n");
 		return -ENOMEM;
 	}
-	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, PAGE_END);
+	rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, PAGE_END);
 	if (rc)
 		return rc;
 
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
