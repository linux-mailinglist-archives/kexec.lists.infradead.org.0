Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E401848E0
	for <lists+kexec@lfdr.de>; Fri, 13 Mar 2020 15:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m0hoCovHTv29zjaKufhmOE+OXegOOrAKbViW/eDwZsA=; b=KDBUypIycN4FWyp3SXAkSnL5Fm
	bccviABvY/1Qrh0pkjCxis1ylKHVS4DpUEtz7PmKYG2tSVCVJud9/n9xV08F2Pn6caJw0akjVlha6
	ssmhVWK2xHP3CE5/9QgUdifp+rFuwe2CVh1Y4nJRSVg2xWR12+mWklLaPKxbqbLrFqSgeffF+RS5h
	0CIDFks4ejXCxhIpC1oF7GrlzXm7pO2rYhd0cWCUEdRbWn6jFCr8JNwoGI6dqDa7MwIua04dquI+6
	wiTXXTaJOTWZonNfkF2b448WPFKlqpwJsRnC5rV9+QqsM114iITS3E/lda2lT9E3Y749njXnq+Rql
	tkucrgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCl0v-0000Nk-I2; Fri, 13 Mar 2020 14:10:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCl0p-0008TL-Le
 for kexec@lists.infradead.org; Fri, 13 Mar 2020 14:10:09 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 68264AD0F;
 Fri, 13 Mar 2020 14:10:06 +0000 (UTC)
From: Petr Tesarik <ptesarik@suse.cz>
To: kexec mailing list <kexec@lists.infradead.org>
Subject: [v2 1/2] kexec-tools: Fix kexec_file_load(2) error handling
Date: Fri, 13 Mar 2020 15:09:28 +0100
Message-Id: <20200313140929.29551-2-ptesarik@suse.cz>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200313140929.29551-1-ptesarik@suse.cz>
References: <20200313140929.29551-1-ptesarik@suse.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_071008_019972_E54B7379 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Petr Tesarik <ptesarik@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Petr Tesarik <ptesarik@suse.com>

The handling of kexec_file_load() error conditions needs some
improvement.

First, on failure, the system call itself returns -1 and sets
errno. It is wrong to check the return value itself.

Second, do_kexec_file_load() mixes different types of error
codes (-1, return value of a load method, negative kernel error
number). Let it always return one of the reason codes defined in
kexec/kexec.h.

Third, the caller of do_kexec_file_load() cannot know what exactly
failed inside that function, so it should not check errno directly.
All it needs to know is whether it makes sense to fall back to the
other syscall. Add an error code for that purpose (EFALLBACK), and
let do_kexec_file_load() decide.

Fourth, do_kexec_file_load() should not print any error message if
it returns EFALLBACK, because the fallback syscall may succeed
later, and the user is confused whether the command failed, or not.
Move the error message towards the end of main().

Signed-off-by: Petr Tesarik <ptesarik@suse.com>
---
 kexec/kexec.c | 114 ++++++++++++++++++++++++++++++----------------------------
 kexec/kexec.h |   1 +
 2 files changed, 61 insertions(+), 54 deletions(-)

diff --git a/kexec/kexec.c b/kexec/kexec.c
index bc6ab3d..33c1b4b 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -836,11 +836,21 @@ static int kexec_file_unload(unsigned long kexec_file_flags)
 {
 	int ret = 0;
 
+	if (!is_kexec_file_load_implemented())
+		return EFALLBACK;
+
 	ret = kexec_file_load(-1, -1, 0, NULL, kexec_file_flags);
 	if (ret != 0) {
-		/* The unload failed, print some debugging information */
-		fprintf(stderr, "kexec_file_load(unload) failed\n: %s\n",
-			strerror(errno));
+		if (errno == ENOSYS) {
+			ret = EFALLBACK;
+		} else {
+			/*
+			 * The unload failed, print some debugging
+			 * information */
+			fprintf(stderr, "kexec_file_load(unload) failed: %s\n",
+				strerror(errno));
+			ret = EFAILED;
+		}
 	}
 	return ret;
 }
@@ -1182,15 +1192,13 @@ static int do_kexec_file_load(int fileind, int argc, char **argv,
 	info.file_mode = 1;
 	info.initrd_fd = -1;
 
-	if (!is_kexec_file_load_implemented()) {
-		fprintf(stderr, "syscall kexec_file_load not available.\n");
-		return -ENOSYS;
-	}
+	if (!is_kexec_file_load_implemented())
+		return EFALLBACK;
 
 	if (argc - fileind <= 0) {
 		fprintf(stderr, "No kernel specified\n");
 		usage();
-		return -1;
+		return EFAILED;
 	}
 
 	kernel = argv[fileind];
@@ -1199,7 +1207,7 @@ static int do_kexec_file_load(int fileind, int argc, char **argv,
 	if (kernel_fd == -1) {
 		fprintf(stderr, "Failed to open file %s:%s\n", kernel,
 				strerror(errno));
-		return -1;
+		return EFAILED;
 	}
 
 	/* slurp in the input kernel */
@@ -1225,7 +1233,7 @@ static int do_kexec_file_load(int fileind, int argc, char **argv,
 	if (i == file_types) {
 		fprintf(stderr, "Cannot determine the file type " "of %s\n",
 				kernel);
-		return -1;
+		return EFAILED;
 	}
 
 	ret = file_type[i].load(argc, argv, kernel_buf, kernel_size, &info);
@@ -1243,9 +1251,43 @@ static int do_kexec_file_load(int fileind, int argc, char **argv,
 
 	ret = kexec_file_load(kernel_fd, info.initrd_fd, info.command_line_len,
 			info.command_line, info.kexec_flags);
-	if (ret != 0)
-		fprintf(stderr, "kexec_file_load failed: %s\n",
-					strerror(errno));
+	if (ret != 0) {
+		switch (errno) {
+			/*
+			 * Something failed with signature verification.
+			 * Reject the image.
+			 */
+		case ELIBBAD:
+		case EKEYREJECTED:
+		case ENOPKG:
+		case ENOKEY:
+		case EBADMSG:
+		case EMSGSIZE:
+			/* Reject by default. */
+		default:
+			ret = EFAILED;
+			break;
+
+			/* Not implemented. */
+		case ENOSYS:
+			/*
+			 * Parsing image or other options failed
+			 * The image may be invalid or image
+			 * type may not supported by kernel so
+			 * retry parsing in kexec-tools.
+			 */
+		case EINVAL:
+		case ENOEXEC:
+			/*
+			 * ENOTSUP can be unsupported image
+			 * type or unsupported PE signature
+			 * wrapper type, duh.
+			 */
+		case ENOTSUP:
+			ret = EFALLBACK;
+			break;
+		}
+	}
 
 	close(kernel_fd);
 	return ret;
@@ -1496,7 +1538,7 @@ int main(int argc, char *argv[])
 	if (do_unload) {
 		if (do_kexec_file_syscall) {
 			result = kexec_file_unload(kexec_file_flags);
-			if ((result == -ENOSYS) && do_kexec_fallback)
+			if (result == EFALLBACK && do_kexec_fallback)
 				do_kexec_file_syscall = 0;
 		}
 		if (!do_kexec_file_syscall)
@@ -1506,46 +1548,8 @@ int main(int argc, char *argv[])
 		if (do_kexec_file_syscall) {
 			result = do_kexec_file_load(fileind, argc, argv,
 						 kexec_file_flags);
-			if (do_kexec_fallback) switch (result) {
-				/*
-				 * Something failed with signature verification.
-				 * Reject the image.
-				 */
-				case -ELIBBAD:
-				case -EKEYREJECTED:
-				case -ENOPKG:
-				case -ENOKEY:
-				case -EBADMSG:
-				case -EMSGSIZE:
-					/*
-					 * By default reject or do nothing if
-					 * succeded
-					 */
-				default: break;
-				case -ENOSYS: /* not implemented */
-					/*
-					 * Parsing image or other options failed
-					 * The image may be invalid or image
-					 * type may not supported by kernel so
-					 * retry parsing in kexec-tools.
-					 */
-				case -EINVAL:
-				case -ENOEXEC:
-					 /*
-					  * ENOTSUP can be unsupported image
-					  * type or unsupported PE signature
-					  * wrapper type, duh
-					  *
-					  * The kernel sometimes wrongly
-					  * returns ENOTSUPP (524) - ignore
-					  * that. It is not supposed to be seen
-					  * by userspace so seeing it is a
-					  * kernel bug
-					  */
-				case -ENOTSUP:
-					do_kexec_file_syscall = 0;
-					break;
-			}
+			if (result == EFALLBACK && do_kexec_fallback)
+				do_kexec_file_syscall = 0;
 		}
 		if (!do_kexec_file_syscall)
 			result = my_load(type, fileind, argc, argv,
@@ -1570,6 +1574,8 @@ int main(int argc, char *argv[])
 	if ((result == 0) && do_load_jump_back_helper) {
 		result = my_load_jump_back_helper(kexec_flags, entry);
 	}
+	if (result == EFALLBACK)
+		fputs("syscall kexec_file_load not available.\n", stderr);
 
 	fflush(stdout);
 	fflush(stderr);
diff --git a/kexec/kexec.h b/kexec/kexec.h
index a97b9ce..28fd129 100644
--- a/kexec/kexec.h
+++ b/kexec/kexec.h
@@ -63,6 +63,7 @@
  */
 #define EFAILED		-1	/* default error code */
 #define ENOCRASHKERNEL	-2	/* no memory reserved for crashkernel */
+#define EFALLBACK	-3	/* fallback to kexec_load(2) may work */
 
 /*
  * This function doesn't actually exist.  The idea is that when someone
-- 
2.16.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
