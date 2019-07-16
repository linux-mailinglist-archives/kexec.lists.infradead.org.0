Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A3E6AD44
	for <lists+kexec@lfdr.de>; Tue, 16 Jul 2019 18:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3JAX5qfCO/B3R4eCK1gT4EKMr4BOJZUoeZQUI+ZSC8=; b=pPsE9D1xxsceFd
	sk7pszpC1xvnjGpDocDySPSCeC4ftnqs1Oqud1zsUZi1RYrUq0vBl0bnbU/cxKR0mEtEiWYfn5fYf
	HVjLyIAte1sVbPH5xxxT1/NT8TEAocahOQ4Me5c+FvxVxxSXnPuV7bGmL8l6xj/UUL3fGVs5F9XNp
	ngE5Dd4/3mvvdIEkpGSl8tCCdGk8cIq/5QpQQ4YdaluS7f1Ua48yxN9eRKBAD4H+Mzj4et8r3ItEH
	1skCSlwU2581rdrSnlZi+oOVk7DPMe+oI6Ztg0Zun11XE5lrccBpyBY4g1MZze/8mFlhe6XjU9KvU
	AF9qf6suXpn28MfCFs2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQmt-0006ZT-DQ; Tue, 16 Jul 2019 16:58:47 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQkz-00055G-68
 for kexec@lists.infradead.org; Tue, 16 Jul 2019 16:56:51 +0000
Received: by mail-qt1-x843.google.com with SMTP id w17so20287189qto.10
 for <kexec@lists.infradead.org>; Tue, 16 Jul 2019 09:56:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=OHreDCpotkEUucxoE5EiEKrcc9yzecv+duVH9vOORKc=;
 b=GGIQw/kgAUl/eG3d2NKYO7rrigP3xCd6L3ITkDfbZyMEUnoEj0yVHLsV2LlbgRYbC+
 wxGDoUKvbsOD49xDxxVjVMA/cVW24Ta7j9hj3+wxoFsCV7bE/6zX1BcHliTfmRJa2HL6
 t1GMulrmuUdkYdtWJR3tWcDBbewttH11SYty1lYTYPi9/xqOKf63ADEYQ5vRWxW8OT6H
 VHjxbQVnM+5FFok1c8bap5vm+E40C8t2yYrwiy22m4L+k24TpV5SxJbfpoBHfRpCqzb2
 H6dm0a1hIjm8g/mZThetxdugoRf8Pcyv6ZduRuCZRIwQmu9srFbLpacSM3DPtY1OABO9
 4vlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHreDCpotkEUucxoE5EiEKrcc9yzecv+duVH9vOORKc=;
 b=YU1H6zYv61zE2W6ti7SF1YGFNjhix0Rz3jxasxZkkdF6mXsBDrAI5N4vrN4U2YfaVI
 18syLxDehlea6pZ9fULkYIoIuzUGTwQ7YGLLayK6DwwzWjP04cZOXUgU5gHAb036P5/Y
 ZcPg57vF7fMSVOAAkek/ljPt4YTKgSXVeZTRlFFPJ/6QhBJ8LL2VvAUWkNETCF6p4Zcv
 wTqMdO+bKiB4bvYhmCQLrg93viOaYmpyBWzj6v0Hpw1IS/aBkax6NAaa9vmBaKWrNYFE
 lTcJzDOCJEy8R/oHH4e3+vUtd+R+CnE6Uigb1HuEn/qp7ijIQyODfySKvjJvgoLUt5Bx
 6kVw==
X-Gm-Message-State: APjAAAXaSi9bdg+CZPFxrWQvpJdo6LMDRcH8Il8jJ2ayJBmXRSC4fv6R
 MaRsDQTIGm88KLaBVwl7swA=
X-Google-Smtp-Source: APXvYqwxJ0A/FHhU5OVW66jrPFnnHKm79duNOHFiKTe25GUCXmo7/DTY10UCE+L1XIgV2bRdwMnQ6w==
X-Received: by 2002:ac8:41d1:: with SMTP id o17mr23857397qtm.17.1563296207876; 
 Tue, 16 Jul 2019 09:56:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:47 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 4/4] arm64: Keep MMU on while kernel is being relocated
Date: Tue, 16 Jul 2019 12:56:41 -0400
Message-Id: <20190716165641.6990-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716165641.6990-1-pasha.tatashin@soleen.com>
References: <20190716165641.6990-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095649_436950_E5944713 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
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

It is inefficient to do kernel relocation with MMU disabled. This is
because if MMU is disabled,  dcache must also be disabled.

Now, that we have identity page table we can disable MMU after relocation
is completed.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/cpu-reset.S       |  8 -------
 arch/arm64/kernel/relocate_kernel.S | 36 ++++++++++++++++++-----------
 2 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.S b/arch/arm64/kernel/cpu-reset.S
index 6ea337d464c4..d5cfc17b8e1f 100644
--- a/arch/arm64/kernel/cpu-reset.S
+++ b/arch/arm64/kernel/cpu-reset.S
@@ -30,14 +30,6 @@
  * flat identity mapping.
  */
 ENTRY(__cpu_soft_restart)
-	/* Clear sctlr_el1 flags. */
-	mrs	x12, sctlr_el1
-	ldr	x13, =SCTLR_ELx_FLAGS
-	bic	x12, x12, x13
-	pre_disable_mmu_workaround
-	msr	sctlr_el1, x12
-	isb
-
 	cbz	x0, 1f				// el2_switch?
 	mov	x0, #HVC_SOFT_RESTART
 	hvc	#0				// no return
diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..e2724fedd082 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -36,18 +36,6 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x14, xzr			/* x14 = entry ptr */
 	mov	x13, xzr			/* x13 = copy dest */
 
-	/* Clear the sctlr_el2 flags. */
-	mrs	x0, CurrentEL
-	cmp	x0, #CurrentEL_EL2
-	b.ne	1f
-	mrs	x0, sctlr_el2
-	ldr	x1, =SCTLR_ELx_FLAGS
-	bic	x0, x0, x1
-	pre_disable_mmu_workaround
-	msr	sctlr_el2, x0
-	isb
-1:
-
 	/* Check if the new image needs relocation. */
 	tbnz	x16, IND_DONE_BIT, .Ldone
 
@@ -63,10 +51,10 @@ ENTRY(arm64_relocate_new_kernel)
 	add     x20, x0, #PAGE_SIZE
 	sub     x1, x15, #1
 	bic     x0, x0, x1
-2:	dc      ivac, x0
+1:	dc      ivac, x0
 	add     x0, x0, x15
 	cmp     x0, x20
-	b.lo    2b
+	b.lo    1b
 	dsb     sy
 
 	mov x20, x13
@@ -104,6 +92,26 @@ ENTRY(arm64_relocate_new_kernel)
 	dsb	nsh
 	isb
 
+	/* Clear sctlr_el1 flags. */
+	mrs	x12, sctlr_el1
+	ldr	x13, =SCTLR_ELx_FLAGS
+	bic	x12, x12, x13
+	pre_disable_mmu_workaround
+	msr	sctlr_el1, x12
+	isb
+
+	/* Clear the sctlr_el2 flags. */
+	mrs	x0, CurrentEL
+	cmp	x0, #CurrentEL_EL2
+	b.ne	2f
+	mrs	x0, sctlr_el2
+	ldr	x1, =SCTLR_ELx_FLAGS
+	bic	x0, x0, x1
+	pre_disable_mmu_workaround
+	msr	sctlr_el2, x0
+	isb
+2:
+
 	/* Start new image. */
 	mov	x0, x18
 	mov	x1, xzr
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
