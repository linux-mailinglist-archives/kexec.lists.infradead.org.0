Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D70C1936FE
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 04:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lznpGlyZYI/8Bx6ApL6/9/SUeWVU25/VTTtSNd0nXZ0=; b=uwif6vvZqiS08i
	eSjKdvI3tvlNu4mrrJCIJQun70IeqKWRxOFGW3A5p9q4HyhxpJY0F+lEC3MR3jpCBSncdPI2A6wrM
	gNkIybb2K1MXfq4tXX2YWJengMFP/IVNNWaqWxhFHM2JHf0xeJCPgYS0L8CM7ns4esNyHgWpCyB1c
	LuqXhHdztnhMNVq0hzLx8XQG1IsCND+VqLxIF/m7ddYw1NS21wzms8rB6LDA+CBghgoGuB0rnbhLz
	Vtg/AyGIPevueaU6XM+XDC2c1ujkvnCHujwXraUP6Qw4zhA/7ZOE4AtO5QRqItKIzD1L5lTGzqKOu
	aIfiIp1SlRfHzsfPW9hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJEJ-00036D-5n; Thu, 26 Mar 2020 03:30:51 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8M-0004j6-Kl
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 03:24:44 +0000
Received: by mail-qt1-x842.google.com with SMTP id e14so4214734qts.2
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 20:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=+QNwRXfDbgmdgwiAWzmJWWFV3AeWwC/BkLzCJNBiX7U=;
 b=ORP3E/ZpEgE98OIaAPSZGFAcOrHLCH0OZ+6B4Q98GVNlw635eAenr+Qr6UJfPlzHZY
 zwcjqMKnATW+Tkpb6om6vwznhxUoKQpNie7bBYkPOzThhNddYDKgHOwX1j7FKdprMZ0j
 slzaC/miPXlNVoqvbDQpi0b1b9HhU+3trTqExs8FfHkN9BTVYlurgItTUgg9mBvJ/4jM
 0eHkcBTq+tojnVx3RUoQkWgoO5ZREG01eZNlkd5JbuMNwpM2SmzDSMHd+kD3UHLh17E6
 4hX9u/EVkhq/ryWZUCX7I4vUDngpM8dJCfXmmrYvQCPvj4Vx6r9X4yNAf0rTcJ2FxFIa
 i0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=+QNwRXfDbgmdgwiAWzmJWWFV3AeWwC/BkLzCJNBiX7U=;
 b=UqznhwX7FXJXMtoCQiUpEggRJ7SrHjeA2Hf4a6ss4LWrhgUK64OQtXEgb1KD1qLpEj
 hJPiDdLvVx+jgzsdXdRlYOlM0l37vFpS+2ExwTt1u/IhE9MylQpQh+wwjUTuf8LKEHhy
 S6gPBWhJqBQHTGu50YZ20Pjhscnbpwv+DfVLPRXDl+r17ahplnvgMiE7wJ94dN8kC+HA
 Ld/FwWO0Fr/FKZzSOn0nukgh5svIV6ICTIWCxxyx4bUtKqymyRc5iR4jn2jRSM7lllRH
 6uRT6MBsczbRjYrRJ0rahBGtj5kuakYT7HAUxaZVjiJacf7SP2onCI+jLjOeJwMsbHJg
 pUXw==
X-Gm-Message-State: ANhLgQ3gDQninJqfu0Fj43lFUBtLyIZZwTffn14YsGTdGLiLF4kAmplB
 oLeg21sniXKWowmtsguFkup0SQ==
X-Google-Smtp-Source: ADFU+vtbKYyEZjxHqMRMqVkHzcW5e1lkwXuYNftBecpITpTgyTzGVt02JTYGpZDymXDfWspDslX4ZA==
X-Received: by 2002:ac8:4641:: with SMTP id f1mr5868894qto.216.1585193081247; 
 Wed, 25 Mar 2020 20:24:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:40 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 12/18] arm64: kexec: arm64_relocate_new_kernel don't use x0
 as temp
Date: Wed, 25 Mar 2020 23:24:14 -0400
Message-Id: <20200326032420.27220-13-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202442_700935_6A86F0CF 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
