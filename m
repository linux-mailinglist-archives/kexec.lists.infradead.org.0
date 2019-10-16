Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D38F3D9B21
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=09eJAjKl+MZUAXALl6YOwA6VGDPHpPO7f4TsNdErw74=; b=lCoWdhE95Fgn1K
	lUq1DahJPMA8qU/feClMCat/S+mTopd3n2sTUggMG9eeCIzJSe1b57fc5nf7aBi+6rsFbJi75k15F
	FSh85yMPu/3qKO4yGe8PxNxZiczLmcQliOv7+Sx9N5B8AlZ/+brz1MEUbqRBSOrDuBPqAaoliLcLO
	RTTye85A4+jGNWV+1PqkP2fgsKdB88tukdagNakpnGBmegVBeMzmfGYqcqxd0fO9XabiyxhUBYDfk
	mD4nNUbA1l1t++h6iJ9FG8Ifbe6gbRtofU30xA04kwv3nJQ4TtcktrM+ksY7Mx30tErrWVa85Cp8E
	f8IkX5po5UQoISfTjoug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpdh-0006G3-PH; Wed, 16 Oct 2019 20:11:21 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTx-0004em-RF
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:20 +0000
Received: by mail-qt1-x844.google.com with SMTP id j31so37991608qta.5
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=T3XWTOgEP/9W4ZS1E8/VXGGfXzT8jd4exEGR+bMuwFQ=;
 b=TwrU+GOQ941Sbph2SFlImjGbplb/clyAhQMdLITdEqfku17H8sdjTfFUMvAZe4kojq
 4YBgVZ0VBiTp3siA8nE/jqe9SmThHOYeBqzBNcz8IFDf7vf796F/kPBtX4VfC12d9cGF
 Z87WVxZ17F7bODF0yNyx32TQf/Uq2xQTMJQjkPTJhaIYadOcoA+UnpOO4MqsumekXePm
 dnsb99L63dW8eqGMUTHNASV5cIoNW8HlxIKZwH2Oq2DtBbwk8VEm4Kb7drd+R4rQyPl9
 cAk4Ro2mCrP6oNxUCU7i27imKhoBEzF+naSPVz9JYZWlBy9dvkx82EpjYrBvxvcm4UJ8
 tBUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T3XWTOgEP/9W4ZS1E8/VXGGfXzT8jd4exEGR+bMuwFQ=;
 b=AW1FHfXDXSbi4rnGLzyjh8E+qwjZ1VXIfF2VhXRIvniamqvQo++cVHJct5LFU+z/rf
 px6eiF39PkCULl0OiH8JmRwJ1I7szvj4G6lI1HCgu2yZ8LqeG4wdJg8G86abicmmuQNT
 eoKwuk0GRCvMDbIbu4G6LCRlUc1Jz6DxZkMRem5t70QyfPwNmmH6sNcI7aJVK2d/PB+s
 hk09K6VeuJTHAsJCpdVt6rD8LUsFnShh3q29W6NNdTMb8PQbzRrUVHL2u6niyK9NCke8
 6pus+19vSxQtgEPIMgDLzuOQdWaF6lCzIZoVqSPT2LMIB1yrZiBcncFh7Wdrlwx5lZ3l
 F5hw==
X-Gm-Message-State: APjAAAX8LvFsQp2FBc0ldlOV5lIsjardfrbIu00EoMHW1kKPr6f3iN/w
 61wQW+eA3Dp2f18qHDq99i9H/Q==
X-Google-Smtp-Source: APXvYqxUeYI2VVeNKwOcx1CBf1Vuu9NAWArtbmb0ydUiJoKzSapQ6z4MonpaFLHL7qk8ur/XLUM3Ag==
X-Received: by 2002:ac8:f28:: with SMTP id e37mr47590802qtk.274.1571256076532; 
 Wed, 16 Oct 2019 13:01:16 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:15 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 25/25] arm64: kexec: remove head from relocation argument
Date: Wed, 16 Oct 2019 16:00:34 -0400
Message-Id: <20191016200034.1342308-26-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130118_043607_7925ACF5 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

Now, that relocation is done using virtual addresses, reloc_arg->head
is not needed anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    | 2 --
 arch/arm64/kernel/asm-offsets.c   | 1 -
 arch/arm64/kernel/machine_kexec.c | 1 -
 3 files changed, 4 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index df911a4aa8ce..b3a39736d0db 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -104,7 +104,6 @@ extern const unsigned long kexec_el2_vectors_offset;
 
 /*
  * kern_reloc_arg is passed to kernel relocation function as an argument.
- * head		kimage->head, allows to traverse through relocation segments.
  * entry_addr	kimage->start, where to jump from relocation function (new
  *		kernel, or purgatory entry address).
  * kern_arg0	first argument to kernel is its dtb address. The other
@@ -119,7 +118,6 @@ extern const unsigned long kexec_el2_vectors_offset;
  * copy_len	Number of bytes that need to be copied
  */
 struct kern_reloc_arg {
-	phys_addr_t head;
 	phys_addr_t entry_addr;
 	phys_addr_t kern_arg0;
 	phys_addr_t kern_arg1;
diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
index 4147d9d70c1c..4ec01f29718d 100644
--- a/arch/arm64/kernel/asm-offsets.c
+++ b/arch/arm64/kernel/asm-offsets.c
@@ -129,7 +129,6 @@ int main(void)
   DEFINE(SDEI_EVENT_PRIORITY,	offsetof(struct sdei_registered_event, priority));
 #endif
 #ifdef CONFIG_KEXEC_CORE
-  DEFINE(KEXEC_KRELOC_HEAD,		offsetof(struct kern_reloc_arg, head));
   DEFINE(KEXEC_KRELOC_ENTRY_ADDR,	offsetof(struct kern_reloc_arg, entry_addr));
   DEFINE(KEXEC_KRELOC_KERN_ARG0,	offsetof(struct kern_reloc_arg, kern_arg0));
   DEFINE(KEXEC_KRELOC_KERN_ARG1,	offsetof(struct kern_reloc_arg, kern_arg1));
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 8edcc4be0b15..2e11194b8023 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -174,7 +174,6 @@ int machine_kexec_post_load(struct kimage *kimage)
 	memcpy(reloc_code, kexec_relocate_code_start, kexec_relocate_code_size);
 	kimage->arch.kern_reloc = __pa(reloc_code) + kexec_kern_reloc_offset;
 	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
-	kern_reloc_arg->head = kimage->head;
 	kern_reloc_arg->entry_addr = kimage->start;
 	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
 	/* Setup vector table only when EL2 is available, but no VHE */
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
