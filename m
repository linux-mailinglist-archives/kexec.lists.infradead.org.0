Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 364CA64D0E
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 21:55:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TySZRK462q2ellZPeVihvVAfSC8XtDKKsZaxcIb+5Vc=; b=M7hvLBeZ3a4aKPKmHqWdO0bHv+
	Uc15S7HpxEXfvuS9U+VRg0jHzBZe6cPdsXYTIdQ+oSjYb7dUc3vjMebF3v3l+a1v1eXxTpdR1grsa
	WUxbwiSjOX1pbfs8sypAsx9Q0UT23z3cAFuN8qJowcEQSU+ZZ8QSBZjgH4+zSd6mkdWbZy0OngNvN
	Kf232QgG2b11kUKCGm/OhXEDxq6P5G2drMCFNXf5YnMMQr/SeOqOejkiToFo3Vp0A4JuSJAHLkO2D
	Dmc4ZtAGRby9CwoPIrdhhnDS7Jp2Yr7hzRZ/yrQt81+6KRFyzrUHFcNNpf2apgE8mbhzGXOs9ihkl
	MNybklAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIg6-0006RS-Gk; Wed, 10 Jul 2019 19:54:58 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIfy-0006Nr-O7
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 19:54:52 +0000
Received: by mail-pl1-f193.google.com with SMTP id k8so1746685plt.3
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 12:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mMQ1+73aYxJjH0cS5NnMkBJUEzyr5EDw/JL7siQeLbg=;
 b=VXzBuSaqKFLwZKCutqvQ29fpLaRyad+G+8K6ODhvZi5CfpCV+nA2+Zq0M0+fG6kcgh
 9xUwrA6hzAm/gmlg+DZLWtAR6W02624MiCMyyKnfHMdxZAw0gmd152n7Hy7tM9U//AhN
 En79cYec1/79MwBQrWeYF1B6aSJLnzpxt1c9fs9pSe4RNfmogFS9pXho8ulaaYUtOYQZ
 ECloBOUydN5dXg162oUs7JuW6G886GyE809AJ3D2KxnZJxkGVrkBaIUASsYlH1KUzFlN
 0GG1fNWGfyvsjDRjPksGlWWyRmF6qpPyPv0I6JF8O6QHD/PnXtUkibl/HbV3ZxPQpWyJ
 JAzg==
X-Gm-Message-State: APjAAAXWx1+c+TAYmmzY0tc3PRc5IeBNHnD1PiBgb/vRhxbLlofzQXgS
 k+XhM8iTdnXa0Mw2wLensILeVzjV2u0=
X-Google-Smtp-Source: APXvYqwlghmtkcIJxEjKipFzE1cHcDF4AOJ95LcOqe4OTq6CJ63lGsjDsff/VK5WF8jwz4LIQqsVDQ==
X-Received: by 2002:a17:902:4501:: with SMTP id
 m1mr41013499pld.111.1562788489530; 
 Wed, 10 Jul 2019 12:54:49 -0700 (PDT)
Received: from localhost ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id d12sm2878510pfd.96.2019.07.10.12.54.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 12:54:48 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 4/4] kexec/arm64: Add support for handling zlib compressed
 (Image.gz) image
Date: Thu, 11 Jul 2019 01:24:29 +0530
Message-Id: <1562788469-22935-5-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
References: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_125450_819862_EC948E69 
X-CRM114-Status: GOOD (  25.78  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bhupesh.linux@gmail.com, bhsharma@redhat.com, horms@verge.net.au,
 takahiro.akashi@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Currently the kexec_file_load() support for arm64 doesn't allow
handling zlib compressed (i.e. Image.gz) image.

Since most distributions use 'make zinstall' rule inside
'arch/arm64/boot/Makefile' to install the arm64
Image.gz compressed file inside the boot destination directory (for e.g.
/boot), currently we cannot use kexec_file_load() to load vmlinuz (or
Image.gz):

 # file /boot/vmlinuz
   /boot/vmlinuz: gzip compressed data, was "Image", <..snip..>, max
   compression, from Unix, original size 21945120

 Now, since via kexec_file_load() we pass the 'fd' of Image.gz
 (compressed file) via the following command line ...

 # kexec -s -l /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname
   -r`.img --reuse-cmdline

... kernel returns -EINVAL error value, as it is not able to locate
the magic number =0x644d5241, which is expected in the 64-byte header
of the decompressed kernel image.

We can fix this in user-space kexec-tools, which handles an
'Image.gz' being passed via kexec_file_load(), using an approach
as follows:

a). Copy the contents of Image.gz to a temporary file.
b). Decompress (gunzip-decompress) the contents inside the
    temporary file.
c). Pass the 'fd' of the temporary file to the kernel space. So
    basically the kernel space still gets a decompressed kernel
    image to load via kexec-tools

I tested this patch for the following three use-cases:

1. Uncompressed Image file:
 #kexec -s -l Image --initrd=/boot/initramfs-`uname -r`.img --reuse-cmdline

2. Signed Image file:
 #kexec -s -l Image.signed --initrd=/boot/initramfs-`uname -r`.img --reuse-cmdline

3. zlib compressed Image.gz file:
 #kexec -s -l /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname -r`.img --reuse-cmdline

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 kexec/arch/arm64/Makefile             |   3 +-
 kexec/arch/arm64/kexec-arm64.c        |   1 +
 kexec/arch/arm64/kexec-arm64.h        |   7 ++
 kexec/arch/arm64/kexec-image-arm64.c  |   4 +-
 kexec/arch/arm64/kexec-zImage-arm64.c | 199 ++++++++++++++++++++++++++++++++++
 kexec/kexec.c                         |  12 ++
 6 files changed, 223 insertions(+), 3 deletions(-)
 create mode 100644 kexec/arch/arm64/kexec-zImage-arm64.c

diff --git a/kexec/arch/arm64/Makefile b/kexec/arch/arm64/Makefile
index 9d9111caa8ed..d27c8ee1b5e7 100644
--- a/kexec/arch/arm64/Makefile
+++ b/kexec/arch/arm64/Makefile
@@ -15,7 +15,8 @@ arm64_KEXEC_SRCS += \
 	kexec/arch/arm64/kexec-arm64.c \
 	kexec/arch/arm64/kexec-elf-arm64.c \
 	kexec/arch/arm64/kexec-uImage-arm64.c \
-	kexec/arch/arm64/kexec-image-arm64.c
+	kexec/arch/arm64/kexec-image-arm64.c \
+	kexec/arch/arm64/kexec-zImage-arm64.c
 
 arm64_UIMAGE = kexec/kexec-uImage.c
 
diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
index 2992bce8139f..eb3a3a37307c 100644
--- a/kexec/arch/arm64/kexec-arm64.c
+++ b/kexec/arch/arm64/kexec-arm64.c
@@ -71,6 +71,7 @@ struct file_type file_type[] = {
 	{"vmlinux", elf_arm64_probe, elf_arm64_load, elf_arm64_usage},
 	{"Image", image_arm64_probe, image_arm64_load, image_arm64_usage},
 	{"uImage", uImage_arm64_probe, uImage_arm64_load, uImage_arm64_usage},
+	{"zImage", zImage_arm64_probe, zImage_arm64_load, zImage_arm64_usage},
 };
 
 int file_types = sizeof(file_type) / sizeof(file_type[0]);
diff --git a/kexec/arch/arm64/kexec-arm64.h b/kexec/arch/arm64/kexec-arm64.h
index cc3419f4c10f..628de79b7f70 100644
--- a/kexec/arch/arm64/kexec-arm64.h
+++ b/kexec/arch/arm64/kexec-arm64.h
@@ -38,11 +38,18 @@ int image_arm64_probe(const char *kernel_buf, off_t kernel_size);
 int image_arm64_load(int argc, char **argv, const char *kernel_buf,
 	off_t kernel_size, struct kexec_info *info);
 void image_arm64_usage(void);
+
 int uImage_arm64_probe(const char *buf, off_t len);
 int uImage_arm64_load(int argc, char **argv, const char *buf, off_t len,
 		      struct kexec_info *info);
 void uImage_arm64_usage(void);
 
+int zImage_arm64_probe(const char *kernel_buf, off_t kernel_size);
+int zImage_arm64_load(int argc, char **argv, const char *kernel_buf,
+	off_t kernel_size, struct kexec_info *info);
+void zImage_arm64_usage(void);
+
+
 off_t initrd_base;
 off_t initrd_size;
 
diff --git a/kexec/arch/arm64/kexec-image-arm64.c b/kexec/arch/arm64/kexec-image-arm64.c
index 685a99352e39..aa8f2e22d72b 100644
--- a/kexec/arch/arm64/kexec-image-arm64.c
+++ b/kexec/arch/arm64/kexec-image-arm64.c
@@ -114,6 +114,6 @@ exit:
 void image_arm64_usage(void)
 {
 	printf(
-"     An ARM64 binary image, compressed or not, big or little endian.\n"
-"     Typically an Image, Image.gz or Image.lzma file.\n\n");
+"     An ARM64 binary image, uncompressed, big or little endian.\n"
+"     Typically an Image file.\n\n");
 }
diff --git a/kexec/arch/arm64/kexec-zImage-arm64.c b/kexec/arch/arm64/kexec-zImage-arm64.c
new file mode 100644
index 000000000000..2b83ef6bdffd
--- /dev/null
+++ b/kexec/arch/arm64/kexec-zImage-arm64.c
@@ -0,0 +1,199 @@
+/*
+ * ARM64 kexec zImage (Image.gz) support.
+ *
+ * Several distros use 'make zinstall' rule inside
+ * 'arch/arm64/boot/Makefile' to install the arm64
+ * Image.gz compressed file inside the boot destination
+ * directory (for e.g. /boot).
+ *
+ * Currently we cannot use kexec_file_load() to load vmlinuz
+ * (or Image.gz).
+ *
+ * To support Image.gz, we should:
+ * a). Copy the contents of Image.gz to a temporary file.
+ * b). Decompress (gunzip-decompress) the contents inside the
+ *     temporary file.
+ * c). Pass the 'fd' of the temporary file to the kernel space.
+ *
+ * So basically the kernel space still gets a decompressed
+ * kernel image to load via kexec-tools.
+ */
+
+#define _GNU_SOURCE
+
+#include <errno.h>
+#include <fcntl.h>
+#include <limits.h>
+#include <stdlib.h>
+#include "crashdump-arm64.h"
+#include "image-header.h"
+#include "kexec.h"
+#include "kexec-arm64.h"
+#include "kexec-syscall.h"
+#include "kexec-zlib.h"
+#include "arch/options.h"
+
+#define FILENAME_IMAGE		"/tmp/ImageXXXXXX"
+
+/* Returns:
+ * -1 : in case of error/invalid format (not a valid Image.gz format.
+ *  fd: File descriptor of the temp file containing the decompressed
+ *      Image.
+ */
+int zImage_arm64_probe(const char *kernel_buf, off_t kernel_size)
+{
+	int kernel_fd = 0;
+	char *fname = NULL;
+	char *kernel_uncompressed_buf = NULL;
+	const struct arm64_image_header *h;
+
+	if (!is_zlib_file(kernel_buf, &kernel_size)) {
+		dbgprintf("%s: Not an zImage file (Image.gz).\n", __func__);
+		return -1;
+	}
+
+	if (!(fname = strdup(FILENAME_IMAGE))) {
+		dbgprintf("%s: Can't duplicate strings %s\n", __func__,
+				fname);
+		return -1;
+	}
+
+	if ((kernel_fd = mkstemp(fname)) < 0) {
+		dbgprintf("%s: Can't open file %s\n", __func__,
+				fname);
+		return -1;
+	}
+
+	kernel_uncompressed_buf =
+		(char *) calloc(kernel_size, sizeof(off_t));
+	if (!kernel_uncompressed_buf) {
+		dbgprintf("%s: Can't calloc %ld bytes\n",
+				__func__, kernel_size);
+		return -ENOMEM;
+	}
+
+	/* slurp in the input kernel */
+	dbgprintf("%s: ", __func__);
+	kernel_uncompressed_buf = slurp_decompress_file(kernel_buf,
+							&kernel_size);
+
+	/* check for correct header magic */
+	if (kernel_size < sizeof(struct arm64_image_header)) {
+		dbgprintf("%s: No arm64 image header.\n", __func__);
+		return -1;
+	}
+
+	h = (const struct arm64_image_header *)(kernel_uncompressed_buf);
+
+	if (!arm64_header_check_magic(h)) {
+		dbgprintf("%s: Bad arm64 image header.\n", __func__);
+		return -1;
+	}
+
+	if (write(kernel_fd, kernel_uncompressed_buf,
+				kernel_size) != kernel_size) {
+		dbgprintf("%s: Can't write the uncompressed file %s\n",
+				__func__, fname);
+		return -1;
+	}
+
+	close(kernel_fd);
+
+	/* Open the tmp file again, this time in O_RDONLY mode, as
+	 * opening the file in O_RDWR and calling kexec_file_load()
+	 * causes the kernel to return -ETXTBSY
+	 */
+	kernel_fd = open(fname, O_RDONLY);
+	if (kernel_fd == -1) {
+		dbgprintf("%s: Failed to open file %s\n",
+				__func__, fname);
+		return -1;
+	}
+
+	return kernel_fd;
+}
+
+int zImage_arm64_load(int argc, char **argv, const char *kernel_buf,
+	off_t kernel_size, struct kexec_info *info)
+{
+	const struct arm64_image_header *header;
+	unsigned long kernel_segment;
+	int result;
+
+	if (info->file_mode) {
+		if (arm64_opts.initrd) {
+			info->initrd_fd = open(arm64_opts.initrd, O_RDONLY);
+			if (info->initrd_fd == -1) {
+				fprintf(stderr,
+					"Could not open initrd file %s:%s\n",
+					arm64_opts.initrd, strerror(errno));
+				result = EFAILED;
+				goto exit;
+			}
+		}
+
+		if (arm64_opts.command_line) {
+			info->command_line = (char *)arm64_opts.command_line;
+			info->command_line_len =
+					strlen(arm64_opts.command_line) + 1;
+		}
+
+		return 0;
+	}
+
+	header = (const struct arm64_image_header *)(kernel_buf);
+
+	if (arm64_process_image_header(header))
+		return EFAILED;
+
+	kernel_segment = arm64_locate_kernel_segment(info);
+
+	if (kernel_segment == ULONG_MAX) {
+		dbgprintf("%s: Kernel segment is not allocated\n", __func__);
+		result = EFAILED;
+		goto exit;
+	}
+
+	dbgprintf("%s: kernel_segment: %016lx\n", __func__, kernel_segment);
+	dbgprintf("%s: text_offset:    %016lx\n", __func__,
+		arm64_mem.text_offset);
+	dbgprintf("%s: image_size:     %016lx\n", __func__,
+		arm64_mem.image_size);
+	dbgprintf("%s: phys_offset:    %016lx\n", __func__,
+		arm64_mem.phys_offset);
+	dbgprintf("%s: vp_offset:      %016lx\n", __func__,
+		arm64_mem.vp_offset);
+	dbgprintf("%s: PE format:      %s\n", __func__,
+		(arm64_header_check_pe_sig(header) ? "yes" : "no"));
+
+	/* create and initialize elf core header segment */
+	if (info->kexec_flags & KEXEC_ON_CRASH) {
+		result = load_crashdump_segments(info);
+		if (result) {
+			dbgprintf("%s: Creating eflcorehdr failed.\n",
+								__func__);
+			goto exit;
+		}
+	}
+
+	/* load the kernel */
+	add_segment_phys_virt(info, kernel_buf, kernel_size,
+			kernel_segment + arm64_mem.text_offset,
+			arm64_mem.image_size, 0);
+
+	/* load additional data */
+	result = arm64_load_other_segments(info, kernel_segment
+		+ arm64_mem.text_offset);
+
+exit:
+	if (result)
+		fprintf(stderr, "kexec: load failed.\n");
+	return result;
+}
+
+void zImage_arm64_usage(void)
+{
+	printf(
+"     An ARM64 zImage, compressed, big or little endian.\n"
+"     Typically an Image.gz or Image.lzma file.\n\n");
+}
diff --git a/kexec/kexec.c b/kexec/kexec.c
index 8ca3b457cac8..bc6ab3dbd10b 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -1206,8 +1206,20 @@ static int do_kexec_file_load(int fileind, int argc, char **argv,
 	kernel_buf = slurp_decompress_file(kernel, &kernel_size);
 
 	for (i = 0; i < file_types; i++) {
+#ifdef __aarch64__
+		/* handle Image.gz like cases */
+		if (is_zlib_file(kernel, &kernel_size)) {
+			if ((ret = file_type[i].probe(kernel, kernel_size)) >= 0) {
+				kernel_fd = ret;
+				break;
+			}
+		} else
+			if (file_type[i].probe(kernel_buf, kernel_size) >= 0)
+				break;
+#else
 		if (file_type[i].probe(kernel_buf, kernel_size) >= 0)
 			break;
+#endif
 	}
 
 	if (i == file_types) {
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
