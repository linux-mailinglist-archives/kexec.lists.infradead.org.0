Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA5B856C6
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 02:07:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6e+tOljkLDRYtwouCjHcqJWcQOPJGbYhr/DJ5DtMKCw=; b=dwa+j1Zu4pU0M9
	6A4MOnSgj8WWzlfSQm987096XC/3crnp+E/4GQmSnfGORt3y5wyVVeL/+uTrlw/iAv0cgHF1fOsn9
	/Q038DaQnG3OOtYpbzKR3c+mGjali5tAG6qjMEqbQ8WelpyHcKBNhe8cCNSIatPimYYdbwNl3/Iec
	NSS4n4Gd1Cmo+Ci0E9sRxviOd7C+bABZxA/JBfrllcZfQTMCGDNwnEUk0KlhR9UZD6uD8dn/6VMOa
	zCPSVRaOnUw9CJAbKh5v66JN12SX9c7y9Z7PnXORm7mgDXRurikN96gFO43dcbbU0AfzSK7+BWlbF
	xwsmm6UVIsOfM4Xvx3tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvVy9-0000T1-AI; Thu, 08 Aug 2019 00:07:49 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvVy4-0000Rd-OH
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 00:07:46 +0000
Received: by mail-qk1-x74a.google.com with SMTP id r200so80942748qke.19
 for <kexec@lists.infradead.org>; Wed, 07 Aug 2019 17:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=I/5rlFVBONd1Ka7/QUlhE63dhV+4TxEgC7HKPRr7Vsc=;
 b=AQ32ZYFy04wA4mb2XkzJMu41uBwdTPJVCQkZLoSqoG5BPESh7PtahcJElB42fN7yCa
 RgpAdVhcQ5fuL4/xbllTjDfI2lyqus7qV8tRpcqdDJ/VX1SpE4XMZ3HvF0pfgCWIcmbA
 Zz9a2qpUoHBQ5fw1br+vqmDeXDCgSck943n71lbq0K8fl99KDPL9Cr+apC6baNZBDpqB
 yetG9rfVr7XgiWV+oEMuvXWmxki7WHMWAVAgsDWQ3kUNYceMtvrIEGX+u90sxOg52+xU
 WwDTm3LZ/jev4cFV6SJG2fghnPLj1QbrnL9bCZ9OKuqjQneM4UxIH4SbmaYnC+fTKyUe
 xoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=I/5rlFVBONd1Ka7/QUlhE63dhV+4TxEgC7HKPRr7Vsc=;
 b=XW0BZv7oGwPXEY+GiPfWbK5gU2re+yAf7DODid8bP4uHblQBj4zQvEDmEovJltLipV
 xw5clDwzFG0n0dNWyGTedaZrzou76cQdDi3l1+a92tCYJxzlzb4qsDxMMjJ+4zrJREDO
 8LhoObKQ3rN4DSe5x7an7m/bmLi0UAe6EdHbixJGLjAzJnLsqP20S2GVjNGo59PuMY5Q
 yF3sIN5+gpFb0qciDX8FN2SDubuykFMrC8lH28LcsTnLia7BoQjo4GzLp8tMStEn9gY6
 TNg5vxg36vwTOkHSeXRHWO5MxkwpKR9bWfSr0vZWURim+POloGatIdLuyyLRCb4pQV6d
 DJFA==
X-Gm-Message-State: APjAAAX6sA7OpJhl6BG0tKfQhqcwf/iOOQRNItvEkQusG5xGmfRMwK6/
 hkICK5bjQD2Tx1bU7GUTt1CyNLeJC4Jz3WcF+OR9Og==
X-Google-Smtp-Source: APXvYqwbxMXMHnAWnMCnOqh54UKVOkglSwlrJqk2yQseIK/mHSAACIPxF2yMxL4MhNvEpmU0x5PUPo+FVwhaY2V8uK4ABw==
X-Received: by 2002:a0c:eec2:: with SMTP id h2mr10594442qvs.189.1565222862448; 
 Wed, 07 Aug 2019 17:07:42 -0700 (PDT)
Date: Wed,  7 Aug 2019 17:06:59 -0700
In-Reply-To: <20190808000721.124691-1-matthewgarrett@google.com>
Message-Id: <20190808000721.124691-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190808000721.124691-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH V38 07/29] Copy secure_boot flag in boot params across kexec
 reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_170744_827173_3F6AA018 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
