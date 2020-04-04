Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DFE19E74C
	for <lists+kexec@lfdr.de>; Sat,  4 Apr 2020 21:21:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/lqvzpmyLCNPnCsZ5aLDqkRTfmfSD7Yp/waQBsNETtI=; b=BLC+ymoK76zAjd
	OZ+T5oo6NlLwixgA6lUxXCBrK7/SVbM2ryRD4Xg46G5ymhe5JxrHYL+MwgCHzXcqLPtHK83tQU/oS
	xZJDix4IVddc+mCHjN+y6X+7PtcnTGU6wmbvOv4i1rb/AufqOYCCVNLckjdhEIALzeXmU9lTnA205
	wUnzfw8lPmF2A8nBMQ8I0Cly4p7fXSg3OBYyHR200XDlVq9U0uPSyL5AMvsx/Qx0jIflTtv7z5UFL
	siFhQapLx3z6e8vo7WrR1a+11JBQbNOFaM1iZqgnboysKCk5XCAJGLj3T2syDZ2aI0cWHK35Y/gEG
	ISpVVL71aYUBI9/saxuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKoLn-00038U-3L; Sat, 04 Apr 2020 19:21:03 +0000
Received: from [2602:306:37b0:7840:fd9a:df97:600e:757c]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKoLh-00037m-FR; Sat, 04 Apr 2020 19:20:57 +0000
To: Simon Horman <horms@verge.net.au>
From: Geoff Levand <geoff@infradead.org>
Subject: [PATCH] bootstrap: Add program checks
Message-ID: <14c69313-ecb5-e7aa-bcb2-93846f2399b3@infradead.org>
Date: Sat, 4 Apr 2020 12:20:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add a check for needed programs, print an error message
if not found.

Signed-off-by: Geoff Levand <geoff@infradead.org>
---
 bootstrap | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/bootstrap b/bootstrap
index fc9837d..9457a14 100755
--- a/bootstrap
+++ b/bootstrap
@@ -19,6 +19,20 @@
 ## @start 1
 #! /bin/sh
 
+progs="autoconf automake make"
+
+unset result
+for p in ${progs}; do
+	if ! command -v "${p}" > /dev/null; then
+		echo "Please install ${p}"
+		result=1
+	fi
+done
+
+if [ -n "${result}" ]; then
+	exit 1
+fi
+
 set -x
 aclocal -I config
 autoheader
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
