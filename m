Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE17112F91
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:06:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMxIAgtACz983s+ml384lB+6faurX6zO4VFADtmma/4=; b=oCSOI6ZEGAZ0xB
	8ggbtzdx/w+Jj/WKpp1/9YhdaDCQvJuQsmQ2Z6gTFgj+W3bVVfw5nC45yoa4VpLfS2y/RScM0rTUa
	3abIbr9SPeLAjCE4eVOzqDMR5LaC2kd9uFeIMoBCWvnr1zthPUi/JC2xMpzs9f/0XIX45yL5Q/xgN
	WarLQdb287vztHIfVdz94y6/onrMWgev3mv+/T3HED7QMj6yYYUgK3SbuVCoIMB4ZmNBNFe7wy5UX
	8k+lCdOnAhW8GcCFD/zGgnnniIOMaCqaHXcbJvcSwmCyqv9sG3yfty56tHzDkDDSLdviC0GKI2Bdy
	+VpcngP/yYBY3DMpNZCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXAo-0007PS-M4; Wed, 04 Dec 2019 16:06:42 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4Q-0007nU-Tu
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 16:00:18 +0000
Received: by mail-qt1-x843.google.com with SMTP id g1so224649qtj.6
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 08:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=caPojFU9C1Vw1ye7p06/lKzSTQslx3S8Kp3MSLulHf8=;
 b=MYm3P8vaLfZ2ogHotmHOsHIpSVg9cvTGh4ZQEOyCjA5nnY6mdFUFUhx5AXhN0j3XJS
 beL8d42BtYxbaySly0DTbhBk2AmxjdCf9WX7//T/oz7z9ge0aaEUqx8F8duzafWUbJxA
 LTWMB6kge+LbwPmEfP3BHmq/62hdxhna88Vx4NVqZnpyJA9KaibztPZdcbPVVexGs0TK
 VXDAMwSB0nPxu77i8MqaEa8xlHSAf6zthbzRNLnrCri77E4SthsQPlHK6M3Se5qr+myW
 OV4kg9RT446a+RXhFIUOoqksiJ7J/EBKXfRkS/JZPfLVcTLDgfMF5b5ZUPgxjQCSa4nD
 NWAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=caPojFU9C1Vw1ye7p06/lKzSTQslx3S8Kp3MSLulHf8=;
 b=b78nriG0HQps9pxHRldJZ+wQ4D0OU/km3ZSzVm4C7/aZQdvKmwD277q9kJCl0jn9gK
 KtpWnL8dPOS94xDhmOgvE78pkB1pgpwiTis6WWRSdFh7gwsH2gJaG4lPxqRYh3mQs0p+
 Hj/rEbLk9czbFmyft1eafLUvA7u1G09AKaa5YaeuWORZbwlUH0azZgOJ9m0SC6hG0R5O
 BCDigAONCy9lllMuhSLLPUEF1NuAxECgYIAAlZA6tTEYyTzM+NgZS6EnWdSM+1lpRXYm
 haJO4JNVVhGK0d6dxpBoF+AcEB3/zQxNH1k7ffYF4XY5ZTf93o3a/MbSKUh6eBNLbey9
 MISA==
X-Gm-Message-State: APjAAAVAx8t1sfvCSas4hydw9qt78wRbaM7QODqFiG74Bkrcjnrv5iPc
 vaWxbKTSSr16d5g6ecIc8M786w==
X-Google-Smtp-Source: APXvYqzTKumsWYSE0kFMpP6G187N4Bgp/ZpVRjk98+PQxso8eknOwr7Z6ZJIWc+kehL8rXWA6r44+w==
X-Received: by 2002:ac8:7b24:: with SMTP id l4mr3347748qtu.3.1575475204637;
 Wed, 04 Dec 2019 08:00:04 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:04 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 16/25] arm64: kexec: call kexec_image_info only once
Date: Wed,  4 Dec 2019 10:59:29 -0500
Message-Id: <20191204155938.2279686-17-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080007_374620_E45F93D8 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Currently, kexec_image_info() is called during load time, and
right before kernel is being kexec'ed. There is no need to do both.
So, call it only once when segments are loaded and the physical
location of page with copy of arm64_relocate_new_kernel is known.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/machine_kexec.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 46718b289a6b..f94119b5cebc 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -66,6 +66,7 @@ int machine_kexec_post_load(struct kimage *kimage)
 	memcpy(reloc_code, arm64_relocate_new_kernel,
 	       arm64_relocate_new_kernel_size);
 	kimage->arch.kern_reloc = __pa(reloc_code);
+	kexec_image_info(kimage);
 
 	return 0;
 }
@@ -80,8 +81,6 @@ int machine_kexec_post_load(struct kimage *kimage)
  */
 int machine_kexec_prepare(struct kimage *kimage)
 {
-	kexec_image_info(kimage);
-
 	if (kimage->type != KEXEC_TYPE_CRASH && cpus_are_stuck_in_kernel()) {
 		pr_err("Can't kexec: CPUs are stuck in the kernel.\n");
 		return -EBUSY;
@@ -167,8 +166,6 @@ void machine_kexec(struct kimage *kimage)
 	WARN(in_kexec_crash && (stuck_cpus || smp_crash_stop_failed()),
 		"Some CPUs may be stale, kdump will be unreliable.\n");
 
-	kexec_image_info(kimage);
-
 	/* Flush the reboot_code_buffer in preparation for its execution. */
 	__flush_dcache_area(reboot_code_buffer, arm64_relocate_new_kernel_size);
 
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
