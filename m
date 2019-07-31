Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120047BCA3
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 11:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kxxK8LFD2TEVW8UQrRegndepIJHmexutp4OwWIiGLSE=; b=Eyr4mgYWAuTkYB
	OWgJhpCtQHjdbnWsmrGm3dALAG6VUBP//hZjGKQMtgeuEGm+bDkqtEpzZofOtwbkrzGQY1dVKdV5U
	QVp3lpG0tlhcaLVXD8cEHQ6+jkeYyQixtNEYn7qFR+AHZc0fLX5csp2VuoCPwuYpYKURU8RlJOKAb
	IxJAx1vcfNJuoc4MRJ677r9ULZgIGgGPDFfSThGxLp08jgLZ1dVsNb7JgvS3BTglPxsh77xQGPncr
	hFWmGnYWW6OX25oL8jQMmMWzIWmYhPj+P/fwLKZ3IQUybYXQyVPFTaohyKGVcx0ikelXM9WqlVPYJ
	y2vkwS/xHKRlLx6DiniA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hskcF-0002O6-9c; Wed, 31 Jul 2019 09:09:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hskcB-0002Nn-LS
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 09:09:45 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC79130C133C;
 Wed, 31 Jul 2019 09:09:42 +0000 (UTC)
Received: from wlc-trust-99.pek2.redhat.com (wlc-trust-99.pek2.redhat.com
 [10.72.3.99])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 666AE19C65;
 Wed, 31 Jul 2019 09:09:38 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] x86: Fix broken multiboot2 buliding for i386
Date: Wed, 31 Jul 2019 17:09:02 +0800
Message-Id: <20190731090902.29481-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 31 Jul 2019 09:09:43 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_020943_748073_2C2EC1BC 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Varad Gautam <vrd@amazon.de>, Simon Horman <horms@verge.net.au>,
 Dave Young <dyoung@redhat.com>, Kairui Song <kasong@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When building for i386, an error occured:

kexec/arch/i386/kexec-x86.c:39:22: error: 'multiboot2_x86_probe'
undeclared here (not in a function); did you mean 'multiboot_x86_probe'?
39 |  { "multiboot2-x86", multiboot2_x86_probe, multiboot2_x86_load,
   |                      ^~~~~~~~~~~~~~~~~~~~
   |                      multiboot_x86_probe

kexec/arch/i386/kexec-x86.c:39:44: error: 'multiboot2_x86_load'
undeclared here (not in a function); did you mean 'multiboot_x86_load'?
39 |  { "multiboot2-x86", multiboot2_x86_probe, multiboot2_x86_load,
   |                                            ^~~~~~~~~~~~~~~~~~~
   |                                            multiboot_x86_load
kexec/arch/i386/kexec-x86.c:40:4: error: 'multiboot2_x86_usage'
 undeclared here (not in a function); did you mean 'multiboot_x86_usage'?
40 |    multiboot2_x86_usage },
   |    ^~~~~~~~~~~~~~~~~~~~
   |    multiboot_x86_usage

Fix this issue by putting the definition in the right header, also tidy
up Makefile.

Fixes: 22a2ed55132e ("x86: Support multiboot2 images")
Signed-off-by: Kairui Song <kasong@redhat.com>
---
 kexec/arch/i386/Makefile         | 2 +-
 kexec/arch/i386/kexec-x86.h      | 5 +++++
 kexec/arch/x86_64/kexec-x86_64.h | 5 -----
 3 files changed, 6 insertions(+), 6 deletions(-)

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
index 1b58c3b..16d0f6c 100644
--- a/kexec/arch/i386/kexec-x86.h
+++ b/kexec/arch/i386/kexec-x86.h
@@ -60,6 +60,11 @@ int multiboot_x86_load(int argc, char **argv, const char *buf, off_t len,
 	struct kexec_info *info);
 void multiboot_x86_usage(void);
 
+int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
+                       struct kexec_info *info);
+void multiboot2_x86_usage(void);
+int multiboot2_x86_probe(const char *buf, off_t buf_len);
+
 int elf_x86_probe(const char *buf, off_t len);
 int elf_x86_load(int argc, char **argv, const char *buf, off_t len,
 	struct kexec_info *info);
diff --git a/kexec/arch/x86_64/kexec-x86_64.h b/kexec/arch/x86_64/kexec-x86_64.h
index 21c3a73..4cdeffb 100644
--- a/kexec/arch/x86_64/kexec-x86_64.h
+++ b/kexec/arch/x86_64/kexec-x86_64.h
@@ -33,9 +33,4 @@ int bzImage64_load(int argc, char **argv, const char *buf, off_t len,
 			struct kexec_info *info);
 void bzImage64_usage(void);
 
-int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
-			struct kexec_info *info);
-void multiboot2_x86_usage(void);
-int multiboot2_x86_probe(const char *buf, off_t buf_len);
-
 #endif /* KEXEC_X86_64_H */
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
