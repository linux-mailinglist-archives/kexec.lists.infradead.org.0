Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE4B6439E
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 10:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=s9RSiAf7JDLkRba/hgu1YRkIVXqvy1cQUQkKrbzxuCE=; b=SIv
	+m0AhhH+9a89b3Gsc09UBoyORSW452BMLLRiqcvGJl57ulM3QVyjxJRhRexTObpYjpTMo7UuXyBVc
	EhGWyj8uJrIYjr1ayaDbcEie6QU9Ms47lcX+bprBkN9uZtjYZH5AMsrmxyeJhFrJHogK3GGi9PlyX
	WGu908FUqCWE9H579hKeBZt+qaGg6KhksaWUtIdyF+tEKRmOTUKdZSSMFqs72Ihtvmp5HiX+ccMkg
	wtjn3NQ75sd3i+MN40oUrEejNJRe1d5DTs5VB6CUD0ma9D+3He40wRRijwWcjAWRLZVgYgKjzTSq9
	Q7olj9IH6raF/IeB6cVL69WssMxv2zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl85O-0004hq-IM; Wed, 10 Jul 2019 08:36:22 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hl85L-0004hD-OO
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 08:36:21 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 2AD5825B7D5;
 Wed, 10 Jul 2019 18:36:16 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 1F9C4940361; Wed, 10 Jul 2019 10:36:14 +0200 (CEST)
From: Simon Horman <horms@verge.net.au>
To: kexec@lists.infradead.org
Subject: [PATCH] x86: Include kexec-mb2-x86.c and multiboot2.h in distribution
Date: Wed, 10 Jul 2019 10:36:01 +0200
Message-Id: <20190710083601.2040-1-horms@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_013619_948198_F22E4059 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms@verge.net.au>, Varad Gautam <vrd@amazon.de>,
 Amit Shah <aams@amazon.de>, David Woodhouse <dwmw@amazon.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Fixes: 22a2ed55132e ("x86: Support multiboot2 images")
Signed-off-by: Simon Horman <horms@verge.net.au>
---
 include/Makefile         | 1 +
 kexec/arch/i386/Makefile | 4 +++-
 2 files changed, 4 insertions(+), 1 deletion(-)

 I intend to apply this patch for inclusion in v2.0.20-rc1
 the release of which I am currently preparing.

diff --git a/include/Makefile b/include/Makefile
index c26b503fbe36..621ce9f903d6 100644
--- a/include/Makefile
+++ b/include/Makefile
@@ -5,6 +5,7 @@ dist += include/Makefile		\
 	include/x86/x86-linux.h		\
 	include/x86/mb_info.h		\
 	include/x86/mb_header.h		\
+	include/x86/multiboot2.h	\
 	include/elf.h			\
 	include/image.h			\
 	include/unused.h		\
diff --git a/kexec/arch/i386/Makefile b/kexec/arch/i386/Makefile
index d52a2f541448..105cefd60695 100644
--- a/kexec/arch/i386/Makefile
+++ b/kexec/arch/i386/Makefile
@@ -13,6 +13,8 @@ i386_KEXEC_SRCS += kexec/arch/i386/x86-linux-setup.c
 i386_KEXEC_SRCS += kexec/arch/i386/crashdump-x86.c
 
 dist += kexec/arch/i386/Makefile $(i386_KEXEC_SRCS)			\
-	kexec/arch/i386/kexec-x86.h kexec/arch/i386/crashdump-x86.h	\
+	kexec/arch/i386/crashdump-x86.h					\
+	kexec/arch/i386/kexec-mb2-x86.c					\
+	kexec/arch/i386/kexec-x86.h					\
 	kexec/arch/i386/x86-linux-setup.h				\
 	kexec/arch/i386/include/arch/options.h
-- 
2.11.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
