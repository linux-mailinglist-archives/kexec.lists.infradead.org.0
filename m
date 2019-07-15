Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39EF668526
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 10:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=698XqQqgSyyc0KeUuCmPDqXjlD/GLSe1f0TJrQSnE74=; b=AdxdwTFnbpsKcI
	H6vK7ySmfjyMtG7UPi9WVOcFhsniiS6yod95vxjqURw5t0ON5tgXUKkU/uepeLvWezTtTmqD9Zmp9
	mOuHjwmsHbLOVRq/YqtGHKjLgYCZr5kiIDYzSpQ1y8yqJh3+atVxMkNGicMe4gXbLKd6vFo5mA28c
	hnwxnaHrPdELHbSpu8vBh/A88s+SgPHQGypLnTZXlBsnlcvB7Hms6lG0l8bdTE1GcSTGQPhCy+Njn
	QMggY09bR/Z7SloxWFuW07NkwvdLKLjrecmccSWTi3JIC7SO3vPyLwLEqFV6t0eLSmNCFuZ1Qqokb
	1NeETq39PdUHVQnExWvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwKt-0005Ei-HX; Mon, 15 Jul 2019 08:27:51 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwKc-00054D-9K
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 08:27:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=rotB+XcnPPjzDnjy7a5EzIxeSb36d8H4EqIuyWQqzZk=; b=ZbZ7y/o6Q4St4N65QkEzeWv/XF
 vYEjoWHeuPu+PTPTIDyhFqhJLwTZemy/uepCRMO5c1DwiaMfLWyNpwGIypwd2Ea4FyXvPaOGRAP+g
 cyS8qDwK4xjOJeNhAmn9Q8m/jjgZxX+oUudZzD9nboJK5sCZmmaNeESE7RFNlEloUXx8=;
Received: from frobwit.duncanthrax.net ([89.31.1.178] helo=t470p.intern)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hmwKZ-0005LV-SN; Mon, 15 Jul 2019 10:27:31 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v4 4/7] kexec_elf: remove PURGATORY_STACK_SIZE
Date: Mon, 15 Jul 2019 10:26:59 +0200
Message-Id: <20190715082702.27308-5-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715082702.27308-1-svens@stackframe.org>
References: <20190715082702.27308-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_012738_292778_80321DFC 
X-CRM114-Status: UNSURE (   6.78  )
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
Cc: Sven Schnelle <svens@stackframe.org>, deller@gmx.de,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

It's not used anywhere so just drop it.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 kernel/kexec_elf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index effe9dc0b055..70d31b8feeae 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -8,8 +8,6 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
-#define PURGATORY_STACK_SIZE	(16 * 1024)
-
 #define elf_addr_to_cpu	elf64_to_cpu
 
 #ifndef Elf_Rel
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
