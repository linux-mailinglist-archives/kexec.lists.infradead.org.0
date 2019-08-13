Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF08C176
	for <lists+kexec@lfdr.de>; Tue, 13 Aug 2019 21:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O8l7M0K0aFr9WQV0ju8/2PQt4jTxK9lgTXrLBVgfS8M=; b=unNeS7joboEi8P
	SvH67XnK6Ajf+tnFYDzzqqiQaktR57r4FsQ1d6AnBHobSWoE/mmCatk/ZNXEZAws3zFG2Vd/HBGKR
	h23sd7qY58XgrSuZu//kC5A7RJLLm9LabvsKVZSgLIKmPvCcOtkrDttUguZYjwZB+hFrn5rMUTFRg
	SwxS9hLCLNSsKNLCBb2dbRCslp2CE8IvAR5mBmMLxA25Ciz4gthdVoar9h2lcz9PiuKJ6Zi901V85
	Yur2QByAAZUL26JoUHI/Te2Q+TTetBSifW3qHf2TtzXFvO6dXj5NIkq6rgEUb0KhBFkaiY4V2MoFY
	QWb9l9N6b1y0WTv7Dnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxcMb-0000pK-Fb; Tue, 13 Aug 2019 19:21:45 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxcMW-0000or-Lf
 for kexec@lists.infradead.org; Tue, 13 Aug 2019 19:21:42 +0000
Received: by mail-vs1-xe49.google.com with SMTP id u17so29338946vsq.17
 for <kexec@lists.infradead.org>; Tue, 13 Aug 2019 12:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bm7tpjWVOUDYZx97BncdSkZ9NvRhZO8YSsPPBr5vkok=;
 b=slazxnn157c/8d5NLixGKQHNLN7VTx1GaxxgepSJpk+EhBUjfJoNCOjXNoBlzwtTgz
 ATQMg1/p6wmxCiwn3NqDaSdbn0sOCgj18C/YAUSAxFH1lVQCg5+UIR6idPpfaL02EAZH
 IIEIw4YVgw2HCssS06onnz1SgWi3wxL7U0JMJr/iDDouwY06MoWIPdhHHDmKOO16YIkx
 j5G4kkndQqP76ENddQHpPGQGcFOITR7tjSD3KkUsaWPXuqX9KcbxTR2w0/9BFBqYyGaY
 8WoBEUCB9UM2pRs0iCKC8r+peYhTnubEAyqgJUXHJQvwP1KZzcqzE6ODHz9/GnNc2FLx
 LSWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bm7tpjWVOUDYZx97BncdSkZ9NvRhZO8YSsPPBr5vkok=;
 b=tKfcV3P6K3JPkvCUyaD0Dt5+PaNrvOHVuVhwaQdrhlAsvAy0njeqSjvr2JBwBSwTzf
 M1Vv3WHRrIWUxfJysk5lhtxpzaUcybfvT0vQB72QAlPqWRDFgukyX1cJ2X292fADEUxe
 E6JkF18FxjSZ0H5MDET76OjfqwerLXGKSIIRaPDmtQnis5uzFYJxqI2TXajsV0ejTWHw
 D1fBJ3hyrLNd7fEzI1ktINtckX+dgBYy53Yhfr5gwv02MHLUw3QOQEKyxqtMILZrfSAF
 bvp4ciBDHj3NMiqaBoTxffjVdScI1eO6L5QTmAPVIpjEMuN5NcK3UEmWX2ZjV6MesBQI
 yDNg==
X-Gm-Message-State: APjAAAX01QK0ZXUu1zS7+5Jw0J/ARSSVTJD88UvY64D0qrgQ8mLoDks1
 Jc7+bED0kV3Pt/JAKu9WWvDeVZOIj4PzDK+39DiR9w==
X-Google-Smtp-Source: APXvYqzRVkooHVUD52Jj7apoZc5mIoEhdYnVm95g08oervUdSjOgObCJlOhYCdmCQD7I3YQEPRfXBlAg4kq7Nznq8SGZ4Q==
X-Received: by 2002:a1f:ec41:: with SMTP id k62mr7315266vkh.32.1565724098096; 
 Tue, 13 Aug 2019 12:21:38 -0700 (PDT)
Date: Tue, 13 Aug 2019 12:21:23 -0700
In-Reply-To: <20190813192126.122370-1-matthewgarrett@google.com>
Message-Id: <20190813192126.122370-4-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190813192126.122370-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH 3/6] Avoid build warning when !CONFIG_KEXEC_SIG
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_122140_737628_512FABC8 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, kexec@lists.infradead.org,
 Matthew Garrett <matthewgarrett@google.com>,
 Matthew Garrett <mjg59@google.com>, linux-security-module@vger.kernel.org,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Refactor the signature validation and lockdown integration a little in
order to avoid an unused variable.

Signed-off-by: Matthew Garrett <mjg59@google.com>
Cc: Jiri Bohac <jbohac@suse.cz>
Cc: Dave Young <dyoung@redhat.com>
Cc: kexec@lists.infradead.org
---
 kernel/kexec_file.c | 72 ++++++++++++++++++++++++++++-----------------
 1 file changed, 45 insertions(+), 27 deletions(-)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index be0c13076056..e878587715b9 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -177,36 +177,13 @@ void kimage_file_post_load_cleanup(struct kimage *image)
 	image->image_loader_data = NULL;
 }
 
-/*
- * In file mode list of segments is prepared by kernel. Copy relevant
- * data from user space, do error checking, prepare segment list
- */
+#ifdef CONFIG_KEXEC_SIG
 static int
-kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
-			     const char __user *cmdline_ptr,
-			     unsigned long cmdline_len, unsigned flags)
+kimage_validate_signature(struct kimage *image)
 {
 	const char *reason;
 	int ret;
-	void *ldata;
-	loff_t size;
-
-	ret = kernel_read_file_from_fd(kernel_fd, &image->kernel_buf,
-				       &size, INT_MAX, READING_KEXEC_IMAGE);
-	if (ret)
-		return ret;
-	image->kernel_buf_len = size;
-
-	/* IMA needs to pass the measurement list to the next kernel. */
-	ima_add_kexec_buffer(image);
 
-	/* Call arch image probe handlers */
-	ret = arch_kexec_kernel_image_probe(image, image->kernel_buf,
-					    image->kernel_buf_len);
-	if (ret)
-		goto out;
-
-#ifdef CONFIG_KEXEC_SIG
 	ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
 					   image->kernel_buf_len);
 	switch (ret) {
@@ -228,7 +205,7 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 	decide:
 		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
 			pr_notice("%s rejected\n", reason);
-			goto out;
+			break;
 		}
 
 		ret = 0;
@@ -251,9 +228,44 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 		 */
 	default:
 		pr_notice("kernel signature verification failed (%d).\n", ret);
-		goto out;
+		break;
 	}
+
+	return ret;
+}
+#endif
+
+/*
+ * In file mode list of segments is prepared by kernel. Copy relevant
+ * data from user space, do error checking, prepare segment list
+ */
+static int
+kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
+			     const char __user *cmdline_ptr,
+			     unsigned long cmdline_len, unsigned flags)
+{
+	int ret;
+	void *ldata;
+	loff_t size;
+
+	ret = kernel_read_file_from_fd(kernel_fd, &image->kernel_buf,
+				       &size, INT_MAX, READING_KEXEC_IMAGE);
+	if (ret)
+		return ret;
+	image->kernel_buf_len = size;
+
+	/* Call arch image probe handlers */
+	ret = arch_kexec_kernel_image_probe(image, image->kernel_buf,
+					    image->kernel_buf_len);
+	if (ret)
+		goto out;
+
+#ifdef CONFIG_KEXEC_SIG
+	ret = kimage_validate_signature(image);
+	if (ret)
+		goto out;
 #endif
+
 	/* It is possible that there no initramfs is being loaded */
 	if (!(flags & KEXEC_FILE_NO_INITRAMFS)) {
 		ret = kernel_read_file_from_fd(initrd_fd, &image->initrd_buf,
@@ -279,8 +291,14 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 			ret = -EINVAL;
 			goto out;
 		}
+
+		ima_kexec_cmdline(image->cmdline_buf,
+				  image->cmdline_buf_len - 1);
 	}
 
+	/* IMA needs to pass the measurement list to the next kernel. */
+	ima_add_kexec_buffer(image);
+
 	/* Call arch image load handlers */
 	ldata = arch_kexec_kernel_image_load(image);
 
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
