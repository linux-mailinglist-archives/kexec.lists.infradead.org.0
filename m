Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4078155426
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 10:00:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgTZXiQKorKgWrLcF6qd6OCihEWHtOafuWcZXztrt6M=; b=r+hUdPG51CJtLY
	X5hl8XLVkaOdOv3ASFoAS8siszaoEqw2yGJPuoiDONCs5gg33FbYbGH2YXFqBGtDHwKzhBBpGEPV0
	Xs2o1SPOGEMrw1oiiPQaARCYc7EBSdH3Fou6T5a/joLqy1dP9SjxydOQT+Rh3OTEXf2vcXv7cIvhG
	GSymOQD7+HK94lmAwVzJs0b8mfaVzVRWZP0jjOXrGQmpH+ghJOXlyYnDIq7ud4tyDLwGNEYNyR+Ur
	tIk2IDsY53pDZ6EBzuyRwq1Gu8kJb1TWv65gtHcLl2QYGRDpI8ltEIuP3ztcUMU+gFAc15djIBHjq
	wFee/Ow9Pp5VuWoHtUKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzVO-0005P9-JI; Fri, 07 Feb 2020 09:00:54 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzVM-0005OI-52
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 09:00:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1581066052; x=1612602052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=K3iHuy0Xox7a05TomfYijpV7flP71j8P5v9fqssMY5w=;
 b=cfhpND8mmKz5j8oJKI+jRd4wSP8ogxEx2bRv/1CHgsYuQnawdxYX0nlC
 eLZEXjMEGrKNWRsOrPuf4SHrZ7oOTKHjGXV2Mqg8AOaEsYO8ueQJAQEJP
 jecbHVPZ4MQIZJLhAqhckgUdxx3+/d3g5uad7ops8WCg7URIcpjdXrKJF s=;
IronPort-SDR: J+dgZH1Nq10w2OwQ2uEdtWJctkjRdr0WIvhyDRgiC0HTdFnTvXPIctv68JbRpDZAWtfchth51e
 APeHod//SbOA==
X-IronPort-AV: E=Sophos;i="5.70,412,1574121600"; d="scan'208";a="15238060"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2c-397e131e.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 07 Feb 2020 09:00:43 +0000
Received: from EX13MTAUEB002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2c-397e131e.us-west-2.amazon.com (Postfix) with ESMTPS
 id DEB72A242C
 for <kexec@lists.infradead.org>; Fri,  7 Feb 2020 09:00:42 +0000 (UTC)
Received: from EX13D08UEB003.ant.amazon.com (10.43.60.11) by
 EX13MTAUEB002.ant.amazon.com (10.43.60.12) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Feb 2020 09:00:42 +0000
Received: from EX13MTAUEA001.ant.amazon.com (10.43.61.82) by
 EX13D08UEB003.ant.amazon.com (10.43.60.11) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Feb 2020 09:00:42 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.28.86.33) by
 mail-relay.amazon.com (10.43.61.243) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Fri, 7 Feb 2020 09:00:41 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH 3/3] kexec-xen: Introduce --exec-live-update to trigger a live
 update
Date: Fri, 7 Feb 2020 10:00:33 +0100
Message-ID: <1581066033-25120-3-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581066033-25120-1-git-send-email-vrd@amazon.de>
References: <1581066033-25120-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010052_232199_5FB614F2 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
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

This signals xen to do a KEXEC_TYPE_LIVE_UPDATE exec operation.

Signed-off-by: Varad Gautam <vrd@amazon.de>
CC: David Woodhouse <dwmw@amazon.co.uk>
---
 kexec/kexec-xen.c | 12 ++++++++----
 kexec/kexec.c     | 11 ++++++++++-
 kexec/kexec.h     |  6 ++++--
 3 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/kexec/kexec-xen.c b/kexec/kexec-xen.c
index 83629ba..da514d0 100644
--- a/kexec/kexec-xen.c
+++ b/kexec/kexec-xen.c
@@ -242,15 +242,19 @@ int xen_kexec_status(uint64_t kexec_flags)
 	return ret;
 }
 
-void xen_kexec_exec(void)
+void xen_kexec_exec(uint64_t kexec_flags)
 {
 	xc_interface *xch;
-	
+	uint8_t type = KEXEC_TYPE_DEFAULT;
+
 	xch = xc_interface_open(NULL, NULL, 0);
 	if (!xch)
 		return;
 
-	xc_kexec_exec(xch, KEXEC_TYPE_DEFAULT);
+	if (kexec_flags & KEXEC_LIVE_UPDATE)
+		type = KEXEC_TYPE_LIVE_UPDATE;
+
+	xc_kexec_exec(xch, type);
 
 	xc_interface_close(xch);
 }
@@ -277,7 +281,7 @@ int xen_kexec_status(uint64_t kexec_flags)
 	return -1;
 }
 
-void xen_kexec_exec(void)
+void xen_kexec_exec(uint64_t kexec_flags)
 {
 }
 
diff --git a/kexec/kexec.c b/kexec/kexec.c
index 66035f9..12a27e1 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -896,7 +896,7 @@ static int my_shutdown(void)
 static int my_exec(void)
 {
 	if (xen_present())
-		xen_kexec_exec();
+		xen_kexec_exec(kexec_flags);
 	else
 		reboot(LINUX_REBOOT_CMD_KEXEC);
 	/* I have failed if I make it here */
@@ -1002,6 +1002,8 @@ void usage(void)
 	       "                      If capture kernel is being unloaded\n"
 	       "                      specify -p with -u.\n"
 	       " -e, --exec           Execute a currently loaded kernel.\n"
+               "     --exec-live-update Execute a currently loaded xen image after\n"
+                                      "storing the state required to live update.\n"
 	       " -t, --type=TYPE      Specify the new kernel is of this type.\n"
 	       "     --mem-min=<addr> Specify the lowest memory address to\n"
 	       "                      load code into.\n"
@@ -1355,6 +1357,13 @@ int main(int argc, char *argv[])
 			do_unload = 1;
 			kexec_file_flags |= KEXEC_FILE_UNLOAD;
 			break;
+                case OPT_EXEC_LIVE_UPDATE:
+			if ( !xen_present() ) {
+				fprintf(stderr, "--exec-live-update only works under xen.\n");
+                                return 1;
+                        }
+			kexec_flags |= KEXEC_LIVE_UPDATE;
+			/* fallthrough */
 		case OPT_EXEC:
 			do_load = 0;
 			do_shutdown = 0;
diff --git a/kexec/kexec.h b/kexec/kexec.h
index a0640ce..369f7e1 100644
--- a/kexec/kexec.h
+++ b/kexec/kexec.h
@@ -233,7 +233,8 @@ extern int file_types;
 #define OPT_ENTRY		261
 #define OPT_PRINT_CKR_SIZE	262
 #define OPT_LOAD_LIVE_UPDATE	263
-#define OPT_MAX			264
+#define OPT_EXEC_LIVE_UPDATE	264
+#define OPT_MAX			265
 #define KEXEC_OPTIONS \
 	{ "help",		0, 0, OPT_HELP }, \
 	{ "version",		0, 0, OPT_VERSION }, \
@@ -244,6 +245,7 @@ extern int file_types;
 	{ "load",		0, 0, OPT_LOAD }, \
 	{ "unload",		0, 0, OPT_UNLOAD }, \
 	{ "exec",		0, 0, OPT_EXEC }, \
+	{ "exec-live-update",	0, 0, OPT_EXEC_LIVE_UPDATE}, \
 	{ "load-preserve-context", 0, 0, OPT_LOAD_PRESERVE_CONTEXT}, \
 	{ "load-jump-back-helper", 0, 0, OPT_LOAD_JUMP_BACK_HELPER }, \
 	{ "load-live-update", 0, 0, OPT_LOAD_LIVE_UPDATE }, \
@@ -325,7 +327,7 @@ void cmdline_add_liveupdate(char **base);
 int xen_present(void);
 int xen_kexec_load(struct kexec_info *info);
 int xen_kexec_unload(uint64_t kexec_flags);
-void xen_kexec_exec(void);
+void xen_kexec_exec(uint64_t kexec_flags);
 int xen_kexec_status(uint64_t kexec_flags);
 
 extern unsigned long long get_kernel_sym(const char *text);
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
