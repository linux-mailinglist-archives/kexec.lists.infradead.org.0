Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC27DD9ACB
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KEsNa94ouMg+7ehNL85GADQyJ0X/BYupEGjNkxym1o=; b=uHVJKpt4FJupub
	XfEF5RUVJLOuFeslQp+DppVUXPJcATiHW9uLC3qM5gFxATyfmXN3Kl7HO/30riAohRBelx98gksQc
	oiz5V/lIt0nxh5hG0LaQBtZ5yvXbP+zzJxIJj87qcU/fjWN5K+QgfgO3L6PLQDoDnOg0GulxH858m
	ocuHing8pqcuFTkr8d3R/UpfsQhTeqFOfmkTbOFE0E28smNm5h8LIQE/vmyM8UF5pxjySZWUL8l9+
	AE8A9foeoOGRxYZZkE4JBYf18GvOIM84/BwxfurGJ+aZatkWYLqfRFofmUayaaO4O/j543Iumh2vR
	6PaYEEMH20Ez6jL+I0pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpYr-0001RE-Ne; Wed, 16 Oct 2019 20:06:21 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTg-0004MA-Oa
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:05 +0000
Received: by mail-qt1-x844.google.com with SMTP id j31so37990002qta.5
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=zqjz6RgOj4sr7JAtiYy2U5c4q561GRonF/uToZbvMtQ=;
 b=LLthtC7Z0agY8Vp/MZgx+7D2aXNxndD44msqC/X0okCV465MaYJvQsqSE9+VuFAcSr
 TcB4zHdjU/Vswk8EVE4miktspKMn0pTBzroRoTQZWoZwUuzdEfMlqvjz7fmsGvk7T2ZM
 5/I6z5zILNUJV+Cw2RSB7xPNNP1wAvsp9nbEpm6O6YBGbWiUOh7UTO8ZgtQ344Ql//TO
 0sQ4gx5pkTjgYDZQX+2z5vaB73fqyIn+te9CcR1939r4/03cZkkz1sr1imWCVBWE1TnF
 OfRxclovnZUw8az+6t8P7XZTvoChwcgxunJzdlAUFWttRw6PXTykHUERYanemEjzSe7y
 WzWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zqjz6RgOj4sr7JAtiYy2U5c4q561GRonF/uToZbvMtQ=;
 b=fCTQvnTrWmV2EXq3KHDFjcefeeAmUqZTEF1kDRRTvBUpSVjWDtl1tgoP+gm6Rhsjbf
 0vgbpy6uGBl9qqRZ8+4fJIEDYoXWqTBOTuRgrrnMWdlEWWVoFTJ/BmKdecHiF+m8Mzz9
 D9RFCY000ut01uUg70E4+o2s0KM9Jwhu4EgFieXR+Cif63R3KoIO0HRUSB61l3S33bed
 mB3OJvVk62MC2g2zf/inqK1yKkhgDPsokOJd2KTSzReUPA5P9GzM9JN5R+X/9voWwNaP
 X62osfo8zJHI/KhQohiMRb07stYV5VuyqXw+lxUxdXcA5qe/tH6yzncd+0pa+0BsfLvV
 YgsQ==
X-Gm-Message-State: APjAAAXlfxA0UNVRwUoY6eoPSztfRxaF3CHJGZEQ1ohRYcztSyXvGlld
 C/MoJ/Zmfb+KhmSS77By/s+Ehg==
X-Google-Smtp-Source: APXvYqxeEmEBJ8iuQjzSMlHmkpciqeX2tmKot2rZrpYNF10NaJYEF1ASBSV5ESwtGHI0azLzv5plFw==
X-Received: by 2002:a05:6214:208:: with SMTP id
 i8mr42898296qvt.108.1571256059489; 
 Wed, 16 Oct 2019 13:00:59 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:58 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 14/25] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Wed, 16 Oct 2019 16:00:23 -0400
Message-Id: <20191016200034.1342308-15-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130100_873470_6D96E2EC 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
