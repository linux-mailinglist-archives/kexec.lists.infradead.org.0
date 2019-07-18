Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2126D4EE
	for <lists+kexec@lfdr.de>; Thu, 18 Jul 2019 21:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20Yw3mCqjI1DE8t64p4xXcdIq+r6SZ5xgLYvy2NwH/0=; b=MjoTlIgdtydmyD
	t0uuEUXZVY/FKAjjas+rYBbBdCxrP1nYTUYD5zsRYVCnlmcykwGd9bFJ5lbtyswH+q0QLCQ9goYb6
	VMq/w6Nb0GG9XHe819cyfE0EsHpCV/Z3UkRVlO1gomvH7Ky7VVFH2SQa41MkzIU5GHEirLhvvHg59
	qDyy7wdNyTg7mLS+Lj0SnzbhJjcVV4LVdXe/zz4dDyF6DrmA2DzzAJBAjM3SALd8zhbWtGSucp9JO
	PJbuekDC7x9GXNHpmLSTKa44rnvijGR+I9zoEqIg5X1G4NFWUJpLE34NTUNZG869EtZj/E5x/wck2
	qFi6EhcIneUrFYZhUVCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoCKa-0003e2-8E; Thu, 18 Jul 2019 19:44:44 +0000
Received: from mail-pg1-x549.google.com ([2607:f8b0:4864:20::549])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoCKS-0003cu-Ht
 for kexec@lists.infradead.org; Thu, 18 Jul 2019 19:44:37 +0000
Received: by mail-pg1-x549.google.com with SMTP id h5so17242127pgq.23
 for <kexec@lists.infradead.org>; Thu, 18 Jul 2019 12:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=eu667FWqsyv1eiS+2MgLd1pI1Yi90NnjxQ1QKJHeSZs=;
 b=ohrtYog4gGPeInnSgPNEoQxrDXPaBrUloNn0kHObJFwMww/WL/1QitIjfRTdQ7Io3l
 3SFmno+zU0LHqnjj1iwf/EcXC0mkATM1jwJSktN3EWogC7qhjF9T+4Vc2XXS/dPtmlKX
 mz5jQECVWQ2KxykCHqcx7Q4Oj8ogBpTDoACnxdCUgqa3Ot4HPl0AkiJXF4fk6mY7//oL
 7PbCHo+Yh6dVRTJvVO6GMzSfDJ2XD8gX5qc9TCAmUHKXJA2d2DOUhz+oq/Fg4W64rGof
 PvjyvsAmKWx9isgpl4njBFhx7acc40bmEcgvG4s2a7Usp9NXUY50lVDgZ8lf+u3ipVh8
 +y9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=eu667FWqsyv1eiS+2MgLd1pI1Yi90NnjxQ1QKJHeSZs=;
 b=g4mFoGgEeXTVtABOYVNg8lRJmucrJeiEGxOaPlVzonzwLa2zGpO2aVw8lZZ6j7QWqf
 +7WLMIv98joFVwNRNgmZN/rvwW6+XtfzJsWS2W9VOe3xSnamxT/orBu4fEtnwGk63ln+
 +/riqh2HkBBbUaO3dewK0xb2rC2YTMmRU5lx/ogqwxrlcNqZfoyAx2oQYFTn7hB7DCr5
 0ORokTWwqzx36WTDd+wDC/5OKA5QKCwwQev2wxDyKmxl75GKTi5EZnALt/78IQpDbmSs
 rvY8OpqUN3KK+xIZP066iN+ux1dllEpUJ41GKcLedKShwg9cPQx9pV4nEq/0LYC7CIft
 mvsQ==
X-Gm-Message-State: APjAAAUYfQMqKJ3KajNI1qCMDltvE3peZ75IBKjXZ32fzyOqJrRaC9f/
 wDPIAhvMSwkXsIyuFzJQd5PKjgJGQHdBmrk4e+F3ug==
X-Google-Smtp-Source: APXvYqz2hh3xf3NNVSMQwnKxLqxoPr5fEA/x4WWO1oTU5T/O29MD4PGWgIppNaZkbdLHJf6ADY0SDRBtGzSuhQYGFEqqag==
X-Received: by 2002:a65:500d:: with SMTP id f13mr48703316pgo.151.1563479074121; 
 Thu, 18 Jul 2019 12:44:34 -0700 (PDT)
Date: Thu, 18 Jul 2019 12:43:52 -0700
In-Reply-To: <20190718194415.108476-1-matthewgarrett@google.com>
Message-Id: <20190718194415.108476-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190718194415.108476-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH V36 06/29] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_124436_597340_46447EDC 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:549 listed in]
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
2.22.0.510.g264f2c817a-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
