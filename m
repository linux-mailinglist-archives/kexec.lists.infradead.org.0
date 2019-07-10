Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3556485D
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 16:30:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=698XqQqgSyyc0KeUuCmPDqXjlD/GLSe1f0TJrQSnE74=; b=QMTkNmx/UliHIh
	cnSQSWNmB5rPrLn6cA2itzRKRTfMnpvf1M8U7FzoFuH3vQ/Zs5MA2d/g+7szchAWb28337ZguoZuy
	oMyzlt23ZMqVdUtRUfzw5wE2bLtO5RhRqcTlwJxu9h0JqtUAX2quEF1P8/VbBmj1QGxzMOElJf+TV
	JfWxa3jFLo3dAcm24iwCG4SY8H5+opMm6n6rxfgwLF7HGI7TbVWb9rvR3lV9Evvcrkl3mKRg31OVG
	VHqCCU7vB/OrKN16Eo3GBdFPMiL7KllroBB39lFMzZ4zNB9hFo2YhWGk4Lhx9d0F96ala1OAqjux2
	o8GEcO1Vxyoo7/f3eKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlDc5-000833-NG; Wed, 10 Jul 2019 14:30:30 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlDbr-0007th-QY
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 14:30:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=rotB+XcnPPjzDnjy7a5EzIxeSb36d8H4EqIuyWQqzZk=; b=hHvHVlA1I5MMXeGVOxX70jEmDU
 J30jb7a5McLClkGCe1mhOfQOP++JjeUa/sy9DbARrmJePgaET4+epdEietsj+fUj94qaqPNZeXXSW
 75aH6urYturrHSgwGHDYS5z7+8I41H83StfgoQpVB4TTluM53P31rSwSiGrLugH5/x58=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hlDbq-0004hm-AC; Wed, 10 Jul 2019 16:30:14 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v3 4/7] kexec_elf: remove PURGATORY_STACK_SIZE
Date: Wed, 10 Jul 2019 16:29:41 +0200
Message-Id: <20190710142944.2774-5-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190710142944.2774-1-svens@stackframe.org>
References: <20190710142944.2774-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_073016_056456_85077621 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
