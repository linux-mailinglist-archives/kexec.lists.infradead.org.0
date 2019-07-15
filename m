Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA1C69BE6
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 22:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GptKIL1w+tcV/RegAIKLYGO+0WlEYEZ01zGMEhSPa7I=; b=G/qXMdQf3QRZdL
	HRp7pSSUQ2ixgpMktm4oen50FX4jiaFFAZxashdvQPiWmPcnamY4DV6jKYD2hHDfD2KCmfqImP2R/
	rZpxaEHvmC4EBnrDdPaCRjeld6eU1bPL4Y08H0dtn81Ig4xvJsyCFRpM/N2Sbg072GxR2Vrz+PbBF
	dKMN+Dtiks0Ds0MaNAN+rWNMJG4ZH1n8h9LA1mKdnUljjYvlpmj1NE6mdQhOOdVdgqrIlv040mMXJ
	Cfcsp2AH8LWM2pspWZE8/DvqnwbFYvwIsY/Hsp28TyUmcL9NSG5FWENKwzSN7vQiLLmSWbyp+hEPj
	jXIhtfYt8+dwzgRdrTXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn798-0002Oh-5e; Mon, 15 Jul 2019 20:00:26 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn793-0002JW-4M
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 20:00:22 +0000
Received: by mail-pf1-x44a.google.com with SMTP id 145so10847131pfw.16
 for <kexec@lists.infradead.org>; Mon, 15 Jul 2019 13:00:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9fXbmdfL5KhuvIZCfCGIG29n6zuww7qo8MROnWxS5+E=;
 b=JPp3v2OPQVj5mQJ/3b5Yokag8YTSA13e3ADgk52AJxxllBnhkjU93txgGax0+MtozO
 26npTj2DMHNGP+TUBNZNV0ZhOD85M1Dq+QQ9kYUVPt28DoNQvCjG+QQHwGm6kxbIX3zE
 bc/r3C46ba2V3MCrciOB1HN57gPuvCJn5Cgltuz2ShtXDuI6cZqwi8Aeo1nOyb6sQ8YR
 QEswHcPf2gsuizE5pTK7+h04w+vZ5zRxYx/AtW8kIIjFRAXWGUco5+7wsec28LI6f9s8
 klefOADpWTmW2jS+yNC1A6YoHbtJ5rZxucOV9+SbKsLuPFcZM4VP0TNv2nw+RJr7PKg/
 JWPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9fXbmdfL5KhuvIZCfCGIG29n6zuww7qo8MROnWxS5+E=;
 b=B+WU/JM58kDbrBP0MR+UeTIl7fcj/ctpUjVC9SH8t3pV3tlCC5GlEvcUG9HldzlRVK
 0TC5Cg2k8mNY0CUr90u0vOLyXLsMERVcsh3LP6Nh9br/eOSYlRrJcOOvXwMK19O6xb7K
 DDR9vKOCOCEZwtuWJweHetW4mhYZGa3Jvqh/woNeOtgKR/LYrQk4Ua6O8VkImK4Az/PC
 r99C2ALJtAN/DYqKMj73lOa5GKr9Fj2lbE3jhrCz7TXweo5K1nkDrT2WT0dO0g+4FbhN
 m2bsq2Y4XgNRDtbxFZordUSZJt7T63AKLzO5LnyrLw7ZCIKAg92RKBjMFXBmVrS6TfiP
 499w==
X-Gm-Message-State: APjAAAUEqI7URymIg0i8kQljLGGR/luMO58GxzLwulr8jMdgTPhqBp9q
 X2Tw+BDYeh6Yu1Ow//Lj0jrMbgwDvhlDXCOckP476w==
X-Google-Smtp-Source: APXvYqzda0/+2/0BqgthTmHOTrEpqoXHvj8K+1i4P8qSZQtlqD+IWxOpDGqqORGgEcnwNsr18QG8jmmfFfkwNCSJxnuVGQ==
X-Received: by 2002:a63:2004:: with SMTP id g4mr27570338pgg.97.1563220817485; 
 Mon, 15 Jul 2019 13:00:17 -0700 (PDT)
Date: Mon, 15 Jul 2019 12:59:26 -0700
In-Reply-To: <20190715195946.223443-1-matthewgarrett@google.com>
Message-Id: <20190715195946.223443-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190715195946.223443-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH V35 09/29] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_130021_443572_653724F2 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
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
2.22.0.510.g264f2c817a-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
