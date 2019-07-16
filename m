Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718D86AD31
	for <lists+kexec@lfdr.de>; Tue, 16 Jul 2019 18:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lZ27n/d/VCYx1dcsAavzABmKl6YhwvPFRU+p8qXjkE=; b=hls8nLX0ZGtlmw
	DTT5KCzkvDuSc+0k4p742llsnPK5oj2gU5ku06RWSTE5tDTY9S5IMefPT0jWY9Rv1cTjxMU1pVmRa
	UnXSoGE7gtAMKHYLBcElgd0pwRoBroItFWs63gpxdLV50aPkeiSjw2VmcHBC7oE0LoWWCF78MYkrv
	8THmo/RRl5oJ5mC2CPl67liJI1SN3CJkjmiifo1Vqeh7BfBgmIqiWjV9zr0jravEiLZKncV8kbRHg
	2exPswMaaptP0dCgOOAEhf+9CfXW4AeaBKHTgY3ZHfLtisF/SyrLN/fZdwjdLR8jkxLlxUpj/cl+S
	WAV9nwNZbSAkT7V/Sn1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQlj-0005e5-Sw; Tue, 16 Jul 2019 16:57:35 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQkv-00052Q-Gd
 for kexec@lists.infradead.org; Tue, 16 Jul 2019 16:56:48 +0000
Received: by mail-qt1-x842.google.com with SMTP id d23so20320460qto.2
 for <kexec@lists.infradead.org>; Tue, 16 Jul 2019 09:56:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=JkgYB201+YgtZ67xz124QalImKwHhD6hCX1vEDo1XAU=;
 b=h5Lfrj4oD0WIqU6ygkd/Fq6YtgSA5kUklS4HcoiluHDChhEtO4DfF3FXAOHZoNSeCm
 Qhej/p8oi+GphDHnwLxKOaFOAJeBkg6l9mlc/+E4PJtYlKxvBn+HtZ4Ta4dpZVmxhbZX
 1K9RtH/Q50Ei12r27O9HiDA+aOe1WIV7OpE+Ur5ro2lt2huOfTy2h/vYCnccPex7x35l
 bxf3Hq39Q/gK7xyaA+Ok5qq5QKv5KwayqGxpnxBPP38fc9PySfALkm1xG8plhfjIY5au
 Ubi4eL+bANK8Z/oL4+ZVTiLwR63VOBupKwcL+wUi6xtjo6aMfBD77X+qKxDGAflTHmNX
 oCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JkgYB201+YgtZ67xz124QalImKwHhD6hCX1vEDo1XAU=;
 b=scMcv5bK2SNCffhBNPp+UTfA8D/D/IcYg49qzXWV2zRpF8A3jMuoQ3mwkoug9WUrhE
 nHGt7XA9glV38QD3xrcqRrOsZ11wNp1Rpa3693hYKx4uLyOg3NURbihPcoFtIW2KSoa6
 BFThFxOEe1mYW+j95SPjDo2JOfYoy82wCjPp4TGHQS3sqc6u+dZAIuDY2Cn2srhkGM/R
 xZZtsujX8oFPnx7KqZnQVimJpQMiNAICRuUjwAaOdLBF4Pdu3SVYwVeZGyFI7Iu0cGjU
 6lUMD7lVmpEKL+lkDC7T0OTLf0/A5e5UeAprcrNQJ0TXaZL4wUBbq+FyGf6ulHLQWEVd
 Xv4A==
X-Gm-Message-State: APjAAAWOPUA6KwZ4jImAK3vQiyxiRBaUR1JlECTKnEyTXtPvFWq06UXE
 9STOllH32RAhaEeS58fq0j4=
X-Google-Smtp-Source: APXvYqwZZYB7JTSxjflHH6PzEmuWW65i2dKDOtRvxBkvqU4u3mcg8TDxomQhWhsJDugWob8iCPoiBw==
X-Received: by 2002:ac8:2b49:: with SMTP id 9mr24808489qtv.343.1563296204311; 
 Tue, 16 Jul 2019 09:56:44 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:43 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 1/4] arm64, mm: identity mapped page table
Date: Tue, 16 Jul 2019 12:56:38 -0400
Message-Id: <20190716165641.6990-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095645_552437_3A3D5AB0 
X-CRM114-Status: GOOD (  13.43  )
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

Created identiy mapped page table that maps 1 to 1 virtual to physical
addresses.

Similarly to x86, this table can be used in kasan, hibernate, and kexec.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/ident_map.h | 26 ++++++++
 arch/arm64/mm/Makefile             |  1 +
 arch/arm64/mm/ident_map.c          | 99 ++++++++++++++++++++++++++++++
 3 files changed, 126 insertions(+)
 create mode 100644 arch/arm64/include/asm/ident_map.h
 create mode 100644 arch/arm64/mm/ident_map.c

diff --git a/arch/arm64/include/asm/ident_map.h b/arch/arm64/include/asm/ident_map.h
new file mode 100644
index 000000000000..1bb9fcd27368
--- /dev/null
+++ b/arch/arm64/include/asm/ident_map.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
+ */
+
+#ifndef _ASM_IDENT_MAP_H
+#define _ASM_IDENT_MAP_H
+
+#include <linux/types.h>
+#include <asm/pgtable.h>
+
+struct ident_map_info {
+	void * (*alloc_pgt_page)(void *);	/* allocate a page  */
+	void *alloc_arg;			/* arg. for alloc_pgt_page */
+	unsigned long page_flags;		/* PMD or PUD flags */
+	unsigned long offset;			/* ident mapping offset */
+	bool pud_pages;				/* PUD level huge pages */
+};
+
+int ident_map_pgd_populate(struct ident_map_info *info,
+			   phys_addr_t pgd_page,
+			   phys_addr_t addr,
+			   phys_addr_t end);
+
+#endif /* _ASM_ARM64_IDENT_MAP_H */
diff --git a/arch/arm64/mm/Makefile b/arch/arm64/mm/Makefile
index 849c1df3d214..dfa5a074a360 100644
--- a/arch/arm64/mm/Makefile
+++ b/arch/arm64/mm/Makefile
@@ -5,6 +5,7 @@ obj-y				:= dma-mapping.o extable.o fault.o init.o \
 				   context.o proc.o pageattr.o
 obj-$(CONFIG_HUGETLB_PAGE)	+= hugetlbpage.o
 obj-$(CONFIG_ARM64_PTDUMP_CORE)	+= dump.o
+obj-$(CONFIG_KEXEC_CORE)	+= ident_map.o
 obj-$(CONFIG_ARM64_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
 obj-$(CONFIG_NUMA)		+= numa.o
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
diff --git a/arch/arm64/mm/ident_map.c b/arch/arm64/mm/ident_map.c
new file mode 100644
index 000000000000..bcfff5e2573b
--- /dev/null
+++ b/arch/arm64/mm/ident_map.c
@@ -0,0 +1,99 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019, Microsoft Corporation.
+ * Pavel Tatashin <patatash@linux.microsoft.com>
+ */
+
+#include <asm/ident_map.h>
+#include <asm/pgalloc.h>
+
+/* Initialize PMD size huge entries in page table */
+static void ident_map_pmd_init(struct ident_map_info *info,
+			       phys_addr_t pmd_page, phys_addr_t addr,
+			       phys_addr_t end)
+{
+	const unsigned long flags = info->page_flags;
+	const unsigned long offset = info->offset;
+	pmd_t *pmdp = (pmd_t *)__va(pmd_page) + pmd_index(addr);
+
+	addr &= PMD_MASK;
+	for (; addr < end; addr += PMD_SIZE, pmdp++) {
+		set_pmd(pmdp, __pmd(__phys_to_pmd_val(addr - offset) | flags));
+	}
+}
+
+/* Initialize PUD size huge entries in page table */
+static void ident_map_pud_init(struct ident_map_info *info,
+			       phys_addr_t pud_page, phys_addr_t addr,
+			       phys_addr_t end)
+{
+	const unsigned long flags = info->page_flags;
+	const unsigned long offset = info->offset;
+	pud_t *pudp = (pud_t *)__va(pud_page) + pud_index(addr);
+
+	addr &= PUD_MASK;
+	for (; addr < end; addr += PUD_SIZE, pudp++) {
+		set_pud(pudp, __pud(__phys_to_pud_val(addr - offset) | flags));
+	}
+}
+
+/* Populate PUD level with PMD entries */
+static int ident_map_pud_populate(struct ident_map_info *info,
+				  phys_addr_t pud_page, phys_addr_t addr,
+				  phys_addr_t end)
+{
+	pud_t *pudp = (pud_t *)__va(pud_page) + pud_index(addr);
+	phys_addr_t pmd_page, next;
+
+	for (; addr < end; addr = next, pudp++) {
+		next = pud_addr_end(addr, end);
+		if (pud_none(*pudp)) {
+			void *pmd = info->alloc_pgt_page(info->alloc_arg);
+
+			if (!pmd)
+				return -ENOMEM;
+
+			clear_page(pmd);
+			__pud_populate(pudp, __pa(pmd), PUD_TYPE_TABLE);
+		}
+		pmd_page = __pud_to_phys(*pudp);
+		ident_map_pmd_init(info, pmd_page, addr, next);
+	}
+
+	return 0;
+}
+
+/* Populate identify mapped page table with physical range[addr, end) */
+int ident_map_pgd_populate(struct ident_map_info *info,
+			   phys_addr_t pgd_page, phys_addr_t addr,
+			   phys_addr_t end)
+{
+	const bool pud_pages = info->pud_pages;
+	pgd_t *pgdp = (pgd_t *)__va(pgd_page) + pgd_index(addr);
+	phys_addr_t pud_page, next;
+
+	for (; addr < end; addr = next, pgdp++) {
+		next = pgd_addr_end(addr, end);
+		if (pgd_none(*pgdp)) {
+			void *pud = info->alloc_pgt_page(info->alloc_arg);
+
+			if (!pud)
+				return -ENOMEM;
+
+			clear_page(pud);
+			__pgd_populate(pgdp, __pa(pud), PUD_TYPE_TABLE);
+		}
+		pud_page = __pgd_to_phys(*pgdp);
+		if (pud_pages) {
+			ident_map_pud_init(info, pud_page, addr, next);
+		} else {
+			int rv = ident_map_pud_populate(info, pud_page, addr,
+				 next);
+
+			if (rv)
+				return rv;
+		}
+	}
+
+	return 0;
+}
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
