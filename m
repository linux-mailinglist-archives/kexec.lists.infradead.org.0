Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F54BD9B1B
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4TrDD7QMq/lkLs7K0gkALpXxmV/lMC8HntuXm9EzWI=; b=Ro5cukfu2qsh7B
	z3/Cdo8axoekOMnykxZMRlmA0dHsxvOlJIM7u7mCb4jHQkwj1JjWuOv+yxYvzKwgK2mnmigOmts4+
	qNWdVpRtx312W+my+XST+xM1RdftVrH3ODGE5RIQEBMwFe0G/v57bPZJx2+UuljaYI5PoJIcmQpgq
	R9jWPuiwtisNefeXL4E7QyeC/zgYECixJf5uMiUly54QUevbAFCRYFcjK4euqcMMM9yBEMnky69QV
	zTjlLUlqT65pLqM4YWnS6ELuryplM4ZMG0h6DX1wljHbldGJbqedbidXcoWnH1JjUtep4Hx5MW0mR
	jIccUkWzjs/UWUmN7AUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpcv-0005at-VK; Wed, 16 Oct 2019 20:10:34 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTt-0004YC-1H
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:16 +0000
Received: by mail-qk1-x743.google.com with SMTP id z67so23951009qkb.12
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=3iFW3RDOCHartt/hfSVq5AW/yJTy0Yt6EkiP1ScXBPg=;
 b=RfO6USGaAEoR6y3mA7ctRg1xAAVIbVxNHdfEqAFMVD08j3brxWOm5/pF5JnbIeBEEM
 0iFaG8ro6WFsdYQYWH5gjjM71UliuCt+ISRa44YtOSL5Y2HjEZDtMRD2/O1t43Sp9APO
 whCfWhllopPQ0WqENgJIyx8k2FOVkuui9dkTJX9wnnrjtXaZ+SgE5GWvHEOlLsytsmoU
 0IpM+JE/Ix5x6HlRA56DRfMoSSyP2q2iuWrXPv4W5JWvSdq5Qs529xc+mWN9ubINkdT7
 FbRfjdQ3lOiqvdFYxe9+jrN/N9nT1Hz6BRuJCqgQvsMgpNE7HCPtGd3eRW0g9NmE4ipt
 eykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3iFW3RDOCHartt/hfSVq5AW/yJTy0Yt6EkiP1ScXBPg=;
 b=mT7lqobDF3ynKeyjGV4HL7Qx1yhoSIA751rQ4tUQMIXO9dZo8PAdt9hh1aqGVj3EB+
 G6yehRpBuDM7Wuo1/m5Oz22oU20rmNvfwosnhspDR7TptxCDT7SvthXAmmz4szEyUufr
 lbfK7IgQA/yiM809U74zJ1aT9+SGxi9lQM9Nwr9VsuU+kj3qn6w+isfUt0nkEW6XwV5s
 +UvUUuNP0iWx0kR9qzXK9LSCJr+KNUZ61N2DguKVrVMw58JHN4oRep4kLfQGjdlhrUWP
 vV1FayLbjAz3CzGoRTofESZEwJvX6LPggp0G/+44HSFQssRPpWjnePqj2SIven+AoypX
 RWAQ==
X-Gm-Message-State: APjAAAVypqVkuULYtbyBI+4Z3Yg5IC2BPggFSatt9jreEv8daRlJw5mQ
 uDbDZUFufGHMr2BRP3CtNGF89A==
X-Google-Smtp-Source: APXvYqxUOQk2u+N79cQ/FfXccxwp+kWOhSALy9llyFYA09hoVVFKWrgDBNbJwj9Taj5AG9wmDNzvSQ==
X-Received: by 2002:a37:c40d:: with SMTP id d13mr6601254qki.371.1571256071924; 
 Wed, 16 Oct 2019 13:01:11 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:11 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 22/25] arm64: kexec: kexec EL2 vectors
Date: Wed, 16 Oct 2019 16:00:31 -0400
Message-Id: <20191016200034.1342308-23-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130113_149916_F25D2332 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

If we have a EL2 mode without VHE, the EL2 vectors are needed in order
to switch to EL2 and jump to new world with hyperivsor privileges.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h      |  5 +++++
 arch/arm64/kernel/asm-offsets.c     |  1 +
 arch/arm64/kernel/machine_kexec.c   |  5 +++++
 arch/arm64/kernel/relocate_kernel.S | 34 +++++++++++++++++++++++++++++
 4 files changed, 45 insertions(+)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 8cad34e7a9d9..414a0a41a60a 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -95,6 +95,7 @@ static inline void crash_post_resume(void) {}
 extern const unsigned long kexec_relocate_code_size;
 extern const unsigned char kexec_relocate_code_start[];
 extern const unsigned long kexec_kern_reloc_offset;
+extern const unsigned long kexec_el2_vectors_offset;
 #endif
 
 /*
@@ -104,6 +105,9 @@ extern const unsigned long kexec_kern_reloc_offset;
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
  *		arguments are currently unused, and must be set to 0
+ * el2_vector	If present means that relocation routine will go to EL1
+ *		from EL2 to do the copy, and then back to EL2 to do the jump
+ *		to new world.
  */
 struct kern_reloc_arg {
 	phys_addr_t head;
@@ -112,6 +116,7 @@ struct kern_reloc_arg {
 	phys_addr_t kern_arg1;
 	phys_addr_t kern_arg2;
 	phys_addr_t kern_arg3;
+	phys_addr_t el2_vector;
 };
 
 #define ARCH_HAS_KIMAGE_ARCH
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 6fd21374abec..ad7764d68904 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -135,6 +135,7 @@ int main(void)
   DEFINE(KEXEC_KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
   DEFINE(KEXEC_KRELOC_KERN_ARG2,	offsetof(struct kern_reloc_arg, kern_arg2));
   DEFINE(KEXEC_KRELOC_KERN_ARG3,	offsetof(struct kern_reloc_arg, kern_arg3));
+  DEFINE(KEXEC_KRELOC_EL2_VECTOR,	offsetof(struct kern_reloc_arg, el2_vector));
 #endif
   return 0;
 }
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 5e7b1f6569c4..ac6ade7c96ff 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -84,6 +84,11 @@ int machine_kexec_post_load(struct kimage *kimage)
 	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
+	/* Setup vector table only when EL2 is available, but no VHE */
+	if (is_hyp_mode_available() && !is_kernel_in_hyp_mode()) {
+		kern_reloc_arg->el2_vector = __pa(reloc_code)
+						+ kexec_el2_vectors_offset;
+	}
 	kexec_image_info(kimage);
 
 	return 0;
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index 3c05220a79ab..67efa42575a5 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -88,6 +88,38 @@ ENTRY(arm64_relocate_new_kernel)
 .ltorg
 END(arm64_relocate_new_kernel)
 
+.macro el1_sync_64
+	br	x4			/* Jump to new world from el2 */
+	.fill 31, 4, 0			/* Set other 31 instr to zeroes */
+.endm
+
+.macro invalid_vector label
+\label:
+	b \label
+	.fill 31, 4, 0			/* Set other 31 instr to zeroes */
+.endm
+
+/* el2 vectors - switch el2 here while we restore the memory image. */
+	.align 11
+ENTRY(kexec_el2_vectors)
+	invalid_vector el2_sync_invalid_sp0	/* Synchronous EL2t */
+	invalid_vector el2_irq_invalid_sp0	/* IRQ EL2t */
+	invalid_vector el2_fiq_invalid_sp0	/* FIQ EL2t */
+	invalid_vector el2_error_invalid_sp0	/* Error EL2t */
+	invalid_vector el2_sync_invalid_spx	/* Synchronous EL2h */
+	invalid_vector el2_irq_invalid_spx	/* IRQ EL2h */
+	invalid_vector el2_fiq_invalid_spx	/* FIQ EL2h */
+	invalid_vector el2_error_invalid_spx	/* Error EL2h */
+		el1_sync_64			/* Synchronous 64-bit EL1 */
+	invalid_vector el1_irq_invalid_64	/* IRQ 64-bit EL1 */
+	invalid_vector el1_fiq_invalid_64	/* FIQ 64-bit EL1 */
+	invalid_vector el1_error_invalid_64	/* Error 64-bit EL1 */
+	invalid_vector el1_sync_invalid_32	/* Synchronous 32-bit EL1 */
+	invalid_vector el1_irq_invalid_32	/* IRQ 32-bit EL1 */
+	invalid_vector el1_fiq_invalid_32	/* FIQ 32-bit EL1 */
+	invalid_vector el1_error_invalid_32	/* Error 32-bit EL1 */
+END(kexec_el2_vectors)
+
 .Lkexec_relocate_code_end:
 .org	KEXEC_CONTROL_PAGE_SIZE
 .align 3	/* To keep the 64-bit values below naturally aligned. */
@@ -99,3 +131,5 @@ GLOBAL(kexec_relocate_code_size)
 	.quad	.Lkexec_relocate_code_end - kexec_relocate_code_start
 GLOBAL(kexec_kern_reloc_offset)
 	.quad	arm64_relocate_new_kernel - kexec_relocate_code_start
+GLOBAL(kexec_el2_vectors_offset)
+	.quad	kexec_el2_vectors - kexec_relocate_code_start
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
