Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CFC132D84
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 18:49:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqCEZQGjPHjXFNFDhh5AY5xwwzIuHoD8PR8h2XgeK1Q=; b=YCIzLd+oSMkgPH
	3xZIHJ9h7xgRJNQArNU0/f40Kaxoa9XEqHY1v/riJtjmN7Ht/r0C8W7tM0vi/BAprMj9UndLeo6IK
	77pkzrxLbCro8DPypfre0pdfjglqrDyaa9DA5sTP1KSYezoaQ/0/xTqq4rGaj7yn4zPo3nvufCyog
	obkShsKnpqxf3tXcdO7nBcXdf3HvsBNIzVGf/ODPbvKXHjl7JIe8H5Z3tSLIJrkDWMl7mpEkJJUPf
	5eWj1TeGVOK7n1Hu2xdlSuCoRS2bK35kANROrHzupqG7umGjzpKm1bb3RcK+nPJFMyLHvBFklnuna
	kljED0UZPnpCcuLUmYKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosz7-0007F2-93; Tue, 07 Jan 2020 17:49:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosz4-0007EF-0Q
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 17:49:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so362702wre.10
 for <kexec@lists.infradead.org>; Tue, 07 Jan 2020 09:49:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uyvuS2G9MB9Tvq9pni2gKNsuJduIchYAcY94iemGDHk=;
 b=C3P65o55D+SQxxN6mGKZo2HFJ4tjidCXpgNJDyVr+teyCUgHLA/oplEcHIvlFBb7Se
 GJYJOEPFDLCZpCThR12FScKuecIuQ5bHwfgVDwdIZsF2pB/TLPpqFCH3gm1hJ+Dt3u4Z
 rNOH1aRZvB+2wrLM/4TuQzAS8xfGkkRDqWOQ305+FYFU8ckBrQt5jRV8s+var7Bh6e+n
 0LCwOZYmzj7QNEJw7wyGJSeyXrz7sh0qABAGVmyFDUjkuPkJOocS78vu+NVHD32dRRbO
 kiVYDdRYm68fFOAehcFimn9Ia23jgmYcV51F7qCCdVuW99cjr3OQd0hEyc5WdRpmw1/r
 /L8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uyvuS2G9MB9Tvq9pni2gKNsuJduIchYAcY94iemGDHk=;
 b=HVYf7SjTmsSyC0HC0I56VnKl8hg8qMc4vtfmMMtsT6fha8hGJAIu2TMnCDTtkS0ZSU
 HzPpLwK16AQq25U8ygJGOhb3++rjLd8DTmpdRHl1/7Yp7XzO5NtXNIw3kawbHlBxXQyt
 NNan8gqvpmoS3uWbO/Lp17QodIvY+AfqTqMvG+nNv/9HjtKEs3rQYdG0MoFYlbhj507z
 A00nX5qkXiwch2G16b4IYTi0VQR8R4xIo5zT6V1W3hlFO3Ic8sc20lqbxSpHcDXiS5WP
 YjqW3hkbvmgVbYyIq00xP9UxnYljmzsRENY/d1NuXuWTLYZXJ+WmgxO2JBnJT3pkESnz
 aAQg==
X-Gm-Message-State: APjAAAXS0fjLAtzDT/doEVRJahbse8P3/WjtG8op777KmMBWsAyJZPWt
 95WzGuUAsU/+hfKLNI/4RJ7a4VTnB61gspKxB14drw==
X-Google-Smtp-Source: APXvYqzEg4Y9DhPujMpKhGLLLqlbDKR8EPZU2K7/XBHana0VXM+EZ4387AqIUMuB3nsMMom8jmSfjK00QqU5fLyPh4w=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr275382wrw.246.1578419375184; 
 Tue, 07 Jan 2020 09:49:35 -0800 (PST)
MIME-Version: 1.0
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835763783.1456824.4013634516855823659.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107035824.GA19080@dhcp-128-65.nay.redhat.com>
 <CAPcyv4jbf2WR2ZU55564fORxKLf8tGH1XbYBpRfTvPouGWk2mg@mail.gmail.com>
 <20200107051822.GB19080@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200107051822.GB19080@dhcp-128-65.nay.redhat.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 7 Jan 2020 18:49:24 +0100
Message-ID: <CAKv+Gu8hO5mTbFaqwh9OZOEm9r_e1_ob-pfq4yhH4wJG7yV8MQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] efi: Fix efi_memmap_alloc() leaks
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_094938_057110_4B9A3C1D 
X-CRM114-Status: GOOD (  25.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 at 06:18, Dave Young <dyoung@redhat.com> wrote:
>
> On 01/06/20 at 08:24pm, Dan Williams wrote:
> > On Mon, Jan 6, 2020 at 7:58 PM Dave Young <dyoung@redhat.com> wrote:
> > >
> > > On 01/06/20 at 04:40pm, Dan Williams wrote:
> > > > With efi_fake_memmap() and efi_arch_mem_reserve() the efi table may be
> > > > updated and replaced multiple times. When that happens a previous
> > > > dynamically allocated efi memory map can be garbage collected. Use the
> > > > new EFI_MEMMAP_{SLAB,MEMBLOCK} flags to detect when a dynamically
> > > > allocated memory map is being replaced.
> > > >
> > > > Debug statements in efi_memmap_free() reveal:
> > > >
> > > >  efi: __efi_memmap_free:37: phys: 0x23ffdd580 size: 2688 flags: 0x2
> > > >  efi: __efi_memmap_free:37: phys: 0x9db00 size: 2640 flags: 0x2
> > > >  efi: __efi_memmap_free:37: phys: 0x9e580 size: 2640 flags: 0x2
> > > >
> > > > ...a savings of 7968 bytes on a qemu boot with 2 entries specified to
> > > > efi_fake_mem=.
> > > >
> > > > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > > > ---
> > > >  drivers/firmware/efi/memmap.c |   24 ++++++++++++++++++++++++
> > > >  1 file changed, 24 insertions(+)
> > > >
> > > > diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> > > > index 04dfa56b994b..bffa320d2f9a 100644
> > > > --- a/drivers/firmware/efi/memmap.c
> > > > +++ b/drivers/firmware/efi/memmap.c
> > > > @@ -29,6 +29,28 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
> > > >       return PFN_PHYS(page_to_pfn(p));
> > > >  }
> > > >
> > > > +static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
> > > > +{
> > > > +     if (flags & EFI_MEMMAP_MEMBLOCK) {
> > > > +             if (slab_is_available())
> > > > +                     memblock_free_late(phys, size);
> > > > +             else
> > > > +                     memblock_free(phys, size);
> > > > +     } else if (flags & EFI_MEMMAP_SLAB) {
> > > > +             struct page *p = pfn_to_page(PHYS_PFN(phys));
> > > > +             unsigned int order = get_order(size);
> > > > +
> > > > +             free_pages((unsigned long) page_address(p), order);
> > > > +     }
> > > > +}
> > > > +
> > > > +static void __init efi_memmap_free(void)
> > > > +{
> > > > +     __efi_memmap_free(efi.memmap.phys_map,
> > > > +                     efi.memmap.desc_size * efi.memmap.nr_map,
> > > > +                     efi.memmap.flags);
> > > > +}
> > > > +
> > > >  /**
> > > >   * efi_memmap_alloc - Allocate memory for the EFI memory map
> > > >   * @num_entries: Number of entries in the allocated map.
> > > > @@ -100,6 +122,8 @@ static int __init __efi_memmap_init(struct efi_memory_map_data *data)
> > > >               return -ENOMEM;
> > > >       }
> > > >
> > > > +     efi_memmap_free();
> > > > +
> > >
> > > This seems still not safe,  see below function:
> > > arch/x86/platform/efi/efi.c:
> > > static void __init efi_clean_memmap(void)
> > > It use same memmap for both old and new, and filter out those invalid
> > > ranges in place, if the memory is freed then ..
> >
> > In the efi_clean_memmap() case flags are 0, so efi_memmap_free() is a nop.
> >
> > Would you feel better with an explicit?
> >
> > WARN_ON(efi.memmap.phys_map == data->phys_map && (data->flags &
> > (EFI_MEMMAP_SLAB | EFI_MEMMAP_MEMBLOCK))
> >
> > ...not sure it's worth it.
>
> Ah, yes, sorry I did not see the flags, although it is not very obvious.
> Maybe add some code comment for efi_mem_alloc and efi_mem_init.
>
> Let's defer the suggestion to Ard.
>

A one line comment to remind our future selves of this discussion
would probably be helpful, but beyond that, I don't think we need to
do much here.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
