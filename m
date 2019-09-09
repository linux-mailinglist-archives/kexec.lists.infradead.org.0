Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D79AFADEA4
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 20:16:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPmpbgP6pVguvHl6oyWMHP267zXkXPm1zhWgSZHl8Ao=; b=gfM/irNxhtsmC4
	+neUI28kvQ0UmmPIKf3BFddCAkkKmzOQ840vsvbIz0LLzQCbyfjFtaE3+qBz5WpVBI66XP/YRrzsl
	kznTYC5GJhN3U5O4h9szRqyXtvCBxIvvWd4y5B2VoRrhTc+6lWYocpYu/B282IWjj3x5+8nodbXnq
	2J5HI7thygR6Oqu1/3Y1c/Q2PLii1WdfB/GUI06dAWzb34khcVEQsGBHxRWajd5Yc5zPKBN0wQbMA
	oj7dYx91QfPVoYNuqNs5zO1eUK+iNq3OnNsqAq3DjJo793i/tZW5FuD1Q5WemIFVdyFitS45RaS3k
	3XfPzkGQNvCAp9ZX8EvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ODC-0005Ca-04; Mon, 09 Sep 2019 18:16:26 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9a-000099-Hq
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 18:12:45 +0000
Received: by mail-qt1-x843.google.com with SMTP id j10so17240476qtp.8
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 11:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VDzqkQgnkwsjeSD2sj+xCRv+aPoQdl7/oAUIodozYzI=;
 b=gEFy66rKgwtrGikuVUBnPyDp5wFXvKrpxJzr2q8Qx3ehi4m93SO+cT8ckPzt3hC8G1
 5wjKdyCc5YIkYVxz+nYq19eoJQ0rdnxqNJnsnOqZZT/PzPbJu2FhQiaHyxcaNdKXnr09
 0jnUs37ghN8KKRCsNZnq1V0ltm+b6H7CnXfXZik/8St/OTcFJqQPRi+/6I9Ra8kgjZTm
 yZfQFlr+97DIgzbJ0FcDnqMXwd4Wdj/tGE00x1RC0STKY6PXXcs1ELvfCOTKQMrVguot
 oy2uD6HEOhYRGdzg2HchRp5NQ8ML3hZbKNCubNsZaCy/bs/6SVxAEVcXq+z3OiC54hub
 B0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VDzqkQgnkwsjeSD2sj+xCRv+aPoQdl7/oAUIodozYzI=;
 b=QoRs5h+Jz52lNBOOllyuWWghUNDvlyX3VI7RWArAeRnp3w23XkPLQuzI9v8TXyJ+bI
 uAnZWjwg2vGmf/7UHq1oqwdsIdQQ7kZU3BaFKu5Xn6Ajs+nS4seFKajx+Vrm6LJbMl60
 njuhSvAb0V694Wji8ytfDfflHJ2VgDlDmsCFIlKHeqD/Ao05erO20V5+hyE2Uqn/lAB2
 h2cVXShkzJv4zT877lMiipSmJV7cr6mM/O0CJjVYOPQ23jK97U6T94cpauSmhpO5qm/O
 PTM+swXlly04/6gSZeZ02vTDFd+Mf67DurstcWH1uyBTHjBblFl6BolcadpXdTyooJNW
 vuiw==
X-Gm-Message-State: APjAAAV62xMJjMmd7Einr5GOL52y839vOXL63i48oiP0alnuBSutdZj3
 ZhAKhvseTpegMoqIe2wOxQa6bg==
X-Google-Smtp-Source: APXvYqy2DfI9VQoDCC6Va2zmAeWcK9TGmDIi0yl0BgAbKSBK0D91mrY30M5+sJkkAC/vKvqTDaqtSg==
X-Received: by 2002:ad4:4d8e:: with SMTP id cv14mr7524241qvb.49.1568052761763; 
 Mon, 09 Sep 2019 11:12:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:41 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 12/17] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Mon,  9 Sep 2019 14:12:16 -0400
Message-Id: <20190909181221.309510-13-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111242_655345_E5D55E35 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
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

trans_pgd_* should be independent from mm context because the tables that
are created by this code are used when there are no mm context around, as
it is between kernels. Simply replace mm_init's with NULL.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/mm/trans_pgd.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index dfde87159840..e7b8625b3ac3 100644
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
 
@@ -199,7 +199,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		pudp = trans_alloc(info);
 		if (!pudp)
 			return -ENOMEM;
-		pgd_populate(&init_mm, pgdp, pudp);
+		pgd_populate(NULL, pgdp, pudp);
 	}
 
 	pudp = pud_offset(pgdp, dst_addr);
@@ -207,7 +207,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
 		pmdp = trans_alloc(info);
 		if (!pmdp)
 			return -ENOMEM;
-		pud_populate(&init_mm, pudp, pmdp);
+		pud_populate(NULL, pudp, pmdp);
 	}
 
 	pmdp = pmd_offset(pudp, dst_addr);
@@ -215,7 +215,7 @@ int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
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
