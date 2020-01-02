Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F3D12E428
	for <lists+kexec@lfdr.de>; Thu,  2 Jan 2020 10:02:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8G0iWN/9IbpnDBcf4izwdGuw261skUhnwk6jLN2hk0w=; b=P+vJrD+Kh7wwwb
	BV6PNIhouvPrChj+n/dJhKZyrOYZgxfG/5MdjvYl9qbcX93eaHvZ3AzOBacTfzOfQMGefOIqqEH8d
	ufWhGHLWQ5Fae7yj5rjM/8ejpzbcbmmMaVnJi5HPXScUmcZYEvCA0XmqbbvtKU6fXZT3CQcN1MkVB
	DrghAlGHa2OONY8v7u17kL/uP+aTDkPJRQ4Qb0Z6Dad7LZKWl2DKieOxOBc81kMLbtVDgPJia/SFS
	rOqZKR3yVB0RVWwzIPICa8j8Egw/Km5+njEPZg717P2IllgTS62bpx10aCMs9bLMiiJabyccKt6+b
	l4eI1QR0Xg1jL0CZpDNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imwN0-0003C0-Gu; Thu, 02 Jan 2020 09:02:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imwMw-0003Bf-Rq
 for kexec@lists.infradead.org; Thu, 02 Jan 2020 09:02:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id m24so4977708wmc.3
 for <kexec@lists.infradead.org>; Thu, 02 Jan 2020 01:02:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8cd3TpXBK+IawPjaw7aXD6zwvAgQhDNn6DDpmTH/NmA=;
 b=KNP/vimFNK5FMj+XsgC3HDeHP790Mksx5nUjTP9WpHmZqugxqPcgVorw120zkCiCsS
 W/vXqj8psAeKIzqQN9itoqKzpaCxtJu8DzBl9Gd2aQfHmnmeINQvVk+vWdbKlvcWV+Kz
 Sa6X6Pd5BxM2ialVGM8Y4ZeiSalVOZ0V8M6N4b1hcFt8OZe5DCP/tvYQmM1Bmt2qG/jF
 XbBoqje6MpbCno2d/jGlbsH0Mo5JRBwGRq+pzetLOFMBqfQJWQT/b/BsA9OvPLzVHU89
 +29zre4T7h4FMv7rizfaWgAwT7Uua+28L4fLUBBFTlPNJO7t+aqBbAp7rQrqyEkjzefC
 v4UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8cd3TpXBK+IawPjaw7aXD6zwvAgQhDNn6DDpmTH/NmA=;
 b=WCi5K1to1DrmZwkdT4SF0qpChP2YRyzFaP1XbDbaRlPldsHTdwQxbE98hz8drP6+L2
 uiliNoaBfTjzLeb4b5jIQYHAg4NifpW3dSdb7/BawVCR/e9psEmreDsLRpjghDiasAvu
 J2CuGuTgOqwQ2KbyKksMEWdNrv63sQ6KLBF1xoo3Ir/Qjkw8cRETvhCtREgaU6cgvFv8
 xzsGrqELc1lNukR8XIT1tDeOBFEC1GmtT0yBY4pSLlmWJ4A3ePKdYxx6P/0M8bNKd9x6
 5hIQZ1PmDHpx0Iwk/uhCMgurnRMA41UefUDarMy8Yx6j8VEIY6oz1AjuYWR0EZeyteRo
 yHVg==
X-Gm-Message-State: APjAAAVQneLi/4WYck00zmvpUsozbM/IQ4PooAPzdtnAJGF5IkLo6LSF
 edztUFfajBtCLy6DHnvKWk994YtKQTJGjqBEnq3HcQ==
X-Google-Smtp-Source: APXvYqzzB/zIGsvariBu5SIfw++3sUzS0igh4Mc8RsB9yOaotLjMsfSJvh1WK64gidIIQBjNl6FqKpqbYz3OkQY/AiA=
X-Received: by 2002:a1c:7205:: with SMTP id n5mr13795383wmc.9.1577955732121;
 Thu, 02 Jan 2020 01:02:12 -0800 (PST)
MIME-Version: 1.0
References: <157793839827.977550.7845382457971215205.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157793840865.977550.1385745645244916944.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <157793840865.977550.1385745645244916944.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 2 Jan 2020 10:02:00 +0100
Message-ID: <CAKv+Gu8JTha-Os6uzg_ghxodEKgjnkgLwJYFkXZiTbqqdKU6_Q@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] efi: Add tracking for dynamically allocated memmaps
To: Dan Williams <dan.j.williams@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_010214_900539_0D869BA3 
X-CRM114-Status: GOOD (  25.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi Dan,

Thanks for taking the time to really fix this properly.

Comments/questions below.

On Thu, 2 Jan 2020 at 05:29, Dan Williams <dan.j.williams@intel.com> wrote:
>
> In preparation for fixing efi_memmap_alloc() leaks, add support for
> recording whether the memmap was dynamically allocated from slab,
> memblock, or is the original physical memmap provided by the platform.
>
> Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  arch/x86/platform/efi/efi.c     |    2 +-
>  arch/x86/platform/efi/quirks.c  |   11 ++++++-----
>  drivers/firmware/efi/fake_mem.c |    5 +++--
>  drivers/firmware/efi/memmap.c   |   16 ++++++++++------
>  include/linux/efi.h             |    8 ++++++--
>  5 files changed, 26 insertions(+), 16 deletions(-)
>
> diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
> index 38d44f36d5ed..7086afbb84fd 100644
> --- a/arch/x86/platform/efi/efi.c
> +++ b/arch/x86/platform/efi/efi.c
> @@ -333,7 +333,7 @@ static void __init efi_clean_memmap(void)
>                 u64 size = efi.memmap.nr_map - n_removal;
>
>                 pr_warn("Removing %d invalid memory map entries.\n", n_removal);
> -               efi_memmap_install(efi.memmap.phys_map, size);
> +               efi_memmap_install(efi.memmap.phys_map, size, 0);
>         }
>  }
>
> diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
> index f8f0220b6a66..4a71c790f9c3 100644
> --- a/arch/x86/platform/efi/quirks.c
> +++ b/arch/x86/platform/efi/quirks.c
> @@ -244,6 +244,7 @@ EXPORT_SYMBOL_GPL(efi_query_variable_store);
>  void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
>  {
>         phys_addr_t new_phys, new_size;
> +       unsigned long flags = 0;
>         struct efi_mem_range mr;
>         efi_memory_desc_t md;
>         int num_entries;
> @@ -272,8 +273,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
>         num_entries += efi.memmap.nr_map;
>
>         new_size = efi.memmap.desc_size * num_entries;
> -
> -       new_phys = efi_memmap_alloc(num_entries);
> +       new_phys = efi_memmap_alloc(num_entries, &flags);
>         if (!new_phys) {
>                 pr_err("Could not allocate boot services memmap\n");
>                 return;
> @@ -288,7 +288,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
>         efi_memmap_insert(&efi.memmap, new, &mr);
>         early_memunmap(new, new_size);
>
> -       efi_memmap_install(new_phys, num_entries);
> +       efi_memmap_install(new_phys, num_entries, flags);
>         e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
>         e820__update_table(e820_table);
>  }
> @@ -408,6 +408,7 @@ static void __init efi_unmap_pages(efi_memory_desc_t *md)
>  void __init efi_free_boot_services(void)
>  {
>         phys_addr_t new_phys, new_size;
> +       unsigned long flags = 0;
>         efi_memory_desc_t *md;
>         int num_entries = 0;
>         void *new, *new_md;
> @@ -463,7 +464,7 @@ void __init efi_free_boot_services(void)
>                 return;
>
>         new_size = efi.memmap.desc_size * num_entries;
> -       new_phys = efi_memmap_alloc(num_entries);
> +       new_phys = efi_memmap_alloc(num_entries, &flags);
>         if (!new_phys) {
>                 pr_err("Failed to allocate new EFI memmap\n");
>                 return;
> @@ -493,7 +494,7 @@ void __init efi_free_boot_services(void)
>
>         memunmap(new);
>
> -       if (efi_memmap_install(new_phys, num_entries)) {
> +       if (efi_memmap_install(new_phys, num_entries, flags)) {
>                 pr_err("Could not install new EFI memmap\n");
>                 return;
>         }
> diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
> index bb9fc70d0cfa..7e53e5520548 100644
> --- a/drivers/firmware/efi/fake_mem.c
> +++ b/drivers/firmware/efi/fake_mem.c
> @@ -39,6 +39,7 @@ void __init efi_fake_memmap(void)
>         int new_nr_map = efi.memmap.nr_map;
>         efi_memory_desc_t *md;
>         phys_addr_t new_memmap_phy;
> +       unsigned long flags = 0;
>         void *new_memmap;
>         int i;
>
> @@ -55,7 +56,7 @@ void __init efi_fake_memmap(void)
>         }
>
>         /* allocate memory for new EFI memmap */
> -       new_memmap_phy = efi_memmap_alloc(new_nr_map);
> +       new_memmap_phy = efi_memmap_alloc(new_nr_map, &flags);
>         if (!new_memmap_phy)
>                 return;
>
> @@ -73,7 +74,7 @@ void __init efi_fake_memmap(void)
>         /* swap into new EFI memmap */
>         early_memunmap(new_memmap, efi.memmap.desc_size * new_nr_map);
>
> -       efi_memmap_install(new_memmap_phy, new_nr_map);
> +       efi_memmap_install(new_memmap_phy, new_nr_map, flags);
>

So it is the caller's responsibility to record the flags returned by
efi_memmap_alloc() and pass them into efi_memmap_install(), right?
Given that we are now passing three pieces of info that need to be in
sync between the two, could we use a dedicated data structure instead,
a reference to which is taken by both?


>         /* print new EFI memmap */
>         efi_print_memmap();
> diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> index 813674ef9000..2b81ee6858a9 100644
> --- a/drivers/firmware/efi/memmap.c
> +++ b/drivers/firmware/efi/memmap.c
> @@ -32,6 +32,7 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
>  /**
>   * efi_memmap_alloc - Allocate memory for the EFI memory map
>   * @num_entries: Number of entries in the allocated map.
> + * @flags: Late map, memblock alloc, slab alloc flags
>   *
>   * Depending on whether mm_init() has already been invoked or not,
>   * either memblock or "normal" page allocation is used.
> @@ -39,20 +40,23 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
>   * Returns the physical address of the allocated memory map on
>   * success, zero on failure.
>   */
> -phys_addr_t __init efi_memmap_alloc(unsigned int num_entries)
> +phys_addr_t __init efi_memmap_alloc(unsigned int num_entries, unsigned long *flags)
>  {
>         unsigned long size = num_entries * efi.memmap.desc_size;
>
> -       if (slab_is_available())
> +       if (slab_is_available()) {
> +               *flags |= EFI_MEMMAP_SLAB;
>                 return __efi_memmap_alloc_late(size);
> +       }
>
> +       *flags |= EFI_MEMMAP_MEMBLOCK;

This assumes flags has neither bit set, but perhaps we should at least
clear the memblock one if we set the slab one?

>         return __efi_memmap_alloc_early(size);
>  }
>
>  /**
>   * __efi_memmap_init - Common code for mapping the EFI memory map
>   * @data: EFI memory map data
> - * @flags: Use early or late mapping function?
> + * @flags: Use early or late mapping function, and allocator
>   *
>   * This function takes care of figuring out which function to use to
>   * map the EFI memory map in efi.memmap based on how far into the boot
> @@ -192,10 +196,10 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
>   *
>   * Returns zero on success, a negative error code on failure.
>   */
> -int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
> +int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map,
> +               unsigned long flags)
>  {
>         struct efi_memory_map_data data;
> -       unsigned long flags;
>
>         efi_memmap_unmap();
>
> @@ -203,7 +207,7 @@ int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
>         data.size = efi.memmap.desc_size * nr_map;
>         data.desc_version = efi.memmap.desc_version;
>         data.desc_size = efi.memmap.desc_size;
> -       flags = efi.memmap.flags & EFI_MEMMAP_LATE;
> +       flags |= efi.memmap.flags & EFI_MEMMAP_LATE;
>
>         return __efi_memmap_init(&data, flags);
>  }
> diff --git a/include/linux/efi.h b/include/linux/efi.h
> index b8e930f5ff77..fa2668a992ae 100644
> --- a/include/linux/efi.h
> +++ b/include/linux/efi.h
> @@ -796,6 +796,8 @@ struct efi_memory_map {
>         unsigned long desc_version;
>         unsigned long desc_size;
>  #define EFI_MEMMAP_LATE (1UL << 0)
> +#define EFI_MEMMAP_MEMBLOCK (1UL << 1)
> +#define EFI_MEMMAP_SLAB (1UL << 2)
>         unsigned long flags;
>  };
>
> @@ -1057,11 +1059,13 @@ static inline efi_status_t efi_query_variable_store(u32 attributes,
>  #endif
>  extern void __iomem *efi_lookup_mapped_addr(u64 phys_addr);
>
> -extern phys_addr_t __init efi_memmap_alloc(unsigned int num_entries);
> +extern phys_addr_t __init efi_memmap_alloc(unsigned int num_entries,
> +               unsigned long *flags);
>  extern int __init efi_memmap_init_early(struct efi_memory_map_data *data);
>  extern int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size);
>  extern void __init efi_memmap_unmap(void);
> -extern int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map);
> +extern int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map,
> +               unsigned long flags);
>  extern int __init efi_memmap_split_count(efi_memory_desc_t *md,
>                                          struct range *range);
>  extern void __init efi_memmap_insert(struct efi_memory_map *old_memmap,
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
