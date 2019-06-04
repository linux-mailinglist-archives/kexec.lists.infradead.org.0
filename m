Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B0C3501D
	for <lists+kexec@lfdr.de>; Tue,  4 Jun 2019 21:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+GRajw7HLUbggYDM0I8n3928soZ1ZeHnnycSvyFqWpk=; b=EbcoL08VuRblsq
	RcyWooT7pQkb5vsA9H/DprrxtnE7bpfD9bx+mh5YiT2sfY5tafWbpDeKxVoqpWK+hjqp2bLDM+c41
	3iApxpVXT3F1bda02x3tvfgR42YCT2ZsCvT0W9B/1eQ+KlpjwA9hRdHdVZXNlcIr1qRyam8wuCCTZ
	YgXEBv/hSJh5I0I9WOd/+nznKhZzietq3izs3IX68omVZGPkQgrBAtfatOkZCCyqnwgaZiDH79NCf
	5U36CIaVwggyVJRK/E4csC1Rj/Z+2EbOqNzyAEh6ffHQWTzG7tIpWmLIdWd+eHLrnj6ccr/0sdZVJ
	fi60ALKFxhKWuD/5ohBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYEj5-00013K-Pt; Tue, 04 Jun 2019 19:04:03 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYEj1-00012n-Ns
 for kexec@lists.infradead.org; Tue, 04 Jun 2019 19:04:01 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x54J3tJe013750
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 5 Jun 2019 04:03:55 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x54J3sl8014510;
 Wed, 5 Jun 2019 04:03:55 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x54J2sLi021238;
 Wed, 5 Jun 2019 04:03:54 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-5671376;
 Wed, 5 Jun 2019 04:00:16 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0319.002; Wed, 5
 Jun 2019 04:00:16 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [PATCH] makedumpfile/arm64: fix get_kaslr_offset_arm64() to return
 kaslr_offset correctly
Thread-Topic: [PATCH] makedumpfile/arm64: fix get_kaslr_offset_arm64() to
 return kaslr_offset correctly
Thread-Index: AdUbB3Ot1p4WZXq9R6eUMjdQZ84oPg==
Date: Tue, 4 Jun 2019 19:00:15 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03577879@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.45]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_120400_021027_63AC4E55 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Bhupesh Sharma <bhsharma@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Currently, the get_kaslr_offset_arm64() function has the following
condition to return info->kaslr_offset, but kernel text mapping is
placed in another range on arm64 by default, so it returns 0 for
kernel text addresses.

    if (vaddr >= __START_KERNEL_map &&
                    vaddr < __START_KERNEL_map + info->kaslr_offset)

Consequently, kernel text symbols in erase config are resolved wrongly
with KASLR enabled vmcore, and makedumpfile erases unintended data.

Since the return value of get_kaslr_offset_arm64() is used in
resolve_config_entry() only, and in that case, we must have a vmlinux,
so get the addresses of _text and _end from vmlinux and use them.

Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
---
 arch/arm64.c   | 24 ++++++++++++++++++++++--
 makedumpfile.h |  1 -
 2 files changed, 22 insertions(+), 3 deletions(-)

diff --git a/arch/arm64.c b/arch/arm64.c
index 5fcf59d..a61d96f 100644
--- a/arch/arm64.c
+++ b/arch/arm64.c
@@ -215,6 +215,8 @@ get_kaslr_offset_arm64(unsigned long vaddr)
 {
 	unsigned int i;
 	char buf[BUFSIZE_FGETS], *endp;
+	static unsigned long _text = NOT_FOUND_SYMBOL;
+	static unsigned long _end = NOT_FOUND_SYMBOL;
 
 	if (!info->kaslr_offset && info->file_vmcoreinfo) {
 		if (fseek(info->file_vmcoreinfo, 0, SEEK_SET) < 0) {
@@ -237,9 +239,27 @@ get_kaslr_offset_arm64(unsigned long vaddr)
 			}
 		}
 	}
+	if (!info->kaslr_offset)
+		return 0;
+
+	if (_text == NOT_FOUND_SYMBOL) {
+		/*
+		 * Currently, the return value of this function is used in
+		 * resolve_config_entry() only, and in that case, we must
+		 * have a vmlinux.
+		 */
+		if (info->name_vmlinux) {
+			_text = get_symbol_addr("_text");
+			_end = get_symbol_addr("_end");
+		}
+		DEBUG_MSG("_text: %lx, _end: %lx\n", _text, _end);
+		if (_text == NOT_FOUND_SYMBOL || _end == NOT_FOUND_SYMBOL) {
+			ERRMSG("Cannot determine _text and _end address\n");
+			return FALSE;
+		}
+	}
 
-	if (vaddr >= __START_KERNEL_map &&
-			vaddr < __START_KERNEL_map + info->kaslr_offset) {
+	if (_text <= vaddr && vaddr <= _end) {
 		DEBUG_MSG("info->kaslr_offset: %lx\n", info->kaslr_offset);
 		return info->kaslr_offset;
 	} else {
diff --git a/makedumpfile.h b/makedumpfile.h
index b1176b7..bd60acc 100644
--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -542,7 +542,6 @@ do { \
 #ifdef __aarch64__
 unsigned long get_kvbase_arm64(void);
 #define KVBASE			get_kvbase_arm64()
-#define __START_KERNEL_map	(0xffffffff80000000UL)
 
 #endif /* aarch64 */
 
-- 
2.18.1



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
