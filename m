Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939D1CC320
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 20:56:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KEsNa94ouMg+7ehNL85GADQyJ0X/BYupEGjNkxym1o=; b=T5uHGqJeooQVnR
	Kt8s+2B5AUVRjoJ/M2yMODexB5hTJBElhY+FykOFKywT9HrPzGhTBJ2ZwJeYofT4rBF88Q8ctwK5y
	aCtI4WN0moW7bObD1ErYS0ANgNPwYRnNNBvJXBeI+Mr4BT7s+GLybH8X9eYxhKcZk12Dxi3jDFCNc
	S7q9Q7vjCTkJRk/OkyB0zu3/4Bab+ctApIv69njMAECTx3iLCnNkkFhJzOlugiTAkbb8s7SPaJB3n
	S65PF1XvJ/VwmZh0En7k6YE0qxrtK4tKLksSGg6CgouhgWFBxfo/dgi0Sh9LyBMN+DwJDkeMF7mJ+
	4JPR8U4OWcDqx6RBhE6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSkw-0006rY-4u; Fri, 04 Oct 2019 18:56:46 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGShD-0002IX-Nk
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 18:53:01 +0000
Received: by mail-qt1-x842.google.com with SMTP id c3so9903046qtv.10
 for <kexec@lists.infradead.org>; Fri, 04 Oct 2019 11:52:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=zqjz6RgOj4sr7JAtiYy2U5c4q561GRonF/uToZbvMtQ=;
 b=cbV0/XSbNFTSiiM+0+QH8MvL54ryMmCHecyN10p82JZMgUjz4NAuNaO4H/8MqO02uB
 DH5SqTvw31/30Cm17haSt+OXKyVHeNUl3YmogImEDO9sn/UnPxH0qAmMXipRrR/Uct9n
 2N5X+rQMndJrc7PhVMCH+5DsPAoYqxx9FqvprPInWfziR8Nf18WMI8GaVe6CICmQJK58
 yzWF8Alzj6bWOxiHa4QlAiP+YJVJtikGcD8sofq9y2mv8v0DSK3A753WD828e7L0hCwc
 cV+hsQIYQ1Xmbx0reRqkJ6HbkysxUw64kuNp59klxTXpTAWwY+r+9avQLJTGJ+uZWrl/
 3Iqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zqjz6RgOj4sr7JAtiYy2U5c4q561GRonF/uToZbvMtQ=;
 b=GkD/oe0sd1o7ptRLAhex1xFpc9ItXg3Lt+irVFuPW2FqlORb8xNsPSzjc51b9wCJqt
 0VpkqITs+s4Rs+9IERnAj8sHsIkd/pEBSB+Zi9gY/Zrw4zZ0AMuEfSTCBV3d7JzGClH8
 61TbMufVI7jIXF19hF5ef5+M9sPn5iIU5/VKIMbdXwrrjSF2xASuIog7FRp1sa27XYE9
 2XiGSEZD11ZYNUG8W5XxCIf0BVbZeOpS7oWFAY8xR54sq8l5NCwRNq99fEl9tTAgGWww
 fH1moPeZG8ktaXsRVBH295pFTXwDKp6p584tXeSJRDWRFzpJMRPKiL89pyNcJ9APNnYP
 2c6A==
X-Gm-Message-State: APjAAAVjn5EErPZfsLIRH0yyUDCRTlcvOsIlg/Q3qborvfH2qMX0i/Da
 0O825RThzPxMsr0sepzgV/RCJA==
X-Google-Smtp-Source: APXvYqz/SlNz26COPOm3ZkvwHkWqmnKJHKOZXNlZegzlLgw/1j5CqwFayRpSluooPsIp5pEFfeC7dQ==
X-Received: by 2002:ac8:65d9:: with SMTP id t25mr18010890qto.261.1570215174236; 
 Fri, 04 Oct 2019 11:52:54 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:53 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 12/17] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Fri,  4 Oct 2019 14:52:29 -0400
Message-Id: <20191004185234.31471-13-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115255_916857_79263599 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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

trans_pgd_* should be independent from mm context because the tables that
are created by this code are used when there are no mm context around, as
it is between kernels. Simply replace mm_init's with NULL.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/mm/trans_pgd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index df3a10d36f62..2b02a646101f 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -67,7 +67,7 @@ static int copy_pte(struct trans_pgd_info *info, pmd_t *dst_pmdp,
 	dst_ptep = trans_alloc(info);
 	if (!dst_ptep)
 		return -ENOMEM;
-	pmd_populate_kernel(&init_mm, dst_pmdp, dst_ptep);
+	pmd_populate_kernel(NULL, dst_pmdp, dst_ptep);
 	dst_ptep = pte_offset_kernel(dst_pmdp, start);
 
 	src_ptep = pte_offset_kernel(src_pmdp, start);
@@ -90,7 +90,7 @@ static int copy_pmd(struct trans_pgd_info *info, pud_t *dst_pudp,
 		dst_pmdp = trans_alloc(info);
 		if (!dst_pmdp)
 			return -ENOMEM;
-		pud_populate(&init_mm, dst_pudp, dst_pmdp);
+		pud_populate(NULL, dst_pudp, dst_pmdp);
 	}
 	dst_pmdp = pmd_offset(dst_pudp, start);
 
@@ -126,7 +126,7 @@ static int copy_pud(struct trans_pgd_info *info, pgd_t *dst_pgdp,
 		dst_pudp = trans_alloc(info);
 		if (!dst_pudp)
 			return -ENOMEM;
-		pgd_populate(&init_mm, dst_pgdp, dst_pudp);
+		pgd_populate(NULL, dst_pgdp, dst_pudp);
 	}
 	dst_pudp = pud_offset(dst_pgdp, start);
 
@@ -218,7 +218,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		pudp = trans_alloc(info);
 		if (!pudp)
 			return -ENOMEM;
-		pgd_populate(&init_mm, pgdp, pudp);
+		pgd_populate(NULL, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
@@ -226,7 +226,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		pmdp = trans_alloc(info);
 		if (!pmdp)
 			return -ENOMEM;
-		pud_populate(&init_mm, pudp, pmdp);
+		pud_populate(NULL, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
@@ -234,7 +234,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		ptep = trans_alloc(info);
 		if (!ptep)
 			return -ENOMEM;
-		pmd_populate_kernel(&init_mm, pmdp, ptep);
+		pmd_populate_kernel(NULL, pmdp, ptep);
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
