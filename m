Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 696F0112A6F
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 12:45:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2OvpDrVHZa2Skl64sChJYXC5dZueSHV3sZ8/+7E2dk=; b=eTFfVs/PHn1Il0
	AvX4GLVlWhjcE0P3RjiKWpeVyiWkdYgcsHnOdCmyBWhu9Qo0KA+fJDb+/k0d6bcx/oZt2boDRZQyI
	Ho96Mm0zykdsHeddZqOBpcvlTDWLuDe1vzB5C83KEB7rs81u9jXAClgH2WYRrEsLk9DimWEqym54S
	jLlJtVqkW+NbcIrxt4dF/bqMhDkycyKaVxO6gCdcQtd2AgmJ/Yaoi3mz0UWLUub/eCdUUhq6jhnhf
	am9v1PK4EroHBhK9J2wEETljYcDUqz5gp+UKrqcS7LFIIiVC9SrTEanMMGchIGhTtv+EHfyotsAj0
	j98yP+TwCremIxEYsJDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icT6B-00047R-JY; Wed, 04 Dec 2019 11:45:39 +0000
Received: from heinz.dinsnail.net ([81.169.187.250])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icT66-0003wM-T3
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 11:45:36 +0000
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
 by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id xB4BjCuD029792;
 Wed, 4 Dec 2019 12:45:12 +0100
Received: from eldalonde.UUCP (uucp@localhost)
 by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id xB4BjCEg029791;
 Wed, 4 Dec 2019 12:45:12 +0100
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id xB4BVe65003589; 
 Wed, 4 Dec 2019 12:31:40 +0100
Received: (from michael@localhost)
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id xB4BVexW003588;
 Wed, 4 Dec 2019 12:31:40 +0100
Date: Wed, 4 Dec 2019 12:31:40 +0100
From: Michael Weiser <michael@weiser.dinsnail.net>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191204113140.GA3081@weiser.dinsnail.net>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-dinsnail-net-MailScanner-Information: Please contact the ISP for more
 information
X-dinsnail-net-MailScanner-ID: xB4BjCuD029792
X-dinsnail-net-MailScanner: Found to be clean
X-dinsnail-net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_034535_089174_7E2DC886 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Dave,

On Wed, Dec 04, 2019 at 03:59:17PM +0800, Dave Young wrote:
> > Signed-off-by: Dave Young <dyoung@redhat.com>
> > ---
> >  arch/x86/platform/efi/quirks.c |    6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > --- linux-x86.orig/arch/x86/platform/efi/quirks.c
> > +++ linux-x86/arch/x86/platform/efi/quirks.c
> > @@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_ad
> >  		return;
> >  	}
> >  
> > -	/* No need to reserve regions that will never be freed. */
> > -	if (md.attribute & EFI_MEMORY_RUNTIME)
> > -		return;
> > -
> >  	size += addr % EFI_PAGE_SIZE;
> >  	size = round_up(size, EFI_PAGE_SIZE);
> >  	addr = round_down(addr, EFI_PAGE_SIZE);
> > @@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_ad
> >  	early_memunmap(new, new_size);
> >  
> >  	efi_memmap_install(new_phys, num_entries);
> > +	e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> > +	e820__update_table(e820_table);
> >  }
> >  
> >  /*
> Michael, could you a one more test and provide a tested-by if it works
> for you?

Did three successful kexecs in sequence of mainline 5.4.0 plus the patch
(had problems getting recent -next to boot on my machine). ESRT region
stayed reserved and intact so that the "Invalid version" error message   
is gone.

Tested-by: Michael Weiser <michael.weiser@gmx.de>
--
Thanks!
Michael

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
