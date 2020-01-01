Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA0412DDA2
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 05:53:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6O0x0Bwn2JT0OWXhoiqYgCEydlYcgk8mLUXKLF4Osds=; b=VfkBUM49MFIBdh
	1nTwsv/OEATL8NExc1+VMC52jO27Ht9YSpcIq3MSZ0DYpi0HA0bHu4SSolQH+BjebQTzs5Z/dGhTL
	YCM9QtJcLLGKvWJVg+3dvP9kpt34sPlNF9qIjbsYq9x9+r0N+RxDdWVOq94n+c3aEHabrA78zd0rF
	dLNVwEI3AK1k9BgrX7l5p1XTKOk5+Ta8Z4eiFIYp1gku2NSYCiQMy8L9DaeWWn+PTmzNBkgeDdyJR
	WETRyN2sd/fZPBbRc2hC/xmlSNK1vz0D9I2sCuZA1KyShyRfMTR/EK5vAvzAfU/AJYOCI4gV+AsIC
	OSsojbb+GPyOyCM58xQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imW0P-0002ru-Cj; Wed, 01 Jan 2020 04:53:13 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imW0M-0002ra-0p
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 04:53:11 +0000
Received: by mail-ot1-x342.google.com with SMTP id 19so39916571otz.3
 for <kexec@lists.infradead.org>; Tue, 31 Dec 2019 20:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jfNNEg4YWXmXqYR9H7tCNhq2xPlPNDmuq3DmGMJWmh8=;
 b=jlKqsdFtlMYUFLmF58ewBNrKwzaCKl+MmNrsw/WrE148uBmGVfUJNtM16hf2u3sdjJ
 osz95h41zYayoSkYD3C8mxIAhV//e16lOi+q6EgFBJTAgsC9XYvBJayFob8IMOJYpZHG
 ReiEfSmlxm0jHMSm9mIsyV2WKia//95oBq2N0Ww4UVbR+KVQHbW4cU/eDcpKYJ66jUzD
 6FHsyog+U1sIiDs2juKzZErwdyMJo1xM1r6XiYGgARdukPE2wAgVnWndtkeY9lJhkd1D
 e74iWa1WwMs3vHLuNXG86LgNbx1lWP0eZG11AmU3jDrdB8d5SlB141BNNl96NWzgphat
 6QJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jfNNEg4YWXmXqYR9H7tCNhq2xPlPNDmuq3DmGMJWmh8=;
 b=WBQB+JXk46l25tS2DMGtBsE7nWk43u/W/reiZ7Vo8u0Wo0JM3P61+U+ftHiHGRfIaW
 XDGPgp2cJ9FDo4gd2ArPVdGtuz0jMtlkEcH0l2OBbhHdYpQYXIJtjzB42A0aCFm6R7iu
 Jjvl8A8ndTEGQaf1z65hPdreKgtEczw33h5JkaEHLkvOVOALpuem3bwEvOlOiDP46c88
 Q77dgkbVka4C3xpDNi3SEyrJT6ynOiT7nsiUBpOYfTpMFUUNzJjHp971m0bo3UaQcTW5
 HHuvLU3BwHqf0YoAwVcmFdrDM70s7fin6QII+CCGEhv55w5bMB1xXa97qYY83Ret7YyK
 os6A==
X-Gm-Message-State: APjAAAXVAsgT0itYHf4Sz/hAlzpQcPt1CZxk4X/S+RpfNQYRTLyvB06S
 LojUyFWwWFf6Ula/cePdIGTtmkCjUNqDGbocXiBDgQ==
X-Google-Smtp-Source: APXvYqzv6e+DqoNRilibIFzUVaa/7v8Np7/jZeI2hLlLcZACEoPElkCWi4mxDCufsiBXdFI1s30kAhVPlUeSW2yIhpY=
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr47412305oto.207.1577854388602; 
 Tue, 31 Dec 2019 20:53:08 -0800 (PST)
MIME-Version: 1.0
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987346.367056.16932641815225610530.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200101033517.GB14346@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200101033517.GB14346@dhcp-128-65.nay.redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 31 Dec 2019 20:52:57 -0800
Message-ID: <CAPcyv4hXJi6v57L=-n8H9F_5Zvonr1idyijW7MqPdyMoGCj=2A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] efi: Fix efi_memmap_alloc() leaks
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_205310_120574_2F3A5C5D 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 7:35 PM Dave Young <dyoung@redhat.com> wrote:
>
> Hi Dan,
> On 12/31/19 at 02:04pm, Dan Williams wrote:
> > With efi_fake_memmap() and efi_arch_mem_reserve() the efi table may be
> > updated and replaced multiple times. When that happens a previous
> > dynamically allocated efi memory map can be garbage collected. Use the
> > new EFI_MEMMAP_{SLAB,MEMBLOCK} flags to detect when a dynamically
> > allocated memory map is being replaced.
> >
> > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  drivers/firmware/efi/memmap.c |   24 ++++++++++++++++++++++++
> >  1 file changed, 24 insertions(+)
> >
> > diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> > index 2b81ee6858a9..188ab3cd5c52 100644
> > --- a/drivers/firmware/efi/memmap.c
> > +++ b/drivers/firmware/efi/memmap.c
> > @@ -29,6 +29,28 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
> >       return PFN_PHYS(page_to_pfn(p));
> >  }
> >
> > +static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
> > +{
> > +     if (WARN_ON(slab_is_available() && (flags & EFI_MEMMAP_MEMBLOCK)))
> > +             return;
> > +
> > +     if (flags & EFI_MEMMAP_MEMBLOCK) {
> > +             memblock_free(phys, size);
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
> > @@ -209,6 +231,8 @@ int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map,
> >       data.desc_size = efi.memmap.desc_size;
> >       flags |= efi.memmap.flags & EFI_MEMMAP_LATE;
> >
> > +     efi_memmap_free();
> > +
> >       return __efi_memmap_init(&data, flags);
>
> Hmm, only free the memmap in case __efi_memmap_init succeeded..

Ah true, that is a hastily chosen placement. Probably better in
__efi_memmap_init() after we're committed to the new map.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
