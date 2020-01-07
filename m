Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C35B131EA1
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 05:24:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hs0rTBg5zN/uh0YwO2oA8hjiTsoue+5K3mm3B6Kq2sw=; b=tEf4gdup42nWMD
	1FPXD7RUN1JG2L2ks7Z36rcv+O/yaZtKHtcMV/WcX5fOFCc54yJxZJj16ZRlTjGwQQNlxa8CBXN77
	b0yXo6Gl0wkAPbR5bt05xw6HECoXs4Cayx6Re9y7tvRevClm4HEty0ypA9ehr3+p8X5+HLWUWI5Cs
	gp+AQrkkw9v/6t7H8D7cEf4hET6AXn4r+R+Lf7rJBNp7neiyiOF1S2dRkZztlO+rveoHt7xyNQ0bc
	XK/EaPuN4aQpQpywLQ+GfYHHTcWU56DwOp/F+L/qY454brvonRJU7+pz4pCEeJ0OJetmpsooXBst+
	sdKFpByHekovX4qR8eqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iogQB-00089L-Nk; Tue, 07 Jan 2020 04:24:47 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iogQ8-00088t-6e
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 04:24:45 +0000
Received: by mail-ot1-x342.google.com with SMTP id 59so74676914otp.12
 for <kexec@lists.infradead.org>; Mon, 06 Jan 2020 20:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rpRVgkQrP+H8glvNMQeoSS2IHkaJmEZmOMYgHcv4/Sk=;
 b=hMwCZTFotL92VhgJnQOx+5zKXeoHFoSDwxyQeDkGA7LL1xJ/5I1qifpHD05tGEJ/k1
 D81lbVKvMM5wqPFXLh61rQyjbKeBSH5Fvnn0a/5n9Yj/TpAk3Pj0GP1I+sfNM0VmwXVH
 T9SVgNr3TPjwmBBxcbMTev/tuMSNk+LWI0YsAS4v1EPSUGxuxQo/3h+UYuZlAUBRmir+
 cilRI/wWpV+b0C/e78M1pw8nlm8AZ/iKLvy3lHo3u1ZPcZLcPhj36PonE0fXHE5FebIw
 1H04+KlDDlAkwaMukRX/ufRxoF1bmBJoRoWyjdZAxuB28KEJGfld5brUc0sgJ20yz7fV
 NLlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rpRVgkQrP+H8glvNMQeoSS2IHkaJmEZmOMYgHcv4/Sk=;
 b=MZ/fTYJ1mdRUZZTRII1m/n8TGJWkhaLvz+qnjcTMquoV84jYrNUCWLl1dRLIoF8Aye
 ZVyzgWjqUI+QXexjZ81hblXEov48wDof++MR3yZGf46J7qafIsipsCGJ6GNqabvsySLU
 MkEXBeSsY2FFKFQkWS4u4CN1M4ZpVZNCfEmU5hXNB5xfXiWf5IlFeb4XTgDboMGRN3/3
 AikkX0E//au7IXtMf4yP9YsSN+9CUxu3XclIXWkeiFkSS0u9yVMRsa+cLWaFw/dBG4ez
 l/Jn2P/0nnkb+A4oDd6xTviXqEyarsoma6NjuK8f0Jj133w7kw+2/pxg8quCuBsgBteG
 wsDg==
X-Gm-Message-State: APjAAAXYt4Cuq3oy5s++xxGNtKri/lE1+n11TxeEhkkn+p0KKs3mQY0v
 zG62QsqAHGXA6d1uoIl+jPAwptC/9aYcggKUPGxfD3PC2N4=
X-Google-Smtp-Source: APXvYqzf1d2T/uMauIo2ZeG7AJCoT0+lduA5vctbRQQqcUAxoautUmiDkuGdp3E5eiwrTJn7bTCIku50x+CJ+lwCShE=
X-Received: by 2002:a9d:4e99:: with SMTP id
 v25mr123180121otk.363.1578371083582; 
 Mon, 06 Jan 2020 20:24:43 -0800 (PST)
MIME-Version: 1.0
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835763783.1456824.4013634516855823659.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107035824.GA19080@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200107035824.GA19080@dhcp-128-65.nay.redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jan 2020 20:24:32 -0800
Message-ID: <CAPcyv4jbf2WR2ZU55564fORxKLf8tGH1XbYBpRfTvPouGWk2mg@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] efi: Fix efi_memmap_alloc() leaks
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_202444_242959_001D0763 
X-CRM114-Status: GOOD (  20.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 7:58 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 01/06/20 at 04:40pm, Dan Williams wrote:
> > With efi_fake_memmap() and efi_arch_mem_reserve() the efi table may be
> > updated and replaced multiple times. When that happens a previous
> > dynamically allocated efi memory map can be garbage collected. Use the
> > new EFI_MEMMAP_{SLAB,MEMBLOCK} flags to detect when a dynamically
> > allocated memory map is being replaced.
> >
> > Debug statements in efi_memmap_free() reveal:
> >
> >  efi: __efi_memmap_free:37: phys: 0x23ffdd580 size: 2688 flags: 0x2
> >  efi: __efi_memmap_free:37: phys: 0x9db00 size: 2640 flags: 0x2
> >  efi: __efi_memmap_free:37: phys: 0x9e580 size: 2640 flags: 0x2
> >
> > ...a savings of 7968 bytes on a qemu boot with 2 entries specified to
> > efi_fake_mem=.
> >
> > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  drivers/firmware/efi/memmap.c |   24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> > index 04dfa56b994b..bffa320d2f9a 100644
> > --- a/drivers/firmware/efi/memmap.c
> > +++ b/drivers/firmware/efi/memmap.c
> > @@ -29,6 +29,28 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
> >       return PFN_PHYS(page_to_pfn(p));
> >  }
> >
> > +static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
> > +{
> > +     if (flags & EFI_MEMMAP_MEMBLOCK) {
> > +             if (slab_is_available())
> > +                     memblock_free_late(phys, size);
> > +             else
> > +                     memblock_free(phys, size);
> > +     } else if (flags & EFI_MEMMAP_SLAB) {
> > +             struct page *p = pfn_to_page(PHYS_PFN(phys));
> > +             unsigned int order = get_order(size);
> > +
> > +             free_pages((unsigned long) page_address(p), order);
> > +     }
> > +}
> > +
> > +static void __init efi_memmap_free(void)
> > +{
> > +     __efi_memmap_free(efi.memmap.phys_map,
> > +                     efi.memmap.desc_size * efi.memmap.nr_map,
> > +                     efi.memmap.flags);
> > +}
> > +
> >  /**
> >   * efi_memmap_alloc - Allocate memory for the EFI memory map
> >   * @num_entries: Number of entries in the allocated map.
> > @@ -100,6 +122,8 @@ static int __init __efi_memmap_init(struct efi_memory_map_data *data)
> >               return -ENOMEM;
> >       }
> >
> > +     efi_memmap_free();
> > +
>
> This seems still not safe,  see below function:
> arch/x86/platform/efi/efi.c:
> static void __init efi_clean_memmap(void)
> It use same memmap for both old and new, and filter out those invalid
> ranges in place, if the memory is freed then ..

In the efi_clean_memmap() case flags are 0, so efi_memmap_free() is a nop.

Would you feel better with an explicit?

WARN_ON(efi.memmap.phys_map == data->phys_map && (data->flags &
(EFI_MEMMAP_SLAB | EFI_MEMMAP_MEMBLOCK))

...not sure it's worth it.

>
> >       map.phys_map = data->phys_map;
> >       map.nr_map = data->size / data->desc_size;
> >       map.map_end = map.map + data->size;
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
