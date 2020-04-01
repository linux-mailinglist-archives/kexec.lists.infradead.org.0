Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F83119B428
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 18:57:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Wd7CiSzVx3wJN3mo4YuzCmqGB54PyQ9P+/D5SW+32g=; b=CWx5HHx64alzws
	JTnVkIK3xt4PTi55w7wW8AdvARLwq2u4gfYsj7A+HOJ7k2BFv+qIlXiHTxHkwSX/tNwzAjrMAubQ0
	GrguIbyDz1K4HOJ2FAFXGxzofpoiktgJpCWuY9PfKADLA/M7xFbeve6gKa4rxYVLRNUETO/kuLqql
	410I1qV/WDQ1juIGfYst3y+9UW83TDv6eks1HNYht7golGBDxhfXOSj7jgMtizzOjWL0mE0zdJqbp
	ng+ZEGvzmEbEjAdv8a0UxJlG5lNr8ntveItGPEDx4RPFHOuU3FUj9SvouSGTzKDV0WGsTuRlhBOK9
	ge8iVEHQzklE4BY7IOaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJggZ-0006us-Cd; Wed, 01 Apr 2020 16:57:51 +0000
Received: from smtp-fw-4101.amazon.com ([72.21.198.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJggW-0006u0-Jw
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 16:57:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1585760269; x=1617296269;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=/aN7VAJDpfniLwVlS8S/z8pmaIbGiA7s7a6pd9mtThA=;
 b=lX55o1kLBod2wltlw/pHFmHYV7EOKag8jQxoamoVXL3cn6aQHhG77p8b
 xx+EMeUeiO2XhsnokXCzhkdMFPXh5fP8eIAA5aPis6zaizs/AG+OCwesY
 lOOoB9+voIxNPPHrBjXVRSVP2lBqw41t1bS4xHAVPA5xTXRNR83rK3wQ5 w=;
IronPort-SDR: 5ttBZAK4gaBWP4PeKshfkq13jdBNN/Prpwka0yy2w1XUEJAR2zeA+hIWItfEFATwt5h9gcacTv
 YbO5e3nV7SOA==
X-IronPort-AV: E=Sophos;i="5.72,332,1580774400"; d="scan'208";a="23832029"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-4101.iad4.amazon.com with ESMTP;
 01 Apr 2020 16:57:32 +0000
Received: from EX13MTAUEB002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-90c42d1d.us-west-2.amazon.com (Postfix) with ESMTPS
 id 56EAEA2257
 for <kexec@lists.infradead.org>; Wed,  1 Apr 2020 16:57:31 +0000 (UTC)
Received: from EX13D08UEB004.ant.amazon.com (10.43.60.142) by
 EX13MTAUEB002.ant.amazon.com (10.43.60.12) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 1 Apr 2020 16:57:30 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D08UEB004.ant.amazon.com (10.43.60.142) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 1 Apr 2020 16:57:30 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.1.213.21) by
 mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Wed, 1 Apr 2020 16:57:28 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH v2 3/3] kexec-xen: Introduce --exec-live-update to trigger a
 live update
Date: Wed, 1 Apr 2020 18:57:17 +0200
Message-ID: <1585760237-26924-3-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585760237-26924-1-git-send-email-vrd@amazon.de>
References: <1585760237-26924-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095748_781678_2090E8B5 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [72.21.198.25 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.198.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

This signals xen to do a KEXEC_TYPE_LIVE_UPDATE kexec operation.

Signed-off-by: Varad Gautam <vrd@amazon.de>
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
index da61d6d..7ef3d2a 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -906,7 +906,7 @@ static int my_shutdown(void)
 static int my_exec(void)
 {
 	if (xen_present())
-		xen_kexec_exec();
+		xen_kexec_exec(kexec_flags);
 	else
 		reboot(LINUX_REBOOT_CMD_KEXEC);
 	/* I have failed if I make it here */
@@ -1012,6 +1012,8 @@ void usage(void)
 	       "                      If capture kernel is being unloaded\n"
 	       "                      specify -p with -u.\n"
 	       " -e, --exec           Execute a currently loaded kernel.\n"
+               "     --exec-live-update Execute a currently loaded xen image after\n"
+                                      "storing the state required to live update.\n"
 	       " -t, --type=TYPE      Specify the new kernel is of this type.\n"
 	       "     --mem-min=<addr> Specify the lowest memory address to\n"
 	       "                      load code into.\n"
@@ -1397,6 +1399,13 @@ int main(int argc, char *argv[])
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
index 8021f39..f0f347d 100644
--- a/kexec/kexec.h
+++ b/kexec/kexec.h
@@ -234,7 +234,8 @@ extern int file_types;
 #define OPT_ENTRY		261
 #define OPT_PRINT_CKR_SIZE	262
 #define OPT_LOAD_LIVE_UPDATE	263
-#define OPT_MAX			264
+#define OPT_EXEC_LIVE_UPDATE	264
+#define OPT_MAX			265
 #define KEXEC_OPTIONS \
 	{ "help",		0, 0, OPT_HELP }, \
 	{ "version",		0, 0, OPT_VERSION }, \
@@ -245,6 +246,7 @@ extern int file_types;
 	{ "load",		0, 0, OPT_LOAD }, \
 	{ "unload",		0, 0, OPT_UNLOAD }, \
 	{ "exec",		0, 0, OPT_EXEC }, \
+	{ "exec-live-update",	0, 0, OPT_EXEC_LIVE_UPDATE}, \
 	{ "load-preserve-context", 0, 0, OPT_LOAD_PRESERVE_CONTEXT}, \
 	{ "load-jump-back-helper", 0, 0, OPT_LOAD_JUMP_BACK_HELPER }, \
 	{ "load-live-update", 0, 0, OPT_LOAD_LIVE_UPDATE }, \
@@ -326,7 +328,7 @@ void cmdline_add_liveupdate(char **base);
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
