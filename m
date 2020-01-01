Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AD6412DDA8
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 06:05:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ogGKilZQvRt8Gacx893ptFEQfZsqdVDxeYxPUJIOuUE=; b=hl/Y6PHS7gKD3f
	0ZMlM+mhhZdAcEwJINlNkJEAF9rvMueZPBJp3XDjIjnBDD/7Vq7MaZCZYrp8+5n566KbrSejQdDBY
	AKHdKOVKbMo0x5nG9hkukAPzwhpGwyyz9EgEUIX26HvsMsxqHyqOdcAL0KSASTzFNvl2D47hX/LwY
	fpjE1vtp4kCRQhi8hpCWOYcgtaAkOhU0xtifjTFOXKcy3LB5vyhyjQZNGgrKMcsqv1Um+BNri23fW
	xNF4miW0V/rqglbAeodHkIi3mHKWpCZmw4/3LMVn4PDPo2eM2DAHk3OFBXcl8hHwanbvyxztSLjkC
	JrSeRj+Aq7b+WulflKZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imWBu-0006HJ-Eq; Wed, 01 Jan 2020 05:05:06 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imWBp-0005ht-Fl
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 05:05:03 +0000
Received: by mail-oi1-x241.google.com with SMTP id c16so12389122oic.3
 for <kexec@lists.infradead.org>; Tue, 31 Dec 2019 21:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eOPNXB6Xk/9bMW2uOkkU+s8IZY30ZYawh5JZf1y2MIo=;
 b=JOVHi6tqb1rlBNhPbFm9/EEa5MJto3/i/WyNI0+4nYE4wpjHIhXajOPXthUsvX6/f1
 D9pPf1QaZczjBgWkBb9l7MlflvcqQ3838uhdJ6JDfCKLsnqRaW8taEBmgQkxy4uoHr9M
 9pm1AtwOrFLpdpqv0U+zWStXwlwGsArzSI76T51MGHBYYmIEcuqLXN5bCTvynMPRA/qr
 roAAOKM4f5zkT+6GoPGxqivOq8pFBT9V1lJ/DfauIb79aW5xsM41GGBAVUDRoIUlRFnb
 MEOBNtwCkBl9oPw6qyMEJYBkIPE30rKP7m63syzGlcGTQszVvmgunv73cTfrVCZFCUxp
 ibpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eOPNXB6Xk/9bMW2uOkkU+s8IZY30ZYawh5JZf1y2MIo=;
 b=RR/fSsgl+JIguyVuf9YKrHMQopJkCuMZdi9G0eB7ELut/LR3Ht6BoX27HzfDRFJ5Od
 J0d4j3nt4NhgXSezaiDqdHFm8vSdvuwFQglkHptnzXpseWBugud7WIZceIxLt2iiKpFf
 vC++re8d0Ptn+ppu+OWJsZq9OnnOGU/ZoceFuXJcihh8OctHj+LdDRG2nf9LqZuwwkH7
 eRsj1Ov3Zx0AXUomS9oOgaY+dlKEGAZ5HCDrSx3DcKXy2GS1MaIbHnup6dN9BEFYrL23
 qdHxctCKsq0wTnCTpWlVhJMl+XlN+jz72NXUXMIWv5r24nTclxhtFuCUlztdl0PfGoGO
 pHoA==
X-Gm-Message-State: APjAAAUsAZ22I+eQEI/5gifzYIoUtLCXP0XAbbd66Zt4zg9CTHw5dCCz
 175KM5IuzZj7cNlfWv7cV3DaEPJEeJxxekdipW4eWg==
X-Google-Smtp-Source: APXvYqytitIOduL+M4M9U0lY09BLNrz5HLgUQb45VAorwwNMnbqRHTSGtQd3uN/0akWinU9KA0zJXFG/+BnDPhkUTPs=
X-Received: by 2002:a05:6808:a83:: with SMTP id q3mr1870737oij.0.1577855099505; 
 Tue, 31 Dec 2019 21:04:59 -0800 (PST)
MIME-Version: 1.0
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200101045141.GA15155@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200101045141.GA15155@dhcp-128-65.nay.redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 31 Dec 2019 21:04:48 -0800
Message-ID: <CAPcyv4hSB9B5tiKVwtNOgDS6KS2Pj6f962OPBZVZpPjrBt6Z8A@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] efi: Fix handling of multiple efi_fake_mem= entries
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_210501_528672_8A199619 
X-CRM114-Status: GOOD (  31.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 8:52 PM Dave Young <dyoung@redhat.com> wrote:
>
> Hi Dan,
> On 12/31/19 at 02:04pm, Dan Williams wrote:
> > Dave noticed that when specifying multiple efi_fake_mem= entries only
> > the last entry was successfully being reflected in the efi memory map.
> > This is due to the fact that the efi_memmap_insert() is being called
> > multiple times, but on successive invocations the insertion should be
> > applied to the last new memmap rather than the original map at
> > efi_fake_memmap() entry.
> >
> > Rework efi_fake_memmap() to install the new memory map after each
> > efi_fake_mem= entry is parsed.
> >
> > This also fixes an issue in efi_fake_memmap() that caused it to litter
> > emtpy entries into the end of the efi memory map. The empty entry causes
> > efi_memmap_insert() to attempt more memmap splits / copies than
> > efi_memmap_split_count() accounted for when sizing the new map.
> >
> >     BUG: unable to handle page fault for address: ffffffffff281000
> >     [..]
> >     RIP: 0010:efi_memmap_insert+0x11d/0x191
> >     [..]
> >     Call Trace:
> >      ? bgrt_init+0xbe/0xbe
> >      ? efi_arch_mem_reserve+0x1cb/0x228
> >      ? acpi_parse_bgrt+0xa/0xd
> >      ? acpi_table_parse+0x86/0xb8
> >      ? acpi_boot_init+0x494/0x4e3
> >      ? acpi_parse_x2apic+0x87/0x87
> >      ? setup_acpi_sci+0xa2/0xa2
> >      ? setup_arch+0x8db/0x9e1
> >      ? start_kernel+0x6a/0x547
> >      ? secondary_startup_64+0xb6/0xc0
> >
> > Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
> > services data to fix kexec breakage" is listed in Fixes: since it
> > introduces more occurrences where efi_memmap_insert() is invoked after
> > an efi_fake_mem= configuration has been parsed. Previously the side
> > effects of vestigial empty entries were benign, but with commit
> > af1648984828 that follow-on efi_memmap_insert() invocation triggers the
> > above crash signature.
> >
> > Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> > Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
> > Link: https://lore.kernel.org/r/20191231014630.GA24942@dhcp-128-65.nay.redhat.com
> > Reported-by: Dave Young <dyoung@redhat.com>
> > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > Cc: Michael Weiser <michael@weiser.dinsnail.net>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Ingo Molnar <mingo@kernel.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  drivers/firmware/efi/fake_mem.c |   32 +++++++++++++++++---------------
> >  drivers/firmware/efi/memmap.c   |    2 +-
> >  include/linux/efi.h             |    2 ++
> >  3 files changed, 20 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
> > index 7e53e5520548..68d752d8af21 100644
> > --- a/drivers/firmware/efi/fake_mem.c
> > +++ b/drivers/firmware/efi/fake_mem.c
> > @@ -34,26 +34,17 @@ static int __init cmp_fake_mem(const void *x1, const void *x2)
> >       return 0;
> >  }
> >
> > -void __init efi_fake_memmap(void)
> > +static void __init efi_fake_range(struct efi_mem_range *efi_range)
> >  {
> >       int new_nr_map = efi.memmap.nr_map;
> >       efi_memory_desc_t *md;
> >       phys_addr_t new_memmap_phy;
> >       unsigned long flags = 0;
> >       void *new_memmap;
> > -     int i;
> > -
> > -     if (!efi_enabled(EFI_MEMMAP) || !nr_fake_mem)
> > -             return;
> >
> >       /* count up the number of EFI memory descriptor */
> > -     for (i = 0; i < nr_fake_mem; i++) {
> > -             for_each_efi_memory_desc(md) {
> > -                     struct range *r = &efi_fake_mems[i].range;
> > -
> > -                     new_nr_map += efi_memmap_split_count(md, r);
> > -             }
> > -     }
> > +     for_each_efi_memory_desc(md)
> > +             new_nr_map += efi_memmap_split_count(md, &efi_range->range);
>
> I have another concern here :(
>
> THe efi_memmap_split_count mean to only split for a specific md, and you
> can see arch/x86/platform/efi/quirks.c about the use:
>         if (addr + size > md.phys_addr + (md.num_pages << EFI_PAGE_SHIFT)) {
>                 pr_err("Region spans EFI memory descriptors, %pa\n", &addr);
>                 return;
>         }
>
> Any memory region to be inserted but spans different md will be
> rejected.  So the memmap insert logic seems does not support the
> spanned ranges.  I did not find a case two contiguous same type ranges
> eg. two "Conventional memory", if have they should have been merged.
>
> So maybe just use same way as the quirks.c here to find the valid md first
> then get the split count?

I don't immediately see why it would be a problem to just let the md
loop that efi_fake_memmap() performs try to split multiple entries. It
may end up with more splits than necessary in which case we'll need
that piece from my original patch to clean those up. Thanks for the
heads up, I'll give it a try and see what shakes out. Are you seeing
any misbehavior on your end?

>
> Otherwise I tested the series bootup test passed.
>
> BTW, another issue about fakemem,  currently it only works with normal
> physical boot,  in case of kexec reboot the kernel only aware of EFI
> runtime memory ranges, we do not pass other types in memmap.  But maybe
> we can live with it considering fake mem is only for debugging purpose.

Does kexec preserve iomem? I.e. as long as the initial translation of
efi entries to e820, and resulting resource tree, is preserved by
successive kexec cycles then I think we're ok.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
