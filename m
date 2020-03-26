Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35C4193709
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 04:32:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TD/XeDsrVAWkgiagS3l+3VHeZjm9mvzWmJNBIn5l/fg=; b=WouTkw8cuNrV4C
	Q7yTEu54MKZocgG/lWlPRZWPrE3C0SnIEv5RJcO9Moh00pmU4jqBp6j6t8ntdPeCHA6TR1WNFMh54
	mLSS8wvcP2OBkK1aTpkPdUPepNTCf1reMAOHeu7MaCMN1kU/2wMDMSweayZBh+851DO00qtAj/oB8
	ifajehQGlIaLTXVLhVApOWcVqmgEN8D3Z/qiKq4ecWWOpbHIeCHNZnS3e9I/n1VTu7G53v8Fe8BP9
	p4p5g1ToMaojxIV9hu+4QArvGDjkDhewgOlsK7jR3VSc7ajDUVFLBLLp6hnDxQ1NUkJCvnqPYftl2
	qumQP6Y8SG9xLa+0qBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJFc-0004CC-RI; Thu, 26 Mar 2020 03:32:12 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8T-0004pY-Lb
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 03:24:55 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p19so2285333qve.0
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 20:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=CuDr5qYI6GlVY7shRkQ5EEeBFfzJFE9mbrZpS9eu2hQ=;
 b=k9Ab71XtQB4E3Bo3yPvSRsgc6cg7BdCEUZQt3yKAdiPxDjmADIKr8GdGF5S7Z3a5Ah
 rNYbsEruPq1t8nZXb0xuXVlx2JWWoe/a72sEW5hTQBaNY677SAb1LGa/f5l6BIqyeqgG
 eivitYpBTw3+tss381Da/ah6BbrepWmF+R118dYCkh/zXBrZiBMXTlPt3Fb8OIp6c0mu
 xfZdJN1JkoYMNNpPPERjqGte2DtVAtcsVsxd6/Eatw/TjCMTo29rL0YxqfMoerpQ73am
 XG5zeqNhqa2/0MqkudJRTb1yIkKTce404h2QZGyCAgfu0FyF9yl7XL0MtFu94R6xijCI
 3EbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=CuDr5qYI6GlVY7shRkQ5EEeBFfzJFE9mbrZpS9eu2hQ=;
 b=cb96w/lo5pkSiPdlNkyyN+MHjbewfU7nB3HZjrhl2QeLMOrHt1eWUWKdM1ipt82B7r
 bECsBEl5XEhscULHzbCMq667ybLwsWfNStjEKqk+z9hor9yD8HN01I5lFxRBxbo84f91
 rqAlInk/56ISBZIT1L/EYZffG/hZnLUuErQskBRujQFlhENYkdSoIXAa97mXMVXNJ4u0
 SowkhnhLf6p7nv5yuIy/vOxIBIYh0hS3ecMxI1jwZLZrqqJdHOsWIzq7MUeAgY+DHbKa
 qHCMjWnkjAYidthiw5U8uXZ/Im0Hm4LX56jmkTPqzEWjQVAVVzXzup14686tM5AB8Xik
 8Gkw==
X-Gm-Message-State: ANhLgQ0DeBTf50D/vGgXhE6EAwntmhS7fosulueSF+jzK1Tstlgi4/i7
 uMlPIcUlWsIRHe9eLqEw+72UmQ==
X-Google-Smtp-Source: ADFU+vt6UIEixLCExT8KxYiu1rT68zpEIs/PcykYXkt1mnb3MyWxWvCSpYV+q14Kv0orn+Tr3gtsYw==
X-Received: by 2002:a0c:ac48:: with SMTP id m8mr6284600qvb.13.1585193087675;
 Wed, 25 Mar 2020 20:24:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:47 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 16/18] arm64: kexec: configure trans_pgd page table for
 kexec
Date: Wed, 25 Mar 2020 23:24:18 -0400
Message-Id: <20200326032420.27220-17-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202450_069493_74F59A78 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
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

Configure a page table located in kexec-safe memory that has
the following mappings:

1. identity mapping for text of relocation function with executable
   permission.
2. linear mappings for all source ranges
3. linear mappings for all destination ranges.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    | 12 ++++
 arch/arm64/kernel/asm-offsets.c   |  6 ++
 arch/arm64/kernel/machine_kexec.c | 92 ++++++++++++++++++++++++++++++-
 3 files changed, 109 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 0f758fd51518..8f4332ac607a 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -108,6 +108,12 @@ extern const unsigned long kexec_el2_vectors_offset;
  * el2_vector	If present means that relocation routine will go to EL1
  *		from EL2 to do the copy, and then back to EL2 to do the jump
  *		to new world.
+ * trans_ttbr0	idmap for relocation function and its argument
+ * trans_ttbr1	linear map for source/destination addresses.
+ * trans_t0sz	t0sz for idmap page in trans_ttbr0
+ * src_addr	linear map for source pages.
+ * dst_addr	linear map for destination pages.
+ * copy_len	Number of bytes that need to be copied
  */
 struct kern_reloc_arg {
 	phys_addr_t head;
@@ -117,6 +123,12 @@ struct kern_reloc_arg {
 	phys_addr_t kern_arg2;
 	phys_addr_t kern_arg3;
 	phys_addr_t el2_vector;
+	phys_addr_t trans_ttbr0;
+	phys_addr_t trans_ttbr1;
+	unsigned long trans_t0sz;
+	unsigned long src_addr;
+	unsigned long dst_addr;
+	unsigned long copy_len;
 };
 
 #define ARCH_HAS_KIMAGE_ARCH
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index ff974b648347..58ad5b7816ab 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -137,6 +137,12 @@ int main(void)
   DEFINE(KEXEC_KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
   DEFINE(KEXEC_KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
   DEFINE(KEXEC_KRELOC_EL2_VECTOR,	offsetof(struct kern_reloc_arg, el2_vector));
+  DEFINE(KEXEC_KRELOC_TRANS_TTBR0,	offsetof(struct kern_reloc_arg, trans_ttbr0));
+  DEFINE(KEXEC_KRELOC_TRANS_TTBR1,	offsetof(struct kern_reloc_arg, trans_ttbr1));
+  DEFINE(KEXEC_KRELOC_TRANS_T0SZ,	offsetof(struct kern_reloc_arg, trans_t0sz));
+  DEFINE(KEXEC_KRELOC_SRC_ADDR,	offsetof(struct kern_reloc_arg, src_addr));
+  DEFINE(KEXEC_KRELOC_DST_ADDR,	offsetof(struct kern_reloc_arg, dst_addr));
+  DEFINE(KEXEC_KRELOC_COPY_LEN,	offsetof(struct kern_reloc_arg, copy_len));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index bd398def7627..db96d2fab8b2 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -20,6 +20,7 @@
 #include <asm/mmu.h>
 #include <asm/mmu_context.h>
 #include <asm/page.h>
+#include <asm/trans_pgd.h>
 
 #include "cpu-reset.h"
 
@@ -70,10 +71,90 @@ static void *kexec_page_alloc(void *arg)
 	return page_address(page);
 }
 
+/*
+ * Map source segments starting from src_va, and map destination
+ * segments starting from dst_va, and return size of copy in
+ * *copy_len argument.
+ * Relocation function essentially needs to do:
+ * memcpy(dst_va, src_va, copy_len);
+ */
+static int map_segments(struct kimage *kimage, pgd_t *pgdp,
+			struct trans_pgd_info *info,
+			unsigned long src_va,
+			unsigned long dst_va,
+			unsigned long *copy_len)
+{
+	unsigned long *ptr = 0;
+	unsigned long dest = 0;
+	unsigned long len = 0;
+	unsigned long entry, addr;
+	int rc;
+
+	for (entry = kimage->head; !(entry & IND_DONE); entry = *ptr++) {
+		addr = entry & PAGE_MASK;
+
+		switch (entry & IND_FLAGS) {
+		case IND_DESTINATION:
+			dest = addr;
+			break;
+		case IND_INDIRECTION:
+			ptr = __va(addr);
+			if (rc)
+				return rc;
+			break;
+		case IND_SOURCE:
+			rc = trans_pgd_map_page(info, pgdp, __va(addr),
+						src_va, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			rc = trans_pgd_map_page(info, pgdp, __va(dest),
+						dst_va, PAGE_KERNEL);
+			if (rc)
+				return rc;
+			dest += PAGE_SIZE;
+			src_va += PAGE_SIZE;
+			dst_va += PAGE_SIZE;
+			len += PAGE_SIZE;
+		}
+	}
+	*copy_len = len;
+
+	return 0;
+}
+
+static int mmu_relocate_setup(struct kimage *kimage, void *reloc_code,
+			      struct kern_reloc_arg *kern_reloc_arg)
+{
+	struct trans_pgd_info info = {
+		.trans_alloc_page	= kexec_page_alloc,
+		.trans_alloc_arg	= kimage,
+	};
+	pgd_t *trans_pgd = kexec_page_alloc(kimage);
+	int rc;
+
+	if (!trans_pgd)
+		return -ENOMEM;
+
+	/* idmap relocation function */
+	rc = trans_pgd_idmap_page(&info, &kern_reloc_arg->trans_ttbr0,
+				  &kern_reloc_arg->trans_t0sz, reloc_code);
+	if (rc)
+		return rc;
+
+	kern_reloc_arg->src_addr = _PAGE_OFFSET(VA_BITS_MIN);
+	kern_reloc_arg->dst_addr = _PAGE_OFFSET(VA_BITS_MIN - 1);
+	kern_reloc_arg->trans_ttbr1 = phys_to_ttbr(__pa(trans_pgd));
+
+	rc = map_segments(kimage, trans_pgd, &info, kern_reloc_arg->src_addr,
+			  kern_reloc_arg->dst_addr, &kern_reloc_arg->copy_len);
+	return rc;
+}
+
 int machine_kexec_post_load(struct kimage *kimage)
 {
 	void *reloc_code = page_to_virt(kimage->control_code_page);
 	struct kern_reloc_arg *kern_reloc_arg = kexec_page_alloc(kimage);
+	int rc = 0;
 
 	if (!kern_reloc_arg)
 		return -ENOMEM;
@@ -89,9 +170,18 @@ int machine_kexec_post_load(struct kimage *kimage)
 		kern_reloc_arg->el2_vector = __pa(reloc_code)
 						+ kexec_el2_vectors_offset;
 	}
+
+	/*
+	 * If relocation is not needed, we do not need to enable MMU in
+	 * relocation routine, therefore do not create page tables for
+	 * scenarios such as crash kernel
+	 */
+	if (!(kimage->head & IND_DONE))
+		rc = mmu_relocate_setup(kimage, reloc_code, kern_reloc_arg);
+
 	kexec_image_info(kimage);
 
-	return 0;
+	return rc;
 }
 
 /**
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
