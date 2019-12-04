Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F907112F81
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:05:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPHj0PdFigwnO557Ix5+NmAKdqskmltAxHnNc8QFpog=; b=GsUGj9icQnpCV+
	pYm5ZRdi8EMv5s6EMzBoutcPj1ViLT52PXzgBc6avJF/ByZBRyeQ/M74pum5r3XzEQHmvbu8FNKzY
	SNm0NNP6DRgUi6tWnUs8wJad3RrqQYs4IFojti+yMnyaWPiGvO52jK0CfgANe5L2msHleyrxgfkRg
	WjH37EcNGIH4H5BbzQOdFtfgbuV6qyfTs1Nh2bb0H5HnhxKiJeqBzIkOGMOWLzkP8LOvT0bHH1jdQ
	7bR2KCJJbPopvVxguNnHxNrTVCyJNNnslGndm/t9t+a1beDVuDp1dGVFncZNsSLktWSGTWtXZWAvi
	IbLJ1MLVAVHxNbOjHHww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX9i-0006OI-Vm; Wed, 04 Dec 2019 16:05:35 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4O-0007ZG-4L
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 16:00:14 +0000
Received: by mail-qk1-x743.google.com with SMTP id x1so310501qkl.12
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 08:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=DKzlVpcQACwKyKSnVgM8/kIMtrkAmhYmiL9LEjDkgAw=;
 b=FjadenDBB0WXDBFJdWK7wBZKtljVrQ27er7ggcYbGrfj98oRl7SVlOIDfJ2h9HrPtE
 wIqr2ofYxOfX6BMuSzWrC0sDIpsGXZTC7vbIDEQdASHo2pj94l2BfblVKhs3O6gzASbA
 TGPBNG1idbWrNff4njPvq10uxySF7fBdj4Q7+cq0l2rIGmSJmmB/Tv17w49pIZiQzVvi
 pLKAEc6jvaFbhTyqdG0Wa0MwrLSrQKN8nriHBroKG1N/uBDiekFN9S7NYt9rhWoAbcxY
 jV64qMQvSaCxRqmF56MrsKGlYdwewMjSpycG6KwB9mz9NTuiHu/hZpCYHFV++BqkcGqO
 KIKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DKzlVpcQACwKyKSnVgM8/kIMtrkAmhYmiL9LEjDkgAw=;
 b=JX661ztcpa3FQ2fFhP43N/tY7Vaj+Xvph6PMjiUASrb8mrDZWs/10tiLygJTTlL4/x
 rMDHRiR4auEE095z0b+7VQ62dzGiWhicNwJIzrKWuVeLwK6GlD35xlbhVv2fmhb3X5Zs
 q1Wv4VPOZHu07PXYHD8tHKMu/qUzTRAN770B3yF7NFBG86PJMQIuipGZNRHqG4qNuNxD
 81PPI4Pm2LrYGlxI3E0ImD9J4DhsOyvCwK6ae87lcL41p7Ms1PcfqHCRTux46a7irZ4s
 Ki0t6kyg8Q25fIWOWjLgTDzyQmKLpUQuKXSscL/EHxGPsW1HvvDnsukA0MEY9l7diLbT
 VW3w==
X-Gm-Message-State: APjAAAWYQi0tZWHVmcDykr/QVHFZFIcYmhPMwuYVkdfwoZKo13hmQv2W
 fNFAmBPMia31Y8oZ5plTBtkSiQ==
X-Google-Smtp-Source: APXvYqzUVnv0sHBRbFLKAkGAwpPFGyFDkQYb6mc2NV6YjM+pV7Ku7ddKMWBd73yxnZ5kCDE4HXkdwA==
X-Received: by 2002:a37:514:: with SMTP id 20mr3503569qkf.321.1575475201461;
 Wed, 04 Dec 2019 08:00:01 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:00 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 14/25] arm64: trans_pgd: pass NULL instead of init_mm to
 *_populate functions
Date: Wed,  4 Dec 2019 10:59:27 -0500
Message-Id: <20191204155938.2279686-15-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080004_522892_E8EA7578 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
