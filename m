Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1387D9AB8
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0k2kcRR0vUIMuiPen/LbjUmQxNxRDS5TQGd5+By/qY=; b=tVfL+BAE6lKHYI
	8/u72if1BX84TPWqM76/wZ2LO1PBcY/q3fZksYtx3Yoj088RhQ8kvyU6WgjQC3WQT8daM2RO+JS8T
	joy746R1PEKOFqj5tC7NaINqbJRBAS8QcQTmG35pmP8h5YgGI2miRohLHuWyThXgj8KTSwPr0koXe
	YldIhSxr+v+69PpdaJSaATn0jQSd1sFi+pXIB8QZ25r6fT4RIbrHTXl6oLOH2AO0m+x/XmlH4WPoe
	HVRVrzs2msQasJi79jfTT3jfUEa/8w3xbGBDEH5oDsvkucqAHqs572rcpykC7Fm24cW9x2nqnpxgJ
	Nw+yCZRG9wDUAXtHAHUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpWS-0006fq-DS; Wed, 16 Oct 2019 20:03:52 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTV-0004BZ-WF
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:52 +0000
Received: by mail-qk1-x743.google.com with SMTP id h126so23971482qke.10
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=54zhWvY2wVoS8DJjdyrocZPF+2/4Isg+VJgEApzMseg=;
 b=VQjJFXBgIgXw9ArhBGE5FQdjnAyrw85fgXHavYyEVvr/1RLZMNuDVk5bbNdZcIF01O
 35K3GcvDVMDbUHK0atzpOyVj1bnP2ahysMefdRQyZT7RNeMYNKsTQdbY7H889PYrunrA
 byHCuUtEBXE9ebvHhThbdXWFgWz79nt7Ls87mfshUdegvoSErZvOsTSKjNu/LwqOSFlo
 9yUmGZ7PqYMUWTTNbdAJdDnjaFu2xo/YJzXw2Mupyx2IpWrevSHHYa1bi8t5qt/Vji9u
 ULI7vRqzM/M+Tv+BIDZkTDxcY1UYoWVwcLbdwsdw/GAqSseZyIds3FreVQ/r4+b1Rdgy
 kn6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=54zhWvY2wVoS8DJjdyrocZPF+2/4Isg+VJgEApzMseg=;
 b=DIeeEOhF8wR/vWWnQ4zQMvJuHZGi0FjvHB6JxYpNalT4ZQQtYORs3vMSkebTt0HCCS
 6CqZs6mviBYP9fyu2aq6hVe7nJqtKhi/65FDTXXCC+mZ5FuBEels3/AOMKQA/dX/5TV+
 SMgB+ZKADQz8qPB+LFTC8BWgDVxvYBp51zdgCt8yj62l6NI5OKhMrPTRWIr1GAX0DuWO
 FJSxFwAoZY/V/wcIC/FhQHHhaWzRcllA1mtSIA3pWwwgIxWMGTL8nMF8RMeTc9vEr0yC
 SNtEdMcIQ8YuKJoRUgUghvUv/gomOUsY8vEx53d5WAFdp0tnGCLkvdEXbQ7haCdH5FqO
 p1kg==
X-Gm-Message-State: APjAAAW+93Ia0WBrx6tcAuxLVU+ftFqR1fZXVTbaeHYayiEPuVFDupO1
 QU+HaXUAaNnz3hb1iXY6C16vqQ==
X-Google-Smtp-Source: APXvYqy3x59CRPAE6btLW2GjTr9ElybCrYkLzTC0CHHa3cMsttfLkg9SMS47hmeEdoyqpluItNWgKA==
X-Received: by 2002:ae9:f012:: with SMTP id l18mr41680079qkg.291.1571256048767; 
 Wed, 16 Oct 2019 13:00:48 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:48 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 07/25] arm64: hibernate: remove gotos as they are not needed
Date: Wed, 16 Oct 2019 16:00:16 -0400
Message-Id: <20191016200034.1342308-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130050_301857_D2EA10AF 
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

Usually, gotos are used to handle cleanup after exception, but in case of
create_safe_exec_page and swsusp_arch_resume there are no clean-ups. So,
simply return the errors directly.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 49 ++++++++++++-----------------------
 1 file changed, 17 insertions(+), 32 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 34297716643f..83c41a2f8400 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,7 +198,6 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
-	int rc = 0;
 	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
@@ -206,47 +205,37 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	pte_t *ptep;
 	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
-	if (!dst) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	if (!dst)
+		return -ENOMEM;
 
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
-	if (!trans_pgd) {
-		rc = -ENOMEM;
-		goto out;
-	}
+	if (!trans_pgd)
+		return -ENOMEM;
 
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = (void *)get_safe_page(GFP_ATOMIC);
-		if (!pudp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		if (!pudp)
+			return -ENOMEM;
 		pgd_populate(&init_mm, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
 	if (pud_none(READ_ONCE(*pudp))) {
 		pmdp = (void *)get_safe_page(GFP_ATOMIC);
-		if (!pmdp) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		if (!pmdp)
+			return -ENOMEM;
 		pud_populate(&init_mm, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
 	if (pmd_none(READ_ONCE(*pmdp))) {
 		ptep = (void *)get_safe_page(GFP_ATOMIC);
-		if (!ptep) {
-			rc = -ENOMEM;
-			goto out;
-		}
+		if (!ptep)
+			return -ENOMEM;
 		pmd_populate_kernel(&init_mm, pmdp, ptep);
 	}
 
@@ -272,8 +261,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
 
-out:
-	return rc;
+	return 0;
 }
 
 #define dcache_clean_range(start, end)	__flush_dcache_area(start, (end - start))
@@ -482,7 +470,7 @@ static int copy_page_tables(pgd_t *dst_pgdp, unsigned long start,
  */
 int swsusp_arch_resume(void)
 {
-	int rc = 0;
+	int rc;
 	void *zero_page;
 	size_t exit_size;
 	pgd_t *tmp_pg_dir;
@@ -498,12 +486,11 @@ int swsusp_arch_resume(void)
 	tmp_pg_dir = (pgd_t *)get_safe_page(GFP_ATOMIC);
 	if (!tmp_pg_dir) {
 		pr_err("Failed to allocate memory for temporary page tables.\n");
-		rc = -ENOMEM;
-		goto out;
+		return -ENOMEM;
 	}
 	rc = copy_page_tables(tmp_pg_dir, PAGE_OFFSET, PAGE_END);
 	if (rc)
-		goto out;
+		return rc;
 
 	/*
 	 * We need a zero page that is zero before & after resume in order to
@@ -512,8 +499,7 @@ int swsusp_arch_resume(void)
 	zero_page = (void *)get_safe_page(GFP_ATOMIC);
 	if (!zero_page) {
 		pr_err("Failed to allocate zero page.\n");
-		rc = -ENOMEM;
-		goto out;
+		return -ENOMEM;
 	}
 
 	/*
@@ -531,7 +517,7 @@ int swsusp_arch_resume(void)
 				   &phys_hibernate_exit);
 	if (rc) {
 		pr_err("Failed to create safe executable page for hibernate_exit code.\n");
-		goto out;
+		return rc;
 	}
 
 	/*
@@ -558,8 +544,7 @@ int swsusp_arch_resume(void)
 		       resume_hdr.reenter_kernel, restore_pblist,
 		       resume_hdr.__hyp_stub_vectors, virt_to_phys(zero_page));
 
-out:
-	return rc;
+	return 0;
 }
 
 int hibernate_resume_nonboot_cpu_disable(void)
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
