Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F391A68522
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 10:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryHxje4Y2Cj78itAwhM8jALr2Ee5TTbOn6pX2GIcMKA=; b=llP4J749ht/0jS
	eyxXftFMqfFNT4biln+J7NoxnE1pjFLjXEbWmTbMxy933yfEH2+GDelZsTmFWBGMS/g8EMx9zfJ8U
	wxcXpwSc/FuOfjZRS7qXARgFmJuo5VoIsVgVrIPcQf3cZThZtHmHPEU1PP1kLmoLRRzRYQqkBhxIq
	/WKnNVM3DfRJ7u6SPefNOdZnmaBifF3/Tbc4MO7+qJH84UD8YHgMHROqnWEZNWlE/DhMf9qELDUKL
	jmsR9FbuI+Gzvzbmkp3liAaPouSiLV6E/lndZLkTPgOcPvK8Shu5T97yafcpVpPslZgaSbe/5Nn4c
	3giqha4OuWTOTHy4pjFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwKo-00059W-FE; Mon, 15 Jul 2019 08:27:46 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwKc-00054E-9N
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 08:27:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=AjsZZVUemd5fzc9mR3GdHnYFPZ+tVaHoG5D8W+sMB5w=; b=W48OtkzSbCa2xuVp5NC3NM5RNw
 fWNatH1Y9QTmMCoKvFeI2f+nvDgx/jkwP0KRQqN0SdEc7Po6vRGic70GrsQPl3BroKQGGkGnyjl0J
 SxRkT16yAMr0le9/cu77XScJGBvrFvdWksk4uB/MS+T2grmVJkzAsHNnkaGOv5FxYTMw=;
Received: from frobwit.duncanthrax.net ([89.31.1.178] helo=t470p.intern)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hmwKa-0005LV-0Y; Mon, 15 Jul 2019 10:27:32 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v4 5/7] kexec_elf: remove Elf_Rel macro
Date: Mon, 15 Jul 2019 10:27:00 +0200
Message-Id: <20190715082702.27308-6-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715082702.27308-1-svens@stackframe.org>
References: <20190715082702.27308-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_012738_298469_BB9CB2F7 
X-CRM114-Status: UNSURE (   5.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Sven Schnelle <svens@stackframe.org>, deller@gmx.de,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

It wasn't used anywhere, so lets drop it.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 kernel/kexec_elf.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 70d31b8feeae..e346659af324 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -10,10 +10,6 @@
 
 #define elf_addr_to_cpu	elf64_to_cpu
 
-#ifndef Elf_Rel
-#define Elf_Rel		Elf64_Rel
-#endif /* Elf_Rel */
-
 static inline bool elf_is_elf_file(const struct elfhdr *ehdr)
 {
 	return memcmp(ehdr->e_ident, ELFMAG, SELFMAG) == 0;
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
