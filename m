Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3AC856CC
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 02:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHeXcRSJLeJPqFLIvxyt+m0Q5SQ+DO0LDmVgIVGz8t8=; b=N0HFFpgJ0a9nnW
	h4rVjeld7ZVzcH1vMd/QXm5jFpUU3fI2I+8cPe66Uj215ZKmCSbfo100DuY29/1c72NIeSGYlIjSn
	8RUasVIwROTWwHORWQfHk2kK27K3xnXxlpzd5rj1jRjvYb1zvLKA/M0zHSIofs2weH5/FBhxO24/u
	xF96lG8/jgwAFa1H3fQ+6HbsO5aHQz56a6WdwgjpIuCOFXjUCx4wjUHql7+jT7/UxLNGSfExjR3Pt
	xpBS0/yvuz3I8TDI3VXijtEtLvVatDHym2vANh+kpK12bxH/zuF5PAjX90dQ2vQdvWqT7zYGNTpSM
	41CLxvzTKl52wsAT0D/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvVyF-0000Wx-Dg; Thu, 08 Aug 2019 00:07:55 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvVy8-0000Sw-Oe
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 00:07:50 +0000
Received: by mail-pf1-x44a.google.com with SMTP id 145so57806976pfw.16
 for <kexec@lists.infradead.org>; Wed, 07 Aug 2019 17:07:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=gySahCCzgGb/Q58L8c20Lrjjix8qIZkrCOd+PLUQfB8=;
 b=KUrK/PKBvaP9/XDEYsuifyH8DFiozIFrCZLZ5Ezfns7BHlTH1+1PJfamzSxJu1NHyI
 6ctpu4+uT8nJAWOBlOw5Ij7yVVB4PbtgL46p1TTpzX+B+CMrqDTNnSd/h/F0RIWkWGsT
 5q7WQ9rlyhjvhuKYCctrkMxQv0iNTuIiOglGqYM3qvLt1eLw1DNoOfnxzsT0wE2V6P/k
 PVdLaBRuVUmR6hOfxG3BBT79ZSXTJI0zzhUfln6YL1sopyhMdgEIdbyDl96i9J9Tnpyf
 N6gPcQJzR7WNQRCkjuNE7N5fVtucOuzZnjpMi6Qgl5IEk5vzH4IRaVOse20R5VKES5jH
 76XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=gySahCCzgGb/Q58L8c20Lrjjix8qIZkrCOd+PLUQfB8=;
 b=GtkgPMdxQzA7oUVBlu+AT/CEgEwfWIUzNX6nLhI41sh7nuAxw+Q73ALru9jyiIfk14
 pg3ZUljWLz8bbZtNXTC0urQAR+I/cftoSWT0pGhrw2U7joHtLR/GHqJOUMr/fihHehzh
 5AyupX2wFRBMc5vBDS2pUnj6Tq57wVzFlma7+RKsCQQ71XtUAirxhSUQQSye8PAPSGJu
 8p/8tOtVTekQpSOzZFKCXiv30SAjq+6JP4kO/Pgi4vgBqANEBnGfWSw7DeSWAJrlE2yF
 GtBiJRwXXH44xUTtHFr9iudm3QddGqEaRuowE2m82TwmNieTPwcks1LMrsdWlCUdsiIk
 U8sQ==
X-Gm-Message-State: APjAAAWZgeAVNo8MvnGEKItH24+ZNmvP1LlTTR3LRkYqVKn/9ZxpZi9o
 mSrOA9znJH9bkZdTnSO37RTjAlv6Mw9a7TfKREmMig==
X-Google-Smtp-Source: APXvYqwkKPuHIr1WPHDEGoL8TaPLK20sGfDakPHoHeTUToI5rF/8klBhegI+5Ecn/fypk8Jj6wDHuVxgitecN1QavCSt6g==
X-Received: by 2002:a65:64cf:: with SMTP id t15mr9782881pgv.88.1565222867491; 
 Wed, 07 Aug 2019 17:07:47 -0700 (PDT)
Date: Wed,  7 Aug 2019 17:07:01 -0700
In-Reply-To: <20190808000721.124691-1-matthewgarrett@google.com>
Message-Id: <20190808000721.124691-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190808000721.124691-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V38 09/29] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_170748_802816_A0529705 
X-CRM114-Status: GOOD (  11.68  )
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
Cc: Jiri Bohac <jbohac@suse.cz>, Kees Cook <keescook@chromium.org>,
 linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org
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
Reviewed-by: Kees Cook <keescook@chromium.org>
cc: kexec@lists.infradead.org
---
 kernel/kexec_file.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index 875482c34154..dd06f1070d66 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -228,7 +228,10 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
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
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
