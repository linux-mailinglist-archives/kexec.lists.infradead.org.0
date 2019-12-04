Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2AFE112FA2
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gJwKUMoFjh1b2VhtlZ9F/ji8lSkriVu0ueaNzR2f6eI=; b=KVl28B7SPX1Y6U
	xc7EsMZXIFpLGqF1SxLgBsa40xS/+Aw+ClAdnRc3BI7jvXpQXNsBsLUszAE50InQn/Los1A9IltHb
	EMNzDIk8Wr6h4qazv4t0B/WIrNC2TriUiEN4vmzTxG38+U2AiXBq8WLHrPqBjpmfVUYKQjeT6Kv35
	rboXbrwMl+KP/vx92REhp3sdMy6VdfSJ+p3G24IZ6S1cFrb+fSHVlGdOJHOZ7b6OJdMuj7fre80Lo
	FoYgCh/AaCelFH+392PMi5vQT2BL89KGSuPM8SUt9/1QVCQ3QsQXoMNxoFekRuQ0Bab+4lA8iXxUY
	o6fjB9G+Yrlj/rwfM6EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXCa-0000fT-0Z; Wed, 04 Dec 2019 16:08:32 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4g-0000Yc-Jm
 for kexec@bombadil.infradead.org; Wed, 04 Dec 2019 16:00:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SvTPGoWzcPkObV2Ws85OzWUy+7CYa3mnpkPEsJWZNzE=; b=Pj+XLVFPPzI3YYGbxZ0PIxFUNu
 +vfWmgTilMv621BTRYzrzS6N7goq6sw4NISpcm3rHmAUbO7IGSM4rLXn6GyaRi5A4+nWIvC4qiJBj
 VX+bnKzZRKqq4YS1chud8wnZbm7Jtx19l/5yK1Ec8L6nkw7qIhw63v8xsGBt0o+Ev17F8lvuy8fm9
 QbJ78kTi1hONns2dNC1CAnMWbxL+UN7TjTVaYJlrMGE43LH9Ut17rnwrhoTbUTDRxVdaCk2s7Ex/z
 G5zmFdNYMmk+R9gtscizVyzleBBpg9Ih/2o8++pze+mGh02KaLzqBKyW5HuvJoQOmq2meRgVwqz2J
 GJ8Tfe2g==;
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4c-00028Q-GR
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 16:00:21 +0000
Received: by mail-qk1-x741.google.com with SMTP id q28so326194qkn.10
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 08:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=SvTPGoWzcPkObV2Ws85OzWUy+7CYa3mnpkPEsJWZNzE=;
 b=cu+p4RqK3Zmx7hWnQSABCZglBgezn5eGQzuTkON/BGZNxKpEU1LoNRODi9ekiA+9ku
 /ZobcizQIRPhtU0+snmXbaF2M5yZuiN5PFlBdWDIJm0AGn5BWV5LQDz9CJt6/0Lity+v
 xisJmjhNGiX136oinbjNKH1rvVjN2c7Z/Q35xKU3qcr3ajjy4dgHBBdtaWrOSBhz12kM
 0SYxeCJnYQrKHjEAHJP+56wX8ja0DAATSwJnv7/BmALDrdxSnUR3j8/KTYpW6LeaZchE
 LqLej/VDgFvtbMsFSBcXgG/inm+Uf4Q2j9eK03s8vaFMKhFYmUBAqGeceb6c2l7XmwVw
 s/wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SvTPGoWzcPkObV2Ws85OzWUy+7CYa3mnpkPEsJWZNzE=;
 b=tXY5y9v5jRNPpLtC6uytJOllkErgzQwAf1escTIzjdawDgdhlx6C+HtlSrrOVKbKIR
 hf6891xToe6F5EnDWv8UOWuueADVIUM+Ecu4ZC9UDf1G3pL5KHDGUfNeKCnb0nL5UySg
 jbkScf6OP2dlTKruDaXgaLgejloCnnWD3eWiwsvFlq5Y308z6JyIAk20NWwlI2BAqnBt
 pNzSY/O6+K0N1w8ccdmTj0YToWdrqXfYnCzn2zfYXxSNk3/0PwFyuPZDr4rA1eoK5NgW
 US5F2QAz0CvNK2zB1lx205vSdqXqkSr59AQPE3sy9tMJYDXnTvtcmhKtnbilpUS13rFD
 9bug==
X-Gm-Message-State: APjAAAXPmBd093rHcZEoKWcDf6orHh/9nmFWuW6OVhJ/XT9krKQ7wJuV
 +qHIzzMBpmR9pnSPsfNPNSG/og==
X-Google-Smtp-Source: APXvYqwJu5ElHhYW15zTS5aeaMgKbUmMET7cn1hc9pUfr6v0add/5xWuzNZp92mrLeWlXbSulQ5WUw==
X-Received: by 2002:a37:9fce:: with SMTP id i197mr3504897qke.466.1575475212067; 
 Wed, 04 Dec 2019 08:00:12 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:11 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 21/25] arm64: kexec: offset for relocation function
Date: Wed,  4 Dec 2019 10:59:34 -0500
Message-Id: <20191204155938.2279686-22-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
