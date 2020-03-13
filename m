Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB73B1848E1
	for <lists+kexec@lfdr.de>; Fri, 13 Mar 2020 15:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=E+BIlNToKR2b7ejwkekDRifwH+tzdLl3lIHogjB1KB4=; b=jGB/hUq/Oh2OT94fHCX58gmRDR
	WHeSY0j0WREcsBC8WygGJdpgQYaDIv3E76uPK8t5PWNBKEqB28ovNP+4Mx+mUGz+a1WpwOo9vPbiQ
	RzvSQYO3pwIwl0qhowKI3bXFM6B2pWN4Zewp+GOMuGTskrlOvCPk5JSOtQdhOuteO30nrRUUT2xXA
	aUAYCHTHSILODkk3BEWNE3XSdueFXfN0zzaSXeKIr9HK8J7DCdwz9r9vjL0hf4b8k/XjmHfZe5Iy4
	Ac7qfphO+m9joVptmeavHegOsHVciUSi2Dl6BRX3x1T5ZMCjP0yXAFNwnV4GD5B4XHlZraksmY0zI
	0vAljgkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCl0x-0000PY-83; Fri, 13 Mar 2020 14:10:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCl0p-0008Vr-Uy
 for kexec@lists.infradead.org; Fri, 13 Mar 2020 14:10:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B382AAD3F;
 Fri, 13 Mar 2020 14:10:06 +0000 (UTC)
From: Petr Tesarik <ptesarik@suse.cz>
To: kexec mailing list <kexec@lists.infradead.org>
Subject: [v2 2/2] kexec-tools: Reset getopt before falling back to legacy
 syscall
Date: Fri, 13 Mar 2020 15:09:29 +0100
Message-Id: <20200313140929.29551-3-ptesarik@suse.cz>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200313140929.29551-1-ptesarik@suse.cz>
References: <20200313140929.29551-1-ptesarik@suse.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_071008_157253_F8DDF6E6 
X-CRM114-Status: GOOD (  12.30  )
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

The modules may need to parse the arguments again after
kexec_file_load(2) failed, but getopt is not reset.

This change fixes the --initrd option on s390x. Without this patch,
it will fail to load the initrd on kernels that do not implement
kexec_file_load(2).

Signed-off-by: Petr Tesarik <ptesarik@suse.com>
---
 kexec/kexec.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/kexec/kexec.c b/kexec/kexec.c
index 33c1b4b..6601f1f 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -1538,8 +1538,12 @@ int main(int argc, char *argv[])
 	if (do_unload) {
 		if (do_kexec_file_syscall) {
 			result = kexec_file_unload(kexec_file_flags);
-			if (result == EFALLBACK && do_kexec_fallback)
+			if (result == EFALLBACK && do_kexec_fallback) {
+				/* Reset getopt for fallback */
+				opterr = 1;
+				optind = 1;
 				do_kexec_file_syscall = 0;
+			}
 		}
 		if (!do_kexec_file_syscall)
 			result = k_unload(kexec_flags);
@@ -1548,8 +1552,12 @@ int main(int argc, char *argv[])
 		if (do_kexec_file_syscall) {
 			result = do_kexec_file_load(fileind, argc, argv,
 						 kexec_file_flags);
-			if (result == EFALLBACK && do_kexec_fallback)
+			if (result == EFALLBACK && do_kexec_fallback) {
+				/* Reset getopt for fallback */
+				opterr = 1;
+				optind = 1;
 				do_kexec_file_syscall = 0;
+			}
 		}
 		if (!do_kexec_file_syscall)
 			result = my_load(type, fileind, argc, argv,
-- 
2.16.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
