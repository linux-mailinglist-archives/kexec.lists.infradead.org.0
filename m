Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE277193700
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 04:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ww1KiJrQmsRYDRZZQ6R8nQ+SO4UJooq8jfWIaxXcMnw=; b=EVKY8ic0izAvuo
	gimKATfOMoMOgsFENNvayAalmHaMV4hQuif0QrAJfrlBm0FIYdtwoN+Eri9792dvbznDGHBnoHadB
	XRR4tc+hJu20VONDWhpMjrUkXpnJ5BBGMUfrtbwZtk0BzqdN+YvJLnyKz0NQQFLZcpyIHaKsWdTGb
	ZsbDrR9PYnyemSz3zvkP+YNKnRwJnunO5Md80tf90bT7kQmjfUlgcq2WOxQGHShcqUy5ePZr/M++m
	cikGMxs2nZix4JeOBSgyM2fPaa4sW6XgyDcbuRsFq7wFKVCjjsOnG/brIFcGc3DbL6lVazZgFdP4v
	D0LjqdMOR9omjt0SWQXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJEM-0003AH-0z; Thu, 26 Mar 2020 03:30:54 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8P-0004mN-Gf
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 03:24:48 +0000
Received: by mail-qt1-x841.google.com with SMTP id c14so4230860qtp.0
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 20:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=Br14IEdrQ+h/TluYq6M39j0SJ67HIdjC6baxG9oa0nU=;
 b=i0IEvGyBqoriM4CG8hBTaH9CpgOJ+6Ro/7wdzybTtPbDV3e3M8UaJfMXQB9ptG5KVI
 FMkd79h+wUDdq/swltuqmENldbzxosdhpw4megU23U4lXShTmo9RkplMrnpRO+HWT58l
 bz1J8NxmTMNbonU7mU9LYAok6D8F5cpdxBduNMeJ9AUQNYRgM80AiwlQuWMdnGlMnVXe
 agnuQ8xBU3v88CVQjZNvk6TyyQa75h7hXBgx/asxBD+iZKo8GNG41Q9syhdbNqf6i43O
 tG+TvCUOkbFnoZd8PT3+ZRr6ee5z6WwOgYig4/oYl1Wel8/aw2hCIU7IPxIaPJrIFEwF
 80yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=Br14IEdrQ+h/TluYq6M39j0SJ67HIdjC6baxG9oa0nU=;
 b=nmfkgwcpQTz0eosGktjxL9acASXsiS4QHLNFjLrI6XSkdBT12N3zLbXaImx1rd0RWF
 ekvgUrY073KDK1jzyzUOhV193gSdY23G5A+vYhkV0KDZo6CU8z3PDELxlhp2ZbH60ttm
 HpYbUEGlScinRA/KMKmVGM9QunWD9wOaaShABm/9O9YvMaVPfycELLyxkq7RAV6CY7t3
 dglBBWd6KquKfV1vd4wmF1HOea6zXqEH2Cn5b6L8ayD5dhvX1VDbXjVzMUXNclqeuFE/
 QERkK/zPHbPCZAHn2Jf+Kw2ukJbQOOHvg4PW3VO/O7FFvA63mdxd0Zry0P61ILXq45mA
 aoxQ==
X-Gm-Message-State: ANhLgQ2OvBxXE6+0tpuoKUTiJQTqEIWsQBuO4FXoqDQb7o6tsvaQUpcD
 yGCjB1fLPg9F+aV3VomAC5LRKQ==
X-Google-Smtp-Source: ADFU+vtm27PkglkxZBWZNSEtrtj7Md3gNLlQXHWm/UbMjvs5l2SaL7nAgQ6PGID3oJSqgIkAG7pfhQ==
X-Received: by 2002:aed:3c4b:: with SMTP id u11mr6160095qte.208.1585193084262; 
 Wed, 25 Mar 2020 20:24:44 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:43 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 14/18] arm64: kexec: offset for relocation function
Date: Wed, 25 Mar 2020 23:24:16 -0400
Message-Id: <20200326032420.27220-15-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202445_657067_5B0F60C1 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

Soon, relocation function will share the same page with EL2 vectors.
Add offset within this page to arm64_relocate_new_kernel, and also
the total size of relocation code which will include both the function
and the EL2 vectors.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h      |  7 +++++++
 arch/arm64/kernel/machine_kexec.c   | 13 ++++---------
 arch/arm64/kernel/relocate_kernel.S | 16 +++++++++++-----
 3 files changed, 22 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 990185744148..d944c2e289b2 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,6 +90,13 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
+#if defined(CONFIG_KEXEC_CORE)
+/* The beginning and size of relcation code to stage 2 kernel */
+extern const unsigned long kexec_relocate_code_size;
+extern const unsigned char kexec_relocate_code_start[];
+extern const unsigned long kexec_kern_reloc_offset;
+#endif
+
 /*
  * kern_reloc_arg is passed to kernel relocation function as an argument.
  * head		kimage->head, allows to traverse through relocation segments.
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index b1122eea627e..ab571fca9bd1 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -23,10 +23,6 @@
 
 #include "cpu-reset.h"
 
-/* Global variables for the arm64_relocate_new_kernel routine. */
-extern const unsigned char arm64_relocate_new_kernel[];
-extern const unsigned long arm64_relocate_new_kernel_size;
-
 /**
  * kexec_image_info - For debugging output.
  */
@@ -82,9 +78,8 @@ int machine_kexec_post_load(struct kimage *kimage)
 	if (!kern_reloc_arg)
 		return -ENOMEM;
 
-	memcpy(reloc_code, arm64_relocate_new_kernel,
-	       arm64_relocate_new_kernel_size);
-	kimage->arch.kern_reloc = __pa(reloc_code);
+	memcpy(reloc_code, kexec_relocate_code_start, kexec_relocate_code_size);
+	kimage->arch.kern_reloc = __pa(reloc_code) + kexec_kern_reloc_offset;
 	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
 	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
@@ -189,7 +184,7 @@ void machine_kexec(struct kimage *kimage)
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
 	/* Flush the reboot_code_buffer in preparation for its execution. */
-	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
+	__flush_dcache_area(reboot_code_buffer, kexec_relocate_code_size);
 
 	/*
 	 * Although we've killed off the secondary CPUs, we don't update
@@ -198,7 +193,7 @@ void machine_kexec(struct kimage *kimage)
 	 * the offline CPUs. Therefore, we must use the __* variant here.
 	 */
 	__flush_icache_range((uintptr_t)reboot_code_buffer,
-			     arm64_relocate_new_kernel_size);
+			     kexec_relocate_code_size);
 
 	/* Flush the kimage list and its buffers. */
 	kexec_list_flush(kimage);
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 22ccdcb106d3..aa9f2b2cd77c 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -14,6 +14,9 @@
 #include <asm/page.h>
 #include <asm/sysreg.h>
 
+.globl kexec_relocate_code_start
+kexec_relocate_code_start:
+
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
  *
@@ -86,13 +89,16 @@ ENTRY(arm64_relocate_new_kernel)
 .ltorg
 END(arm64_relocate_new_kernel)
 
-.Lcopy_end:
+.Lkexec_relocate_code_end:
 .org	KEXEC_CONTROL_PAGE_SIZE
 .align 3	/* To keep the 64-bit values below naturally aligned. */
 /*
- * arm64_relocate_new_kernel_size - Number of bytes to copy to the
+ * kexec_relocate_code_size - Number of bytes to copy to the
  * control_code_page.
  */
-.globl arm64_relocate_new_kernel_size
-arm64_relocate_new_kernel_size:
-	.quad	.Lcopy_end - arm64_relocate_new_kernel
+.globl kexec_relocate_code_size
+kexec_relocate_code_size:
+	.quad	.Lkexec_relocate_code_end - kexec_relocate_code_start
+.globl kexec_kern_reloc_offset
+kexec_kern_reloc_offset:
+	.quad	arm64_relocate_new_kernel - kexec_relocate_code_start
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
