Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA991936E9
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 04:27:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MSYQikGy3PicaaBACmnRpDEivs0ZRKf1mQgNj6TGJoA=; b=Hyd9FhLYizBRba
	xRojng1STopEZ6ep4PlvZouaAKCcle7m5nuBLbEtsbrxJ+6BnoujKTDOChpu9LTd4jdEYZTA11O8Q
	VnYQ8eykmCMfiynUtWxVFeunQMikmQQJNtZ+dNnSaC0mGBD/I8Mk6yn1XbTXSdPiasTXhZy6iMSRJ
	u8FKeIsAWZIpL5zMZnhNugqv1QlfNuzr6hIUJ6wlv/NBcBLJhtdoL2RPaKjDbS5U8Cy/SMRnrY8gb
	B6w/U5P8cWXsTjWEGPbiqTQImJL+vjfCYoNLGgPhpHcGz7M6VNOCcpM5jjbZGx58JGU280TptxP4b
	yyNh5YSKHvSunda2b4Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJAu-0007WO-7F; Thu, 26 Mar 2020 03:27:20 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8C-0004Y2-0k
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 03:24:33 +0000
Received: by mail-qk1-x741.google.com with SMTP id d11so5114899qko.3
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 20:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=ze3FGBZb0nSlBTYQ3vDSCVsFtbgdtnnRlj5C751EbXw=;
 b=f49DFHwQ6bD5X4T6UQG6qlTqIEvg3jahXGHW4JpCoTMg2jEaJI6BxNqCBdECJgFfK3
 4TI/epxBM6OVNuRhLYFo4jmICLO5LM/VcYhlagkyOCPXmvQqG/tUrcW4UrajjCAg3J/i
 nu7t0GPzghw7vKGqT3E0eKZZeIjB4VojCzJnaIgkNWWAZRv4BINCOVe4mktc2HxfAPAe
 d45QCBnsMTjafOfsfWeFhzYbdxSqDyDUiATTddFL1b8T7FNgG01/VsZ9jk/wxRoHr4+P
 9TVuZAZ9WR4x9gl4ppCWZP8/njPwv+C03K7zIiScDSoiqbgSeE1NpbS4WGKA4syFVN0f
 NWaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=ze3FGBZb0nSlBTYQ3vDSCVsFtbgdtnnRlj5C751EbXw=;
 b=P8bS/i03ZRBfNOp+emzYVpgnEOhSnRMuswibXvXWTCloz1GlkWc6+F+g7gDkXRJPOp
 hsCuzmzQsrnGEallw+udEAnqpDMxwOedLp7gjE+MyWXW4dOcQhDZEZU18Uab5gaqweXL
 EUoAuRJO5p8geBV6OjHA6LIdbK6QdBUe3wc4Kapp7EnnPtO5x4zWWPol4ZJw+msM1cyq
 CreCspmUbQRQhR9NHmf0abYMnRCmcuYT6j/LJOg+0r9IojFzn3uRs7gEyMNCW0k67LTr
 wxlvlL6CpaZJBzEpKj/hvFeM2M3YByVBOgeAXHP8FOmYHQeJmRQQX3a0sxEs+JEj1GWx
 G5Nw==
X-Gm-Message-State: ANhLgQ1cAD+XXSgYpdFNkVAFOPUnZhBzNq6NNborSbzsp053DBEv/YdQ
 3RqHj+C07pcTONWwH8n3XHtRRg==
X-Google-Smtp-Source: ADFU+vtdrLXfDGYEC5WyjNqxKQP1AFgGN296Vf8D65tgrkwFasA1en9oG0QpvaU+6qDqbwwX7VAE7Q==
X-Received: by 2002:a37:63c5:: with SMTP id x188mr6282164qkb.276.1585193070601; 
 Wed, 25 Mar 2020 20:24:30 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 05/18] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Wed, 25 Mar 2020 23:24:07 -0400
Message-Id: <20200326032420.27220-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202432_180369_E15D94A0 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
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
index c16ae4e2b496..37d7d1c60f65 100644
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
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
