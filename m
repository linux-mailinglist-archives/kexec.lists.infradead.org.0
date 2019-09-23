Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3458FBBD09
	for <lists+kexec@lfdr.de>; Mon, 23 Sep 2019 22:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksAclVeStlF8bFyC2pEHzhwtFx2cmkOgzpwAAaPx/oM=; b=cJCbmT/NhOFGUq
	AQws/EtUPrJpYpX+TmdfHCCoLVKyVnc1CSM6TNpW8tR6YoP9M9EsDJBKsAD60OukkJAEenEmeGHGg
	yrq78upvu81rpF/2IerITyb9aTIlOG4r+wNkMSmvwIbNy83AIqXawM40HGIWe2JS62kITNvFvi/Zg
	La4XdQC8hwexZKGHKnEK27Y7ed4HeaaZdzbSrPyy0rP8hL3lzVY0hzNWINDoSJt5iC0yUF5c8hH/M
	kBePYIgqFqwRbQCUAA4TpWo/KtePceaIGF0x5xdwt+MEMEU39GtyG93sbNfx0iHlgtNTcptq00T6H
	c18d14AAI0hwjX85fBBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV4V-0005Di-Nr; Mon, 23 Sep 2019 20:36:35 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2r-0002Pa-F6
 for kexec@lists.infradead.org; Mon, 23 Sep 2019 20:34:54 +0000
Received: by mail-pf1-x441.google.com with SMTP id h195so9838218pfe.5
 for <kexec@lists.infradead.org>; Mon, 23 Sep 2019 13:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1SIbn4I8MDCXYckkp2+GPJdKwVMA/7ROubKTL+86cvE=;
 b=TyuvnBIn7GTrkJOJF6O1n2kUKVjWTl/Jvq/eyl04IDGEV6GdE55xcYD+uXPR2CJYE2
 Fj6EcXdXduuUt1EhJLwSvO6fcyU4oSLHJ45WMKqPaiy+ElKfo9uflXCaBjVesMZXOA4c
 kAyU9Y/8s4SMeBT7mZta59+mTzqWJztbv/LdkfvoSNXRFaHh1FBDK4B7ofrT3Ltjadvv
 Os8RakD0DNjJTCwhFlW+dpkos4GKwNH2Th5ge+OFkLPGMjqdwuQlsCwu58U0vwZfK3MJ
 HHNMp+Uxvbrj+Xlu5ejnfqQOXwNtQ2cUig111vDTMd10LCfxD60w2qwEwgUwnuRpN5pv
 C+zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1SIbn4I8MDCXYckkp2+GPJdKwVMA/7ROubKTL+86cvE=;
 b=BfB6jFHLqjfos38Gzcd0H7zVS+M8b6D8I8puaxpe7ZIJ6MiEVEEJ8T09LMSyVW9BjN
 WexNXcGOTaRDUn/ZaWHNyL67uZb7B0JxIoppcxD058sJ6wuarAOnWvRhrnWe3w34Bz0Y
 9UxGeqoN4P96WVjmRUCedvb5VxX3YEuRpScf9yuVq65xy0wfsPjCLFNF87nNmFrpQuY9
 HYiMIoOylTYWGseqHfnAfyCJn839gO1B8pKME/6kI7BtpkgUTmDgb08A3vSUfr8q+zHI
 Hzc2uZo8YXqg81d4cz0jA+0srhpElTHZpnEHAT43cTBPqQvO3vkh9Wijx+0MveoLn1/l
 W2xw==
X-Gm-Message-State: APjAAAXbtB3iUmvNpPi4aub02I5Cgf8EgrpwR61Jv6cr7CWkw8h8N+74
 dcV06XrFNse13WAqc/TIYKmMng==
X-Google-Smtp-Source: APXvYqw9oGXCsJ6OvOp1oWJ6xLrYsWIQg7iPoDupFuStJ4lfLcvfFLOSkhGnPGaSagWjR4lvHn8LvA==
X-Received: by 2002:a17:90a:360b:: with SMTP id
 s11mr1477696pjb.30.1569270892861; 
 Mon, 23 Sep 2019 13:34:52 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:52 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 06/17] arm64: hibernate: rename dst to page in
 create_safe_exec_page
Date: Mon, 23 Sep 2019 16:34:16 -0400
Message-Id: <20190923203427.294286-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133453_533774_DF2698C1 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

create_safe_exec_page() allocates a safe page and maps it at a
specific location, also this function returns the physical address
of newly allocated page.

The destination VA, and PA are specified in arguments: dst_addr,
phys_dst_addr

However, within the function it uses "dst" which has unsigned long
type, but is actually a pointers in the current virtual space. This
is confusing to read.

Rename dst to more appropriate page (page that is created), and also
change its time to "void *"

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: James Morse <james.morse@arm.com>
---
 arch/arm64/kernel/hibernate.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 83c41a2f8400..1ca8af685e96 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,18 +198,18 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
 	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
 	pte_t *ptep;
-	unsigned long dst = get_safe_page(GFP_ATOMIC);
 
-	if (!dst)
+	if (!page)
 		return -ENOMEM;
 
-	memcpy((void *)dst, src_start, length);
-	__flush_icache_range(dst, dst + length);
+	memcpy(page, src_start, length);
+	__flush_icache_range((unsigned long)page, (unsigned long)page + length);
 
 	trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
 	if (!trans_pgd)
@@ -240,7 +240,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -259,7 +259,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
-	*phys_dst_addr = virt_to_phys((void *)dst);
+	*phys_dst_addr = virt_to_phys(page);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
