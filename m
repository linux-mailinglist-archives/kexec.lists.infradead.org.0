Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFB3D9AB9
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:03:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksAclVeStlF8bFyC2pEHzhwtFx2cmkOgzpwAAaPx/oM=; b=QwcMeC8GVx/0jv
	ItgR14KP2xjkS1qKDA2LsgTxiz4rjy37MCzTqeh+AFrDDlPWjPX8uxmZ6kIsGEDowHz8XyJRT43eT
	CEqaJznDSOHtDWm0lsgm0aj8WFgBPM6K6emwqN5IXxaomQKHnY2FrzfvycIIqr1iaPVlB4bD/gWdo
	B4r0xwG9h2BvITEX2gX3vEpNZ18WuFL8XQgva1YyWb2VLp3XOa5TbNf41ElWKpZwjpTSLujWXC3/f
	F6OJ0b86Fs1Eh7zBJgdexXNPNps4MXSRHXahpPfal3zgc8HEPGf9SQ8XkpCH+uXAXlQYe1KLxqxz3
	9wwzzpAYwlJ5xMVbAntA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpWU-0006hg-SZ; Wed, 16 Oct 2019 20:03:54 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTX-0004DB-RE
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:53 +0000
Received: by mail-qt1-x843.google.com with SMTP id n17so18627788qtr.4
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1SIbn4I8MDCXYckkp2+GPJdKwVMA/7ROubKTL+86cvE=;
 b=AvFdQHz3ZXrU1SWGbYfPv5ripelLhgYAiZX4rtccUBVKcJrrJ89mK3qk1C8RQsOusd
 spipU71v7sl2MCbZPijlOBg3Ym1xhGfX933/vvAiJ5FQBBjLv13ahbLY/UCbQLit+iGP
 tZE9GTZPfPZr46H4dtL1HBMd9zmLJiZuYXuN7XJvaGmVwXn17ouy0csJGm7ZvM8UMJAx
 0zLItSTrZF8dzw57+GuT2SlTYQ/p3nYXPXdVaGJjjB0V9xGWFkgNskFPL3e0JGXwyb5T
 cw6gnH13YNIEDNjpQY6UeuHmTKIsaxeacAz9HU4SCYCFiAKkqJurXy10lqoAimVCAJS9
 EFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1SIbn4I8MDCXYckkp2+GPJdKwVMA/7ROubKTL+86cvE=;
 b=q0oGm1OaDsQ56HYsm0cbKSEfOn+ek6s0DSkiFyR2to+XMvaaR9X+rHBTqXZoZOI6f6
 wVtdnjm1AVdQsF0j64KO9bBUhnUKG0qv+78IPt/8DNn2Qq7XH7WiV5FrVFSuC3svvwOc
 b+cTc8+/3Iw70ml64x8LpUoKkNkQjSYqcZduZT/sByXeLFCrd9szyACWVZ4sPWfprf7e
 Nqxpi0nrKHUqlRwfszFzPiuwzN9TCX0ry0ls+zjWubtC8uTCPljVArL66VPrb6iTE0h/
 kvZVF0VOf1TB6xEqf4MSe7s891JgrRHxgqCPLlITZEM2bK+cMYhSf9HMmMUxlynwCGVy
 YL+A==
X-Gm-Message-State: APjAAAXJzV58TzyBEyk189zc2x09TXqUNaxC5AI1EiLYOy98YMkc7xeS
 tjlJIH2NyExsU/4qbtojHgxxZg==
X-Google-Smtp-Source: APXvYqzMYMg73pDkx1yAwlUn08S8sYE7E9Q1+gs9YymMlmuvw8yVxsSZtWgo70CbRWvK/QVKhZ7d+w==
X-Received: by 2002:ac8:44d9:: with SMTP id b25mr47013143qto.347.1571256050345; 
 Wed, 16 Oct 2019 13:00:50 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:49 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 08/25] arm64: hibernate: rename dst to page in
 create_safe_exec_page
Date: Wed, 16 Oct 2019 16:00:17 -0400
Message-Id: <20191016200034.1342308-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130051_891395_0AC993CF 
X-CRM114-Status: UNSURE (   9.34  )
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
