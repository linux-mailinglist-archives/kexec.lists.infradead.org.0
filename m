Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0DA7D08E
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 00:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+RghyXUxApW07E3PnZTwpQgEtuHqnI/VBCzulAhVq8=; b=U1owgYhLnW7TlF
	T4m5gVHXVZ1xxI+9hGAMjpda6TruhIxIPjjIXP+hEYe4M7p8FfQQx/h2WtFwNIokX6rjBoFGCjiMf
	b+mJ0Jf80+w1okJM9aCT4Qu3nC2uuQKWFo0ZmEZJ7tDxJKZ3OeM+U5RiovpWM224sD39K6vtb3MQZ
	sSTmtt9OC+o3Kkv7F/VD7wLEFqCJxTp1JcFeSOq2ii+QCf+/ZzQZGE1DTIqdP4Hum5jUhWvEeMt+k
	VB1EDBMbe3ECTRRXNFt1R8Aw8VGsnRtcj6bL1Y9MN+oKa8Z8EOFGH/qy6UOBrgxK3dFAjpdc+NZkc
	aPcJWmMlvJVqWCVidXeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswtq-0002U7-Pi; Wed, 31 Jul 2019 22:16:46 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswtn-0002Sd-NH
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 22:16:45 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id u202so30055125vku.5
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 15:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=F1VsQKe1CvGe90szBrckBeIyG/tsASbX2ypyWhc14LE=;
 b=OA/ewO2STl/8HuS0PxOzP53cqnJU4I2To46Ls2zbIPrZrcu6dWb3BWrs8Gv7I+OTa/
 8YbrIh1IYkmK0OtcTqi75E137+aNk2E/WFI/YsvmZnzcOaaf98xzsMoisWzYfDfLC2B7
 JN2b+P5R1eLpJX4dG9c9oeCWku4dL7sYsIrkTSNq5KSAuZFriPHkloD2Eg+XpfaeK/Ui
 hlokk/dSOm/77WEK1BNNuhO3N3lFKkSgLy8FYH8Z9lCWel6MAa8V17P6MG633C4Wxbb8
 b+F00xixmbEGqv+LwFArWUhV5ybH8n5Yo5qa0k/kDIAOJb71ElqEWbgXe+hHxUS3Ryct
 U9GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=F1VsQKe1CvGe90szBrckBeIyG/tsASbX2ypyWhc14LE=;
 b=Y8yR9ydEQOYNW9LtsjJRVDHwxwKwMU0YrwL2uzohEsldDM4CYh3d9UjREE26kH7DMa
 5RyAn2gs+J1+/cxce5yz39ui+c/gpbfTDr2fcvtkyRXdFdfo2/tTpl5/dAuU+VSKvKzY
 nfKzGq/ND49E7XAdUadVhpGMq/9hy8u9ZauzhhR0mkMhdg0gYdnbC17k5liSnY6hm6pb
 Djc/MyE0L0j4tqvMk6KF1+EBKKU9Jrv0sJLr20NW7tdnvEDAtZ3L6HK9SGYLu8l1UySg
 Qev1ZlMWoGZrdX0ymbQViMfvTY798h5BNwyF0kV4L2jKxSbhm8Ny5uKxgJKQHBfcUg+w
 tnpw==
X-Gm-Message-State: APjAAAUF5Cdq4IAyo9vl9G9ww8KIXbTxdf8OPeIUFGKXZXEemvVrddkd
 WwAOsnH+aBRLc+ZnZ8lgALM87q+/wDTwRHJ/m40M1A==
X-Google-Smtp-Source: APXvYqx6UQL2kVcMcSAcMfiNdlcC1RYlaghiMf1GsQfTNxHzAwOnaMO09aJRTxLnk22BC2WML6UwPWYSOTr5JgeP2S6utw==
X-Received: by 2002:a05:6102:3c5:: with SMTP id
 n5mr42332847vsq.56.1564611401552; 
 Wed, 31 Jul 2019 15:16:41 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:15:54 -0700
In-Reply-To: <20190731221617.234725-1-matthewgarrett@google.com>
Message-Id: <20190731221617.234725-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190731221617.234725-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V37 06/29] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_151643_760850_64B2875E 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, Kees Cook <keescook@chromium.org>,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Matthew Garrett <mjg59@srcf.ucam.org>

The kexec_load() syscall permits the loading and execution of arbitrary
code in ring 0, which is something that lock-down is meant to prevent. It
makes sense to disable kexec_load() in this situation.

This does not affect kexec_file_load() syscall which can check for a
signature on the image to be booted.

Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Matthew Garrett <mjg59@google.com>
Acked-by: Dave Young <dyoung@redhat.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
cc: kexec@lists.infradead.org
---
 include/linux/security.h     | 1 +
 kernel/kexec.c               | 8 ++++++++
 security/lockdown/lockdown.c | 1 +
 3 files changed, 10 insertions(+)

diff --git a/include/linux/security.h b/include/linux/security.h
index 9458152601b5..69c5de539e9a 100644
--- a/include/linux/security.h
+++ b/include/linux/security.h
@@ -105,6 +105,7 @@ enum lockdown_reason {
 	LOCKDOWN_NONE,
 	LOCKDOWN_MODULE_SIGNATURE,
 	LOCKDOWN_DEV_MEM,
+	LOCKDOWN_KEXEC,
 	LOCKDOWN_INTEGRITY_MAX,
 	LOCKDOWN_CONFIDENTIALITY_MAX,
 };
diff --git a/kernel/kexec.c b/kernel/kexec.c
index 1b018f1a6e0d..bc933c0db9bf 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -205,6 +205,14 @@ static inline int kexec_load_check(unsigned long nr_segments,
 	if (result < 0)
 		return result;
 
+	/*
+	 * kexec can be used to circumvent module loading restrictions, so
+	 * prevent loading in that case
+	 */
+	result = security_locked_down(LOCKDOWN_KEXEC);
+	if (result)
+		return result;
+
 	/*
 	 * Verify we have a legal set of flags
 	 * This leaves us room for future extensions.
diff --git a/security/lockdown/lockdown.c b/security/lockdown/lockdown.c
index d2ef29d9f0b2..6f302c156bc8 100644
--- a/security/lockdown/lockdown.c
+++ b/security/lockdown/lockdown.c
@@ -20,6 +20,7 @@ static char *lockdown_reasons[LOCKDOWN_CONFIDENTIALITY_MAX+1] = {
 	[LOCKDOWN_NONE] = "none",
 	[LOCKDOWN_MODULE_SIGNATURE] = "unsigned module loading",
 	[LOCKDOWN_DEV_MEM] = "/dev/mem,kmem,port",
+	[LOCKDOWN_KEXEC] = "kexec of unsigned images",
 	[LOCKDOWN_INTEGRITY_MAX] = "integrity",
 	[LOCKDOWN_CONFIDENTIALITY_MAX] = "confidentiality",
 };
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
