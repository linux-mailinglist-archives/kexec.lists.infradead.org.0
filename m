Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4112B4F220
	for <lists+kexec@lfdr.de>; Sat, 22 Jun 2019 02:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWABWSydKtY05bz/luqynwmx4gSisBAWkgfjftAu9FU=; b=irRe0fSbN8R8W3
	r/hbNSj5cn9jGdGUgTsinVkhc9q/T9EwLH7g+chBSbrlVwiaCp0BjjZvqgZUivI0SN5HbAPsEusMW
	frT8OKN8AdWf7XF3+Q5yP5LxNVa0PnH+SEu2t6N6QXgQnuwfXSJyPIcbGZhLswdE1OLb12rwq81F/
	eRhBqavjAoPXCRjKFYDZWWLldDHotFStPTlU5mvUJvnSCHdp/w0YqAx9DrZHAQpQCBtip9x6nbT3y
	5ZTV3gTUQ/qVUa9ID+g3uo2NWseI9cA+m73RVcYNPV5nupQ2EZMg1HA4i6irau+9ZIE+55zqHHSMX
	9/05+8I0i+KfonykD6UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heTW7-00028c-OM; Sat, 22 Jun 2019 00:04:27 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heTW3-00024v-9i
 for kexec@lists.infradead.org; Sat, 22 Jun 2019 00:04:24 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id d6so7379011ybj.16
 for <kexec@lists.infradead.org>; Fri, 21 Jun 2019 17:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=YHpf3S+LawhmDVzX+FQxCcCkHwySWAOsiAjcN5bQy70=;
 b=nnFBb4AQ6PQC9WUZohXByCAVtnekWaVTdN6oouGZ//0ePIiRvSgodwVR27Dg3omm9o
 xkCtoeLK5m3KZWd7e/iGYtOVqbzDYsB4aZ2F5NPcB//sziR1TMMvpIkfSitcqbtkVVi5
 Nb0tvyoriuxSQMP59mzZTCUPGTMdwDQ3qAROu33b0VcrMw8db4r0brWAD662pfhdcBNz
 Uvcvkp6tM9NNnx559yhcxg577vi7s0VaGv0sSTuClodF7BRnOy4WFaaXk5L/Ok90YO6m
 TZHmORNhD0xEtJ9lXBO1YCLkH/3JYy2WUnNXtmOEQqwEGvOU46Ny5FQOUZI9Fel2PK0u
 d/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=YHpf3S+LawhmDVzX+FQxCcCkHwySWAOsiAjcN5bQy70=;
 b=t+WPYUlLZ9tbgrpSU83QBwzhmcOYDnBzeCmM/tXTATBChw1YwgAwLuFTN7ub6xhCJA
 bLfvNIicq/T36lDkh/CRN2M6Q49R0BZ8IpVcsDGZDNW66eUKx9J9yoxzWBCbnsWoo/Ns
 90kFCLJ0829nMKj8vZu/NrPtosjhdrtraK2JaP18/2N3f+AWQfM4w1jjmHgMzokVOsD0
 +Q1XJUnlSzxP59LXYZKvO3eg8BIlt80oZ3zbXumGBbWOhg68UiSLB3Fg7Jnkeuz+ldzE
 azNzxy3tfaN7GqUwK3Xb0t5xhv98gXKyFx7k6TjZ3u7yiTmerA2aHRcvpOzshDX79Oxn
 h96g==
X-Gm-Message-State: APjAAAUbd+tOc9m8+PnrBGMBEvWxdYQlCRobNQaTTxFDHLZ8Mo0SdVlA
 JUuTANw+mZV+jWGth/Wp0/+9L2Umak5Ebn1qI+qWWQ==
X-Google-Smtp-Source: APXvYqxaKWP4U28G/EHKOmeo7lhj8YJBHAsd4q2DuqNeOquLbCGwAG5TsajEMGXTGM1UKUyTHnefjMXpm/aaKL1c+HSqXQ==
X-Received: by 2002:a81:31c5:: with SMTP id
 x188mr62293902ywx.429.1561161859657; 
 Fri, 21 Jun 2019 17:04:19 -0700 (PDT)
Date: Fri, 21 Jun 2019 17:03:36 -0700
In-Reply-To: <20190622000358.19895-1-matthewgarrett@google.com>
Message-Id: <20190622000358.19895-8-matthewgarrett@google.com>
Mime-Version: 1.0
References: <20190622000358.19895-1-matthewgarrett@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH V34 07/29] Copy secure_boot flag in boot params across kexec
 reboot
From: Matthew Garrett <matthewgarrett@google.com>
To: jmorris@namei.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_170423_352711_E3C91F49 
X-CRM114-Status: UNSURE (   9.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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
Cc: linux-api@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Matthew Garrett <mjg59@google.com>,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
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
