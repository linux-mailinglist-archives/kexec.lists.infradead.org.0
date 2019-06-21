Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099304DE6B
	for <lists+kexec@lfdr.de>; Fri, 21 Jun 2019 03:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWABWSydKtY05bz/luqynwmx4gSisBAWkgfjftAu9FU=; b=i4jviCJ3HYbCtM
	uuKJZbphI9abV7f68VLGyDE0d4+7zuzIEQJLvnUgssugxrp01WzfM39optXDVbGee2lYiqFxeeAG5
	GXmLmLbGhclZjZ4x/it/lz/ltKbePRwaY6u292et9bFPgLUsTRuNiEngk9PnuGC1PPSHueaEQ1iqU
	nvut+P9IQgZJhLlRyyzeuE950KZzTyUxir0pz6RKC/AjrXnQxIHXtSZI3DKPql1zNxiK47qGWYNuH
	ubFvRLFOA5N3l5/Q+z553THfcE8BjWM9IpGflm6MVK+Towh3/kIkXKR9T7NbjwI2Q0SR9vt3+0a+E
	O2KLfxe1XqthjeB6aCZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he8Du-0005JT-UH; Fri, 21 Jun 2019 01:20:14 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he8Dm-0004f7-Bp
 for kexec@lists.infradead.org; Fri, 21 Jun 2019 01:20:07 +0000
Received: by mail-pl1-x64a.google.com with SMTP id w14so2678127plp.4
 for <kexec@lists.infradead.org>; Thu, 20 Jun 2019 18:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=YHpf3S+LawhmDVzX+FQxCcCkHwySWAOsiAjcN5bQy70=;
 b=dq5dOVkTOdSfd0FozM7Ov5Two6lGpbsR9AIOljld75nkqE2lD/l+iezTZzt+6Y1dad
 ajewcxBR5TXOQ2MN7iZdTNQcKQW9uSzqEeRy2TCvlLe9cj2jtJKL0nXIRKVLMPXn2emB
 GtlmnJlfE10Ez4ixgSaP1hoFApm53GG9eyXdFrREvn58r656tGslWsX0Hzvrop1nrH2b
 3a1jUtUphr7GGQa/goikEO0OK1cRwDXw0GkKAckn+gZ+UCDSsYc+yUAE7L08JYQOux9R
 0ilcy8SDSxFLe0XGp982UV2SduOe5LFmh5WpOqpQsk9rt6Rcsh+IrCa9OezND7wkz/E9
 3oCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=YHpf3S+LawhmDVzX+FQxCcCkHwySWAOsiAjcN5bQy70=;
 b=aldpLeU8Q44gUux7lfNZEHcszRd6Hw6FODidcHXXC3V9vAQWOXjIKlUef6lcL3R/EY
 3TXVVOKz+JROlVhlxlHhJ+t36wonIjguCFOKeKfMysCvTg/ClqQNcQR7EoUGhm+Vknaq
 y8GOSz/UybF+S3IGETZZE/UtNivPNXZb3h5KZ+Vq2qILv0ii8VUgfwOnksW17YR18gum
 5vDF864nzQverhe48bYDqpCI9JFeN2+X3sy85Q+iG63Lq69rkQ2B1RtF7GeTE+GiZ/J4
 ma35s+MxUyfhTUvcFrokwqqNn2RdCcRfOAsEaNB69CM0FIh67XkrTEQ5fwNBQfNBTB36
 Vk2g==
X-Gm-Message-State: APjAAAWivpfaGVTj/GXv6kVqUusfndFwKH+Zu2hiXgHa+AeuCge5q9dh
 2uRazJuhxi2n9l+5ON7PWhEj40Lrs/XEwON1nun1fQ==
X-Google-Smtp-Source: APXvYqz/OQUUp0959AnAoGMtRG/cQFqGYBYMlIWvKDLKvTKI+fS5zJyEZlJutm42bS3uVQCm+ZHnp+17hJOPftREHMlZYA==
X-Received: by 2002:a63:757:: with SMTP id 84mr4150003pgh.288.1561080004266;
 Thu, 20 Jun 2019 18:20:04 -0700 (PDT)
Date: Thu, 20 Jun 2019 18:19:18 -0700
In-Reply-To: <20190621011941.186255-1-matthewgarrett@google.com>
Message-Id: <20190621011941.186255-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190621011941.186255-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH V33 07/30] Copy secure_boot flag in boot params across kexec
 reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_182006_429423_35C4E7A8 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
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
Cc: linux-api@vger.kernel.org, linux-security@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Matthew Garrett <mjg59@google.com>, David Howells <dhowells@redhat.com>,
 Dave Young <dyoung@redhat.com>
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
cc: kexec@lists.infradead.org
---
 arch/x86/kernel/kexec-bzimage64.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
index 22f60dd26460..4243359ac509 100644
--- a/arch/x86/kernel/kexec-bzimage64.c
+++ b/arch/x86/kernel/kexec-bzimage64.c
@@ -182,6 +182,7 @@ setup_efi_state(struct boot_params *params, unsigned long params_load_addr,
 	if (efi_enabled(EFI_OLD_MEMMAP))
 		return 0;
 
+	params->secure_boot = boot_params.secure_boot;
 	ei->efi_loader_signature = current_ei->efi_loader_signature;
 	ei->efi_systab = current_ei->efi_systab;
 	ei->efi_systab_hi = current_ei->efi_systab_hi;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
