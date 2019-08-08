Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0128856C5
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 02:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+RghyXUxApW07E3PnZTwpQgEtuHqnI/VBCzulAhVq8=; b=YSqiSX0HMT7pCC
	PwNUnq3DEDOm4PYyDfPkqLBe+JWqmpAeJ2qgVXm1BJiNa4llV9oDDxaAtv5jJLPKZKKLfnd6633hP
	o4U8MOUU1gCh/W6F3PsjX3EEOEJev0s1TSYwWIx9L9Y6EvhfCKX1bbiQfOp6csjfmV9exc0sLD6/2
	QGy2P07ybN+Lr+1iiz/7rMSd5NTymd1WRQfQSEZaNrHGfZkcR/k28MVnp8Lnlq8pqawklxs2L95N1
	V4WWhtargx7PWFIw7pXfz7XtMNZotrE/UPw4ocHg/81ZTdLdIDsIkH3Lkv/JLXnvDrwl7AXVjvfyN
	1681Py23YwSrhioxI1JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvVy5-0000Rj-Pe; Thu, 08 Aug 2019 00:07:46 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvVy1-0000RM-Rw
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 00:07:43 +0000
Received: by mail-pf1-x44a.google.com with SMTP id i26so57744653pfo.22
 for <kexec@lists.infradead.org>; Wed, 07 Aug 2019 17:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=F1VsQKe1CvGe90szBrckBeIyG/tsASbX2ypyWhc14LE=;
 b=qMlQjFH4LNkPFt7okSAYQH4LtgYOG/hpHDLWPX566YGyPNtYJPUP46rcks4c8eYnlb
 0bNs4gihvrRlVOh7tP/Xx/1BqrbyEXSnnaOOpY9HI+9wJsc3wJD2PF5r/GwLRZeUaYMb
 amKeZJBCwihyM/juh7mpeQuNxOuwGxJ9NIxBA9znCQKrTU72jhbs+1l3EcTedt8WGozq
 BelKAb8SlmNg4vuZFYuqAK88knD3oJ0DDgpmSGebDO7s3E3QGb7ZbaHu1OLTTpwaG5sS
 F0qMtxQ/4l2MjyX8Z6GY0yoXhEMxtyJK+E73Gdo88OD3vLRca9iG/my2Faw6p3KXszOw
 kfgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=F1VsQKe1CvGe90szBrckBeIyG/tsASbX2ypyWhc14LE=;
 b=jfjsKKT3UNMTcbNY2tqeRngadqUAARFBoXZ0vkZ6gHJvAzmut8cg0g5591bENJk8Py
 AQVmIPd9oGmH6OwSlfF6QXxfPteV779tZhl6Es4NFYDclcRPBo9dnNxGaf3nSCgBaLk7
 PS+MLJtvdeUo1qZZpwR2HZmGnm93qI7UWeAqGYbd7Xy9Aj/X4XNTsKrV036qKYUG8m/F
 vArLeiqG4poJg1aIx1DnlOcezM7HZ7cIYx8FwJ/hX0D+zJyFDdoyb7rVUHISnDRiapaz
 YTVhFIdaW3Pdx2dugPeD8rRoL/5I8VOU38vBOle+OdtDv7nIWlqzJYFZuV/urNnvwz5u
 r9+Q==
X-Gm-Message-State: APjAAAXChvRae4hekZRdVLXae2DpqDCnBU4RhoPeBbRqp6QN77PTkuTI
 fhry1SvTYt/7FWftn1/EKMEf9mwLwDHhq5znLrQSIg==
X-Google-Smtp-Source: APXvYqyhRtz7BIHwY/gc5z8qI7waq/52irPZx7U7/ay1YZFhLhsfUoUA1xgDlFmESnZc3tLh3+OeQj7gqeFdOTwZNMoaFQ==
X-Received: by 2002:a65:6815:: with SMTP id l21mr10209698pgt.146.1565222859667; 
 Wed, 07 Aug 2019 17:07:39 -0700 (PDT)
Date: Wed,  7 Aug 2019 17:06:58 -0700
In-Reply-To: <20190808000721.124691-1-matthewgarrett@google.com>
Message-Id: <20190808000721.124691-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190808000721.124691-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V38 06/29] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_170741_907785_557C7DED 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
