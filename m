Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C65995248
	for <lists+kexec@lfdr.de>; Tue, 20 Aug 2019 02:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9JpA6CKIkYoptwjagSggh8N82d9JahoWVNHAy4m4FQ=; b=P3v+gH36Jdeqby
	vjnV543VvkMe02clJekjUpkVCSGfADalyfhBbcXZiz7GhfW95UTRYHhXwTHDQXpsEt0Q4M84hsHbh
	mQTgkQb+SQFHD4+JPjQT7gOwjgzy0AqiqwWKhsEUIxcx/0Qt45TX9lrYK63mrGHIKWSurS7pYCjND
	f2laAcT4S0LZtLfpkCD/dB8w9ir7zkLjAmo9EELombKLhd6MYi/Fivp+Qhzynf1EK2rT6mC8I8m4p
	Mpqhe54XE09e37RAczf3HBJZTyrM0cHtvz+QVD0WRe9lRqOe9g9OSAdwMAMfiZKzqn74wwl/Zyiv6
	Eknt7YVIuiCn5ChMZeiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrrH-0006Ot-Dd; Tue, 20 Aug 2019 00:18:43 +0000
Received: from mail-vs1-xe49.google.com ([2607:f8b0:4864:20::e49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrrA-0006IR-RH
 for kexec@lists.infradead.org; Tue, 20 Aug 2019 00:18:38 +0000
Received: by mail-vs1-xe49.google.com with SMTP id t7so1390869vsj.20
 for <kexec@lists.infradead.org>; Mon, 19 Aug 2019 17:18:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=cMgjmtuBmfVa/CsXfb8uiBDSNgmdufQRbjNib4Tgcig=;
 b=tuuv3POpIuofzhNqZUKQoKR1Pan8nwWbDZbwkAoTf4UYx4zufPYGCTgfuOTsya6RGQ
 yhtHIODniLc3KhY4ZNrfLG5DMHIpncF400yxkZvzgcc3s6Rbw5nBUC+PtXubOVUvqxtW
 vOsCKrnFcVtFQv6TtLlXPOsSU/B9p5kp66ZWz/7m9TQYtAmW9PdPPao4btOAdtTn8IKG
 YrzMo2tEos2UTNJq9hQzUZhg2pZrv1T8fxHplMi75VM98FE7pqee6WC6llvC/03CIQ2D
 dRtXGSsQe7pfvMEIW5L5zL025IAA2sgUjgiBonoQXU87ScvIdQRI+pnoRzlL7QF1H4Dt
 dBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=cMgjmtuBmfVa/CsXfb8uiBDSNgmdufQRbjNib4Tgcig=;
 b=HUgvSNNU5zBTFgxeRmkM8eMuxXg9YFm3TSvyrbcnNyUbN8jQ0bkLf1QLU+kanOum7I
 ikpx7pY47iUfCdr2KKRt8HSQmUHRgkUA/92Pg15LRadJGZSvEoObo6Yy9rR6wF3wsm/p
 jzx76Y7x5NBfww+gSM3Bhvg2xQUNKqmCQGsZw/Ohcsu36hGMLvUcBbkqBbNjONpxk0nK
 VlDl3TvCwZg21Q8Ozd+T8E8xPXXEerlkarVQaebxDUdbTvz9j8tAT07fy+FuOkiiGnSb
 +LvNpEDjl3BoWaJeBJSMc0kRuZcMNn/qoUHm99fU58m3Acbgpdd7adK0TkWMcAPiMp3c
 /znA==
X-Gm-Message-State: APjAAAU+9WooaUw9Tdq7dW63iVFvU/g8cv4QWVKOSG0pKstkUzrlSExq
 5WaXNIkOw0wMkeP2thVGkL+zim+Njblkweyjg3LsIA==
X-Google-Smtp-Source: APXvYqz2ynQdbLiUsjOrrUKHOXJ0Mc6Mp5pwCEivYXxMZqOZfnKiMw4ugozFFPwBAWnW5mdgj8UTYLY3eIdKjtzPeInLmg==
X-Received: by 2002:a67:d02:: with SMTP id 2mr3153609vsn.43.1566260313925;
 Mon, 19 Aug 2019 17:18:33 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:17:45 -0700
In-Reply-To: <20190820001805.241928-1-matthewgarrett@google.com>
Message-Id: <20190820001805.241928-10-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190820001805.241928-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH V40 09/29] kexec_file: Restrict at runtime if the kernel is
 locked down
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_171836_906270_56E0FAF3 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e49 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
cc: kexec@lists.infradead.org
---
 kernel/kexec_file.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index 972931201995..43109ef4d6bf 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -208,7 +208,7 @@ kimage_validate_signature(struct kimage *image)
 			return ret;
 		}
 
-		return 0;
+		return security_locked_down(LOCKDOWN_KEXEC);
 
 		/* All other errors are fatal, including nomem, unparseable
 		 * signatures and signature check failures - even if signatures
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
