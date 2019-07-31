Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF257D091
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 00:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHeXcRSJLeJPqFLIvxyt+m0Q5SQ+DO0LDmVgIVGz8t8=; b=J3avPo89BELKk5
	pPcR6OQtnYMHTs8LQVUOfmf/PthdfzpwnAHrR594nzjHYH2Q22gl/oBR+l2wleRl55DfjwA8oPTnQ
	hdiGXQJveCz6vEdZ50opnSzmMEXqnDO2+sIbiSRsXgVXPIogAnq9i43B8VRr+DD7O4iTjtaAQSuMt
	b5IPYVdz2utNP/NCOTPKMjdpYHA/NVoZqlOAjpiJvm7Q6t/vK/8t4LnwLTRJ5PSzf0tFty9JhsoxX
	+uqDtx4nRA3GUQWLMlmpxan8R7s4O/5NL4raz08eKhHorfx45SFoadicXYtMH6DXRM6PGGIdBPBqk
	56mys8PV4+3AelKX1xZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswtx-0002bH-Pz; Wed, 31 Jul 2019 22:16:53 +0000
Received: from mail-ua1-x949.google.com ([2607:f8b0:4864:20::949])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswtu-0002XR-NH
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 22:16:52 +0000
Received: by mail-ua1-x949.google.com with SMTP id q25so7232814uar.17
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 15:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=gySahCCzgGb/Q58L8c20Lrjjix8qIZkrCOd+PLUQfB8=;
 b=cmIx1daqZEKRBkMW2JYQfOqzUiRs2oBlgGsfJ136BcTbgFMR1CJl2NqSDVgDe896Bx
 mpbcsPT67i243WQ4vLJxFNcPA4oGZ3Cz6MDwB0lBJSVHyXdZ+LTkkVhocNH63pmKpNYi
 jzKaCCH1ri5of7nbJCrFDV2szkQzQ4/IyfgIxl0y5Pz8cdpCVYSWtX3QdnT/0R1pxHJ8
 86aVpuAguhOmGJFr5DCnDbgOLeH53KoQruXbdg8fiqbjwqEj4qIljZP/1qVz6Wc3j62q
 w8/FDQdrnu0IDQzCJ94OCBvj1zAWNGFs45jfQtd1ADYZiLLYm6kZQGlGm22DObG2SgD+
 u1qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=gySahCCzgGb/Q58L8c20Lrjjix8qIZkrCOd+PLUQfB8=;
 b=MHeu8ktdHjjMndUVAAZo8LSoAiszks8EojLEo0u+C5gcFN7o7ol17IB6ooGzuxOl25
 nzencaiXWhiSj34BTuKLYH3TwDHFh6tqpLKZEq6jI/BoD5TtS7XWIAk6ld+C9OYdzX9i
 WYKgpIIFJjumIXDqrRTTE+0vBt8aVQnPiKfY050BxfHRJf9Z4ge2OJYehP7PcSp1Ik/X
 TBfkAG52sQqg8ZftpLDzRNmX5/BmEvEvxCwokaUAZJJgHNm6BSwIay37G50gvp8jGGr4
 OjPPv5P0dztQFd8yzXdrTpi+lwcjNWQ/AtsAX906uSGsHTh0DC66azpDN3B+Uab0GhIb
 +fAQ==
X-Gm-Message-State: APjAAAWvxaQ5aFXtNkRZztG+HFaWTtFcxcUNB85PZDJ4+0COIBP8H0zw
 UVrT5M6Ilv0ZLWzt7VyXAtoqCTlhXFzABBLffmxRTg==
X-Google-Smtp-Source: APXvYqwxxFBGuXs7H0AALmQP7lKFkyE/Ao0WUi2DN+KhehbfvyAwH2M8AeJB6/9kmo67vl8W4RHQYCsqQBB2qu0nAvlB4Q==
X-Received: by 2002:ab0:60b9:: with SMTP id f25mr62470698uam.111.1564611409165; 
 Wed, 31 Jul 2019 15:16:49 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:15:57 -0700
In-Reply-To: <20190731221617.234725-1-matthewgarrett@google.com>
Message-Id: <20190731221617.234725-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190731221617.234725-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V37 09/29] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_151650_764984_F50FD394 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:949 listed in]
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
