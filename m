Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EA7155427
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 10:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwDtfKjpkVxe5rjBkvX9lvktcKVabjt4yzJviDh4sfU=; b=MTmlzj2Mq790zX
	PR1H8QEwfChUTnBMC7AHmikk7V4OZbGMNH+Np6hLhOGmybJHgXuyP4UiSMV9OdUzO7iPrUwx21nVu
	94Ig6Ffr5Mx9Ea6XgBWW+wtBPSbfZpYqkkD5zjrtZAFvY3rojLTDCKiNcinyTcoo4gCxENxdBGSeU
	Pw5PpblVBcc1qbSif3e3FwepuXNOS/moPVmMTaTGuO8QMZHowfNfJB/2Bz5chOAPZzFt0UPRfzTjs
	OaS3FDEPzZW7OSPH8oj69Hk5/yrdERBQdKig1cMVOtdm3ZS7xr2871kucvV03k0A9s5SaMqhs2H0m
	W1JM4gqHBjqQy7uVIZLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzVP-0005Pd-GS; Fri, 07 Feb 2020 09:00:55 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzVL-0005OG-ON
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 09:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1581066052; x=1612602052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=bEYyZgmzWI3Vh+hkHGkTsME8Q3UhAVyBtMNou+R+los=;
 b=UpsK54F554sVg7+naPCsvFPHi5txUkWggRC9DwJpxsoDYDdDV+TYpdRM
 OFjKuH0q2m0x0tqKFv0ZyEmVxuW7GkkeVqJdBiUPYOi0ebVaX+9EZhg/Z
 CBAV6UXYukM5megb3wsAKqJ6Z7gcYmVUqRIxY3LYsJYNAKSrUUvQz+E1n k=;
IronPort-SDR: +CSLiNUISRfr4x7kHiHlT7Ck/3tmLSRbEhPVir8utmKvbgjF+U/uhx1o/OT4Gyql3Q3kL7piXc
 KWoQA6xxf3zA==
X-IronPort-AV: E=Sophos;i="5.70,412,1574121600"; d="scan'208";a="15219186"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-e7be2041.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 07 Feb 2020 09:00:42 +0000
Received: from EX13MTAUEB002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2a-e7be2041.us-west-2.amazon.com (Postfix) with ESMTPS
 id 7CC26A2741
 for <kexec@lists.infradead.org>; Fri,  7 Feb 2020 09:00:40 +0000 (UTC)
Received: from EX13D08UEB001.ant.amazon.com (10.43.60.245) by
 EX13MTAUEB002.ant.amazon.com (10.43.60.12) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Feb 2020 09:00:40 +0000
Received: from EX13MTAUEA001.ant.amazon.com (10.43.61.82) by
 EX13D08UEB001.ant.amazon.com (10.43.60.245) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Feb 2020 09:00:39 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.28.86.33) by
 mail-relay.amazon.com (10.43.61.243) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Fri, 7 Feb 2020 09:00:39 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH 2/3] kexec: Introduce --load-live-update for xen
Date: Fri, 7 Feb 2020 10:00:32 +0100
Message-ID: <1581066033-25120-2-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581066033-25120-1-git-send-email-vrd@amazon.de>
References: <1581066033-25120-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010051_929980_217EE695 
X-CRM114-Status: GOOD (  17.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Varad Gautam <vrd@amazon.de>, David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Xen is intended to expose a KEXEC_TYPE_LIVE_UPDATE operation which
implies a stateful-kexec into a new xen image - or a "live update".
Make kexec-tools capable of triggering a live update.

For a multiboot2 xen image, this will:
- load a xen Elf into into KEXEC_RANGE_MA_XEN
- load purgatory and modules into KEXEC_RANGE_MA_LIVEUPDATE
- append Elf cmdline with " liveupdate=<size>@<addr>

Signed-off-by: Varad Gautam <vrd@amazon.de>
CC: David Woodhouse <dwmw@amazon.co.uk>
---
 kexec/arch/i386/kexec-mb2-x86.c | 74 ++++++++++++++++++++++++++++++++++++++---
 kexec/kexec-xen.c               |  8 +++--
 kexec/kexec-xen.h               | 12 +++++++
 kexec/kexec.c                   | 31 ++++++++++++++++-
 kexec/kexec.h                   |  5 ++-
 5 files changed, 121 insertions(+), 9 deletions(-)

diff --git a/kexec/arch/i386/kexec-mb2-x86.c b/kexec/arch/i386/kexec-mb2-x86.c
index 7eaab0c..e569c93 100644
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
 
+static inline bool multiboot2_rel_valid(struct multiboot_header_tag_relocatable *rel_tag,
+					uint64_t rel_start, uint64_t rel_end)
+{
+	if (rel_start >= rel_tag->min_addr && rel_end <= rel_tag->max_addr)
+		return true;
+
+	return false;
+}
+
 int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
 			struct kexec_info *info)
 {
@@ -414,6 +425,7 @@ int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
 		{ 0, 				0, 0, 0 },
 	};
 	static const char short_options[] = KEXEC_ARCH_OPT_STR "";
+	uint64_t rel_min, rel_max;
 
 	/* Probe for the MB header if it's not already found */
 	if (mbh == NULL && multiboot_x86_probe(buf, len) != 1)
@@ -461,19 +473,59 @@ int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
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
@@ -482,6 +534,18 @@ int multiboot2_x86_load(int argc, char **argv, const char *buf, off_t len,
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
index 603ac94..a0131af 100644
--- a/kexec/kexec-xen.h
+++ b/kexec/kexec-xen.h
@@ -66,6 +66,18 @@ extern int __xc_interface_close(xc_interface *xch);
 
 int xen_get_kexec_range(int range, uint64_t *start, uint64_t *end);
 
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
 #endif /* HAVE_LIBXENCTRL */
 
 #endif /* KEXEC_XEN_H */
diff --git a/kexec/kexec.c b/kexec/kexec.c
index bc6ab3d..66035f9 100644
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
@@ -1012,6 +1013,8 @@ void usage(void)
 	       "                      context of current kernel during kexec.\n"
 	       "     --load-jump-back-helper Load a helper image to jump back\n"
 	       "                      to original kernel.\n"
+	       "     --load-live-update Load the new kernel to overwrite the\n"
+	       "                      running kernel.\n"
 	       "     --entry=<addr>   Specify jump back address.\n"
 	       "                      (0 means it's not jump back or\n"
 	       "                      preserve context)\n"
@@ -1161,6 +1164,25 @@ char *concat_cmdline(const char *base, const char *append)
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
@@ -1360,11 +1382,13 @@ int main(int argc, char *argv[])
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
@@ -1462,6 +1486,11 @@ int main(int argc, char *argv[])
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
index a97b9ce..a0640ce 100644
--- a/kexec/kexec.h
+++ b/kexec/kexec.h
@@ -232,7 +232,8 @@ extern int file_types;
 #define OPT_LOAD_JUMP_BACK_HELPER 260
 #define OPT_ENTRY		261
 #define OPT_PRINT_CKR_SIZE	262
-#define OPT_MAX			263
+#define OPT_LOAD_LIVE_UPDATE	263
+#define OPT_MAX			264
 #define KEXEC_OPTIONS \
 	{ "help",		0, 0, OPT_HELP }, \
 	{ "version",		0, 0, OPT_VERSION }, \
@@ -245,6 +246,7 @@ extern int file_types;
 	{ "exec",		0, 0, OPT_EXEC }, \
 	{ "load-preserve-context", 0, 0, OPT_LOAD_PRESERVE_CONTEXT}, \
 	{ "load-jump-back-helper", 0, 0, OPT_LOAD_JUMP_BACK_HELPER }, \
+	{ "load-live-update", 0, 0, OPT_LOAD_LIVE_UPDATE }, \
 	{ "entry",		1, 0, OPT_ENTRY }, \
 	{ "type",		1, 0, OPT_TYPE }, \
 	{ "load-panic",         0, 0, OPT_PANIC }, \
@@ -318,6 +320,7 @@ const char * proc_iomem(void);
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
