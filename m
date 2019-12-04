Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F6B112FA0
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:08:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMgmKHVrLbKU7HT5aZ9sNBP1pHUrGOdp71vRC9w6cCw=; b=LUiPLISUzLTsu6
	ln7b/yY7lyG+vFshC2Z4WZFlxxDDDHnPnK0kfpJdMLmA7RL47FCTYpIAZeLhu8Z+n/aO5+EfJlx+/
	9OfyD8d3OOz795rOP/lgvu5OcnxQwqBJEnCJsbWvjLHx4iJKFuTUS5t2iKrTo3/+BVWwkGFbCv+3D
	PCE5jzHtNT4tfiT+MDr6/7uHCDAeZbpXp6cFwZuCy8egAExCvzybKL+WmH+XCTc3XRVg7rmPqvFZN
	LGXvCRNijY5OHUvG1c1e94uzmcw0jxFqiHFTgYxmJyHZAa4PJCifcJSQ2gjKjr5rOYAre4q1oReWY
	C7UCSz9IFe7ls/4nleOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXCU-0000Z8-AO; Wed, 04 Dec 2019 16:08:26 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4T-00084c-42
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 16:00:21 +0000
Received: by mail-qt1-x844.google.com with SMTP id g1so224847qtj.6
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 08:00:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=/MBYltW9rtBSsCfH5mLmr7A6OON/1ojAMvX6KehscWk=;
 b=PA8kJkX541uA9bLo4WgCm+htG1kvjEaRAVXmfsJT5ev/Ld6leNgY3lHaFjxuS2kq8c
 JWYwnjGwZOZBuwR+6tFHv+d36VclP/iythlg37WWlFyZC/Cup7dv3JZz/A6DI/lcZjWt
 5AcJqcy7mYeyB7YM+4q3rEdREi/VPoO8RR1beH3Ycf5VvzPh41J1zTOmelnLoU3hNUUe
 w35aOPjfrbpmQukSQQSxmP3M2y+BEpG/kwpUyzBMS6yAbEHAL55EdMhXeS84jRYXb0LK
 ytRhwV7ojg12l0y/P+BBOVmdhuNFe6aMJcI3UDzN/RtDLnqI0yarDg3C+j/wII1pLKuP
 Covw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/MBYltW9rtBSsCfH5mLmr7A6OON/1ojAMvX6KehscWk=;
 b=YwyiBOSAxZsiKLlRuf8o3ZFEcd5XpUz3gYH1F+DEWPRY76hRwFvyoJEjUTN29KBQq7
 4hMWXjJoJ6H4YETsybx+ipMF9xBbTlRCKqqJX+qoM4OmBnz4Ucnv95GkM11qlenqGQjl
 8K039v4OvfU20dSi2uuxPyRDnIKgaFjzn9KXxJs43jL0gqpbxpLJmW5rY5u6rE7d5lG3
 UQUYabD55hDrDfe111XY6Er8/aaSAFdyNypguR259xq9Rc/OvDMTINH4ht3UfB1tdqBA
 V/W4wQWoRJngjd1TJcZU7JvM/FW+n9VQkxQ2HrI2WWWqDNr+qOMykMHFIOrk5v5Woa9B
 TyqA==
X-Gm-Message-State: APjAAAWJxkTJHRSayjxRRjgRddXoH6k3cHUIWQK/ev1sIMfG3UFFoGyb
 bJWVbM8Sxxywcy1/94yKspz4ww==
X-Google-Smtp-Source: APXvYqwbKSwS/yXWuRHb+PaP9MfU0eV8kxGrFkPjas9vXjMIOj11vViQlKH1qIZNWm8y42tqqOAO9w==
X-Received: by 2002:ac8:5542:: with SMTP id o2mr3360225qtr.387.1575475207544; 
 Wed, 04 Dec 2019 08:00:07 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:06 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 18/25] arm64: kexec: arm64_relocate_new_kernel clean-ups
Date: Wed,  4 Dec 2019 10:59:31 -0500
Message-Id: <20191204155938.2279686-19-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080009_554212_39042A4C 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

Remove excessive empty lines from arm64_relocate_new_kernel.
Also, use comments on the same lines with instructions where
appropriate.

Change ENDPROC to END it never returns.

copy_page(dest, src, tmps...)
Increments dest and src by PAGE_SIZE, so no need to store dest
prior to calling copy_page and increment it after. Also, src is not
used after a copy, not need to copy either.

Call raw_dcache_line_size()  only when relocation is actually going to
happen.

Since '.align 3' is intended to align globals at the end of the file,
move it there.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/relocate_kernel.S | 50 +++++++----------------------
 1 file changed, 11 insertions(+), 39 deletions(-)

diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
index c1d7db71a726..e9c974ea4717 100644
--- a/arch/arm64/kernel/relocate_kernel.S
+++ b/arch/arm64/kernel/relocate_kernel.S
@@ -8,7 +8,6 @@
 
 #include <linux/kexec.h>
 #include <linux/linkage.h>
-
 #include <asm/assembler.h>
 #include <asm/kexec.h>
 #include <asm/page.h>
@@ -17,25 +16,21 @@
 /*
  * arm64_relocate_new_kernel - Put a 2nd stage image in place and boot it.
  *
- * The memory that the old kernel occupies may be overwritten when coping the
+ * The memory that the old kernel occupies may be overwritten when copying the
  * new image to its final location.  To assure that the
  * arm64_relocate_new_kernel routine which does that copy is not overwritten,
  * all code and data needed by arm64_relocate_new_kernel must be between the
  * symbols arm64_relocate_new_kernel and arm64_relocate_new_kernel_end.  The
  * machine_kexec() routine will copy arm64_relocate_new_kernel to the kexec
- * control_code_page, a special page which has been set up to be preserved
- * during the copy operation.
+ * safe memory that has been set up to be preserved during the copy operation.
  */
 ENTRY(arm64_relocate_new_kernel)
-
 	/* Setup the list loop variables. */
 	mov	x18, x2				/* x18 = dtb address */
 	mov	x17, x1				/* x17 = kimage_start */
 	mov	x16, x0				/* x16 = kimage_head */
-	raw_dcache_line_size x15, x0		/* x15 = dcache line size */
 	mov	x14, xzr			/* x14 = entry ptr */
 	mov	x13, xzr			/* x13 = copy dest */
-
 	/* Clear the sctlr_el2 flags. */
 	mrs	x0, CurrentEL
 	cmp	x0, #CurrentEL_EL2
@@ -46,14 +41,11 @@ ENTRY(arm64_relocate_new_kernel)
 	pre_disable_mmu_workaround
 	msr	sctlr_el2, x0
 	isb
-1:
-
-	/* Check if the new image needs relocation. */
+1:	/* Check if the new image needs relocation. */
 	tbnz	x16, IND_DONE_BIT, .Ldone
-
+	raw_dcache_line_size x15, x1		/* x15 = dcache line size */
 .Lloop:
 	and	x12, x16, PAGE_MASK		/* x12 = addr */
-
 	/* Test the entry flags. */
 .Ltest_source:
 	tbz	x16, IND_SOURCE_BIT, .Ltest_indirection
@@ -69,34 +61,18 @@ ENTRY(arm64_relocate_new_kernel)
 	b.lo    2b
 	dsb     sy
 
-	mov x20, x13
-	mov x21, x12
-	copy_page x20, x21, x0, x1, x2, x3, x4, x5, x6, x7
-
-	/* dest += PAGE_SIZE */
-	add	x13, x13, PAGE_SIZE
+	copy_page x13, x12, x0, x1, x2, x3, x4, x5, x6, x7
 	b	.Lnext
-
 .Ltest_indirection:
 	tbz	x16, IND_INDIRECTION_BIT, .Ltest_destination
-
-	/* ptr = addr */
-	mov	x14, x12
+	mov	x14, x12			/* ptr = addr */
 	b	.Lnext
-
 .Ltest_destination:
 	tbz	x16, IND_DESTINATION_BIT, .Lnext
-
-	/* dest = addr */
-	mov	x13, x12
-
+	mov	x13, x12			/* dest = addr */
 .Lnext:
-	/* entry = *ptr++ */
-	ldr	x16, [x14], #8
-
-	/* while (!(entry & DONE)) */
-	tbz	x16, IND_DONE_BIT, .Lloop
-
+	ldr	x16, [x14], #8			/* entry = *ptr++ */
+	tbz	x16, IND_DONE_BIT, .Lloop	/* while (!(entry & DONE)) */
 .Ldone:
 	/* wait for writes from copy_page to finish */
 	dsb	nsh
@@ -110,16 +86,12 @@ ENTRY(arm64_relocate_new_kernel)
 	mov	x2, xzr
 	mov	x3, xzr
 	br	x17
-
-ENDPROC(arm64_relocate_new_kernel)
-
 .ltorg
-
-.align 3	/* To keep the 64-bit values below naturally aligned. */
+END(arm64_relocate_new_kernel)
 
 .Lcopy_end:
 .org	KEXEC_CONTROL_PAGE_SIZE
-
+.align 3	/* To keep the 64-bit values below naturally aligned. */
 /*
  * arm64_relocate_new_kernel_size - Number of bytes to copy to the
  * control_code_page.
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
