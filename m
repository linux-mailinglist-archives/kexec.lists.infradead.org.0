Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 992BA69BDB
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 22:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20Yw3mCqjI1DE8t64p4xXcdIq+r6SZ5xgLYvy2NwH/0=; b=uiwBXxJVa0QcfL
	qqbCfP/Vy5zR/Uo8poC7BIR00mde8CUUZcLlvpW/fq9nPJQg1ROZIGOY82U7+ijDQ2Zb22krpQnV7
	Rfhyo3e1P2EeigKC4ZSLoX+wzMGNgXoU0MvgzDOuMCDDjwivJf1uD136kia2Xse354hKXTZVO/FGW
	zpByHDGPWKnx36K6b5pJq6LiF0ETw0VupZAwnsXQRzBjWHvoZlVv6sbjBkJsJGf4qdlmed2aIEPt2
	zkueOg7NoScMi3FCpkXJc/NmhcpGlUUAwDCotzu9SsBqRNP419pPKzDoJcuyg/lVgVSE79ejCgoOY
	KsFpn27SFocv7FS4wSyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn794-0002Kd-5O; Mon, 15 Jul 2019 20:00:22 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn78x-0002H5-Gr
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 20:00:17 +0000
Received: by mail-qt1-x84a.google.com with SMTP id h47so15820789qtc.20
 for <kexec@lists.infradead.org>; Mon, 15 Jul 2019 13:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=eu667FWqsyv1eiS+2MgLd1pI1Yi90NnjxQ1QKJHeSZs=;
 b=Ly3WMPXU1S4RyjVKw9rxuEW+oUhZzw9lqnq9BFk1blOsZzlx/rv+LHMtWwkLypsNsx
 xt5ySUIqKJcr2jhA4IxpsEio1sZN2ApfyF8YkWF2rTk9JRLWdO+EDXKFGtk9/Hk/swju
 sd96PlDKVvhKzefI9kwmhbQGiMg1JMKrirK+n0sTUK2AqbqHWilAYbF7KCFH8y7SWqwq
 E7vPiwA5s8TjPUrxfIczXqHjBQtJNa3meRsTMYOaYy30NqAvW8svCofDEcOSQgL+ST08
 6g2Yaua9ngtJj5E574QVzroVOioZSTkRPYWXHp9zVKq8+iIIKNmi9s0OOSF4e4mVx3X9
 HwPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=eu667FWqsyv1eiS+2MgLd1pI1Yi90NnjxQ1QKJHeSZs=;
 b=gaN1MigEJUw6f5k0LpLu5Ou8BhK0PetOouQhm31EyrjrYSo2foQvQpkNUHWP5V7qpZ
 7M11hF14rTpeCGVWB9K0n3BlJb6wSIrerey9v98hBflwTTpLjgu9DMwLWkLcWOT9ySUd
 wh85cgY32uuZ35qLkySH0QlaWIKUgPF8k+I+toMAdTBH2hXL8NwKyE+PQwJLqrQT7Pr4
 O86Zb9t7QPfWKXRyl8CtjOzrB/xbQZope3Iof4apoHffWIMMAGZygN/PJfQ6sbU6tfgz
 7p6DbhXHsU871raBCAbDLDpn55/yWqzJPWEMt74GGqie18EVkaX78wToqpNX1RLcRTV8
 zY5Q==
X-Gm-Message-State: APjAAAXZTLNW5Nrblg71pWimeQBmYb7FpAwzjAcMXmlfcuxVCTtG/hik
 GtjhTWp/FSLhhwzJAkHvOFKcy+DLXyjS6fsLaHXZ1g==
X-Google-Smtp-Source: APXvYqy7oiu794xVtd5fUDkrGDGk/p0p31oCH0KAa0a2Zo9FPzjquLWnnXJBeY4GZfWjZ6zXgQvIPVxrTG9JXHGjBxXoDA==
X-Received: by 2002:a05:620a:142e:: with SMTP id
 k14mr18219466qkj.336.1563220809135; 
 Mon, 15 Jul 2019 13:00:09 -0700 (PDT)
Date: Mon, 15 Jul 2019 12:59:23 -0700
In-Reply-To: <20190715195946.223443-1-matthewgarrett@google.com>
Message-Id: <20190715195946.223443-7-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190715195946.223443-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH V35 06/29] kexec_load: Disable at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_130015_563625_1666DF78 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
