Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D22B6D4EF
	for <lists+kexec@lfdr.de>; Thu, 18 Jul 2019 21:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGRzH4EJxDhxNryU4W7uicAeP6MaGPu6hnfBDcYnwCU=; b=ZuvWP0yMu+kxce
	0uB2VCpAcnbfUsMHV8mXJeD8c9vS/scry1h4ErX04xKGRel+ZeDQeVn5/futQMpO9hvQHebEQUKA9
	z42JJ5wXjIB3gNZR7IqUc6OHMM8oNK3zuMkMqQB3Cam566xPVYydAMPbNAUCQR8MuNelfTquiVi5Y
	Wj89ttLwk5K55tyzSb1Wl3VCwcOHHGXCJPpTmt9cl9vDF+Nw34lXUd6ZZgKTzxFshoRarn9nkmOzY
	5rhzNp2rT+mz3RMWkhk+MJI7zujmpc8lxgVZXA5wpD2p6/x+raC8xI/lAY0L7kFqGqKDvzwYmg5a8
	D4z4ANNWd8uM5fXmLURg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoCKc-0003gm-HK; Thu, 18 Jul 2019 19:44:46 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoCKU-0003dT-CI
 for kexec@lists.infradead.org; Thu, 18 Jul 2019 19:44:39 +0000
Received: by mail-pl1-x649.google.com with SMTP id s22so14464259plp.5
 for <kexec@lists.infradead.org>; Thu, 18 Jul 2019 12:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ze1m51/U9qyeKdYZTkURxXHO7/2Jq1vWiS2UsV2hr9c=;
 b=gJjhUT6gQ/zQNCY6elSDV6M1tQCeC0P5Tp4UAQyfBx3bH4p1ifDoKIdCUkhGhE/+gg
 1BYrEJUjZpq1lci7thr1J+jRZPv78zvcXe0wmCNbM+HBWEYXopMbBeSzpPtfVoUzVLk3
 pujXzLMr6fRScyxTI3Haqr4j2hTxpLfQ6HsQowNOgyplYLOfo3yUrKFDJokCeo5/2PKy
 FwUf46Shg+19/eA24HYXmwakU6FgvCH1rsx/twSxIE8e9p1SMqOpYC5sjsn8o8C0psq/
 OjMiRQ74r0yKmCrXaugmRON5LDzCp9Ky2OgcvlOWQFtleomMDWsvtTmBy0Cz29VGfC9M
 iF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ze1m51/U9qyeKdYZTkURxXHO7/2Jq1vWiS2UsV2hr9c=;
 b=JPCiypxBFrEhWYysJnc2G4LVDwlB6IjiNoGg6YXzZPGEu4z0Yu2A8CNkdoHawbOWLG
 6PHpVhnXYDZpefsTJ2YR+Cb9FfK9d3ETBUQbMG7cob3jb9fptyeXWdo1QUXaHQ8IPzha
 AWzTR8GxCPmCkO8yDjjcP2AkIwJLkgS0FW9NOR/AhjVZCo3xgXI9xaFOHkgQjeGsTXyv
 5YWMrCbS56vTVQgog5wWHbgbouwklGLHhf4+AhXfukn1PUln+XIJ4exP3dzFPLDKpXZw
 juivPW5xwZmzIrCqS4BOk1mpebPQvzPCZMqKX1D3v04q9dP0lKI50ylA07jMN8zzxR4e
 3YEw==
X-Gm-Message-State: APjAAAUuavHsbbWOyx6MTdNm0MkDRoLXXRH51Ll4xDUvTnGXnGso1Qo4
 91bUl2T/j9wTWT1/IF3gVi4WaajYdzsB13oILbw6zA==
X-Google-Smtp-Source: APXvYqzrK8iF6hcgKRXBxAlD2H7TfZZ22Mkvge4q89mEFnRwAMWXxSRoqJN7TQmQtZur9PR4mpbHHV2qq0UGBlX+3fC93g==
X-Received: by 2002:a63:1950:: with SMTP id 16mr49329324pgz.312.1563479076972; 
 Thu, 18 Jul 2019 12:44:36 -0700 (PDT)
Date: Thu, 18 Jul 2019 12:43:53 -0700
In-Reply-To: <20190718194415.108476-1-matthewgarrett@google.com>
Message-Id: <20190718194415.108476-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190718194415.108476-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH V36 07/29] Copy secure_boot flag in boot params across kexec
 reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_124438_419189_2B0F36B4 
X-CRM114-Status: GOOD (  10.04  )
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
2.22.0.510.g264f2c817a-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
