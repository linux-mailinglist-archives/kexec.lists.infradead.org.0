Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7614519B426
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 18:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXuk5Q17ib1blCAyGDfiO9MNYGWYCtSvrhG4MXwPOa8=; b=XJ6CrfpSNUuhfM
	+SNe8Zrm9kHjx7oe2OoO9Rtx7cZ/3yM6S9npV296wYaOfSDkXJuR/khTM/jTRGYxqI5IwbVLLhcRd
	AXOi8OiXKWrESanDGTPTxGOK92ZN9QRUEmXCm44fWG8PTCDgefStuNAjtSCznrCdMLfJ4oLsLHeve
	rD5chS2pfU39YVSXAnLtD1X+1WSVHUThEuW1wIG1qxw7E0Jb9JH6jkqXLSYWrogvVdFgmPbCkYIlI
	Ja5vjIZa5sKx9p6zbLCB2vxUQkrnsDe99Afdlho9Qddhp//M7lW2NSfvmd4W5Ay8h3MZxuOCP02s4
	FpYetcAcCzxPrtf7wUhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJggM-0006oB-LY; Wed, 01 Apr 2020 16:57:38 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJggJ-0006nV-IB
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 16:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1585760256; x=1617296256;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=eVQ2B3btQDmUNMKJYH4GVG7P7k2ug8XQxzT5+Gn1CjU=;
 b=Jf8AH3MsjgOhbSJT91w1qJGT+lMeuzRjAov8+NGx0CE2C1ECpiqZOV+6
 q1NZRh0qNx5RE1UZWxyY3/OD4PgZBGYai9z79lL1jDf8JczlRHlQ30aBW
 jkQShxq0ogsoiX7zzMGdUlOqFzNOHrV0DYNMpdS7npivmBPDLX9MFHP0h Y=;
IronPort-SDR: 9e38esmyzgdA+WB7q9RqlYl0lwNGagcLSv26W5PVEl8wzYTdflwy6BVUPjp2nG12Bb1QAEWmfM
 eYtMIbn6g4Dw==
X-IronPort-AV: E=Sophos;i="5.72,332,1580774400"; d="scan'208";a="34694599"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP;
 01 Apr 2020 16:57:28 +0000
Received: from EX13MTAUEE002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-6e2fc477.us-west-2.amazon.com (Postfix) with ESMTPS
 id EC0F0A21D1
 for <kexec@lists.infradead.org>; Wed,  1 Apr 2020 16:57:26 +0000 (UTC)
Received: from EX13D08UEE003.ant.amazon.com (10.43.62.118) by
 EX13MTAUEE002.ant.amazon.com (10.43.62.24) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 1 Apr 2020 16:57:26 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D08UEE003.ant.amazon.com (10.43.62.118) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 1 Apr 2020 16:57:26 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.1.213.21) by
 mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Wed, 1 Apr 2020 16:57:24 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH v2 2/3] kexec: Introduce --load-live-update for xen
Date: Wed, 1 Apr 2020 18:57:16 +0200
Message-ID: <1585760237-26924-2-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585760237-26924-1-git-send-email-vrd@amazon.de>
References: <1585760237-26924-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095735_638481_359C4771 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Varad Gautam <vrd@amazon.de>, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Support loading a live update image for xen from kexec userspace.
For a multiboot2 Elf on a xen setup, this will:
- load the Elf into KEXEC_RANGE_MA_XEN
- load purgatory and modules into KEXEC_RANGE_MA_LIVEUPDATE
- append the Elf cmdline with " liveupdate=<size>@<addr>

v2: define xen related symbols outside of HAVE_LIBXENCTRL

Signed-off-by: Varad Gautam <vrd@amazon.de>
---
 kexec/arch/i386/kexec-mb2-x86.c | 74 ++++++++++++++++++++++++++++++++++++++---
 kexec/kexec-xen.c               |  8 +++--
 kexec/kexec-xen.h               | 17 +++++++++-
 kexec/kexec.c                   | 31 ++++++++++++++++-
 kexec/kexec.h                   |  5 ++-
 5 files changed, 125 insertions(+), 10 deletions(-)

diff --git a/kexec/arch/i386/kexec-mb2-x86.c b/kexec/arch/i386/kexec-mb2-x86.c
index b839d59..1ad8aed 100644
--- a/kexec/arch/i386/kexec-mb2-x86.c
+++ b/kexec/arch/i386/kexec-mb2-x86.c
@@ -42,6 +42,8 @@
 #include "../../kexec.h"
 #include "../../kexec-elf.h"
 #include "kexec-x86.h"
+#include "../../kexec-syscall.h"
+#include "../../kexec-xen.h"
 #include <arch/options.h>
 
 /* From GNU GRUB */
@@ -388,6 +390,15 @@ static uint64_t multiboot2_mbi_end(void *mbi_buf, uint64_t mbi_ptr)
 	return mbi_ptr;
 }
 
+static inline int multiboot2_rel_valid(struct multiboot_header_tag_relocatable *rel_tag,
+					uint64_t rel_start, uint64_t rel_end)
+{
+	if (rel_start >= rel_tag->min_addr && rel_end <= rel_tag->max_addr)
+		return 1;
+
+	return 0;
+}
+
 int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
 			struct kexec_info *info)
 {
@@ -413,6 +424,7 @@ int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
 		{ 0, 				0, 0, 0 },
 	};
 	static const char short_options[] = KEXEC_ARCH_OPT_STR "";
+	uint64_t rel_min, rel_max;
 
 	/* Probe for the MB header if it's not already found */
 	if (mbh == NULL && multiboot_x86_probe(buf, len) != 1)
@@ -459,19 +471,59 @@ int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
 	if (tmp_cmdline) {
 		free(tmp_cmdline);
 	}
+
+	if (xen_present() && info->kexec_flags & KEXEC_LIVE_UPDATE ) {
+		if (!mhi.rel_tag) {
+			fprintf(stderr, "Multiboot2 image must be relocatable"
+				"for KEXEC_LIVE_UPDATE.\n");
+			return -1;
+		}
+		cmdline_add_liveupdate(&command_line);
+	}
+
 	command_line_len = strlen(command_line) + 1;
 
 	/* Load the ELF executable */
-	if (mhi.rel_tag)
+	if (mhi.rel_tag) {
+		rel_min = mhi.rel_tag->min_addr;
+		rel_max = mhi.rel_tag->max_addr;
+
+		if (info->kexec_flags & KEXEC_LIVE_UPDATE && xen_present()) {
+			/* TODO also check if elf is xen */
+			/* On a live update, load target xen over the current xen image. */
+			uint64_t xen_start, xen_end;
+
+			xen_get_kexec_range(KEXEC_RANGE_MA_XEN, &xen_start, &xen_end);
+			if (multiboot2_rel_valid(mhi.rel_tag, xen_start, xen_end)) {
+				rel_min = xen_start;
+			} else {
+				fprintf(stderr, "Cannot place Elf into "
+				"KEXEC_RANGE_MA_XEN for KEXEC_LIVE_UPDATE.\n");
+				return -1;
+			}
+		}
+
 		elf_exec_build_load_relocatable(info, &ehdr, buf, len, 0,
-						mhi.rel_tag->min_addr, mhi.rel_tag->max_addr,
-						mhi.rel_tag->align);
-	else
+						rel_min, rel_max, mhi.rel_tag->align);
+	} else
 		elf_exec_build_load(info, &ehdr, buf, len, 0);
 
+	if (info->kexec_flags & KEXEC_LIVE_UPDATE && xen_present()) {
+		uint64_t lu_start, lu_end;
+
+		xen_get_kexec_range(7 /* KEXEC_RANGE_MA_LIVEUPDATE */, &lu_start, &lu_end);
+		/* Fit everything else into lu_start-lu_end. First page after lu_start is
+		 * reserved for LU breadcrumb. */
+		rel_min = lu_start + 4096;
+		rel_max = lu_end;
+	} else {
+		rel_min = 0;
+		rel_max = ULONG_MAX;
+	}
+
 	/* Load the setup code */
 	elf_rel_build_load(info, &info->rhdr, purgatory, purgatory_size,
-			   0, ULONG_MAX, 1, 0);
+			   rel_min, rel_max, 1, 0);
 
 	/* Construct information tags. */
 	mbi_bytes = multiboot2_get_mbi_size(info->memory_ranges, command_line_len, modules, mod_command_line_space);
@@ -480,6 +532,18 @@ int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
 	mbi_ptr = multiboot2_make_mbi(info, command_line, command_line_len, info->rhdr.rel_addr, mbi_buf, mbi_bytes);
 	free(command_line);
 
+	if (info->kexec_flags & KEXEC_LIVE_UPDATE && xen_present()) {
+		if (multiboot2_rel_valid(mhi.rel_tag, rel_min, rel_max)) {
+			/* Shrink the reloc range to fit into LU region for xen. */
+			mhi.rel_tag->min_addr = rel_min;
+			mhi.rel_tag->max_addr = rel_max;
+		} else {
+			fprintf(stderr, "Multiboot2 image cannot be relocated into "
+				"KEXEC_RANGE_MA_LIVEUPDATE for KEXEC_LIVE_UPDATE.\n");
+			return -1;
+		}
+	}
+
 	/* Load modules */
 	if (modules) {
 		char *mod_filename, *mod_command_line, *mod_clp, *buf;
diff --git a/kexec/kexec-xen.c b/kexec/kexec-xen.c
index afcfc5b..83629ba 100644
--- a/kexec/kexec-xen.c
+++ b/kexec/kexec-xen.c
@@ -177,8 +177,12 @@ int xen_kexec_load(struct kexec_info *info)
 		seg++;
 	}
 
-	type = (info->kexec_flags & KEXEC_ON_CRASH) ? KEXEC_TYPE_CRASH
-		: KEXEC_TYPE_DEFAULT;
+	if (info->kexec_flags & KEXEC_ON_CRASH)
+		type = KEXEC_TYPE_CRASH;
+	else if (info->kexec_flags & KEXEC_LIVE_UPDATE )
+		type = KEXEC_TYPE_LIVE_UPDATE;
+	else
+		type = KEXEC_TYPE_DEFAULT;
 
 	arch = (info->kexec_flags & KEXEC_ARCH_MASK) >> 16;
 #if defined(__i386__) || defined(__x86_64__)
diff --git a/kexec/kexec-xen.h b/kexec/kexec-xen.h
index 94d22cd..70fb576 100644
--- a/kexec/kexec-xen.h
+++ b/kexec/kexec-xen.h
@@ -64,9 +64,24 @@ extern int __xc_interface_close(xc_interface *xch);
 
 #endif /* CONFIG_LIBXENCTRL_DL */
 
-
 #endif /* HAVE_LIBXENCTRL */
 
+#ifndef KEXEC_RANGE_MA_XEN
+#define KEXEC_RANGE_MA_XEN 1
+#endif
+
+#ifndef KEXEC_RANGE_MA_LIVEUPDATE
+#define KEXEC_RANGE_MA_LIVEUPDATE 7
+#endif
+
+#ifndef KEXEC_TYPE_LIVE_UPDATE
+#define KEXEC_TYPE_LIVE_UPDATE 2
+#endif
+
+#ifndef KEXEC_LIVE_UPDATE
+#define KEXEC_LIVE_UPDATE 0x00000004
+#endif
+
 int xen_get_kexec_range(int range, uint64_t *start, uint64_t *end);
 
 #endif /* KEXEC_XEN_H */
diff --git a/kexec/kexec.c b/kexec/kexec.c
index 6601f1f..da61d6d 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -47,6 +47,7 @@
 #include "kexec.h"
 #include "kexec-syscall.h"
 #include "kexec-elf.h"
+#include "kexec-xen.h"
 #include "kexec-sha256.h"
 #include "kexec-zlib.h"
 #include "kexec-lzma.h"
@@ -1022,6 +1023,8 @@ void usage(void)
 	       "                      context of current kernel during kexec.\n"
 	       "     --load-jump-back-helper Load a helper image to jump back\n"
 	       "                      to original kernel.\n"
+	       "     --load-live-update Load the new kernel to overwrite the\n"
+	       "                      running kernel.\n"
 	       "     --entry=<addr>   Specify jump back address.\n"
 	       "                      (0 means it's not jump back or\n"
 	       "                      preserve context)\n"
@@ -1171,6 +1174,25 @@ char *concat_cmdline(const char *base, const char *append)
 	return cmdline;
 }
 
+void cmdline_add_liveupdate(char **base)
+{
+	uint64_t lu_start, lu_end, lu_sizeM;
+	char *str;
+	char buf[64];
+	size_t len;
+
+	if ( !xen_present() )
+		return;
+
+	xen_get_kexec_range(KEXEC_RANGE_MA_LIVEUPDATE, &lu_start, &lu_end);
+	lu_sizeM = (lu_end - lu_start) / (1024 * 1024) + 1;
+	sprintf(buf, " liveupdate=%luM@0x%lx", lu_sizeM, lu_start);
+	len = strlen(*base) + strlen(buf) + 1;
+	str = xmalloc(len);
+	sprintf(str, "%s%s", *base, buf);
+	*base = str;
+}
+
 /* New file based kexec system call related code */
 static int do_kexec_file_load(int fileind, int argc, char **argv,
 			unsigned long flags) {
@@ -1402,11 +1424,13 @@ int main(int argc, char *argv[])
 			}
 			break;
 		case OPT_LOAD_PRESERVE_CONTEXT:
+		case OPT_LOAD_LIVE_UPDATE:
 			do_load = 1;
 			do_exec = 0;
 			do_shutdown = 0;
 			do_sync = 1;
-			kexec_flags = KEXEC_PRESERVE_CONTEXT;
+			kexec_flags = (opt == OPT_LOAD_PRESERVE_CONTEXT) ?
+				       KEXEC_PRESERVE_CONTEXT : KEXEC_LIVE_UPDATE;
 			break;
 		case OPT_TYPE:
 			type = optarg;
@@ -1504,6 +1528,11 @@ int main(int argc, char *argv[])
 		    "\"--mem-max\" parameter\n");
 	}
 
+	if (do_load && (kexec_flags & KEXEC_LIVE_UPDATE) &&
+	    !xen_present()) {
+		die("--load-live-update can only be used with xen\n");
+	}
+
 	fileind = optind;
 	/* Reset getopt for the next pass; called in other source modules */
 	opterr = 1;
diff --git a/kexec/kexec.h b/kexec/kexec.h
index 28fd129..8021f39 100644
--- a/kexec/kexec.h
+++ b/kexec/kexec.h
@@ -233,7 +233,8 @@ extern int file_types;
 #define OPT_LOAD_JUMP_BACK_HELPER 260
 #define OPT_ENTRY		261
 #define OPT_PRINT_CKR_SIZE	262
-#define OPT_MAX			263
+#define OPT_LOAD_LIVE_UPDATE	263
+#define OPT_MAX			264
 #define KEXEC_OPTIONS \
 	{ "help",		0, 0, OPT_HELP }, \
 	{ "version",		0, 0, OPT_VERSION }, \
@@ -246,6 +247,7 @@ extern int file_types;
 	{ "exec",		0, 0, OPT_EXEC }, \
 	{ "load-preserve-context", 0, 0, OPT_LOAD_PRESERVE_CONTEXT}, \
 	{ "load-jump-back-helper", 0, 0, OPT_LOAD_JUMP_BACK_HELPER }, \
+	{ "load-live-update", 0, 0, OPT_LOAD_LIVE_UPDATE }, \
 	{ "entry",		1, 0, OPT_ENTRY }, \
 	{ "type",		1, 0, OPT_TYPE }, \
 	{ "load-panic",         0, 0, OPT_PANIC }, \
@@ -319,6 +321,7 @@ const char * proc_iomem(void);
 #define MAX_LINE	160
 
 char *concat_cmdline(const char *base, const char *append);
+void cmdline_add_liveupdate(char **base);
 
 int xen_present(void);
 int xen_kexec_load(struct kexec_info *info);
-- 
2.7.4




Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
