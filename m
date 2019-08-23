Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706659B74E
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 21:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PUtfXqrSU4JsVI1ZJdk+9SArzgji963NU4HeCcMxRes=; b=liUaH5tVnfTpuK
	jK3JnW1XghtNxlobv+AXiXdEWzr2ZOtRipAf/HNeQ4jVzIYguaerxXXV2UUXEWwl6NIbwcfD69gZG
	0ipp9H1/Ax7PM4sGLzgYSR3ikycoW97eKKH+5h/AC3+9Hl7aBoabSPKCgVGBNfvw0M/M3W4xcoIKm
	Ko39JzWv8SBFznEj5oby24WEnycTNQUk3L66RmExarTLlgpsww6jSKBU8FGWruYsiq+ECwVnRYUFx
	gza5tApOYgux2mDOKX6fnztIKpmFhJJVfWdAgatPxc50bW8jMSrOTTEDAoApx4LBZXNNw50JF4RHc
	H1X5BcFqYbQqLYuvVw5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1FZC-0000LS-Hw; Fri, 23 Aug 2019 19:49:46 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1FZ8-0000JT-9b
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 19:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=CNgte0H1VqkZP3Hql//m5J/RMFUISwWa1ydsK8c/tMw=; b=drswh+j0QOKn+AhQMEs+1Zt3s2
 lqox6qS66xnvvksTg6k1aD74/4qd9UjCBf4Rvv/EexQSIHF7e2K9Jm963QAbubAkg1Qc/+cRS9hNy
 IocpTvVv4mAd5TRejNCsqhs4rGsACRtJkyWUCxAY9kvWHD1c7VHkKvpwmnh2qSJPdRys=;
Received: from [134.3.44.134] (helo=x280.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1i1FZ2-00071n-TE; Fri, 23 Aug 2019 21:49:36 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v5 4/7] kexec_elf: remove PURGATORY_STACK_SIZE
Date: Fri, 23 Aug 2019 21:49:16 +0200
Message-Id: <20190823194919.30916-5-svens@stackframe.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190823194919.30916-1-svens@stackframe.org>
References: <20190823194919.30916-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_124942_668251_AE8654DA 
X-CRM114-Status: UNSURE (   6.66  )
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
Cc: Sven Schnelle <svens@stackframe.org>, Helge Deller <deller@gmx.de>,
 linuxppc-dev@lists.ozlabs.org, Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

It's not used anywhere so just drop it.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
---
 kernel/kexec_elf.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 137037603117..87935bd5e2ba 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -21,8 +21,6 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
-#define PURGATORY_STACK_SIZE	(16 * 1024)
-
 #define elf_addr_to_cpu	elf64_to_cpu
 
 #ifndef Elf_Rel
-- 
2.23.0.rc1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
