Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B6168361
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 08:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hIoQ7a7wQOizXQjjsjXw5w36bklwO82p3OT3LC2AbIQ=; b=SKHXV6gsrnLrtnGPO/KV49VkvM
	T9qc6rY3ts/h2v9jFiEpCMUKsEfqZw8N9KDAOo/WwwAXiFx3+iA0jSwCV9N0Eyt5mTL6mB20kVvXf
	D7bN9hOgN/+19uVfUpGzSNvDAiNy9XjaW+yqQCiYE4TQPnVSYrgbWa2eiWJiJwQHGDI+lxoHzf54m
	JC2Uj7AtpNekekrBIyRYeKBFUxbFzK0A0DdsL2B2Rm5VZ5zg6nm55vxCWAustta+tbVIaJuza/GQ1
	9eKXYsa/bwnyRWDwcdt3OB+18n3QNTa5KHd8Mgu8pcgokhe1aThcLTn7OQZtqtDVMy1dyPnBUXMgE
	6kvpaLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmu4z-0005tS-NH; Mon, 15 Jul 2019 06:03:18 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmu4t-0005rH-BP
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 06:03:12 +0000
Received: by mail-pg1-f196.google.com with SMTP id n9so949944pgc.1
 for <kexec@lists.infradead.org>; Sun, 14 Jul 2019 23:03:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jDpOWQTPoDch/PsU2kUUIzZgrSK6NY624z/QSq6u2cw=;
 b=TeozYYr4EHL79MPmzK0Ro2D1Q5CXtmjPuRN4hx7L7l+CJMat1IavmdTCI73mG5RNLB
 Y0j39zUyzSYw5GpreTcwZ5AiIwBV/iglK9F3ehSd2msSQwFB0rdZgC6CrUDP+BopMSGg
 S01qcXmyCccrN3GDw/mNJPFgX9Wm1JMk8N3d5wwylLwG3WZP8x16AIfQ4FB2uSbo/qMW
 7o6sZ1LjXjxB4gkpH6URHralUmxZk8mHKdzxceK4JJh1mwOM5pcwkkcxso9JNabpbO0/
 EPV0TSidk7rVhrc8Roba2dfzhnXlZTb1qJTEELZKnJginloH/YO9va2y2316hSyTQGNj
 +39w==
X-Gm-Message-State: APjAAAUivs9dz/tQS4pYhLEGbsywp9+NfZ5CvjWvXXstYMSxyx+7NeJr
 jLK0bC43lKNwYsFR4p1j1m4FiW6OR84=
X-Google-Smtp-Source: APXvYqyAjIH4MiWFHFZxW9c7dq06KwxlZ1CW6mIKLJT2QllUwRJBEuqm0sj655HlseooHwaE0FjIrg==
X-Received: by 2002:a17:90a:601:: with SMTP id
 j1mr26846179pjj.96.1563170589830; 
 Sun, 14 Jul 2019 23:03:09 -0700 (PDT)
Received: from localhost ([106.215.98.33])
 by smtp.gmail.com with ESMTPSA id i124sm29845490pfe.61.2019.07.14.23.03.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 23:03:08 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 2/4] kexec-uImage-arm64.c: Fix return value of
 uImage_arm64_probe()
Date: Mon, 15 Jul 2019 11:32:54 +0530
Message-Id: <1563170576-13134-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
References: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_230311_389598_713964A6 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
