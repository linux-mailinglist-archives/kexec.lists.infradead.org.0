Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42178856C7
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 02:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZMF4cyFNLNOO6Q81QuskxfQDqLtZ+PVPkzxWDYL5tU=; b=qrRDo1OEM2G1H3
	Ygca5ecYxwXcfboYOLh53voo+YQAKlvn90Q6uvmQy2VOYyQzLnpJDMwPgYWHoRmk5OCDLNbpunw8R
	ADFFoyKyAqPMQHVkxaexJttJdJk6aumu2s4cGiz8o7HAzKOqVyQPb1nKxYhg5mWBwQ1NKMNZHJkTy
	g6HuiSJDv6iOFZMV6cDAO9Dr6oprlj540POPJP9TOfiIwR5MBBL9GImKXryvND2Y1NCFu/ac1Wqb+
	Sd1xAqqpM+CLaAXEV6YSJfiiw8dZ2vkmkFjdAMN8dScpB/G6zKWr3x7HjKPTwGWwdnUHQTMmF1Wby
	dzJ412SQzFibztTJ/2Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvVyC-0000V8-8q; Thu, 08 Aug 2019 00:07:52 +0000
Received: from mail-pf1-x449.google.com ([2607:f8b0:4864:20::449])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvVy7-0000SK-DG
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 00:07:49 +0000
Received: by mail-pf1-x449.google.com with SMTP id z1so57777385pfb.7
 for <kexec@lists.infradead.org>; Wed, 07 Aug 2019 17:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0e260YowI9CRqgpWSZnFK5vaM3jseidaVbkh9lNaqp8=;
 b=aQ4wn3P9fS1u1ewjS8eJttkaghjcu/R7h1tnuxyy/xeWvKDpKhjRvgSO7RrLNEHUMU
 LED5o+fo7q5eEFGAl73Pz60kkKwy/GrW8qw1oEV2SHeE2sI7LIQ4aAFc63hmJEjqA8m4
 VT4HU+lTU2wrfeWBNWy8WDDHjMcqhXhNl83ARfBqIbLW0IPeWRAKV5IJJlCrz2yppmDS
 aULni2rAGpooCIwkn1sqHk0efejrXxf7Mr71tkaQJTJ1IG31RD4g4dKGErCCu1TQy4t9
 qw8Ok6B7ti9N0+AqXpyBmDQcEx/zO20mRtWnibGRBhWH8hWl9LVRKnBMyU0RT5aVX/6n
 NSUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0e260YowI9CRqgpWSZnFK5vaM3jseidaVbkh9lNaqp8=;
 b=ivSlha6yHiUkwoCp3AXX+HRXi6jvzRDf2yVKQyyWWuCjoVarUtmQs9Bb/EztE3aiAI
 3VMpGwzi90kQuM2AEzdOOxwzXCs/0fSUr1cMeYPaAks3H0VJh6KCGxtrnsqYO2HIieIm
 TItYBy+6R8J7ZBjvQhtKWKLEP7bdpFUzYwk5H8wEohJcjDy/ArOGthYUUedY1YyHgsyi
 FRhmB5vNdP3I78Lk/A0GM3vmplfT+pp2bs5NLYRuyk1schGv6s4eeREmrSszjhhvVV/D
 2yqXupLE0zOqUswarOC8nn1Puhb9NpSyTWUvRI8TeC3rpfsxvjmjvUt5SCUUVemaKgm2
 lEkQ==
X-Gm-Message-State: APjAAAWyHHUTV1swcgLw0vyeC991oh4sFNXeQ5/WMHcHp1ABwkItsYvo
 3XOGhkFwjk4WDDxSP80UaJGN+whi3r6SvPzGMgi45Q==
X-Google-Smtp-Source: APXvYqwZ4ajQSAuE3qXrhA8Gc7seQj1zeG29UnjPxKFv05XUEhTP1zFNAl6GAxE4FJArwTQ46bx/Ulzzlgi1s4LMx+ZfwQ==
X-Received: by 2002:a63:f926:: with SMTP id h38mr10014401pgi.80.1565222864875; 
 Wed, 07 Aug 2019 17:07:44 -0700 (PDT)
Date: Wed,  7 Aug 2019 17:07:00 -0700
In-Reply-To: <20190808000721.124691-1-matthewgarrett@google.com>
Message-Id: <20190808000721.124691-9-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190808000721.124691-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V38 08/29] kexec_file: split KEXEC_VERIFY_SIG into KEXEC_SIG
 and KEXEC_SIG_FORCE
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_170747_458675_49746C33 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:449 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Matthew Garrett <mjg59@google.com>, David Howells <dhowells@redhat.com>,
 linux-security-module@vger.kernel.org, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Jiri Bohac <jbohac@suse.cz>

This is a preparatory patch for kexec_file_load() lockdown.  A locked down
kernel needs to prevent unsigned kernel images from being loaded with
kexec_file_load().  Currently, the only way to force the signature
verification is compiling with KEXEC_VERIFY_SIG.  This prevents loading
usigned images even when the kernel is not locked down at runtime.

This patch splits KEXEC_VERIFY_SIG into KEXEC_SIG and KEXEC_SIG_FORCE.
Analogous to the MODULE_SIG and MODULE_SIG_FORCE for modules, KEXEC_SIG
turns on the signature verification but allows unsigned images to be
loaded.  KEXEC_SIG_FORCE disallows images without a valid signature.

Signed-off-by: Jiri Bohac <jbohac@suse.cz>
Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Matthew Garrett <mjg59@google.com>
Reviewed-by: Jiri Bohac <jbohac@suse.cz>
Reviewed-by: Dave Young <dyoung@redhat.com>
cc: kexec@lists.infradead.org
---
 arch/x86/Kconfig                       | 20 +++++++++----
 crypto/asymmetric_keys/verify_pefile.c |  4 ++-
 include/linux/kexec.h                  |  4 +--
 kernel/kexec_file.c                    | 41 ++++++++++++++++++++++----
 4 files changed, 55 insertions(+), 14 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 05e78acb187c..fd2cd4f861cc 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -2032,20 +2032,30 @@ config KEXEC_FILE
 config ARCH_HAS_KEXEC_PURGATORY
 	def_bool KEXEC_FILE
 
-config KEXEC_VERIFY_SIG
+config KEXEC_SIG
 	bool "Verify kernel signature during kexec_file_load() syscall"
 	depends on KEXEC_FILE
 	---help---
-	  This option makes kernel signature verification mandatory for
-	  the kexec_file_load() syscall.
 
-	  In addition to that option, you need to enable signature
+	  This option makes the kexec_file_load() syscall check for a valid
+	  signature of the kernel image.  The image can still be loaded without
+	  a valid signature unless you also enable KEXEC_SIG_FORCE, though if
+	  there's a signature that we can check, then it must be valid.
+
+	  In addition to this option, you need to enable signature
 	  verification for the corresponding kernel image type being
 	  loaded in order for this to work.
 
+config KEXEC_SIG_FORCE
+	bool "Require a valid signature in kexec_file_load() syscall"
+	depends on KEXEC_SIG
+	---help---
+	  This option makes kernel signature verification mandatory for
+	  the kexec_file_load() syscall.
+
 config KEXEC_BZIMAGE_VERIFY_SIG
 	bool "Enable bzImage signature verification support"
-	depends on KEXEC_VERIFY_SIG
+	depends on KEXEC_SIG
 	depends on SIGNED_PE_FILE_VERIFICATION
 	select SYSTEM_TRUSTED_KEYRING
 	---help---
diff --git a/crypto/asymmetric_keys/verify_pefile.c b/crypto/asymmetric_keys/verify_pefile.c
index 3b303fe2f061..cc9dbcecaaca 100644
--- a/crypto/asymmetric_keys/verify_pefile.c
+++ b/crypto/asymmetric_keys/verify_pefile.c
@@ -96,7 +96,7 @@ static int pefile_parse_binary(const void *pebuf, unsigned int pelen,
 
 	if (!ddir->certs.virtual_address || !ddir->certs.size) {
 		pr_debug("Unsigned PE binary\n");
-		return -EKEYREJECTED;
+		return -ENODATA;
 	}
 
 	chkaddr(ctx->header_size, ddir->certs.virtual_address,
@@ -403,6 +403,8 @@ static int pefile_digest_pe(const void *pebuf, unsigned int pelen,
  *  (*) 0 if at least one signature chain intersects with the keys in the trust
  *	keyring, or:
  *
+ *  (*) -ENODATA if there is no signature present.
+ *
  *  (*) -ENOPKG if a suitable crypto module couldn't be found for a check on a
  *	chain.
  *
diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index 305f6a5ca4fe..998f77c3a0e1 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -125,7 +125,7 @@ typedef void *(kexec_load_t)(struct kimage *image, char *kernel_buf,
 			     unsigned long cmdline_len);
 typedef int (kexec_cleanup_t)(void *loader_data);
 
-#ifdef CONFIG_KEXEC_VERIFY_SIG
+#ifdef CONFIG_KEXEC_SIG
 typedef int (kexec_verify_sig_t)(const char *kernel_buf,
 				 unsigned long kernel_len);
 #endif
@@ -134,7 +134,7 @@ struct kexec_file_ops {
 	kexec_probe_t *probe;
 	kexec_load_t *load;
 	kexec_cleanup_t *cleanup;
-#ifdef CONFIG_KEXEC_VERIFY_SIG
+#ifdef CONFIG_KEXEC_SIG
 	kexec_verify_sig_t *verify_sig;
 #endif
 };
diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index b8cc032d5620..875482c34154 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -88,7 +88,7 @@ int __weak arch_kimage_file_post_load_cleanup(struct kimage *image)
 	return kexec_image_post_load_cleanup_default(image);
 }
 
-#ifdef CONFIG_KEXEC_VERIFY_SIG
+#ifdef CONFIG_KEXEC_SIG
 static int kexec_image_verify_sig_default(struct kimage *image, void *buf,
 					  unsigned long buf_len)
 {
@@ -186,7 +186,8 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 			     const char __user *cmdline_ptr,
 			     unsigned long cmdline_len, unsigned flags)
 {
-	int ret = 0;
+	const char *reason;
+	int ret;
 	void *ldata;
 	loff_t size;
 
@@ -202,14 +203,42 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 	if (ret)
 		goto out;
 
-#ifdef CONFIG_KEXEC_VERIFY_SIG
+#ifdef CONFIG_KEXEC_SIG
 	ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
 					   image->kernel_buf_len);
-	if (ret) {
-		pr_debug("kernel signature verification failed.\n");
+	switch (ret) {
+	case 0:
+		break;
+
+		/* Certain verification errors are non-fatal if we're not
+		 * checking errors, provided we aren't mandating that there
+		 * must be a valid signature.
+		 */
+	case -ENODATA:
+		reason = "kexec of unsigned image";
+		goto decide;
+	case -ENOPKG:
+		reason = "kexec of image with unsupported crypto";
+		goto decide;
+	case -ENOKEY:
+		reason = "kexec of image with unavailable key";
+	decide:
+		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
+			pr_notice("%s rejected\n", reason);
+			goto out;
+		}
+
+		ret = 0;
+		break;
+
+		/* All other errors are fatal, including nomem, unparseable
+		 * signatures and signature check failures - even if signatures
+		 * aren't required.
+		 */
+	default:
+		pr_notice("kernel signature verification failed (%d).\n", ret);
 		goto out;
 	}
-	pr_debug("kernel signature verification successful.\n");
 #endif
 	/* It is possible that there no initramfs is being loaded */
 	if (!(flags & KEXEC_FILE_NO_INITRAMFS)) {
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
