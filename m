Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BF768362
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 08:03:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QfykXLNNO8UhCW2sUmAe5su2sjaZxIr7hlmE0IUAdss=; b=MLaq0zn+dns3dWneKzRahSTVuV
	eag8oe0h3IKCJyQ3MPCsDjmohV6iPGRWAT1H0eeMBdP4TB5+QBC6DQitmZ78KGEBknzzBRSSdiLgi
	WkmUunEt8vgzRf5PEBjDbgNDnFugv8NE7RaoBDUXt4Fa/E/1mn8TVMEAF4FlDE0lFQrYz7Z243IKH
	xPrwYDRDCbRm+MzR5DxzuDBUWlEk22tL4kjH39S/q/zPmIh5Mq45Yb4m9Ifv3n2y3/0qx6YuuSg6r
	PtHd/+QV9jpZIf03zLvIRuxjKfk5niKSKo0XyKXhclFl+rNFoN4xoxL6mTRteqbNqU/fo5cBmfdXd
	uWIJSccQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmu54-0005vQ-SK; Mon, 15 Jul 2019 06:03:23 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmu4w-0005s2-J4
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 06:03:16 +0000
Received: by mail-pg1-f195.google.com with SMTP id l21so7175004pgm.3
 for <kexec@lists.infradead.org>; Sun, 14 Jul 2019 23:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fUt6GdcQkj4NXHiqOLYLYpdaV17cpGaDwGdUrZto/no=;
 b=tM8z+1uM0LGkNQHUHXo8RdZuzTe51ZFXPsK5wXfERKCxgN0+WK+VnyWqotFJWfeYeP
 3JZT2plqAihG3V2KfNwk6GoC3VR5e3RMNDHsfyeuc5X3Mca8ucKOSkEWgGV5xQweoIhH
 8cKSJVnkPCpbqcjTkYBBvFedojqqYDjnDqs6oqzoHp4Y9a1dgJj5peTBTYAH1dPaUxwv
 WBnFdtNUyRnRTyJh94UDyOJpIwX2hB+eystxWnlNJdtUqqf177un3FBGlzuSPNVNLI0y
 4wUbTBFuNFyokRHkCZVHS5qhx+YXcOeATIGObhOGXmd2axqRAbrzXhO2A4Ln32+xbDzJ
 Y3aA==
X-Gm-Message-State: APjAAAWTgWvj7Goax3f87/BAqc7pF88y5GewhXkkxgg1n2t+B1fayTWA
 wa+DHYw1UaBcH2c17rUFZg+guin+1gc=
X-Google-Smtp-Source: APXvYqxK0tif+Tc476yETwq2ccM9ovHpvuuNYRLXXwvguXILpXmYEzIOYtFsqHysTHi0vK6WxDPflQ==
X-Received: by 2002:a17:90a:220a:: with SMTP id
 c10mr27899692pje.33.1563170593132; 
 Sun, 14 Jul 2019 23:03:13 -0700 (PDT)
Received: from localhost ([106.215.98.33])
 by smtp.gmail.com with ESMTPSA id s185sm13212829pgs.67.2019.07.14.23.03.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 23:03:12 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 3/4] kexec/kexec-zlib.h: Add 'is_zlib_file()' helper
 function
Date: Mon, 15 Jul 2019 11:32:55 +0530
Message-Id: <1563170576-13134-4-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
References: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_230315_366927_00D7FE45 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: takahiro.akashi@linaro.org, bhsharma@redhat.com, bhupesh.linux@gmail.com,
 horms@verge.net.au
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This patch adds 'is_zlib_file()' helper function which can be
used to quickly determine with the passed kernel image is a zlib
compressed kernel image.

This is specifically useful for arm64 zImage (or Image.gz) support,
which is introduced by later patches in this patchset.

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 kexec/kexec-zlib.h |  1 +
 kexec/zlib.c       | 38 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)

diff --git a/kexec/kexec-zlib.h b/kexec/kexec-zlib.h
index 43c107bf4a72..16300f294759 100644
--- a/kexec/kexec-zlib.h
+++ b/kexec/kexec-zlib.h
@@ -6,5 +6,6 @@
 
 #include "config.h"
 
+int is_zlib_file(const char *filename, off_t *r_size);
 char *zlib_decompress_file(const char *filename, off_t *r_size);
 #endif /* __KEXEC_ZLIB_H */
diff --git a/kexec/zlib.c b/kexec/zlib.c
index 95b608059d41..9bc340d85001 100644
--- a/kexec/zlib.c
+++ b/kexec/zlib.c
@@ -23,6 +23,38 @@ static void _gzerror(gzFile fp, int *errnum, const char **errmsg)
 	}
 }
 
+int is_zlib_file(const char *filename, off_t *r_size)
+{
+	gzFile fp;
+	int errnum;
+	int is_zlib_file = 0; /* default: It's not in gzip format */
+	const char *msg;
+	ssize_t result;
+
+	if (!filename)
+		goto out;
+
+	fp = gzopen(filename, "rb");
+	if (fp == 0) {
+		_gzerror(fp, &errnum, &msg);
+		dbgprintf("Cannot open `%s': %s\n", filename, msg);
+		goto out;
+	}
+
+	if (!gzdirect(fp))
+		/* It's in gzip format */
+		is_zlib_file = 1;
+
+	result = gzclose(fp);
+	if (result != Z_OK) {
+		_gzerror(fp, &errnum, &msg);
+		dbgprintf(" Close of %s failed: %s\n", filename, msg);
+	}
+
+out:
+	return is_zlib_file;
+}
+
 char *zlib_decompress_file(const char *filename, off_t *r_size)
 {
 	gzFile fp;
@@ -84,6 +116,12 @@ fail:
 	return buf;
 }
 #else
+
+int is_zlib_file(const char *filename, off_t *r_size)
+{
+	return 0;
+}
+
 char *zlib_decompress_file(const char *UNUSED(filename), off_t *UNUSED(r_size))
 {
 	return NULL;
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
