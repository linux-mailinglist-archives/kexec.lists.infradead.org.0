Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03863FFC56
	for <lists+kexec@lfdr.de>; Mon, 18 Nov 2019 00:52:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lYQdGApwevmPR+oO0DGkQ8BN9CwbC6EGEgI9KeHuZB4=; b=nSsm+LCAn5hd7s
	FBIwvNyMKTUI088bln/ouAbfLTbBLMX2dyNCnqbbKYoDCwsL6/EAvf5rsEZ1pU7U3rmWWrnQgsO1f
	zF8s+pKECJoh6umfeSNSklWKwPNFD3k9uMw1j0Pd1+Kkl/S0jBeqCdkSMf85N/D/evAQa4NAcoT/t
	tM7L2PRWrUIugfipOxDQ9fFP5m7FbJC0A5no+Vyu/K4D3NVC8U20FJmJ0I1/jciha2O4nphJn7bB8
	GpQ2o25vM6bCA3iLtisXFWukofhpUEXnnzJ5ZMbQqNUVsQgNI1lG0BTI3naJwGiPKcIJXrusGoyZN
	katMFXLxhfOZuDg7ZwCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWULO-00026M-4T; Sun, 17 Nov 2019 23:52:38 +0000
Received: from gate2.alliedtelesis.co.nz ([202.36.163.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWULH-00024M-MM
 for kexec@lists.infradead.org; Sun, 17 Nov 2019 23:52:33 +0000
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 9274180237;
 Mon, 18 Nov 2019 12:52:22 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1574034742;
 bh=RD2eIvbrOvFXaQWNLlhfDJB3AN5KeEH3nnMADVAJrWo=;
 h=From:To:Cc:Subject:Date;
 b=uFZryFg0zWf7Xags5DnA5SmYWiXFeSQulGz0LJBNEE6K72zy+Iuhs5EktsVE4mBwM
 gCImkDBs+DiZG6LEmjdkCn2l+i/PHHJflE+AfUFQC1C/mgdxtRRd93+tm66P+eXuZZ
 fHlUz1dXHhL8lDj3a/KXCQwghsPmIUw6G+7uv7jOkImIiEFAczoKB+KZMbV0p2KyLV
 WSxr2lFBDpajDgoyndzI1+Pv1jf60lrulw/CaLWj29X65UW5mKulF18mvvuvhc6UtO
 HafLRlcF90u0Jfb3ESbeEN+VXYTmF3XotVvKIc7EUcInbCnQH5u5l1rm9tyM2VK/yM
 rSrFskMDuY8zw==
Received: from smtp (Not Verified[10.32.16.33]) by mmarshal3.atlnz.lc with
 Trustwave SEG (v7, 5, 8, 10121)
 id <B5dd1dd310000>; Mon, 18 Nov 2019 12:52:21 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.20])
 by smtp (Postfix) with ESMTP id 2C2EF13EDE4;
 Mon, 18 Nov 2019 12:52:17 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
 id 52D4B28005F; Mon, 18 Nov 2019 12:52:18 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: kexec@lists.infradead.org
Subject: [PATCH] kexec: build multiboot2 for i386
Date: Mon, 18 Nov 2019 12:52:15 +1300
Message-Id: <20191117235215.18159-1-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
x-atlnz-ls: pat
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_155232_308091_80899981 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.36.163.20 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: horms@verge.net.au, Chris Packham <chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This addresses the following compilation issues when building for i386.

 kexec/arch/i386/kexec-x86.c:39:22: error: 'multiboot2_x86_probe' undeclared here (not in a function); did you mean 'multiboot_x86_probe'?
   { "multiboot2-x86", multiboot2_x86_probe, multiboot2_x86_load,
                       ^~~~~~~~~~~~~~~~~~~~
                       multiboot_x86_probe
 kexec/arch/i386/kexec-x86.c:39:44: error: 'multiboot2_x86_load' undeclared here (not in a function); did you mean 'multiboot_x86_load'?
   { "multiboot2-x86", multiboot2_x86_probe, multiboot2_x86_load,
                                             ^~~~~~~~~~~~~~~~~~~
                                             multiboot_x86_load
 kexec/arch/i386/kexec-x86.c:40:4: error: 'multiboot2_x86_usage' undeclared here (not in a function); did you mean 'multiboot_x86_usage'?
     multiboot2_x86_usage },
     ^~~~~~~~~~~~~~~~~~~~
     multiboot_x86_usage
 make: *** [Makefile:114: kexec/arch/i386/kexec-x86.o] Error 1
 make: *** Waiting for unfinished jobs....

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
I wasn't sure whether this should be fixed by linking with kexec-mb2-x86.o or
by removing the code from kexec-x86.c. I went for the former but I'd happily
change to the latter.

 kexec/arch/i386/Makefile    | 2 +-
 kexec/arch/i386/kexec-x86.h | 5 +++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/kexec/arch/i386/Makefile b/kexec/arch/i386/Makefile
index 105cefd..f486103 100644
--- a/kexec/arch/i386/Makefile
+++ b/kexec/arch/i386/Makefile
@@ -7,6 +7,7 @@ i386_KEXEC_SRCS += kexec/arch/i386/kexec-elf-x86.c
 i386_KEXEC_SRCS += kexec/arch/i386/kexec-elf-rel-x86.c
 i386_KEXEC_SRCS += kexec/arch/i386/kexec-bzImage.c
 i386_KEXEC_SRCS += kexec/arch/i386/kexec-multiboot-x86.c
+i386_KEXEC_SRCS += kexec/arch/i386/kexec-mb2-x86.c
 i386_KEXEC_SRCS += kexec/arch/i386/kexec-beoboot-x86.c
 i386_KEXEC_SRCS += kexec/arch/i386/kexec-nbi.c
 i386_KEXEC_SRCS += kexec/arch/i386/x86-linux-setup.c
@@ -14,7 +15,6 @@ i386_KEXEC_SRCS += kexec/arch/i386/crashdump-x86.c
 
 dist += kexec/arch/i386/Makefile $(i386_KEXEC_SRCS)			\
 	kexec/arch/i386/crashdump-x86.h					\
-	kexec/arch/i386/kexec-mb2-x86.c					\
 	kexec/arch/i386/kexec-x86.h					\
 	kexec/arch/i386/x86-linux-setup.h				\
 	kexec/arch/i386/include/arch/options.h
diff --git a/kexec/arch/i386/kexec-x86.h b/kexec/arch/i386/kexec-x86.h
index 1b58c3b..0f941df 100644
--- a/kexec/arch/i386/kexec-x86.h
+++ b/kexec/arch/i386/kexec-x86.h
@@ -60,6 +60,11 @@ int multiboot_x86_load(int argc, char **argv, const char *buf, off_t len,
 	struct kexec_info *info);
 void multiboot_x86_usage(void);
 
+int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
+			struct kexec_info *info);
+void multiboot2_x86_usage(void);
+int multiboot2_x86_probe(const char *buf, off_t buf_len);
+
 int elf_x86_probe(const char *buf, off_t len);
 int elf_x86_load(int argc, char **argv, const char *buf, off_t len,
 	struct kexec_info *info);
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
