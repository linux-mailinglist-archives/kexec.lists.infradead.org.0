Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F087112FA8
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:09:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2iClWNm/pXec2PNfwSo0zrbwBYIgrLNMuo25hUvz7R8=; b=flkrNm3/BDIQWX
	2iUy+s15S/fSE6A4tzmHnLO9QDBfxd8PlcqRDcZ4pmEmmwYOCFSJOk4++aQLx07Dpn97Y+pWZUxMj
	ev1J0DQDhQDx2TJaT46RXaC2CKssS/iyB/VJd5Sme1cbQrgCizjENdBvwxv0YLSUscHcirtYDkE6F
	4QkUNsll7MhaZ3Elp3JJkkCNczbnYSipxTiN04v6ljYTE8avPG44/QVhx36JYeYRI0uIRgy7b/5Cy
	Y7JlgpotP7lbipYiE3tW1DR/q5Gd/o6qiINyK6cozMkx34W4Tr+SvgBtUhbpwsXn1SKWvYrDqJ8Bk
	yuYo6L99bRpA6g/oQCAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icXDE-0001EI-8a; Wed, 04 Dec 2019 16:09:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4W-0008DJ-5v
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 16:00:23 +0000
Received: by mail-qk1-x741.google.com with SMTP id m188so370660qkc.4
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 08:00:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=dqtgvoRdMawEKh+xykZ1VqYMRicExyc/MR9wF15sbHw=;
 b=Ex89ONXqJCjErir/CSjvl4mBDjlt4VxRe8WcaAYsgMxni+4Rr3afXkK/SCnmpvCS+r
 CYrew3webB+wFVwwpeB0eVsnktSmlCCoNUSL2Pnnp0KjEe4oWMsL6no4bK6wo3DUInMA
 HE7gd3XjA51lMruvsscVz/TwtVLMWVOQMlcoyExnU/25fpveSdADWsJ+0VDpYAizwvsp
 Gv1nN3tZyoTkFwr/N58bbS/C3oHGE/kgeB/pxI95M3rcCAiJMLprGEN7zWUYK/Qq3Ax9
 cParO33UFyIsQpW5hSvZJRWf5fgppuQr986piZ8w9qPr7Ooo0TTQDuZ9448rRyZv7T4j
 acGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dqtgvoRdMawEKh+xykZ1VqYMRicExyc/MR9wF15sbHw=;
 b=Uev3TTZo+AVy1qdRZQx2FKeyYN8HxMbI5a/y5KFXVhZ3fMKkDZ3WFD+0PPRl6JVc2F
 W48lTtdMBSi2LIfpLaz4y9QOMfDQDEXFzh75JPpl4+yZo2WY7EXyCgUWSYHCuyki5Sf+
 azX3FecYLdRXDKQwFpwSxWQsmn//HRBCS6SMQtNdvk49E0mugR2H/HtGy1DfzNbj6uiP
 nmnUZR9k2sJMsnfk2zezM/h6svvKnCaJP2QtNsj6jj9d/FIM3MOrxo6FgxzHnfFJe6XU
 Zl31HbMLnyKXJudxFl3D9RejgQwrnzpSkq1kAIR7mFG4n2/TOFlo2bZoTxXGfiKv4dHz
 7xpA==
X-Gm-Message-State: APjAAAUKI6cBRQj0BIyiGuy0s8uG5OUKXD8gqvzyfO2hx4x1TwBPeGPg
 Rp8aMhHUaxQC76LE5CDMG9lDNA==
X-Google-Smtp-Source: APXvYqwJuTv1+brNarCqrfi93wNDwS5RdOuPajdDtgQaRMjcuOxzMm2jiZSYAFlmf5mRNTazIaIUmA==
X-Received: by 2002:a37:4c8e:: with SMTP id z136mr3750671qka.177.1575475209021; 
 Wed, 04 Dec 2019 08:00:09 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.08.00.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 08:00:08 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 19/25] arm64: kexec: arm64_relocate_new_kernel don't use x0
 as temp
Date: Wed,  4 Dec 2019 10:59:32 -0500
Message-Id: <20191204155938.2279686-20-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_080012_493897_F4086ACB 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
