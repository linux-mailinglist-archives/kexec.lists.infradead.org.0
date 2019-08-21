Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E26982FD
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 20:33:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DOMpUCCPyn0O5+pNYT26+uMa5cg4doXR+WbQAhJ3uA=; b=UpCuweegtVN0SC
	kZmn0owgwGrvu5uRQ6upsJ8qUkQUAkSW+R9GZhTsYx1w/DS0hidHLIaSoUqn9mzNr0xw5AN88fIlu
	+GNIyiyKZMprzJbEdxNSm5cV2Am8/uhjX/76uueqzPfLB6jbFB0Vh+SvLakdUIIJwjO3D4yEpzU0i
	Jp39GXqeG+pxEeASMNfOdPFYA3DZH9yoRbfKxFsZybvzIUvfrAWitcPNYLIfm9SFwmdvU+Bk2KTYl
	NDabZ3/ITF/5V4GwQBKUCc5dQWKpKn6RyywtDWUBySZSFVTGwrgrBU5pQ9Ao2Vbp5uuPLAbvMcwNA
	uz3VqHAKSr7uJ85pL1Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VQG-0005NJ-Dn; Wed, 21 Aug 2019 18:33:28 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VP2-00040J-ID
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 18:32:14 +0000
Received: by mail-qk1-x742.google.com with SMTP id d23so2739715qko.3
 for <kexec@lists.infradead.org>; Wed, 21 Aug 2019 11:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bQvsgscqpy4gJx0RSAZHmPdNixt0ATCDS0WU9XTwyb8=;
 b=ILjJA4n/giE8JmPiexv7Bw1nwvbRl2Z+YSLoE4FuqVk0Cy9Y8l0Z/Oi043el4txkPI
 biHES+QyYLZFcNUoZPuckwwgZ/ZXoRyQ8rxMSMLPx468ECFak95S7bHRA5hE7sgYwLo1
 ERLOIgzIGS0X8aQ1hin4TNUKMPvt4jZ8F71XOY2yF9JNx+98bKfh5WdXq2GAL7Nq6Uo3
 KfLn8Kp0O5dqjYZeCaQSMuaUmJE3xMJ+Hjjv8je7GShbQFFNY8YKqG+42V9uOpm21DqX
 2cavH9DsopJFxHmz518GX7AOejraE2dw00Ly+gcqnjNxEU861osit10n9wkODkePQq2J
 VOJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bQvsgscqpy4gJx0RSAZHmPdNixt0ATCDS0WU9XTwyb8=;
 b=UyIJGcCgTi+4LIYC97HFjF+uzXK8ouDEjEnZ8BYvXSz6OT27gTOqtDferpodRUDRTq
 MZQA+5Ic41hJLxD7gEn3tjS8jjkPfxpC6nj2y6NIyLChdnzIwcXsfcmUp4oVieUeXtKa
 kPaLVntB97NrPaM7Iw5MLkiVU712gUMJ7V45vbVEUD4vWUWwcUA8nOqPMg+KsMn8QSfO
 sqEhXeK5WNLfjQ5AazF/SIQ8iz5Nw5DbjGHoQZzER+jprzhyv2mmwn6h24WgZa3ING9B
 MaqbbJLPCQ1dztLUrzcUofqGB0Q1dNtkcDkHj+ELXKGYWiTPWGuJIsMpA/f+ja2SI7nN
 xxQQ==
X-Gm-Message-State: APjAAAUPoQ/Uvj8GHbQo1A1w1ub0enZpML0lHOSswDSrpzs287AAD+P4
 OT7d8pVv3ntmZCoU8fnLO+B9uQ==
X-Google-Smtp-Source: APXvYqzfJ8BXdrEH0K8CKkw4fBwWFDafodl10SDkUCPN4bBIEhI2MWQI353Halx8ux+skSlbJLzXYQ==
X-Received: by 2002:ae9:ec1a:: with SMTP id h26mr17120619qkg.80.1566412331857; 
 Wed, 21 Aug 2019 11:32:11 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:11 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 04/17] arm64,
 hibernate: rename dst to page in create_safe_exec_page
Date: Wed, 21 Aug 2019 14:31:51 -0400
Message-Id: <20190821183204.23576-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113212_627909_05EBCFEE 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---
 arch/arm64/kernel/hibernate.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index c8211108ec11..ee34a06d8a35 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -198,17 +198,17 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 unsigned long dst_addr,
 				 phys_addr_t *phys_dst_addr)
 {
+	void *page = (void *)get_safe_page(GFP_ATOMIC);
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
 
 	pgdp = pgd_offset_raw((void *)get_safe_page(GFP_ATOMIC), dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
@@ -235,7 +235,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	}
 
 	ptep = pte_offset_kernel(pmdp, dst_addr);
-	set_pte(ptep, pfn_pte(virt_to_pfn(dst), PAGE_KERNEL_EXEC));
+	set_pte(ptep, pfn_pte(virt_to_pfn(page), PAGE_KERNEL_EXEC));
 
 	/*
 	 * Load our new page tables. A strict BBM approach requires that we
@@ -254,7 +254,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
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
