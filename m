Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC9264D0B
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 21:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hIoQ7a7wQOizXQjjsjXw5w36bklwO82p3OT3LC2AbIQ=; b=fgWpXFRtgsZlCNrtc9zzsuRqjz
	3sgao9LeZRxJy4bOUlJGpUz9gAeIszceXBCMkteLTDdZH4sEEkXW7w2snLIws6wI7OiHwwbXEatwo
	uUfzwvoaW0TN+mOXqHYdokN2w2GDLgzj5NizqoJRPA+Q1/xXslcNo9MRFJ2QiHo/tW69jKI5Df37V
	azKGMYtdvrPzJncVUjHfZbYATm245d5qllOZ5VZG6SuZ1JFA9ZRqqkmgf3Pv41TIf/XpG8Qqr6xKL
	ceC1/J50LcFj7ygE0tRyWcLaFNtXHk2m4IdBAzlnU/Tc6wlYKNY4KWeefuNTVHgPNYPOoFx0us5EG
	evO1LF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIfx-0006Mb-Pq; Wed, 10 Jul 2019 19:54:49 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIfr-0006Jl-OV
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 19:54:47 +0000
Received: by mail-pg1-f193.google.com with SMTP id i18so1718835pgl.11
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 12:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jDpOWQTPoDch/PsU2kUUIzZgrSK6NY624z/QSq6u2cw=;
 b=fU+l1KHKa/86V6EalSXZhFW2fJ7CvYLFDwjtXiCtwqZTA/bao3sbisvzBiMBFdPVGA
 UEuMR/Y1L24SrHPiBP6DUWfTY6DwItDHGlSqA6DTYnCnCJWrXPf2rx6qpmhiOQrWlF1r
 hY7Qeot1XiE+tPjocBfqSY90IO1eRapceaB1X3qLmyX0NhsLHmx6Hs59TNrnLlfR9XUZ
 whTxAFdzLIEIbIckG13PWXm/X+3WsNzJOKoqedRN+zit9wRBfqX9iHPEZ5QWe1kSNWP6
 TIB5J28Om07Fyyh97WJqRVHnJLROu5iiYIFLChyWG4/v7NsXF/cj2zVHbo3AI2XD+agY
 MOsg==
X-Gm-Message-State: APjAAAVynkfH938ZdToprkx6h5J5zQSChsPHZxT8nPF8TdrOoK9FLSlt
 l7xOxXsE1t6HCw/RbS2zzHT2psstoDk=
X-Google-Smtp-Source: APXvYqwjBu5gCtMN+SObch/EFZuRarllmghnorFRnM9KrXdgKn0EJUgkWHAROh7F6erwevdcIX4Dew==
X-Received: by 2002:a63:480a:: with SMTP id v10mr26491pga.60.1562788482232;
 Wed, 10 Jul 2019 12:54:42 -0700 (PDT)
Received: from localhost ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id v138sm3573952pfc.15.2019.07.10.12.54.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 12:54:41 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 2/4] kexec-uImage-arm64.c: Fix return value of
 uImage_arm64_probe()
Date: Thu, 11 Jul 2019 01:24:27 +0530
Message-Id: <1562788469-22935-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
References: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_125444_421577_62631043 
X-CRM114-Status: GOOD (  13.55  )
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

Commit bf06cf2095e1 ("kexec/uImage: probe to identify a corrupted image"),
defined the 'uImage_probe_kernel()' function return values and
correspondingly ;uImage_arm64_probe()' returns the same (0 -> If the
image is valid 'type' image, -1 -> If the image is corrupted and
1 -> If the image is not a uImage).

This causes issues because, in later patches we introduce zImage
support for arm64, and since it is probed after uImage, the return
values from 'uImage_arm64_probe()' needs to be fixed to make sure
that kexec will not return with an invalid error code.

Now, 'uImage_arm64_probe()' returns the following values instead:
  0 - valid uImage.
 -1 - uImage is corrupted.
  1 - image is not a uImage.

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 kexec/arch/arm64/kexec-uImage-arm64.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/kexec/arch/arm64/kexec-uImage-arm64.c b/kexec/arch/arm64/kexec-uImage-arm64.c
index 126ea9c2555b..c4669131b667 100644
--- a/kexec/arch/arm64/kexec-uImage-arm64.c
+++ b/kexec/arch/arm64/kexec-uImage-arm64.c
@@ -11,7 +11,18 @@
 
 int uImage_arm64_probe(const char *buf, off_t len)
 {
-	return uImage_probe_kernel(buf, len, IH_ARCH_ARM64);
+	int ret;
+
+	ret = uImage_probe_kernel(buf, len, IH_ARCH_ARM64);
+
+	/*  0 - valid uImage.
+	 * -1 - uImage is corrupted.
+	 *  1 - image is not a uImage.
+	 */
+	if (!ret)
+		return 0;
+	else
+		return -1;
 }
 
 int uImage_arm64_load(int argc, char **argv, const char *buf, off_t len,
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
