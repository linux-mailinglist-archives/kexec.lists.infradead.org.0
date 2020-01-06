Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6342F131840
	for <lists+kexec@lfdr.de>; Mon,  6 Jan 2020 20:05:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXsat44053NIqUZMmmyVD3lvg1cxpkaRcSLU/nWfkiU=; b=Q+XIDph+viJGhE
	QBWKT+Xp7JQ8YrDN9HfuXRX0H+cjFkekUtd1KGuay4egMesLN2k9AzOPUiNJRYq9nH7cwdO/2VBq1
	D7ivAUEIOhcSrHzdUj+Z6IRS2BktVfY7RJNCzMG5q1HywxNxuJsX+DgDxB0wm071rJUauRTY0AUFI
	glPy8mB088TBiGqFcAIeAXw/S/eQhitsw1/qpcMvh0ii8XJmhB+8WWFq+rwHPK0XOwoUK0PZ5jq7Y
	DYAJMhywdOH7fre0CQCveGbnlG+z56uU5KFlfFSV2HM6i2KTHX5VaPzUSB0xCk3n8oTGkEM60FvRM
	H+wMiGNeNcVqI5+ooQzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXh6-0000LR-Ur; Mon, 06 Jan 2020 19:05:40 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXh3-0000Kg-9Q
 for kexec@lists.infradead.org; Mon, 06 Jan 2020 19:05:39 +0000
Received: by mail-oi1-x241.google.com with SMTP id p67so16612558oib.13
 for <kexec@lists.infradead.org>; Mon, 06 Jan 2020 11:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=alX9B07HokhP3ECivMm8pGprXZuv/KIuu13Y0Jtq3rg=;
 b=BLpK3J9bEkd6Wg2RItLkAFU/N5U4jsc764hHw3yBcw3+usDirwaNCn/42kqfH64cV+
 oKl6ogYaLW4hZg2GMAIQY0ho7+sKRVlxpCnOWd1sfmjIQDCC//p1wTsMNI01AdG3w0xU
 SyowTtxuWicITn6hSIbggt9P5IFTn59TBd546vxUCqVjqcNCGSOAmZc30Q/KzmimdxjZ
 wGae8x99zXO3rnxaXWswDTOYTWFvuwsMAgFJ/HGB1gy5RLdic16ylAV8tyxK3WaFz8l2
 oBor7VmJvgBEg4hKcfLxI8gGUqp4cpQcVFxeLFLoRfWqHyWAj3JKgU57vYi0ksVjST35
 rJEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=alX9B07HokhP3ECivMm8pGprXZuv/KIuu13Y0Jtq3rg=;
 b=OUmbbqtI6uWr6UoAzmG99AqOpHcjkrW7jTPR/ybK+Ek8J1CFelfsfLx+lleNv34b72
 foLDwV4EwtMeDXwW6dLtruTMJBdbJ++QHXLvD6f93O9NKzsbsnbuUcH6VpGNhm1HKND1
 U6Jjn8BZXzyoAJOuExjRJW7F2jayS/ka2ZPBoGu5vMwRtfF2GeW/zqTAyER+QMmZKiID
 GT1rCVaiDaL4fE6MPW/RJjkDH/pVEdl/ZO+16D01zNPYQwoRHqBHVORtmBE5RHz0Lu3K
 BWDBOc03R+I1SpHKurAryy/hiCospIL0h5ejNhqqcIWKEpFX1V768IbKy1ma4a8xo+wn
 bFpw==
X-Gm-Message-State: APjAAAVevOVCBnL7Q1wDx8QCkYolUdOwzyRFYam61/ANsVhMa+s11ckL
 nWoJIt6QiodNXqWqNJurdz1wfb9qZqVQAQiuRJ/b6w==
X-Google-Smtp-Source: APXvYqwq2F38iwC/q1v5HcOMi4czC/1PUV5A5pBl22QCQ8iuB1wjy6FX5YvmNx5+uzxdNN5E951SvkRKr6IFVGHaryg=
X-Received: by 2002:aca:3f54:: with SMTP id m81mr5940073oia.73.1578337535501; 
 Mon, 06 Jan 2020 11:05:35 -0800 (PST)
MIME-Version: 1.0
References: <157793839827.977550.7845382457971215205.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157793840865.977550.1385745645244916944.stgit@dwillia2-desk3.amr.corp.intel.com>
 <CAKv+Gu8JTha-Os6uzg_ghxodEKgjnkgLwJYFkXZiTbqqdKU6_Q@mail.gmail.com>
In-Reply-To: <CAKv+Gu8JTha-Os6uzg_ghxodEKgjnkgLwJYFkXZiTbqqdKU6_Q@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jan 2020 11:05:24 -0800
Message-ID: <CAPcyv4jqqJwxk8-dZxhZQX0PqNpdsAUVJBG+QufsJx+fhPzmug@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] efi: Add tracking for dynamically allocated memmaps
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_110537_378621_A5D0E843 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
 the arch/x86 maintainers <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 2, 2020 at 1:02 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> Hi Dan,
>
> Thanks for taking the time to really fix this properly.
>
> Comments/questions below.
>
> On Thu, 2 Jan 2020 at 05:29, Dan Williams <dan.j.williams@intel.com> wrote:
> >
> > In preparation for fixing efi_memmap_alloc() leaks, add support for
> > recording whether the memmap was dynamically allocated from slab,
> > memblock, or is the original physical memmap provided by the platform.
> >
> > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  arch/x86/platform/efi/efi.c     |    2 +-
> >  arch/x86/platform/efi/quirks.c  |   11 ++++++-----
> >  drivers/firmware/efi/fake_mem.c |    5 +++--
> >  drivers/firmware/efi/memmap.c   |   16 ++++++++++------
> >  include/linux/efi.h             |    8 ++++++--
> >  5 files changed, 26 insertions(+), 16 deletions(-)
> >
> > diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
> > index 38d44f36d5ed..7086afbb84fd 100644
> > --- a/arch/x86/platform/efi/efi.c
> > +++ b/arch/x86/platform/efi/efi.c
> > @@ -333,7 +333,7 @@ static void __init efi_clean_memmap(void)
> >                 u64 size = efi.memmap.nr_map - n_removal;
> >
> >                 pr_warn("Removing %d invalid memory map entries.\n", n_removal);
> > -               efi_memmap_install(efi.memmap.phys_map, size);
> > +               efi_memmap_install(efi.memmap.phys_map, size, 0);
> >         }
> >  }
> >
> > diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
> > index f8f0220b6a66..4a71c790f9c3 100644
> > --- a/arch/x86/platform/efi/quirks.c
> > +++ b/arch/x86/platform/efi/quirks.c
> > @@ -244,6 +244,7 @@ EXPORT_SYMBOL_GPL(efi_query_variable_store);
> >  void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
> >  {
> >         phys_addr_t new_phys, new_size;
> > +       unsigned long flags = 0;
> >         struct efi_mem_range mr;
> >         efi_memory_desc_t md;
> >         int num_entries;
> > @@ -272,8 +273,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
> >         num_entries += efi.memmap.nr_map;
> >
> >         new_size = efi.memmap.desc_size * num_entries;
> > -
> > -       new_phys = efi_memmap_alloc(num_entries);
> > +       new_phys = efi_memmap_alloc(num_entries, &flags);
> >         if (!new_phys) {
> >                 pr_err("Could not allocate boot services memmap\n");
> >                 return;
> > @@ -288,7 +288,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
> >         efi_memmap_insert(&efi.memmap, new, &mr);
> >         early_memunmap(new, new_size);
> >
> > -       efi_memmap_install(new_phys, num_entries);
> > +       efi_memmap_install(new_phys, num_entries, flags);
> >         e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> >         e820__update_table(e820_table);
> >  }
> > @@ -408,6 +408,7 @@ static void __init efi_unmap_pages(efi_memory_desc_t *md)
> >  void __init efi_free_boot_services(void)
> >  {
> >         phys_addr_t new_phys, new_size;
> > +       unsigned long flags = 0;
> >         efi_memory_desc_t *md;
> >         int num_entries = 0;
> >         void *new, *new_md;
> > @@ -463,7 +464,7 @@ void __init efi_free_boot_services(void)
> >                 return;
> >
> >         new_size = efi.memmap.desc_size * num_entries;
> > -       new_phys = efi_memmap_alloc(num_entries);
> > +       new_phys = efi_memmap_alloc(num_entries, &flags);
> >         if (!new_phys) {
> >                 pr_err("Failed to allocate new EFI memmap\n");
> >                 return;
> > @@ -493,7 +494,7 @@ void __init efi_free_boot_services(void)
> >
> >         memunmap(new);
> >
> > -       if (efi_memmap_install(new_phys, num_entries)) {
> > +       if (efi_memmap_install(new_phys, num_entries, flags)) {
> >                 pr_err("Could not install new EFI memmap\n");
> >                 return;
> >         }
> > diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
> > index bb9fc70d0cfa..7e53e5520548 100644
> > --- a/drivers/firmware/efi/fake_mem.c
> > +++ b/drivers/firmware/efi/fake_mem.c
> > @@ -39,6 +39,7 @@ void __init efi_fake_memmap(void)
> >         int new_nr_map = efi.memmap.nr_map;
> >         efi_memory_desc_t *md;
> >         phys_addr_t new_memmap_phy;
> > +       unsigned long flags = 0;
> >         void *new_memmap;
> >         int i;
> >
> > @@ -55,7 +56,7 @@ void __init efi_fake_memmap(void)
> >         }
> >
> >         /* allocate memory for new EFI memmap */
> > -       new_memmap_phy = efi_memmap_alloc(new_nr_map);
> > +       new_memmap_phy = efi_memmap_alloc(new_nr_map, &flags);
> >         if (!new_memmap_phy)
> >                 return;
> >
> > @@ -73,7 +74,7 @@ void __init efi_fake_memmap(void)
> >         /* swap into new EFI memmap */
> >         early_memunmap(new_memmap, efi.memmap.desc_size * new_nr_map);
> >
> > -       efi_memmap_install(new_memmap_phy, new_nr_map);
> > +       efi_memmap_install(new_memmap_phy, new_nr_map, flags);
> >
>
> So it is the caller's responsibility to record the flags returned by
> efi_memmap_alloc() and pass them into efi_memmap_install(), right?
> Given that we are now passing three pieces of info that need to be in
> sync between the two, could we use a dedicated data structure instead,
> a reference to which is taken by both?

Sounds good, looks like I can mostly reuse 'struct
efi_memory_map_data' for this purpose.

>
>
> >         /* print new EFI memmap */
> >         efi_print_memmap();
> > diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> > index 813674ef9000..2b81ee6858a9 100644
> > --- a/drivers/firmware/efi/memmap.c
> > +++ b/drivers/firmware/efi/memmap.c
> > @@ -32,6 +32,7 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
> >  /**
> >   * efi_memmap_alloc - Allocate memory for the EFI memory map
> >   * @num_entries: Number of entries in the allocated map.
> > + * @flags: Late map, memblock alloc, slab alloc flags
> >   *
> >   * Depending on whether mm_init() has already been invoked or not,
> >   * either memblock or "normal" page allocation is used.
> > @@ -39,20 +40,23 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
> >   * Returns the physical address of the allocated memory map on
> >   * success, zero on failure.
> >   */
> > -phys_addr_t __init efi_memmap_alloc(unsigned int num_entries)
> > +phys_addr_t __init efi_memmap_alloc(unsigned int num_entries, unsigned long *flags)
> >  {
> >         unsigned long size = num_entries * efi.memmap.desc_size;
> >
> > -       if (slab_is_available())
> > +       if (slab_is_available()) {
> > +               *flags |= EFI_MEMMAP_SLAB;
> >                 return __efi_memmap_alloc_late(size);
> > +       }
> >
> > +       *flags |= EFI_MEMMAP_MEMBLOCK;
>
> This assumes flags has neither bit set, but perhaps we should at least
> clear the memblock one if we set the slab one?

Ok.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
