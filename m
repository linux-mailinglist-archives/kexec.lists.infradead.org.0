Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01622D9B0A
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FADLniKjQauT/d8kf7c3iBepqC8WmDeb0F803HVPrec=; b=FaWOymS6jyM/8h
	daF1ROMu1fHTnuGnwKQOk2yKnQObIA3E9jDrUwYEKxJMcubqVNck0iXYxs9HBGnZ/BsdBhA/kCpa4
	r9F6pJmQh4jqdkVlO5f1TH5d5xhjiPJZTCJGu7x2sQlwXcpsJ7dguKAMlz7FAEnPhqHRCPI5UuyEJ
	Y3J3y+FeCBCmxqGwDRsZr0yjwvpDqzD761XlakFVZlxdAjz18+URjbvYFjibEsUL1BAXqa9rmI4s2
	Dxaf9St2mm47z9UeOZ1phUU7aHIUg3p8WOg0opF5QMPdgfcDBtLUTnQS4VOMTIDmBz7TFMzJAM69M
	9q0soQWvTYgyQ/X1jPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpar-0002vI-BA; Wed, 16 Oct 2019 20:08:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTj-0004Pd-RX
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:07 +0000
Received: by mail-qt1-x841.google.com with SMTP id n17so18628899qtr.4
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2dB/JT7cpleUq4odQT8133EyCdo3KLVbNGsuR1ejXK0=;
 b=CiaFl7Mk/0Ai1uwEa1O2lGNLVpZo5+wb8v4pxmTWNb/dm2ro8mnYZnV8Edb/RXkgRm
 ki9I2+kYEPNZ+agtblWoi4KTtibPFfC2vJiQksWU9jlWzvdVmWqdIkA4Lb0g30wQcKQL
 vpQgAcBEBz8iFcDhWcWOcJFD4aLtX8PKUsr7KjYk5pXKwhCAV4dpCJ/hfY7qSm7PN9TL
 O2WTpHeLIh+12Q279PtAXhUhmTU/kr03dDQNBMsaRp6U/XSuSZ//IdFVQofebNWXkdPb
 7sUSw+IThgjUN6desgaUOBQdZufgn2uDSC9v6BTW3ULEOcUHxK+y1y0yRmtPvPsMsmeI
 wKMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2dB/JT7cpleUq4odQT8133EyCdo3KLVbNGsuR1ejXK0=;
 b=qeJPN9rwjlk9A3Ntt32IQpKVjUg4GL1BLu8MHKlyHkjxLznPpZ3CBMquHk7yG8SIkm
 t0v25b5SaGyyF8Rr/1GLRlaUlcpwmda8vUaGsbpOzqGlIvAcb4n4CvIfLnQl/noumGdC
 iuF4Wz2WKSZcHqbIUXVhEegCHeQhoEogJcAXBLj65cuAVx4bCMOoqijODSWF5Vc/iHhv
 UVsPW9Vjza1r+o2yUlmhw50lpZv+oQRzw4kKehAv001hcsVal9vuTtV00uCxSnlpegx2
 5tzzOwsB5EYPari3t/dYy/955gYRR93HJ/6gjhQafgEmOvBrvgSiS0LwpG8UTJTFTcKu
 u8Rw==
X-Gm-Message-State: APjAAAXINT7w3LRhumiFhYWJgNDi25vV/DvYSnciZfxbWpaO1GmhDxj9
 lwtyplF+/owBGEqF1sYuPZ9XGQ==
X-Google-Smtp-Source: APXvYqwMAUjRlLpWrrpgx3tDKuFsAxRFXePefh3P5/JOzZtFez2e3nLHNDhNVIJG5zsuWzwbBLXj9g==
X-Received: by 2002:ad4:51cc:: with SMTP id p12mr29646954qvq.243.1571256062832; 
 Wed, 16 Oct 2019 13:01:02 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:02 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 16/25] arm64: kexec: call kexec_image_info only once
Date: Wed, 16 Oct 2019 16:00:25 -0400
Message-Id: <20191016200034.1342308-17-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130104_006028_863F5922 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
