Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7781D1912
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 17:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8AAtFIUhcXbNfB29TOymH5qNYFL1JR9oGT+e4hJ2Sow=; b=LQzojFYATBTqSp
	F7XAE3xWym+wkz1vSuT9DSS96QuruthovGbVVty28UnWTl9mEVZNNSPS9pnUdjX4/gHyZk5dB8hXX
	EL6L7UG8bR3hhgh/uUIfaLBkWnnehkLRQAvTxlH7Ziy6/sH8UkkSsYENXeAPvvihojO7IeYZeh/a8
	Pd5uHZ7FwyiJwuT/CUdDI9hvu0/ug1ADL9XSZ86dhShyAl7+qj1v0xkO8R4vJmtVhgwdE2I5uD7k6
	1RhvhNnl8AJQwmYzaGgQ3OztPkrIfyDJpf3hrqLhylYlmBuHelSB9IhdB35FG1K4qLeR5zQ0yG/o6
	LN4ZdiziDms02Wkx8wjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtCH-000116-9T; Wed, 13 May 2020 15:21:25 +0000
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtC9-0000xm-5m
 for kexec@lists.infradead.org; Wed, 13 May 2020 15:21:22 +0000
Received: by mail-pj1-f68.google.com with SMTP id a5so11247473pjh.2
 for <kexec@lists.infradead.org>; Wed, 13 May 2020 08:21:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y6Z349elIdKKVeaQxYemASvgjctlEyt1SGMVKJhxPXM=;
 b=oaOON2c9bj+sO4ZWXSB2/1EIa7oAlCkTzQ2jhG0HtcufnMsl/p1yYhQJ/wWj4vFGPO
 6P/e7NhNuw9s2CR8/TyeUjCsBb3V3yaQ58Rty18krHzYFC/b+RbmGG9aCgM8ezxEYc+R
 14nZtq2MlVJ9dvDYeYf40vOMOnE4/zlUYnxGcLbNRL77a2BnK3EwILkDjgW9sy1bR+hx
 IWmYIdp5jCQ2ZzW/8r+GwukLLZVxb//ajgeYxS8vGVAJRY6tsFG/U45AjFieYOEqHdlu
 DXH4ar5I1gor7kFstB2DP+eEP6xVG4zgRUweNjQhSZ3X338SqH8057T0OSbCni/qyDqt
 zZTg==
X-Gm-Message-State: AGi0PuY/VcHkDLojrPu/GLQmQZkv8+VvGMIJ5lf3/XrVw9+GGtYnQ+9i
 Ln7vqIcJMWEyqROEG5KPEks=
X-Google-Smtp-Source: APiQypJ0RK+oeB+zoVh6X+gWZ3eFKKxCmbjeHLRNnXh89syCW3qa7AF2ZqhxpjaGZLht8Q8+XSsMkg==
X-Received: by 2002:a17:90a:1743:: with SMTP id
 3mr33555393pjm.106.1589383275911; 
 Wed, 13 May 2020 08:21:15 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id i3sm6842005pfe.44.2020.05.13.08.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 08:21:13 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 5D22941D00; Wed, 13 May 2020 15:21:12 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: viro@zeniv.linux.org.uk, gregkh@linuxfoundation.org, rafael@kernel.org,
 ebiederm@xmission.com, jeyu@kernel.org, jmorris@namei.org,
 keescook@chromium.org, paul@paul-moore.com, stephen.smalley.work@gmail.com,
 eparis@parisplace.org, nayna@linux.ibm.com, zohar@linux.ibm.com
Subject: [PATCH 2/3] security: add symbol namespace for reading file data
Date: Wed, 13 May 2020 15:21:07 +0000
Message-Id: <20200513152108.25669-3-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20200513152108.25669-1-mcgrof@kernel.org>
References: <20200513152108.25669-1-mcgrof@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082119_619871_E46E0EE0 
X-CRM114-Status: GOOD (  11.67  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: scott.branden@broadcom.com, selinux@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-security-module@vger.kernel.org, geert@linux-m68k.org,
 dan.carpenter@oracle.com, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, tglx@linutronix.de,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com,
 Luis Chamberlain <mcgrof@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Certain symbols are not meant to be used by everybody, the security
helpers for reading files directly is one such case. Use a symbol
namespace for them.

This will prevent abuse of use of these symbols in places they were
not inteded to be used, and provides an easy way to audit where these
types of operations happen as a whole.

Signed-off-by: Luis Chamberlain <mcgrof@kernel.org>
---
 drivers/base/firmware_loader/fallback.c | 1 +
 fs/exec.c                               | 2 ++
 kernel/kexec.c                          | 2 ++
 kernel/module.c                         | 2 ++
 security/security.c                     | 6 +++---
 5 files changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/base/firmware_loader/fallback.c b/drivers/base/firmware_loader/fallback.c
index d9ac7296205e..b088886dafda 100644
--- a/drivers/base/firmware_loader/fallback.c
+++ b/drivers/base/firmware_loader/fallback.c
@@ -19,6 +19,7 @@
  */
 
 MODULE_IMPORT_NS(FIRMWARE_LOADER_PRIVATE);
+MODULE_IMPORT_NS(SECURITY_READ);
 
 extern struct firmware_fallback_config fw_fallback_config;
 
diff --git a/fs/exec.c b/fs/exec.c
index 9791b9eef9ce..30bd800ab1d6 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -72,6 +72,8 @@
 
 #include <trace/events/sched.h>
 
+MODULE_IMPORT_NS(SECURITY_READ);
+
 int suid_dumpable = 0;
 
 static LIST_HEAD(formats);
diff --git a/kernel/kexec.c b/kernel/kexec.c
index f977786fe498..8d572b41a157 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -19,6 +19,8 @@
 
 #include "kexec_internal.h"
 
+MODULE_IMPORT_NS(SECURITY_READ);
+
 static int copy_user_segment_list(struct kimage *image,
 				  unsigned long nr_segments,
 				  struct kexec_segment __user *segments)
diff --git a/kernel/module.c b/kernel/module.c
index 80faaf2116dd..8973a463712e 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -59,6 +59,8 @@
 #include <uapi/linux/module.h>
 #include "module-internal.h"
 
+MODULE_IMPORT_NS(SECURITY_READ);
+
 #define CREATE_TRACE_POINTS
 #include <trace/events/module.h>
 
diff --git a/security/security.c b/security/security.c
index 8ae66e4c370f..bdbd1fc5105a 100644
--- a/security/security.c
+++ b/security/security.c
@@ -1654,7 +1654,7 @@ int security_kernel_read_file(struct file *file, enum kernel_read_file_id id)
 		return ret;
 	return ima_read_file(file, id);
 }
-EXPORT_SYMBOL_GPL(security_kernel_read_file);
+EXPORT_SYMBOL_NS_GPL(security_kernel_read_file, SECURITY_READ);
 
 int security_kernel_post_read_file(struct file *file, char *buf, loff_t size,
 				   enum kernel_read_file_id id)
@@ -1666,7 +1666,7 @@ int security_kernel_post_read_file(struct file *file, char *buf, loff_t size,
 		return ret;
 	return ima_post_read_file(file, buf, size, id);
 }
-EXPORT_SYMBOL_GPL(security_kernel_post_read_file);
+EXPORT_SYMBOL_NS_GPL(security_kernel_post_read_file, SECURITY_READ);
 
 int security_kernel_load_data(enum kernel_load_data_id id)
 {
@@ -1677,7 +1677,7 @@ int security_kernel_load_data(enum kernel_load_data_id id)
 		return ret;
 	return ima_load_data(id);
 }
-EXPORT_SYMBOL_GPL(security_kernel_load_data);
+EXPORT_SYMBOL_NS_GPL(security_kernel_load_data, SECURITY_READ);
 
 int security_task_fix_setuid(struct cred *new, const struct cred *old,
 			     int flags)
-- 
2.26.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
