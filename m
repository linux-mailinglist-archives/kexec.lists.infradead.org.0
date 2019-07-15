Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9847969BDA
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 22:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gGRzH4EJxDhxNryU4W7uicAeP6MaGPu6hnfBDcYnwCU=; b=sMMsCH9Go+avkS
	irp1VT/cZSNUFZk3BCVUv7vDSwdh0yG70qhfOLW3blfPQ7gdo3/QotV11ToC7B4oikEQ7Cfz6w1c4
	QzXMZL+gMcpT6UXMH2pfBRc4EtUB2h9Zzcip1gCl6KG+BkMN1bIBduYMIuecb8gYXEZlcW1CbsK6a
	KsKyTRNYFpgmi1kwuZcfEPAx6LfNnCERhIBptnuFEixIFm+jIabkXuIidbw2Q0KGlMxlRkG5oCgoV
	UayKborQ8Byo2OssrGOFgRJnXERJkVVmNkbdnMQvX2p/r9OpIE28eap86Ln/wT1S9prHnNF29TmNQ
	5u0wMzHFOZz6KC1NyCEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn792-0002Jy-FN; Mon, 15 Jul 2019 20:00:20 +0000
Received: from mail-pl1-x649.google.com ([2607:f8b0:4864:20::649])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn78x-0002Hf-Ov
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 20:00:17 +0000
Received: by mail-pl1-x649.google.com with SMTP id k9so8812278pls.13
 for <kexec@lists.infradead.org>; Mon, 15 Jul 2019 13:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Ze1m51/U9qyeKdYZTkURxXHO7/2Jq1vWiS2UsV2hr9c=;
 b=AxSl7ByC571hgB4NOLtS7SsxUTZj2nJz1kjFEvu6QXZNWkTAq4ckIZ3uMUWLg+omXa
 gQCF60SO+5FhvuloODfitEKxnqK2Ud9Ke7Ut2KXrASynck2/yJDhEmUCv/SiCL/LnS6Z
 foFn7LR0MludcBbwvt/rK79Awp3YN1kE+UStUw6ZmdDsTm4ffGswjufyLrxfXF6AE/NN
 7a+spbgSULZAlT5LjRxTXyiyoO5QMa8kyRslayysR0pLUMt4Sna3aoVdhhA3DgT6uj94
 DwwivdBwt/SuDS6eAWJhtbrGn7o2yongnexmhT6mrymBMoRm2BEZbfvlnh4PW+U/EQ41
 XlvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Ze1m51/U9qyeKdYZTkURxXHO7/2Jq1vWiS2UsV2hr9c=;
 b=AHRvhNGS2AGaTJTnzAmChUdDVfNNKDwfOx7YYs41PpbRSubFJJgjKT84OEG0DRBGns
 AADH8xgs41NsVEoucuaQT/WW5Ihbno2GOpx+8uQoPLxVIp09842g8QB+T4GQdhBq01fN
 McGgr+O4NfdOblL9sv8UCbEEIkEY9w5QRthkZNRWmx01DvmlTSgcA3s1B0LUBzFjNKZc
 DY13jBjONdzlLQV4Aq40axDNh8HTJQcGCIDpLpNsauPkLSXW1QIOOfz4GilIbqThRZHZ
 Vo+0PI6do/p9Y/QyfJVKPgS95QEqMKjeD5bCwcdnC8vemcKZlJMeRlSP3E5s5KOV0Z67
 xIRg==
X-Gm-Message-State: APjAAAXJiVA/G9BpGIJtxfom2O5enf51pTG4sWvHK/KQI0b5XrNCVSP/
 F9L0EVQm2LRCFuU2MYJN0vnd3LlyNeFUyWpJjbDJ1g==
X-Google-Smtp-Source: APXvYqw3kz8vxqJr04RTj1gLbL27dI8ApTISQuqjlO54p7acDyqHccEy7zqlCPthKqcQRy7/95xxR7ZdHBOEJmGBPjFQUA==
X-Received: by 2002:a63:2ad5:: with SMTP id
 q204mr15899633pgq.140.1563220811612; 
 Mon, 15 Jul 2019 13:00:11 -0700 (PDT)
Date: Mon, 15 Jul 2019 12:59:24 -0700
In-Reply-To: <20190715195946.223443-1-matthewgarrett@google.com>
Message-Id: <20190715195946.223443-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190715195946.223443-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.510.g264f2c817a-goog
Subject: [PATCH V35 07/29] Copy secure_boot flag in boot params across kexec
 reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_130015_810333_54C4F064 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:649 listed in]
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
