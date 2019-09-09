Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF32ADE96
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 20:14:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfoKklhLl6BP0r7UDlU0NejmogvD9AKp5GsRyH7j6KU=; b=kdpCoEVJlj3wuH
	pvrxGREZNpcDnK8k3DtMlqfE7tpxj34LU16MtiPUJanSje3KCXH5PxIJfsM0bUMcEhCBI96IOeAM2
	yImEf1xWCF+HuNdbzoWm3QIV6gL26YGs4u5BWOwzWjW+WSdR4bz7ytyaofYYrCc/kIMg51yIViKJb
	15qOnuNj7QN6y1FCBeptZJcHbhNa4UMTkOvvgxxLp5lEPZcpZe5rNLqfM/W7FKobq5/E5tSZLinD1
	nqeEMQfLqziPvehtdwxqsiwZUxyxEqxF6IDbyrsgWC5FquohHmU415MHkIDCmfjJVNXXLIunq/J7z
	6U6PSFK2B+Mxh+Iy7RQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OBE-0001yC-Bm; Mon, 09 Sep 2019 18:14:24 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9P-0008M9-V6
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 18:12:33 +0000
Received: by mail-qt1-x841.google.com with SMTP id o12so17315984qtf.3
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 11:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Zyn9vu/MXqap+nTmKUuDMqr9t65lKRkBEWPsGRxQJWw=;
 b=UthcQ8kO9S9FCLunJhnz0p5vTTeqpswrs8HKI3djcyn4qVoYH5c1zslsQ8icQsNuPw
 lTHINs8zJxAuS3r7gWwVequPv79z7btg4C4cIvo/Bvv7pMUfe3fuVe+bUmep95QO26L2
 BI+gHcf2ROIyYWP16vdZ+yqFXHBvGWqGqai0v9yIfE//FjF2txzR9RwNq/Ro6no5KKwV
 SKLynI2BWiFTWDKzVEX3Ev6oQFBlSmwcv6iEYGjrpwCBHaXU8FBvmaYyobFXAihr09Sg
 +JDVKpR/sFM89wtVQck3jZCL1jiTauTsbPzPg+yIyOU05PD6RocOP6Ax0DRQKCCIMsDE
 CEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zyn9vu/MXqap+nTmKUuDMqr9t65lKRkBEWPsGRxQJWw=;
 b=OlYIF9qbyt8E4HCa9gBtsFxhl9FEFbhL+C/LFgVeF7kRyU3dMp86bJMHHgOdhN9XTK
 WzeMpwVrkgDcLDT4r1AkyxJERVJhpYLz9WIK1R4SLceRDpga+OzoIN9No9FwH+TBIIU+
 ig/sqNQHYQMH+9eojzI0BNbXY389/95LJVPd0Ua/vA+N2xsTTBxF7oLArRQ7SBQMOeQI
 B6bRg3eawwhl1PxzyNebeLhSeEyUsjfuhe9i5tU3UX7ef024N/i18WAOMZonhhRuoWBi
 zqEQ5V3dmLXcW3R17bWMzQYMeX+qv5X79IAkt9VCx+uh1DMSf6PCdPNehzdbK0lG1op3
 zTZw==
X-Gm-Message-State: APjAAAXkrXHap0uVvTE5+HM+5t40ZkyeoJt2bM1j5+YZQA2EWzDLz8yt
 ZCqLCfehRF/qFzED/jUwDgHr0w==
X-Google-Smtp-Source: APXvYqxD+/dgh77RiunjjHz4vq1SlUkRHl7ZhEwgGQCd/ojd17d3Y9qj1SZatp7epiPygaYzVXaPxA==
X-Received: by 2002:a05:6214:451:: with SMTP id
 cc17mr15008123qvb.15.1568052751174; 
 Mon, 09 Sep 2019 11:12:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 05/17] arm64: hibernate: remove gotos in
 create_safe_exec_page
Date: Mon,  9 Sep 2019 14:12:09 -0400
Message-Id: <20190909181221.309510-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111232_064582_CD84574E 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Usually, gotos are used to handle cleanup after exception, but
in case of create_safe_exec_page there are no clean-ups. So,
simply return the errors directly.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 34 +++++++++++-----------------------
 1 file changed, 11 insertions(+), 23 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 47a861e0cb0c..7bbeb33c700d 100644
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
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
