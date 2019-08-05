Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DD6820E0
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 17:55:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGTXRPh1pYmlaPcq3WSXEejp9bm76QjXQ21OhmtOZDk=; b=lKH+AMEH5/nJ3O
	vsgQnWiqC68QkXsVohdRIuyqTiZPAuIQfT0Bzuc2GC+x8B1p1hnnp8jXlfkCHTuJlV3YUadJfgRuf
	nPpbPyB27gN1magphEpQIyR2OYlolqmoBtg/V66iE0C3Eg9RRZSXIUs3uyB0k23A7/f8+yg8s6j7M
	x+ei+6iteCMsbY0/tO6xCx9cKDL37hAp15ZdFeg5gEfIpd//0As37ZoVqzaKfJI8i+F5ElJn7pn2b
	tQRVLACnJAGFZ83dw+jd1wCKEZJHuXC8qwPoTQsEkgc4PC/ashLSF8q5nKINM1HnbF4icRePGIzUx
	pMVCNq3jgoE/TMfCbZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hufKi-0004tg-Vc; Mon, 05 Aug 2019 15:55:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hufKO-0004Va-Sb
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 15:55:23 +0000
Received: by mail-wr1-x443.google.com with SMTP id x1so35035454wrr.9
 for <kexec@lists.infradead.org>; Mon, 05 Aug 2019 08:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pnsluh819l1ZStKbmfOcG3O4jnLq32HWa/lDwn+83Yg=;
 b=nIKF7wwwI0QPjCu0IOvAfwL8Hr2Lr3IyHpP1+ypF27lI+2iwFL7eal+6vIO+rqw+Mt
 LXAwxw+s2ChlfUXNMEXSxChFPEyBlt2mrI7syMIUMzAKRifN913by3ykVqN0/d6xl7XU
 45yp5Dbam98j3f3E/3LUUY2skj+VRIR6Q8k8Rg31HD71xr5EqDX6gQ6cap/HUwc24hja
 S7D4kueITTfZcQpcEVxOCeYR8beovQfohGrp1HjLWzMgb2ix1D3u4rlYkfqFYgbvAlqx
 BgcR5X7htSE1LfbrPS4WmeTMbUqF3oBy6DHpwH+405NuzlAK/rx/oVE5GFOwT1brTawU
 LZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pnsluh819l1ZStKbmfOcG3O4jnLq32HWa/lDwn+83Yg=;
 b=DKiTWFPQvzyEHDTB52BFjJnaG9PKaZtTbE3VIigK2DPe7MEOGgIJ+b/7kjyKfIsFL2
 SXw+t3Wye582wSZIQvacmh1mda8ssbRPiOScspTKY1mvYO4MjZMLEo+QdPRo/Ulbpc0k
 uHmUevI1SOu0FAUS5Ef3prJ18PA6reIdnYY4USjXZtpGuC74d75+yzZBr+YIxo/uD86s
 iU/uZ6VnI+rVwqwvMZZ1N36iqPKV05al0szIXWXIcjhnz98sfllUBSp8umTM496jwfiu
 Sf06ycOwW/xAaFJI4X6ajoBumqB66ADA9oZmHWglCHr5XCF91Sguh1Y9BCto0CJPyepc
 sTkQ==
X-Gm-Message-State: APjAAAXw+OkQjvgPFrX4TLWGlVwe9chddJud8AagISPxLyjvjEhlpPLV
 CMwyNqG2fim+0uaL9PJLG/DK11IhwFcyjX+wIkCFEA==
X-Google-Smtp-Source: APXvYqzYjhwZn5w5yyV/Vo+58zqgFvAH23OEi6QSh7dNxwvBI9af8UVivxjFT+LneGo0eAeVs1mIu/sfzpI/ECNUVHU=
X-Received: by 2002:a5d:46cf:: with SMTP id g15mr26762663wrs.93.1565020512761; 
 Mon, 05 Aug 2019 08:55:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190805083553.GA27708@dhcp-128-65.nay.redhat.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 5 Aug 2019 18:55:03 +0300
Message-ID: <CAKv+Gu-my6EpLfxBnbMn21be62oHrF6PKFu2rt-4Pqk9wG9SXA@mail.gmail.com>
Subject: Re: [PATCH] do not clean dummy variable in kexec path
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_085518_555353_4BA67F12 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Matthew Garrett <matthewgarrett@google.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, linux-efi <linux-efi@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 5 Aug 2019 at 11:36, Dave Young <dyoung@redhat.com> wrote:
>
> kexec reboot fails randomly in UEFI based kvm guest.  The firmware
> just reset while calling efi_delete_dummy_variable();  Unfortunately
> I don't know how to debug the firmware, it is also possible a potential
> problem on real hardware as well although nobody reproduced it.
>
> The intention of efi_delete_dummy_variable is to trigger garbage collection
> when entering virtual mode.  But SetVirtualAddressMap can only run once
> for each physical reboot, thus kexec_enter_virtual_mode is not necessarily
> a good place to clean dummy object.
>

I would argue that this means it is not a good place to *create* the
dummy variable, and if we don't create it, we don't have to delete it
either.

> Drop efi_delete_dummy_variable so that kexec reboot can work.
>

Creating it and not deleting it is bad, so please try and see if we
can omit the creation on this code path instead.


> Signed-off-by: Dave Young <dyoung@redhat.com>
> ---
>  arch/x86/platform/efi/efi.c |    3 ---
>  1 file changed, 3 deletions(-)
>
> --- linux-x86.orig/arch/x86/platform/efi/efi.c
> +++ linux-x86/arch/x86/platform/efi/efi.c
> @@ -894,9 +894,6 @@ static void __init kexec_enter_virtual_m
>
>         if (efi_enabled(EFI_OLD_MEMMAP) && (__supported_pte_mask & _PAGE_NX))
>                 runtime_code_page_mkexec();
> -
> -       /* clean DUMMY object */
> -       efi_delete_dummy_variable();
>  #endif
>  }
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
