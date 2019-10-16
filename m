Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6406BD9AEB
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeBHZrlivnpohDiMU68NFTPxD5KPSHCNTB8/NPt1PIM=; b=KNcBS0TIKGDTsA
	cwr51Xmpvbchkxuyx0zwIghHP7WgKQyDXhixDIN6F3rV32S42jgdzUPyQmviRARUDaHqYEvcg7xir
	Yh0G8HZhhFKyK/kTIyxd1GtE4txMmuoukrnLvVLKEkT3zwlxhpbry2EZHY/g6xDrLMkpjjoFb48xa
	pRlDi1LjqHD4FcasQ8yB3k8hzUbtWWdOEtYAYKvgGhqfmjVSfA9rA/Z41oKzR3M9UeTz6pt7DCgHC
	l22D/JlgFic58vmqjVYRPAEMIOS3WO47seTqSQ7BnkUDQnF0RkN9H51X8O750LwL0OeICagB4klZ8
	Y25ndsnXoT1irtqFjheA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpZi-00022z-5A; Wed, 16 Oct 2019 20:07:14 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTi-0004Np-7W
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:06 +0000
Received: by mail-qt1-x842.google.com with SMTP id r5so38047714qtd.0
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=To7bUWVp3XvcnHsBm0oiOp1tLIO852ts6wlx+cNajXo=;
 b=BltQBkOk1uAjUjhwIZhcIGmX8i7xAxK94UWa8kc1Ev2sUhdRynGQocSBFvybfvzGpJ
 JAvn6za5IMSG3mKEFhxCncIGjbBFFhvbJjU5C+d+HgMhe/nQB9xhG5zXRUT7hf8kQtNB
 f4BRHRQuQeMik8u7RubhYuH7Le8AdBGyEUW3t9zbbfVpMvtDTd7N4RJ4omu4BA20Dh63
 byzXqGXUS+JU2iz0g4eoS7s+Q18zVQWDOfX/nI8g08XYD+yFmBMJHYWdcMwFxJiLOHHO
 Gq8SK6cC+B2TyTl0qMKoEKoFKvVfMTvz5YfdWy5sJgfrhm1ytZSdOKqoCt3w1wrCDWjI
 JwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=To7bUWVp3XvcnHsBm0oiOp1tLIO852ts6wlx+cNajXo=;
 b=izZAgsdNpZTKE0j6qQM0cNl7+ebdmDYtNrXnuNOlNZKsgJHOUEWKpoAvmoXDIR6Ee7
 7GdAoIMlrmQAGBSE1jq02QLPTsGA8asRoHlJwM/XstVGllrdNLPwKb9uCX3aMWRW/UBZ
 eo3XwbM0JgFsQx3h+UT8uRRY0yI7VOqaJTq+GW+V7H23FnoNSElkdD920yq5tq/dDHE7
 PKfgPYBuCPouh3yT4QbbjnSzU+zPIPoQ5G83iFpA2L6SD2AcSoPoIljTKtUj6FUa4xaq
 crvf0T6uW29/pK/ce9ICnvtpe2MDAKRm03d9Fbk5mMCjQtu1+6MgmpvZB2I6NFpt0jEn
 rwlw==
X-Gm-Message-State: APjAAAUYxqoqpP3CMOYlso02Zk0SPOfuGwvdLA62jD8XiOvBDYPALK+m
 EtstixQiSmavv9MEtq58E6Y+lg==
X-Google-Smtp-Source: APXvYqzrXjWRNzoabbZjIOx0ffX9s+D0y1PdrRPM3VIx35Vt9ZH1Y9308HHhFhRvWQ8N84T1AefQCg==
X-Received: by 2002:a0c:bf45:: with SMTP id b5mr43086279qvj.150.1571256061093; 
 Wed, 16 Oct 2019 13:01:01 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:00 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 15/25] arm64: kexec: move relocation function setup
Date: Wed, 16 Oct 2019 16:00:24 -0400
Message-Id: <20191016200034.1342308-16-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130102_331224_1005B5A5 
X-CRM114-Status: GOOD (  11.82  )
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

Currently, kernel relocation function is configured in machine_kexec()
at the time of kexec reboot by using control_code_page.

This operation, however, is more logical to be done during kexec_load,
and thus remove from reboot time. Move, setup of this function to
newly added machine_kexec_post_load().

Because once MMU is enabled, kexec control page will contain more than
relocation kernel, but also vector table, add pointer to the actual
function within this page arch.kern_reloc. Currently, it equals to the
beginning of page, we will add offsets later, when vector table is
added.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    |  1 +
 arch/arm64/kernel/machine_kexec.c | 28 +++++++++++++++-------------
 2 files changed, 16 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index ad6afed69078..00dbcc71aeb2 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -95,6 +95,7 @@ static inline void crash_post_resume(void) {}
 struct kimage_arch {
 	void *dtb;
 	phys_addr_t dtb_mem;
+	phys_addr_t kern_reloc;
 };
 
 #ifdef CONFIG_KEXEC_FILE
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index ae1bad0156cd..46718b289a6b 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -42,6 +42,7 @@ static void _kexec_image_info(const char *func, int line,
 	pr_debug("    start:       %lx\n", kimage->start);
 	pr_debug("    head:        %lx\n", kimage->head);
 	pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
+	pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
 
 	for (i = 0; i < kimage->nr_segments; i++) {
 		pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
@@ -58,6 +59,18 @@ void machine_kexec_cleanup(struct kimage *kimage)
 	/* Empty routine needed to avoid build errors. */
 }
 
+int machine_kexec_post_load(struct kimage *kimage)
+{
+	void *reloc_code = page_to_virt(kimage->control_code_page);
+
+	memcpy(reloc_code, arm64_relocate_new_kernel,
+	       arm64_relocate_new_kernel_size);
+	kimage->arch.kern_reloc = __pa(reloc_code);
+
+	return 0;
+}
+
+
 /**
  * machine_kexec_prepare - Prepare for a kexec reboot.
  *
@@ -143,8 +156,7 @@ static void kexec_segment_flush(const struct kimage *kimage)
  */
 void machine_kexec(struct kimage *kimage)
 {
-	phys_addr_t reboot_code_buffer_phys;
-	void *reboot_code_buffer;
+	void *reboot_code_buffer = page_to_virt(kimage->control_code_page);
 	bool in_kexec_crash = (kimage == kexec_crash_image);
 	bool stuck_cpus = cpus_are_stuck_in_kernel();
 
@@ -155,18 +167,8 @@ void machine_kexec(struct kimage *kimage)
 	WARN(in_kexec_crash && (stuck_cpus || smp_crash_stop_failed()),
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
-	reboot_code_buffer_phys = page_to_phys(kimage->control_code_page);
-	reboot_code_buffer = phys_to_virt(reboot_code_buffer_phys);
-
 	kexec_image_info(kimage);
 
-	/*
-	 * Copy arm64_relocate_new_kernel to the reboot_code_buffer for use
-	 * after the kernel is shut down.
-	 */
-	memcpy(reboot_code_buffer, arm64_relocate_new_kernel,
-		arm64_relocate_new_kernel_size);
-
 	/* Flush the reboot_code_buffer in preparation for its execution. */
 	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
 
@@ -202,7 +204,7 @@ void machine_kexec(struct kimage *kimage)
 	 * userspace (kexec-tools).
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
-	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
+	cpu_soft_restart(kimage->arch.kern_reloc, kimage->head, kimage->start,
 			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
