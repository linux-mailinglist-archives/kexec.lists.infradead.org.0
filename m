Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFED464D0D
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 21:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kOTOqStNBApKi9DIRgJxHKvuQ1HQlEDJ/EFD0npTPvY=; b=ffyh5HIy85BP/gL3PXxmt/cBej
	hp09OYbt97edad2FBFyHMrsVMWKIeRJ810tFkD6AcJkOfZig1ZiMD+SVCXNcHW6Ev1M1gCA2fiJUu
	KV1FZ/kYy+sQ63VO3UGm5JDBSISGfSdnf8oxSBrCbr8f0eoPAslzfkaYsRu21pDxUWpJEz9wZutkG
	Jdx1TnkIHKF94xWXjP3jUzyIRxrc6+BcKnoNiLur75U2nyXAYBnmNTmgBa+7ASfshRRPO93gQeJlC
	xNeGFpqbDbm9pCGiApF9u2OEonkD4o3JdiaQMTVxPKs39pHj7HegrWMEAyxoWSnjuhoWDPCrgWrjF
	gmqRbu/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIg3-0006Nn-1Q; Wed, 10 Jul 2019 19:54:55 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIfu-0006Lh-UI
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 19:54:48 +0000
Received: by mail-pg1-f193.google.com with SMTP id g15so1736820pgi.4
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 12:54:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5DuUU9vvVDR5ARYpV0BAuZnUUFHUGfkQJTqovonTbYY=;
 b=nDzvXVt54MQzPU8sbF9VpVRlsCHMrlrFhT8q78HeXOflgy0s4YNGSPszn+wzwv/Cbn
 SauoxXOj4vrCLU0TuC11vMiq0bwNBOy0N2ktzb7V8EhOwBsGvLGE/QDSu2z3ipKk3OmE
 YQf/ffpTQ5gd6rLgVY3Tmx781RYtsJfioS+RRYCeXAT9V2dCSEHulOJU9k5seIZKKaga
 qrbXrZD++8ycVDN7tIIYkPfgDRr/0Kcyw5/VE/lD91phoklnj5e52Jxfo5iAwnvQNZjG
 fOSSeaOLMADu7SYrdyTMsQX6nUUP3uVb0x4aViK/qd8GB5trvpAj+j0nzCtP+Sj0Az6B
 nvFQ==
X-Gm-Message-State: APjAAAWOrg8BlvCmKHFqvroX8WIgtdlRwayaZ9//YM7DNjy+xpAc230E
 wBvGZspqiRUFkagg7XPlMYMp3RMyMiE=
X-Google-Smtp-Source: APXvYqxS8ytdWPQTm/MfuPMW8VqrPZ777yGsoonSqtCxAGB/VbKdtgFrVUT8vFe4hXqSvwRXZtOGgQ==
X-Received: by 2002:a63:2c8e:: with SMTP id s136mr3153322pgs.277.1562788485886; 
 Wed, 10 Jul 2019 12:54:45 -0700 (PDT)
Received: from localhost ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id 12sm2925908pfi.60.2019.07.10.12.54.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 12:54:45 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 3/4] kexec/kexec-zlib.h: Add 'is_zlib_file()' helper function
Date: Thu, 11 Jul 2019 01:24:28 +0530
Message-Id: <1562788469-22935-4-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
References: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_125446_980346_3E8ECB0A 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
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

This patch adds 'is_zlib_file()' helper function which can be
used to quickly determine with the passed kernel image is a zlib
compressed kernel image.

This is specifically useful for arm64 zImage (or Image.gz) support,
which is introduced by later patches in this patchset.

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 kexec/kexec-zlib.h |  1 +
 kexec/zlib.c       | 32 ++++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

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
index 95b608059d41..34d5ca566769 100644
--- a/kexec/zlib.c
+++ b/kexec/zlib.c
@@ -23,6 +23,32 @@ static void _gzerror(gzFile fp, int *errnum, const char **errmsg)
 	}
 }
 
+int is_zlib_file(const char *filename, off_t *r_size)
+{
+	gzFile fp;
+	int errnum;
+	const char *msg;
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
+	if (gzdirect(fp))
+		/* It's not in gzip format */
+		goto out;
+
+	/* It's in gzip format */
+	return 1;
+out:
+	return 0;
+}
+
 char *zlib_decompress_file(const char *filename, off_t *r_size)
 {
 	gzFile fp;
@@ -84,6 +110,12 @@ fail:
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
