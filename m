Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB8E6D4F1
	for <lists+kexec@lfdr.de>; Thu, 18 Jul 2019 21:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GptKIL1w+tcV/RegAIKLYGO+0WlEYEZ01zGMEhSPa7I=; b=B5AchLTjM7aWWN
	iLGxek0OKN76uKtAt3nbHDNhKcc1Pc1YwIGyM4tHYdaO/ZB6VEzbrEekzA+7GTaXGYNV6bxcc6xl+
	bPmXW3XimrKEKT1VGbGwVsB4iZ+5sZIKtp6fx5B3+NcemL4YZBmlgQedJ8/66KpDfofW1ozGaaETC
	GA9+JjvEC94LPrewTJ335XboTlaMrOJkLdWg0/jtRF2UrXDZ0tGgz0WAMXXVeM1FzIIv9CuhRHUkB
	JRbwQI/iT8oljZgmSB58jJ3tYCit3BWXMgE2kOMj1msu+SM25ivdDaSnOQQ4tFAGsxBh68rLW+zCs
	sqa0DJz2I5+1TvfdFGVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoCKj-0003l3-Sl; Thu, 18 Jul 2019 19:44:53 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoCKa-0003fO-JE
 for kexec@lists.infradead.org; Thu, 18 Jul 2019 19:44:46 +0000
Received: by mail-qk1-x74a.google.com with SMTP id b139so24112600qkc.21
 for <kexec@lists.infradead.org>; Thu, 18 Jul 2019 12:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=9fXbmdfL5KhuvIZCfCGIG29n6zuww7qo8MROnWxS5+E=;
 b=vaFKk2Q89nA8m9zpY9o5P/RyryqHBdnZpR8gvBpiaUPOc73uQhRke4kFn/wkdzgCxl
 U2Duhl+4hspB7HHsAUKNt8g59w64Y0FqOLBAqNw3Pl3ej3rwSW/y589QZ6A6ApenF8w2
 daVo52oj5ggvqgEbXliWkyAt5Cs7XMh5cwhuDlUHhifbQULkx6UsimX5JAb/C2HZA3tE
 9v4X/c4Q4p7oikJ+1P7BAsp1XkYXcYcR5trJpUpZGQes+T6Dbg0lDgBMS7KxMgKrVRS8
 wxeppP6Cw5FcMVwd1u0yQsxFPsfRzN6VoauEsS4u/2f0lfU6SeMZf9gUfADnLY8TtFWv
 o/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=9fXbmdfL5KhuvIZCfCGIG29n6zuww7qo8MROnWxS5+E=;
 b=Omenhc28kzVAqHjQQH3210rqhYSvC/zvOYoQ3WgoFUpeq+wSQZgy1wzur+fAroIZgO
 YRtxbdhj4MFCde8PRDBZx2iSKfIRASLfjZE9zavdUDzi3RxT8pRvCu7fZe3v8u8wzYTZ
 mGGNg1vL6QGcC0MJl3rDO7YcUff/NQGiHob2ubyo3xFSbHbM61BdUjsSSFYfKfQi5ZjD
 q9h55pEpyuLRsF4MNRELAtAOupE85G/qvhLmN+cjg0YQX+YijApwqJ1R2dcTtTMtW/9t
 eOhtDeQfREyvLWICwZESJPSbRJMfnVE8JV5qDl/YrIFSUVldfSIRTqxAK7M/QXXLl2pW
 9UUQ==
X-Gm-Message-State: APjAAAV64QHpG3jN8ZPEpcOvAU8sDWt9f+2FQzd0HgzjLexmgOCwWHk+
 +1TcFzCv5NXqbmgx5swMFF1P1Mj2r0pu0uL6oHNYHw==
X-Google-Smtp-Source: APXvYqw1Vt8jWwUEn/Hr2prhO6C8MXEOo0YzibKrMSn4iA+j+KGx0PZu3RjycZEmtM6rOA+IxN/17K2wlDLSPEXZw1FUWw==
X-Received: by 2002:a0c:acfb:: with SMTP id n56mr34542609qvc.87.1563479082093; 
 Thu, 18 Jul 2019 12:44:42 -0700 (PDT)
Date: Thu, 18 Jul 2019 12:43:55 -0700
In-Reply-To: <20190718194415.108476-1-matthewgarrett@google.com>
Message-Id: <20190718194415.108476-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190718194415.108476-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH V36 09/29] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_124444_726488_73EA0A1E 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
2.22.0.510.g264f2c817a-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
