Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E87FC1FD1A3
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 18:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7YbgkmC436RQzA3FJbm+zXMfl6dDbVIEUBF8u2o9Qa8=; b=KKz
	9vKX/tq9TTYI0+H0heVFcIsgBhjCyCMYlwP17a13ZsSXjDbUmGLWRA5Y59aQXn/BAPzwLuKaRaaZm
	rAD3IaIi5Hspebp1AvPasfSxgpbuUL0JRFwkTlWcXX4Z9foCt61g1qtEMEfD9QM06qat9WCGLb0zq
	W9vc+2MAF52SKzYEnAyx9OD9nALbQMdGDz7xLqRkzic6BUi289zZpz9eXSBA4I+ylcorgkVYh3Jv8
	JlhPsGM4Axj0WAVDY6stc1KJbRDDmU8Dyk5iMZVN2yDEoceHJqIaCsijGMjun8CEGXL5ywMODgfb2
	juC+6DQQqQd9lLu/dlKfH+QtJkkuKkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlag2-0007w3-5l; Wed, 17 Jun 2020 16:12:38 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlafy-0007vM-Nb
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 16:12:36 +0000
Received: by mail-wr1-x443.google.com with SMTP id q2so516838wrv.8
 for <kexec@lists.infradead.org>; Wed, 17 Jun 2020 09:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=XwOkCRUOqCnXwXoZtVyPm3DMXCuFuirhZG2y4KX3unw=;
 b=MI61wtgoRtNbLp5+DGdNlaBf4bx8VVfOh1C+SrYIjxGQJdD8FCcQT8+LFXnuZXrloF
 z0pJI4nRThoy+bjz282CMJvSizG/8hmR6BXTxtgaipNN7DvHDCIo3wTu8Hkc9NNtcX33
 zdzGy7QZ8T97b4pqVts26Y1jMwfu2kIZ7SyxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XwOkCRUOqCnXwXoZtVyPm3DMXCuFuirhZG2y4KX3unw=;
 b=LpKz2/6Klf9rMNADg5KRX24N0VkoKl+tSMFf7wiv4Kw+wRS1DAhsHm2+Yu8cZMWUEe
 J74CP/npR/f53PT0pYujXtAGaqCxm9bzgCRS/9tBKdl8iyGbqgn18jI366yVMyLqM+1M
 anjr1u7ot9+gfEEIXDWt8YmZq/K+g5N74HM+4Yw/qep0ZR9xBXu6QT5AO8Do1i+9Txuc
 +Fk4AaSh5tP3azj6+26/HYHGJKbnemakc792YpU1+sFDIwydjOATDZyZGeqQ4Kgejrpt
 grdH5r2mZne5u8RfGLh78DihqJk1P3/ll3kpHJCS3ZZusaXt0F/7N5LhaFkhbNuC24fI
 mPZw==
X-Gm-Message-State: AOAM532GnpvLSQ5qZ9YpUQJpxsQrKzfoybZ+Yp8DiSeiiL8Nuu4pu6Rs
 TvpWAJjsNsHpoLPclhKbEDtdlQ==
X-Google-Smtp-Source: ABdhPJyrdfdrQ7vODuBR87SSAzcutEYu2luysyml8zT0Xe5hcozF+SrVxRp8ZHixjKWLwp34JROZVg==
X-Received: by 2002:a05:6000:47:: with SMTP id
 k7mr8823967wrx.233.1592410353047; 
 Wed, 17 Jun 2020 09:12:33 -0700 (PDT)
Received: from lbrmn-lnxub113.broadcom.net ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id y132sm287568wmb.11.2020.06.17.09.12.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jun 2020 09:12:32 -0700 (PDT)
From: Scott Branden <scott.branden@broadcom.com>
To: Christoph Hellwig <hch@lst.de>, Luis Chamberlain <mcgrof@kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Eric Biederman <ebiederm@xmission.com>, Jessica Yu <jeyu@kernel.org>
Subject: [PATCH v3 1/1] fs: move kernel_read_file* to its own include file
Date: Wed, 17 Jun 2020 09:12:18 -0700
Message-Id: <20200617161218.18487-1-scott.branden@broadcom.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_091234_779872_5E1F5D7F 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [192.19.228.250 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kees Cook <keescook@chromium.org>, "Rafael J . Wysocki" <rafael@kernel.org>,
 selinux@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, kexec@lists.infradead.org,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Paul Moore <paul@paul-moore.com>,
 linux-security-module@vger.kernel.org,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>, linux-fsdevel@vger.kernel.org,
 Eric Paris <eparis@parisplace.org>, linux-integrity@vger.kernel.org,
 "Serge E . Hallyn" <serge@hallyn.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Move kernel_read_file* out of linux/fs.h to its own linux/kernel_read_file.h
include file. That header gets pulled in just about everywhere
and doesn't really need functions not related to the general fs interface.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Scott Branden <scott.branden@broadcom.com>

---
Changes since v2:
Added changes information here.
Changes since v1:
Updated commit message to give Christoph's reasoning as to
why the functions should be moved to another header file.
---
 drivers/base/firmware_loader/main.c |  1 +
 fs/exec.c                           |  1 +
 include/linux/fs.h                  | 39 ----------------------
 include/linux/ima.h                 |  1 +
 include/linux/kernel_read_file.h    | 52 +++++++++++++++++++++++++++++
 include/linux/security.h            |  1 +
 kernel/kexec_file.c                 |  1 +
 kernel/module.c                     |  1 +
 security/integrity/digsig.c         |  1 +
 security/integrity/ima/ima_fs.c     |  1 +
 security/integrity/ima/ima_main.c   |  1 +
 security/integrity/ima/ima_policy.c |  1 +
 security/loadpin/loadpin.c          |  1 +
 security/security.c                 |  1 +
 security/selinux/hooks.c            |  1 +
 15 files changed, 65 insertions(+), 39 deletions(-)
 create mode 100644 include/linux/kernel_read_file.h

diff --git a/drivers/base/firmware_loader/main.c b/drivers/base/firmware_loader/main.c
index ca871b13524e..136933f1bd6e 100644
--- a/drivers/base/firmware_loader/main.c
+++ b/drivers/base/firmware_loader/main.c
@@ -12,6 +12,7 @@
 
 #include <linux/capability.h>
 #include <linux/device.h>
+#include <linux/kernel_read_file.h>
 #include <linux/module.h>
 #include <linux/init.h>
 #include <linux/timer.h>
diff --git a/fs/exec.c b/fs/exec.c
index 7b7cbb180785..4ea87db5e4d5 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -23,6 +23,7 @@
  * formats.
  */
 
+#include <linux/kernel_read_file.h>
 #include <linux/slab.h>
 #include <linux/file.h>
 #include <linux/fdtable.h>
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 2e675c075694..09427d393954 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -3012,45 +3012,6 @@ static inline void i_readcount_inc(struct inode *inode)
 #endif
 extern int do_pipe_flags(int *, int);
 
-#define __kernel_read_file_id(id) \
-	id(UNKNOWN, unknown)		\
-	id(FIRMWARE, firmware)		\
-	id(FIRMWARE_PREALLOC_BUFFER, firmware)	\
-	id(FIRMWARE_EFI_EMBEDDED, firmware)	\
-	id(MODULE, kernel-module)		\
-	id(KEXEC_IMAGE, kexec-image)		\
-	id(KEXEC_INITRAMFS, kexec-initramfs)	\
-	id(POLICY, security-policy)		\
-	id(X509_CERTIFICATE, x509-certificate)	\
-	id(MAX_ID, )
-
-#define __fid_enumify(ENUM, dummy) READING_ ## ENUM,
-#define __fid_stringify(dummy, str) #str,
-
-enum kernel_read_file_id {
-	__kernel_read_file_id(__fid_enumify)
-};
-
-static const char * const kernel_read_file_str[] = {
-	__kernel_read_file_id(__fid_stringify)
-};
-
-static inline const char *kernel_read_file_id_str(enum kernel_read_file_id id)
-{
-	if ((unsigned)id >= READING_MAX_ID)
-		return kernel_read_file_str[READING_UNKNOWN];
-
-	return kernel_read_file_str[id];
-}
-
-extern int kernel_read_file(struct file *, void **, loff_t *, loff_t,
-			    enum kernel_read_file_id);
-extern int kernel_read_file_from_path(const char *, void **, loff_t *, loff_t,
-				      enum kernel_read_file_id);
-extern int kernel_read_file_from_path_initns(const char *, void **, loff_t *, loff_t,
-					     enum kernel_read_file_id);
-extern int kernel_read_file_from_fd(int, void **, loff_t *, loff_t,
-				    enum kernel_read_file_id);
 extern ssize_t kernel_read(struct file *, void *, size_t, loff_t *);
 extern ssize_t kernel_write(struct file *, const void *, size_t, loff_t *);
 extern ssize_t __kernel_write(struct file *, const void *, size_t, loff_t *);
diff --git a/include/linux/ima.h b/include/linux/ima.h
index 9164e1534ec9..148636bfcc8f 100644
--- a/include/linux/ima.h
+++ b/include/linux/ima.h
@@ -7,6 +7,7 @@
 #ifndef _LINUX_IMA_H
 #define _LINUX_IMA_H
 
+#include <linux/kernel_read_file.h>
 #include <linux/fs.h>
 #include <linux/security.h>
 #include <linux/kexec.h>
diff --git a/include/linux/kernel_read_file.h b/include/linux/kernel_read_file.h
new file mode 100644
index 000000000000..53f5ca41519a
--- /dev/null
+++ b/include/linux/kernel_read_file.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_KERNEL_READ_FILE_H
+#define _LINUX_KERNEL_READ_FILE_H
+
+#include <linux/file.h>
+#include <linux/types.h>
+
+#define __kernel_read_file_id(id) \
+	id(UNKNOWN, unknown)		\
+	id(FIRMWARE, firmware)		\
+	id(FIRMWARE_PREALLOC_BUFFER, firmware)	\
+	id(FIRMWARE_EFI_EMBEDDED, firmware)	\
+	id(MODULE, kernel-module)		\
+	id(KEXEC_IMAGE, kexec-image)		\
+	id(KEXEC_INITRAMFS, kexec-initramfs)	\
+	id(POLICY, security-policy)		\
+	id(X509_CERTIFICATE, x509-certificate)	\
+	id(MAX_ID, )
+
+#define __fid_enumify(ENUM, dummy) READING_ ## ENUM,
+#define __fid_stringify(dummy, str) #str,
+
+enum kernel_read_file_id {
+	__kernel_read_file_id(__fid_enumify)
+};
+
+static const char * const kernel_read_file_str[] = {
+	__kernel_read_file_id(__fid_stringify)
+};
+
+static inline const char *kernel_read_file_id_str(enum kernel_read_file_id id)
+{
+	if ((unsigned int)id >= READING_MAX_ID)
+		return kernel_read_file_str[READING_UNKNOWN];
+
+	return kernel_read_file_str[id];
+}
+
+int kernel_read_file(struct file *file,
+		     void **buf, loff_t *size, loff_t max_size,
+		     enum kernel_read_file_id id);
+int kernel_read_file_from_path(const char *path,
+			       void **buf, loff_t *size, loff_t max_size,
+			       enum kernel_read_file_id id);
+int kernel_read_file_from_path_initns(const char *path,
+				      void **buf, loff_t *size, loff_t max_size,
+				      enum kernel_read_file_id id);
+int kernel_read_file_from_fd(int fd,
+			     void **buf, loff_t *size, loff_t max_size,
+			     enum kernel_read_file_id id);
+
+#endif /* _LINUX_KERNEL_READ_FILE_H */
diff --git a/include/linux/security.h b/include/linux/security.h
index 2797e7f6418e..fc1c6af331bd 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -23,6 +23,7 @@
 #ifndef __LINUX_SECURITY_H
 #define __LINUX_SECURITY_H
 
+#include <linux/kernel_read_file.h>
 #include <linux/key.h>
 #include <linux/capability.h>
 #include <linux/fs.h>
diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index bb05fd52de85..54efafc31d34 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -24,6 +24,7 @@
 #include <linux/elf.h>
 #include <linux/elfcore.h>
 #include <linux/kernel.h>
+#include <linux/kernel_read_file.h>
 #include <linux/syscalls.h>
 #include <linux/vmalloc.h>
 #include "kexec_internal.h"
diff --git a/kernel/module.c b/kernel/module.c
index e8a198588f26..6ed67699531f 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -18,6 +18,7 @@
 #include <linux/fs.h>
 #include <linux/sysfs.h>
 #include <linux/kernel.h>
+#include <linux/kernel_read_file.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
 #include <linux/elf.h>
diff --git a/security/integrity/digsig.c b/security/integrity/digsig.c
index e9cbadade74b..d09602aab7bd 100644
--- a/security/integrity/digsig.c
+++ b/security/integrity/digsig.c
@@ -10,6 +10,7 @@
 #include <linux/sched.h>
 #include <linux/slab.h>
 #include <linux/cred.h>
+#include <linux/kernel_read_file.h>
 #include <linux/key-type.h>
 #include <linux/digsig.h>
 #include <linux/vmalloc.h>
diff --git a/security/integrity/ima/ima_fs.c b/security/integrity/ima/ima_fs.c
index e3fcad871861..57ecbf285fc7 100644
--- a/security/integrity/ima/ima_fs.c
+++ b/security/integrity/ima/ima_fs.c
@@ -13,6 +13,7 @@
  */
 
 #include <linux/fcntl.h>
+#include <linux/kernel_read_file.h>
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/seq_file.h>
diff --git a/security/integrity/ima/ima_main.c b/security/integrity/ima/ima_main.c
index c1583d98c5e5..15f29fed6d9f 100644
--- a/security/integrity/ima/ima_main.c
+++ b/security/integrity/ima/ima_main.c
@@ -18,6 +18,7 @@
 #include <linux/module.h>
 #include <linux/file.h>
 #include <linux/binfmts.h>
+#include <linux/kernel_read_file.h>
 #include <linux/mount.h>
 #include <linux/mman.h>
 #include <linux/slab.h>
diff --git a/security/integrity/ima/ima_policy.c b/security/integrity/ima/ima_policy.c
index e493063a3c34..f8390f6081f0 100644
--- a/security/integrity/ima/ima_policy.c
+++ b/security/integrity/ima/ima_policy.c
@@ -9,6 +9,7 @@
 
 #include <linux/init.h>
 #include <linux/list.h>
+#include <linux/kernel_read_file.h>
 #include <linux/fs.h>
 #include <linux/security.h>
 #include <linux/magic.h>
diff --git a/security/loadpin/loadpin.c b/security/loadpin/loadpin.c
index ee5cb944f4ad..81bc95127f92 100644
--- a/security/loadpin/loadpin.c
+++ b/security/loadpin/loadpin.c
@@ -11,6 +11,7 @@
 
 #include <linux/module.h>
 #include <linux/fs.h>
+#include <linux/kernel_read_file.h>
 #include <linux/lsm_hooks.h>
 #include <linux/mount.h>
 #include <linux/path.h>
diff --git a/security/security.c b/security/security.c
index 2bb912496232..8983cdc07ebb 100644
--- a/security/security.c
+++ b/security/security.c
@@ -16,6 +16,7 @@
 #include <linux/export.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/kernel_read_file.h>
 #include <linux/lsm_hooks.h>
 #include <linux/integrity.h>
 #include <linux/ima.h>
diff --git a/security/selinux/hooks.c b/security/selinux/hooks.c
index efa6108b1ce9..5de45010fb1a 100644
--- a/security/selinux/hooks.c
+++ b/security/selinux/hooks.c
@@ -24,6 +24,7 @@
 #include <linux/init.h>
 #include <linux/kd.h>
 #include <linux/kernel.h>
+#include <linux/kernel_read_file.h>
 #include <linux/tracehook.h>
 #include <linux/errno.h>
 #include <linux/sched/signal.h>
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
