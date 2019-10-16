Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F196D9B0D
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJdqU+m3HgT5KI1ZLSOk+9mHXGa9lWCC96DFdAJsfQw=; b=EMgrZmAbqSQvzV
	Ncivr27NqWnxV5vA4QVrPp1Cu47hD8COnhJv1YmVJ3bd1FGAK+FnMtwUekkAhNRF2Dx/39B1VjIG3
	CKqOSRNkRg+YYZ0R/NTHy770VC6nvwCk8DMUKZ/LjCZr/8dLCXScieh0hmUEulq0a5YYLtVOWXgNA
	jsKrsYX0hC4miV9XWtsCPEzs7XHkOUIpBLSltvqDgTZaqOK6mwC7y6wtVRjt43/48wgcDUY6pEKms
	W6mtJIPVLpv1kUt8EwTRg9ed99eUVDWXbmLtrl9gNSHo7dIGhNVRNR/qElf/RXbSaw5ErfDVKVcQL
	EnR9M0zeEeIXA3F02w8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpbI-0003Et-5N; Wed, 16 Oct 2019 20:08:52 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTo-0004Tt-V6
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:11 +0000
Received: by mail-qt1-x843.google.com with SMTP id c21so37943805qtj.12
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Sp+VstuavASlsN1G0FJ/FWHqH9Fozh8Uv4KMjFw0HxA=;
 b=NDSNSaUlA4y+6G85DRCykmRw6kEaoLE6jlhErSwZ96+UQ7KdR/bWgVQhBfyv0JKjA7
 H9GU2Ew1TthzvQmfly4miNmRwvWthsF688SunrQS1ZFWiURD8eW2vguIfwUStbfiU9qo
 F54lFdMP8zIzLX1y1TQSiBNfpyw/yjrSopnhEOsKDhd7quyUuCv+7gYSXjJ5iTlL4PxV
 4d9poZehRV7/Iw2BW4yl3DPMXZ+K8wyk4K4pWo8OTNlqOso2cR8MW96tEE7YcNBXLjq7
 urSQ8NQxcEUiZqJI24vETHgj8MoIdcsVfp5G3QCIJCfh6bGnCY/ndpJ5ICaxF0LE28eH
 hl/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sp+VstuavASlsN1G0FJ/FWHqH9Fozh8Uv4KMjFw0HxA=;
 b=VTXmIUi3QgXiOih8dg5dMqvotj9l9PUoA4KLlYcSM3PFuBjKgMbtETJpQFA3spEdb3
 RrU1JEiHMZUTN15qwIb1csZhUWrFrQunl2P5GWmL5FeHeL1IzcoWeqyv6/EuG3ND2K71
 AMHvQxe5tMv8xeHpC7ioRa5p4kwvodeCpa5BQwJozfIRwp5sUqZ3FA7hDqfW1ru9gL+Y
 SJmzEOCaM6SL9hJKA0SKuA+MzKUvPWdq2MY0w7hgqXwdRO5HPn2oagm6A2ZAqLc5/gRF
 RixNG1HHV8Yi+6QjiZy2QoGwVl53pcHkRmlvLTY4dx3zZ9gdHVb4GWt48wCgLwrAP278
 vlAw==
X-Gm-Message-State: APjAAAX9WIKOmHutGvp8kTqeqyeA3XvNPdKF0HkGK8oJTH9n5f7Euukv
 kvj3cvAapN8++NzdmuVCH+mEuw==
X-Google-Smtp-Source: APXvYqw7/01BK2AK82CMWOt5K8aNWTlA5v03uhy/lj7bm5OhDkRgLGoZwMDY3iJtsa+WCiAtCNhtXA==
X-Received: by 2002:ac8:729a:: with SMTP id v26mr48203902qto.4.1571256067312; 
 Wed, 16 Oct 2019 13:01:07 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:06 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 19/25] arm64: kexec: arm64_relocate_new_kernel don't use x0
 as temp
Date: Wed, 16 Oct 2019 16:00:28 -0400
Message-Id: <20191016200034.1342308-20-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130109_123398_2181008B 
X-CRM114-Status: UNSURE (   7.85  )
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

x0 will contain the only argument to arm64_relocate_new_kernel; don't
use it as a temp. Reassigned registers to free-up x0.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/relocate_kernel.S | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index e9c974ea4717..41f9c95fabe8 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -32,14 +32,14 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x14, xzr			/* x14 = entry ptr */
 	mov	x13, xzr			/* x13 = copy dest */
 	/* Clear the sctlr_el2 flags. */
-	mrs	x0, CurrentEL
-	cmp	x0, #CurrentEL_EL2
+	mrs	x2, CurrentEL
+	cmp	x2, #CurrentEL_EL2
 	b.ne	1f
-	mrs	x0, sctlr_el2
+	mrs	x2, sctlr_el2
 	ldr	x1, =SCTLR_ELx_FLAGS
-	bic	x0, x0, x1
+	bic	x2, x2, x1
 	pre_disable_mmu_workaround
-	msr	sctlr_el2, x0
+	msr	sctlr_el2, x2
 	isb
 1:	/* Check if the new image needs relocation. */
 	tbnz	x16, IND_DONE_BIT, .Ldone
@@ -51,17 +51,17 @@ ENTRY(arm64_relocate_new_kernel)
 	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
 
 	/* Invalidate dest page to PoC. */
-	mov     x0, x13
-	add     x20, x0, #PAGE_SIZE
+	mov     x2, x13
+	add     x20, x2, #PAGE_SIZE
 	sub     x1, x15, #1
-	bic     x0, x0, x1
-2:	dc      ivac, x0
-	add     x0, x0, x15
-	cmp     x0, x20
+	bic     x2, x2, x1
+2:	dc      ivac, x2
+	add     x2, x2, x15
+	cmp     x2, x20
 	b.lo    2b
 	dsb     sy
 
-	copy_page x13, x12, x0, x1, x2, x3, x4, x5, x6, x7
+	copy_page x13, x12, x1, x2, x3, x4, x5, x6, x7, x8
 	b	.Lnext
 .Ltest_indirection:
 	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
