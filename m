Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77A59D9B1A
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToKchjDbV8rdVlr494e551VUZ/Hd8TWyUypBOhgmg1I=; b=gXTH/KhfDHzUre
	f7vi8M76a5DJtz1PrVQpdGPOAkkD5P8PBVF/G+S4hGHZSLH7LurpVlMeb9n6102433cJM0W3pLdGx
	zV0LJO0aEL7ceRmz/p8GvwbC3F51io9vdJfZyYmJwSNxr1jE/BeuonAs4RDa3yG8AwqXeEVmj6bQ2
	R0XvBQHOvEG2fo6BS077SFkzZyQFTY8kq/40GmfiewYroC9kgUgq2Kg9/06AiaFB10gZNUurRlw81
	SXXmYdT1qcNsPEH58DWaUtSZ4J/m9s/z7mWTvkOqXU7af+wRbqNCw7BAKtiXpIQKwKzhD0Ggi5Z6B
	8p9pJiBSQndfX27q43og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpcQ-00040l-A1; Wed, 16 Oct 2019 20:10:02 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTr-0004Wu-KE
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:15 +0000
Received: by mail-qk1-x744.google.com with SMTP id p10so23976915qkg.8
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=EkJ2n3u+MavwQwkZo1EWpv98Wdy6XKHkdOkUGe9PK3g=;
 b=Xa0aYLt9LaMmHhTg5HWXYkhK4Ue0oTxEya9uvjF+xNS2UIkW5Fsn8jKLdX/Z7V0p5B
 m+Hz2iki7BKDg00FNOvZOR7q5GkkXtmABLVSh0HT1FDBj4I2lAlSHHI2UOf922ghxaeQ
 c2nJYF/JZ/bD8qI7kFHv4HgH4WF4M51eaqXFEySNuL7xHZ1j5jr/zsORc+GWsUincyyP
 AqZn13kCAU/KP2lOo8aYFxPZTTOVfAW6FHSWudKtIxum86Av18pWyG7tAUaqnyHxB3+i
 /uC9R3m/4rIpECG6CXV+Bitg150NRKhJ/AbewCk1aHetaGgu+UY0HUnNHJwrCURKaKwu
 BooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EkJ2n3u+MavwQwkZo1EWpv98Wdy6XKHkdOkUGe9PK3g=;
 b=MqG5D+iIxDeSZSYJgmr6zU2yplXrp6qaWm4MUZzU8VNO7Z+PtRseSKnyBC1E/1n0XR
 ic0BIvqBb9v9vnlX1+yGkJzABh5Z4f6nQKMoYZdV/35dcEOcad77OOO8VJTZyH59Y4/6
 j9QyuIwwXJSSjf1MlLKSb8R17wMmrkYdd6O2u4ba11yHnmYpYmb07cHDKRxI4oWmlfbA
 faAIx9fKghGCqCSTfbfIPwUfVDGfbi01NgybZcA4FWjEzbpPOmtFSgxhelw5bTnLQOdA
 DdBfUD6dJE9VsvU710YQZi8NlPcrbyyRziLhk1gUxy/yh2B7G6vW+VVL6Rr7agt25j1c
 jlzw==
X-Gm-Message-State: APjAAAX3OP6Ec1OkK4Vz8uxpbcrAsxSYInHCbu2Sv+UxMjjEm1Qcw9gx
 QRI+rwJYx1O0/WtXEk9DKfUdXA==
X-Google-Smtp-Source: APXvYqzB53L+GX2u0+ltlyrZ8qCWIjXjRiiKZH1InwMU/QOJx5m4IaTXo0Tlba/wud/QDWsoFUjs5w==
X-Received: by 2002:a37:9a46:: with SMTP id c67mr4646976qke.52.1571256070370; 
 Wed, 16 Oct 2019 13:01:10 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:09 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 21/25] arm64: kexec: offset for relocation function
Date: Wed, 16 Oct 2019 16:00:30 -0400
Message-Id: <20191016200034.1342308-22-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130111_707487_8EF1BF01 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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

Soon, relocation function will share the same page with EL2 vectors.
Add offset within this page to arm64_relocate_new_kernel, and also
the total size of relocation code which will include both the function
and the EL2 vectors.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h      |  7 +++++++
 arch/arm64/kernel/machine_kexec.c   | 13 ++++---------
 arch/arm64/kernel/relocate_kernel.S | 13 ++++++++-----
 3 files changed, 19 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 189dce24f4cb..8cad34e7a9d9 100644
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
index 5f1211f3aeef..5e7b1f6569c4 100644
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
@@ -190,7 +185,7 @@ void machine_kexec(struct kimage *kimage)
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
 	/* Flush the reboot_code_buffer in preparation for its execution. */
-	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
+	__flush_dcache_area(reboot_code_buffer, kexec_relocate_code_size);
 
 	/*
 	 * Although we've killed off the secondary CPUs, we don't update
@@ -199,7 +194,7 @@ void machine_kexec(struct kimage *kimage)
 	 * the offline CPUs. Therefore, we must use the __* variant here.
 	 */
 	__flush_icache_range((uintptr_t)reboot_code_buffer,
-			     arm64_relocate_new_kernel_size);
+			     kexec_relocate_code_size);
 
 	/* Flush the kimage list and its buffers. */
 	kexec_list_flush(kimage);
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 22ccdcb106d3..3c05220a79ab 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -14,6 +14,8 @@
 #include <asm/page.h>
 #include <asm/sysreg.h>
 
+GLOBAL(kexec_relocate_code_start)
+
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
  *
@@ -86,13 +88,14 @@ ENTRY(arm64_relocate_new_kernel)
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
+GLOBAL(kexec_relocate_code_size)
+	.quad	.Lkexec_relocate_code_end - kexec_relocate_code_start
+GLOBAL(kexec_kern_reloc_offset)
+	.quad	arm64_relocate_new_kernel - kexec_relocate_code_start
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
