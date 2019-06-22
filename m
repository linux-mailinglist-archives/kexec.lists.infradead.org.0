Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A544F222
	for <lists+kexec@lfdr.de>; Sat, 22 Jun 2019 02:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3gOCDE7br0BIPuN7iJSez8bTPJti7Th3JzTdwZkqWg=; b=kJA/9HwIefasbC
	3via+r/Xvbwm7d7Ulmh55rKveHQ5Hler/uhmMCwyz3/2cxyerjo+xHaDK5y0W0CLQffdHvtkmDRbi
	Oc+Hg+IbKmqt37Qk0Jd2RK2QnaeYcAaCyj62Uq6z2Z01GazBpLEMhdqidVoKxEin6Y6R9OkB1F8Vq
	5sPQW7NxhisLcCA1TOK1Va7cNb1szcvklqwT0RCwkhGFFImEUsbxTZXW9tYYdKo1onO1twXbODvrj
	HiHBRYveg7ktleGKOebDQd0lw5BzrZkBZ6OOVz76vfsMSLd6z7ptyFLIfV6bBRFXrfSJjCqtqf1My
	PrmaeGWkQsK8cQCinadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTWB-0002CO-55; Sat, 22 Jun 2019 00:04:31 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTW6-00027P-DF
 for kexec@lists.infradead.org; Sat, 22 Jun 2019 00:04:27 +0000
Received: by mail-pg1-x54a.google.com with SMTP id k19so4645299pgl.0
 for <kexec@lists.infradead.org>; Fri, 21 Jun 2019 17:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=o4JS6ZsbyHnt4Iukj8bZlTq9cv6XEso1+I/lLyLsbpA=;
 b=a+jT2ExBtmOGrE2RBwibGRFthL5zBOYgrJWml8uNIPt9rHxq+DfglrA0/Y5pBqU9QQ
 HpS+WH2bZYzHAFWpqgCYqmXUCwak+27QIHhABd4BbGjacaPht5GkZL4AUiYAZqiFEw4g
 OWfCM5eDm4KrIttm0QlSi2FmyQ5mMxmZMrAg0PPYAY9jtCypjRtwPzqrvztnH6gGIENN
 6gg0DvWo19xJnE3hv2pBXaws7upY4aoCIGqykeQepmFEC2MeVBjac+ouverM2jCUIr0N
 76vtr2+s7zaSAuTfMYgT3Eb5U8sq72+KctC6jCs732M5YkTFIz0QsAVT6vMlXfsS6YBn
 4DBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=o4JS6ZsbyHnt4Iukj8bZlTq9cv6XEso1+I/lLyLsbpA=;
 b=gyhNr9gJDBsqoFmi2pB1bLeTYlI5Jd7CCnJ+T8G0PaDQkRDw3g5YZZIiPXUxRagJqx
 7n8biPME7nthxKcW4RDS+mUoWHjr7LsoHjG+X/76DCoJykL5mRf3ZMzJr/QLu994nK8t
 K9fQzYVATQ1eMSjqNQJ0P5MBvyIK17wYfY1jcwTJvmskoqdN+WVZqHv2KevSMbrIWKzi
 3mPP5gdYEOdXFNi/QWjcfpi/5iEXvrOgUO5ZoLPzlsurjoxuzpcpprAJRuMjqhU3BUY2
 +v5u6aZTinAueCrNF9uP9r1mhmx3h7TuU+35py3PUlTJzN59Dhq731BM9KS2WnbyAsn3
 wh6g==
X-Gm-Message-State: APjAAAU9InMPTpWMacR9N7CaFCcJ7k47C8r4P9bjA8w3uYJqIpirXcy1
 /WgJlh9WdgQrVKwOg8ELyXTIYykMxQlaD7+2Jo0MUw==
X-Google-Smtp-Source: APXvYqw5rFft+vShj1dHsGGITKkOPUFNJ8H0xme43V9+MAij1nj1qBbMAY4uDsOV1ThNNZ0FUlZ3kOxEzhFD4poriXVZqQ==
X-Received: by 2002:a63:8c0f:: with SMTP id m15mr1862896pgd.441.1561161864327; 
 Fri, 21 Jun 2019 17:04:24 -0700 (PDT)
Date: Fri, 21 Jun 2019 17:03:38 -0700
In-Reply-To: <20190622000358.19895-1-matthewgarrett@google.com>
Message-Id: <20190622000358.19895-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190622000358.19895-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH V34 09/29] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_170426_448651_13C24233 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Matthew Garrett <mjg59@google.com>, David Howells <dhowells@redhat.com>,
 linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Jiri Bohac <jbohac@suse.cz>

When KEXEC_SIG is not enabled, kernel should not load images through
kexec_file systemcall if the kernel is locked down.

[Modified by David Howells to fit with modifications to the previous patch
 and to return -EPERM if the kernel is locked down for consistency with
 other lockdowns. Modified by Matthew Garrett to remove the IMA
 integration, which will be replaced by integrating with the IMA
 architecture policy patches.]

Signed-off-by: Jiri Bohac <jbohac@suse.cz>
Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Matthew Garrett <mjg59@google.com>
Reviewed-by: Jiri Bohac <jbohac@suse.cz>
cc: kexec@lists.infradead.org
---
 kernel/kexec_file.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index eec7e5bb2a08..27adb4312b03 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -237,7 +237,10 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
 			goto out;
 		}
 
-		ret = 0;
+		ret = security_locked_down(LOCKDOWN_KEXEC);
+		if (ret)
+			goto out;
+
 		break;
 
 		/* All other errors are fatal, including nomem, unparseable
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
