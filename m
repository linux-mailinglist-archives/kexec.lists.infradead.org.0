Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590404F913
	for <lists+kexec@lfdr.de>; Sun, 23 Jun 2019 01:53:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3I+3oAUV4JNwtIGHqr21WR6ij6lb3QOzWdZXj9CpDM=; b=YUAkrtrB1i1UFn
	kdbC106orE85TGDg6Vjl9htAc96tURC6XT8Lq5vMmlkdMmhaQdUrjwhI9hrEl8xUChEpbj3O8LL25
	exTXUUKfwHSYNJR3/KXdrR3W5Y1SmSfR72M9W0wl5JqhM5fEuJQv8+1l1eTFw1CI6vOdk0ASD2vqD
	DKUWxlAnvrV9PCsGZfelvGqdYqDBYW5U+9w14g/J6zKWGYEQBBsngtg8a3Gx4bSt0lbQIFALWGbbM
	AQsSHzHmj7LAIUcFHB58JyKv3QAFksqDX9Feuh5aaYl2JV1JXlRMa0RGyeKgGBFqvPYlGG7838uMS
	Ukdh4WqxDnAG/W2PJYpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hepp2-00010Q-Jk; Sat, 22 Jun 2019 23:53:28 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hepoy-0000yq-83
 for kexec@lists.infradead.org; Sat, 22 Jun 2019 23:53:25 +0000
Received: by mail-pg1-x544.google.com with SMTP id m4so4509089pgk.0
 for <kexec@lists.infradead.org>; Sat, 22 Jun 2019 16:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pj2xea0nrESVhzCctZSm0ltVMYO4iJ1nFUvuPkZZ1cI=;
 b=cwfKaBCeOLaOWqp6IJxkI+95fC0wmQC5wx7do5nUz2XIOq8cRNwaNOusbZ9iGsmBG2
 Mb1+BntCt1GJVKZHrfSbcQYnT4ri/gLOelLJuOVNd/eJVXuHDdA72ALZapbzQH8U8k4Y
 SUCysr1x6XvgpthBH6ndYduHLchN7YUxCoAhQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pj2xea0nrESVhzCctZSm0ltVMYO4iJ1nFUvuPkZZ1cI=;
 b=VMpVMcAfXrZvTScjyU7FAeYFfAPnKfF9tJ11y9qrJyYUu+7Wh6tAnKTpZz0QLYXJX4
 c9tmmCrAu4ivj4hpjEvygTQAzlMx6Z/DUlB0eVPV0/PhAjVc6V4/jdoXsh/S/blR8aJG
 CvbqCHVQK2uY7xmdSVG84shtmXZWaYyM5WbJ++3C/JNozYKNani3PtPgCkx1kk9YaLRM
 br+cYB9h0W0sw+rzFQODX9Idpu/4zyCD86Iv/4qo5DFXM9kJau8gwHwav1QV5r2l71SR
 au3on23ukEb4UCxyxXqGOE/FQdFmKsfrfqKO0Y6M1X2DH6WDQmyoIPHyPMSE/qHVps1L
 Xp8g==
X-Gm-Message-State: APjAAAXRP/EVCEDfeJso8ZSF5k6J3eotElvJC5BWARvo6Rw4K9rqumhA
 DJV8Dy9JKCRslKqRT/Z2RfQNrA==
X-Google-Smtp-Source: APXvYqy1dvhqp+N85ZUG4C15vsX9JYjrWSjT6BJeOPTBm/LfL799mnOFM3VfqlKAk44zO2lXgY2cOA==
X-Received: by 2002:a63:4e07:: with SMTP id c7mr25738042pgb.350.1561247601114; 
 Sat, 22 Jun 2019 16:53:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a3sm7377415pfo.49.2019.06.22.16.53.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Jun 2019 16:53:20 -0700 (PDT)
Date: Sat, 22 Jun 2019 16:53:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH V34 07/29] Copy secure_boot flag in boot params across
 kexec reboot
Message-ID: <201906221653.DDCB3C898@keescook>
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-8-matthewgarrett@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622000358.19895-8-matthewgarrett@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_165324_316006_B2456248 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-api@vger.kernel.org, kexec@lists.infradead.org, jmorris@namei.org,
 Matthew Garrett <mjg59@google.com>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:03:36PM -0700, Matthew Garrett wrote:
> From: Dave Young <dyoung@redhat.com>
> 
> Kexec reboot in case secure boot being enabled does not keep the secure
> boot mode in new kernel, so later one can load unsigned kernel via legacy
> kexec_load.  In this state, the system is missing the protections provided
> by secure boot.
> 
> Adding a patch to fix this by retain the secure_boot flag in original
> kernel.
> 
> secure_boot flag in boot_params is set in EFI stub, but kexec bypasses the
> stub.  Fixing this issue by copying secure_boot flag across kexec reboot.
> 
> Signed-off-by: Dave Young <dyoung@redhat.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: David Howells <dhowells@redhat.com>
> Signed-off-by: Matthew Garrett <mjg59@google.com>
> cc: kexec@lists.infradead.org
> ---
>  arch/x86/kernel/kexec-bzimage64.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/x86/kernel/kexec-bzimage64.c b/arch/x86/kernel/kexec-bzimage64.c
> index 22f60dd26460..4243359ac509 100644
> --- a/arch/x86/kernel/kexec-bzimage64.c
> +++ b/arch/x86/kernel/kexec-bzimage64.c
> @@ -182,6 +182,7 @@ setup_efi_state(struct boot_params *params, unsigned long params_load_addr,
>  	if (efi_enabled(EFI_OLD_MEMMAP))
>  		return 0;
>  
> +	params->secure_boot = boot_params.secure_boot;
>  	ei->efi_loader_signature = current_ei->efi_loader_signature;
>  	ei->efi_systab = current_ei->efi_systab;
>  	ei->efi_systab_hi = current_ei->efi_systab_hi;
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
