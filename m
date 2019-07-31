Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD4597D08F
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 00:16:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6e+tOljkLDRYtwouCjHcqJWcQOPJGbYhr/DJ5DtMKCw=; b=mSSe7VPns39QxP
	RqwyVAzX/nrzrJw/QlwcE8358d3jUvnpAQ/1qip14yRa6cR1IXSGtr7M5iFEiMw2iuHAxlnE8Bzll
	DotkaIGlho1WKRoI0BDtrxSVCiiVM8N8FsKSeOc9rZMlN3c++iFyjmdclJJ0DxCnfEIQPAYWgEB7l
	IVLsk8C4IaCekWyEyU9EA4jCwxF8DxgoTwyQDkOrmETX3sHVavyCEzRi608G8kBGPcEfPUZn6bsO/
	F+u4+NqD5p5ssoJPpxrOddd3pwZcskINRdiiwetkUg7TMLelZxOxLbsUTMo8UmqSm38JIMdJUCu4y
	8DhmwQQmBqjlWb4wFARg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hswts-0002VJ-BE; Wed, 31 Jul 2019 22:16:48 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hswtp-0002T7-Rq
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 22:16:47 +0000
Received: by mail-pl1-x649.google.com with SMTP id d6so38280451pls.17
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 15:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=I/5rlFVBONd1Ka7/QUlhE63dhV+4TxEgC7HKPRr7Vsc=;
 b=gMSAts35o/wnPODCro9DydMZX5y7p1KI0EhPMUuNYbyd5Q6Xxxy0tL/90yw+6/qQMj
 l9giTy0CijDgmA/xNQp8tpz9dJXEq7ZHBw3gHX4fMKITsYLeBVXKVVIfdulVbq3Peg3w
 1TyRbM+Rhhp85lz2YXYM+pwcYW01E767r909bQZxS1gcHPQc7p/oodSsz0ThkQlOlKHm
 ZbG6AATiMeGGcbzOk7aKYt2t/PNN56kMp7qxsWj5tSxTcaZIr/FUg24BjVgqRi3tVaLa
 ecwG54oEFOZzMaQ088eNT1XtbXcxzLAhwq7fC+roMT/tuZTDal1sDiD3x3VDkDdvwB4A
 d6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=I/5rlFVBONd1Ka7/QUlhE63dhV+4TxEgC7HKPRr7Vsc=;
 b=dfgD8t/pu306fE6oyl7jtuYy2M0lpzOlfMIvieyUnBjcLvMjvQx0jazQoho+ietUuh
 +yjMdYAP3/st+4OHF1RidshzKu9YMDa+0AR873svjOA5bymRFtg5iVRhQuf/QyhanzqZ
 gcgb9FVEOUF7Zy0SkeG83Z8ST4Wtka4Q7BhboBT763Vj6wrwFQIbJBN38R6CyjCt7haY
 UEJUYbKRhdKzWdsCAqJNESn+6G1vkmEgq9pNJFTsDnKgYoQ8brqpaW/2DlQctN3liB08
 ixU5HDgU4vOgGeFOHQDlgWaWSxA/r9u5VjOYwOHADaOYb8DKFwzxaa7YA8VUDDmoeXms
 p0iA==
X-Gm-Message-State: APjAAAUkXd6tM+lktOhuBnVQwC0e6W0eZliPqUvd3NOXREIw/TI8/KI/
 mIXtsRmTgRetUj5vfRdVhD9o3HbpNJTUpMo5E82vog==
X-Google-Smtp-Source: APXvYqyTX+qLDnmSpQam3pjkGQYBiZyG7S1znrHAEzFD0MX+bZTxK74CZsUoHaPZuUmDe6v6/5kjbS4vOej9Zu44WrYy9g==
X-Received: by 2002:a63:125c:: with SMTP id 28mr62619278pgs.255.1564611403845; 
 Wed, 31 Jul 2019 15:16:43 -0700 (PDT)
Date: Wed, 31 Jul 2019 15:15:55 -0700
In-Reply-To: <20190731221617.234725-1-matthewgarrett@google.com>
Message-Id: <20190731221617.234725-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190731221617.234725-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V37 07/29] Copy secure_boot flag in boot params across kexec
 reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_151645_897694_B12D5B73 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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
Cc: Kees Cook <keescook@chromium.org>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Matthew Garrett <mjg59@google.com>, David Howells <dhowells@redhat.com>,
 linux-security-module@vger.kernel.org, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Dave Young <dyoung@redhat.com>

Kexec reboot in case secure boot being enabled does not keep the secure
boot mode in new kernel, so later one can load unsigned kernel via legacy
kexec_load.  In this state, the system is missing the protections provided
by secure boot.

Adding a patch to fix this by retain the secure_boot flag in original
kernel.

secure_boot flag in boot_params is set in EFI stub, but kexec bypasses the
stub.  Fixing this issue by copying secure_boot flag across kexec reboot.

Signed-off-by: Dave Young <dyoung@redhat.com>
Signed-off-by: David Howells <dhowells@redhat.com>
Signed-off-by: Matthew Garrett <mjg59@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
cc: kexec@lists.infradead.org
---
 arch/x86/kernel/kexec-bzimage64.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
index 5ebcd02cbca7..d2f4e706a428 100644
--- a/arch/x86/kernel/kexec-bzimage64.c
+++ b/arch/x86/kernel/kexec-bzimage64.c
@@ -180,6 +180,7 @@ setup_efi_state(struct boot_params *params, unsigned long params_load_addr,
 	if (efi_enabled(EFI_OLD_MEMMAP))
 		return 0;
 
+	params->secure_boot = boot_params.secure_boot;
 	ei->efi_loader_signature = current_ei->efi_loader_signature;
 	ei->efi_systab = current_ei->efi_systab;
 	ei->efi_systab_hi = current_ei->efi_systab_hi;
-- 
2.22.0.770.g0f2c4a37fd-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
