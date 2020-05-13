Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0441D1913
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 17:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cNhCzogQkm/6YaiMX3EEAqs+4YOGg6IrW+78K2HgdS0=; b=JIsAgJ+XI9gvX2
	cxOOuM6c+TQwuQT0gROdaNX3l6Dzz5YWtvvNiqjDZAvozJ5Ev6zAP1lR9SExchyGrshihMWMIHD87
	dWWEBl5qBFNYztQzRK3W3zmg3uYc/kkvXtwJ9YhRtAPZ5NGr7bWT9UyYJt1mxREd9ugoA+BoC+SBT
	CuIJeWjus3hXOcp4nQyQSZeKEvVNQNjLdZpHuyJL66y7SOexgkpeil57JLXpqzdfM0PPb9zamXITT
	+aYrRBPdPDXBJuCzMxI8nnWZOwCOnsHBQSPFwfwgtVWfW3JTgHLXQl8QvVypQx4d7lw+N66MI7dg+
	sukqhstr309e5FaK5A0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtCI-00012w-Ia; Wed, 13 May 2020 15:21:26 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtC7-0000xf-Jk
 for kexec@lists.infradead.org; Wed, 13 May 2020 15:21:22 +0000
Received: by mail-pf1-f196.google.com with SMTP id x77so8144844pfc.0
 for <kexec@lists.infradead.org>; Wed, 13 May 2020 08:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vd8mN5eu82jR3IAsdSL8KCAElLuY0QvMKLQ4DV4/fDM=;
 b=gM3YgfFPYdlrVCO0D7U8YwdT1bNCc/HYd7M/ckpxyrPsrrJ1uol6ypw1iawhLrpteH
 ZIbYySZjtOWFpM7i5XvMqBtNC0Y5NWVxza+pUqojjbjBJrxTNJjQfyuMZJ/p/X935afl
 8SCeSp3hGbQ/taCGbvEHz9rcmqQV0gH3spYD42TqSPRQCYiqOPqGD8WPP6GRckbN8OmL
 QITKeywSjlfcVFmiB0Ruh/oY7rGDFtPeNlyOHuSCayGjE+2ZM37Zl9dN8M0BWx24W0c6
 JyfhK5pfp4a7nhhVJ9hcETNaA7L8hV9njO1vE47ss6LW5YyHUKJ/So/+DL4KwdmA0wy6
 Xc5g==
X-Gm-Message-State: AOAM53031Y5/1aIRObnTihN+X1yTwW+gpuwRxDOhrlxxXUULWmIfnRu+
 u3Qas/7rkP3Djw8MqcKdjok=
X-Google-Smtp-Source: ABdhPJz8JCGMh8sRdwYyCHudRzQBKdwiDqQQhE20Xn802xN18geL+qldVFqyq1i08EE9ulujdjpfQg==
X-Received: by 2002:a63:a01:: with SMTP id 1mr16798874pgk.428.1589383273914;
 Wed, 13 May 2020 08:21:13 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id a2sm45859pgh.57.2020.05.13.08.21.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 08:21:12 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 3FC514063E; Wed, 13 May 2020 15:21:12 +0000 (UTC)
From: Luis Chamberlain <mcgrof@kernel.org>
To: viro@zeniv.linux.org.uk, gregkh@linuxfoundation.org, rafael@kernel.org,
 ebiederm@xmission.com, jeyu@kernel.org, jmorris@namei.org,
 keescook@chromium.org, paul@paul-moore.com, stephen.smalley.work@gmail.com,
 eparis@parisplace.org, nayna@linux.ibm.com, zohar@linux.ibm.com
Subject: [PATCH 0/3] fs: reduce export usage of kerne_read*() calls
Date: Wed, 13 May 2020 15:21:05 +0000
Message-Id: <20200513152108.25669-1-mcgrof@kernel.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_082119_656097_FD1DA5F2 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
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

While reviewing Scott Branden's submission of the new Broadcom VK driver
driver upstream [0], part of which included 4 new pread varaints of the
existing kernel_read*(), calls I grew shivers of the possibility of drivers
using these exported symbols loosely. If we're going to grow these, it
seems best to restrict the symbols to a namespace so drivers and
subsystem maintainers don't use these carelessly.

This should also help with making it easier to audit future locations in
the kernel such read calls happen by just looking at the imports of the
namespace.

This goes compile tested with allyesconfig and allmodconfig on x86_64.
0-day should have a report on build status with other configs later of
my branch [1].

[0] https://lkml.kernel.org/r/20200508002739.19360-1-scott.branden@broadcom.com
[1] https://git.kernel.org/pub/scm/linux/kernel/git/mcgrof/linux-next.git/log/?h=20200513-kernel-read-sym

Luis Chamberlain (3):
  fs: unexport kernel_read_file()
  security: add symbol namespace for reading file data
  fs: move kernel_read*() calls to its own symbol namespace

 drivers/base/firmware_loader/fallback.c | 1 +
 drivers/base/firmware_loader/main.c     | 1 +
 fs/exec.c                               | 9 +++++----
 kernel/kexec.c                          | 2 ++
 kernel/kexec_file.c                     | 2 ++
 kernel/module.c                         | 3 +++
 security/integrity/digsig.c             | 3 +++
 security/integrity/ima/ima_fs.c         | 3 +++
 security/integrity/ima/ima_main.c       | 2 ++
 security/loadpin/loadpin.c              | 2 ++
 security/security.c                     | 8 +++++---
 security/selinux/hooks.c                | 2 ++
 12 files changed, 31 insertions(+), 7 deletions(-)

-- 
2.26.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
