Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C2495246
	for <lists+kexec@lfdr.de>; Tue, 20 Aug 2019 02:18:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTEQNNLBHgr0nIIZSeUSHFXdwjPWHr6/xsqkmwoLPpg=; b=ahZGO1ownmcwnl
	Xq3pj0tsqcyiUvbjaryRSU6iBIwh0qo6fGjeSW7a+ftLV+/Wmw2Sg1x87Jh/8CCJq7MzgXJCQx4xA
	UXPVGAZrtFtRcK5fZGFl2l7QZ5R1szM2lPWqljY+Ss6/CycYqYGojzqlSMR37su/20+plypuABWBF
	FQ7PODp+dSJRaG/E/9Di2NnqgFmQdZMk4DRxM7gyUfdE6Mkfa9q3j8XSSdFbMqTvJcen6yFvXyVZf
	Qfo6Ddnpy4PcJnrzoxdkX78SEm/0FHwzdDzl7mWcFOYTFXQAgnVpFEZ0owscV4gB6Uwh7FUQ196RR
	7o4P4XfhRrnWK86rLshQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzrr9-0006IG-Vm; Tue, 20 Aug 2019 00:18:35 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzrr5-0006GM-7k
 for kexec@lists.infradead.org; Tue, 20 Aug 2019 00:18:32 +0000
Received: by mail-pf1-x44a.google.com with SMTP id g185so3529031pfb.13
 for <kexec@lists.infradead.org>; Mon, 19 Aug 2019 17:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=2LlLKA7xilo57KgJ9aBUFbPNJv3YWGuiG9UEU7t1Rzg=;
 b=dNREMDP+TG2C/LXVb2y5pqTvco3iRS0dhBeVXMI8yStBmDaDACn0KU8WoFg0ZtiOXp
 +1T4zFY7wH7Hw2KCv+l3gjoQjRE/73lZVZEUW/AxAXh5v8A/u/MA69OZI3mABCI5gjeV
 HrllyORU7+ymSitKrwkt1XKnOTXejRQnccT/TflwDunzx9Gwi8xnTdCF/J87R4Dcn7wJ
 zhSsHEU1M6/OXOYC0CsCHnWyZYtewSK+4HWUGPTxGmxYYU+8IZ8m4D7NiVEtuaekKsia
 XKn86Aw95n02in30KWH/5BMISqdYFuHokAcKWfBMQBNqA6fB+Me65VVB9TyV7Q/5MjKD
 Zmqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=2LlLKA7xilo57KgJ9aBUFbPNJv3YWGuiG9UEU7t1Rzg=;
 b=LenF3ZW8PAGRoLgIOJ0UbRGlHo98DjqQfYy7RQjNCUM+FnfJGz+OwtdjlH2fIzO3dz
 aWBh89tIM+WVTStBNqicHZA4hTxUacaMhE8sk2W2GpZSA8EkUU/DussJVeYDMkP9RepG
 JN4ai0itrxP5ToZ77360+zEXRkPqTCG6jCmh1ocPr2IkF2bhajThZdrVCRFX96SEPz1I
 474g220ZxWzi3LHUVmay7S3Fl+0QIucgX54dsLiQok1zob7M16YUlStLk6v6ug6YXHMa
 LjPYx51l0VKwWZ7hnGvekPuFmjICV1j4C6D4e8y7hFdwO0yrmO3z8gYob7R+VVyZv4Fo
 w7hg==
X-Gm-Message-State: APjAAAUeoqm6U0EvYOirIAedzZadguLhVwmZkv+FY4XrGTdS13zQnkCO
 VXzcNQuguL4D1guiZQANWfoC3/VLkrWYdFmDWiRnEw==
X-Google-Smtp-Source: APXvYqys7jvt/D4+3SJ797I1FFI7U+j4sGn8mLnpJ7BQ8OG5PHg/+H0I5jr+bCp39lsh1kkHfvuUfXaGpWqewAvzA3nz+w==
X-Received: by 2002:a63:5b52:: with SMTP id l18mr22232462pgm.21.1566260308483; 
 Mon, 19 Aug 2019 17:18:28 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:17:43 -0700
In-Reply-To: <20190820001805.241928-1-matthewgarrett@google.com>
Message-Id: <20190820001805.241928-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190820001805.241928-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH V40 07/29] lockdown: Copy secure_boot flag in boot params
 across kexec reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_171831_276927_21043EC7 
X-CRM114-Status: GOOD (  10.32  )
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
Signed-off-by: James Morris <jmorris@namei.org>
---
 arch/x86/kernel/kexec-bzimage64.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
index f03237e3f192..5d64a22f99ce 100644
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
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
