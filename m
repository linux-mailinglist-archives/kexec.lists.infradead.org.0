Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D22131E3A
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 05:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0lPvpOVLKF1Mk2GXlKFzW+U+iFUHVEIKQqHGFhZ7lM=; b=vBy0bMjpP/iPld
	tSPeT/d+3hCOMH3E7Zo+V7QgwMS9Ca9ad7vFVZSaLUcxKsULsX7hRTElZy0qMrLYXnC8N/Eh/6Z8j
	EjE5/9VCQg89oyXMeCINI4GM6v6AyKpayTPoOTr8UsoxQgFdJsh+SiMe0GeGobRZNDQdSMdKf+phI
	4Vrbh9o2Qe52t0pqYgs7w8+L6kZCOXfduGTeeI7++A34ljVh5F1edosfxi+luKymwYi3A2NLG6Cli
	fZ2pDjxoXgz2UeiaeXG7QrAXE3236NPUVRfKQ3QESW0Abuz+y5RscP0npvRntdsAaPiEFoiJ9sEtz
	4mNf4k3u8Vo5GOzfp3Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iog6e-000194-OS; Tue, 07 Jan 2020 04:04:36 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iog6b-00018J-1H
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 04:04:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578369869;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=QW0p8oTlxhvKg2yrL/7zWX0v0cvnMqmEy8AF/MJVcXM=;
 b=QMtvwjBLOWBMwR+MBvxT+1RMFVTcX2CsoCx4atYsDyY8CCdrK7f8bSXLrBi2uABX0x7yRw
 6Blm7DRZXy55rtH0ANOWQ2X1BS4VITeqq3be5+VYYzaaXItr5bNlGJWlYyymGG4hDNkdcf
 zaYSyznr2Qa5SDAxZgEQxPrSuJGmP0Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-j9l31aZrPj-tj4ronKLGRA-1; Mon, 06 Jan 2020 23:04:25 -0500
X-MC-Unique: j9l31aZrPj-tj4ronKLGRA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B037B1005513;
 Tue,  7 Jan 2020 04:04:23 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-32.pek2.redhat.com
 [10.72.12.32])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 5D90F5C21A;
 Tue,  7 Jan 2020 04:04:19 +0000 (UTC)
Date: Tue, 7 Jan 2020 12:04:15 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v4 4/4] efi: Fix handling of multiple efi_fake_mem= entries
Message-ID: <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_200433_157184_88D5847B 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mingo@redhat.com,
 Taku Izumi <izumi.taku@jp.fujitsu.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 01/06/20 at 04:40pm, Dan Williams wrote:
> Dave noticed that when specifying multiple efi_fake_mem= entries only
> the last entry was successfully being reflected in the efi memory map.
> This is due to the fact that the efi_memmap_insert() is being called
> multiple times, but on successive invocations the insertion should be
> applied to the last new memmap rather than the original map at
> efi_fake_memmap() entry.
> 
> Rework efi_fake_memmap() to install the new memory map after each
> efi_fake_mem= entry is parsed.
> 
> This also fixes an issue in efi_fake_memmap() that caused it to litter
> emtpy entries into the end of the efi memory map. An empty entry causes
> efi_memmap_insert() to attempt more memmap splits / copies than
> efi_memmap_split_count() accounted for when sizing the new map. When
> that happens efi_memmap_insert() may overrun its allocation, and if you
> are lucky will spill over to an unmapped page leading to crash
> signature like the following rather than silent corruption:
> 
>     BUG: unable to handle page fault for address: ffffffffff281000
>     [..]
>     RIP: 0010:efi_memmap_insert+0x11d/0x191
>     [..]
>     Call Trace:
>      ? bgrt_init+0xbe/0xbe
>      ? efi_arch_mem_reserve+0x1cb/0x228
>      ? acpi_parse_bgrt+0xa/0xd
>      ? acpi_table_parse+0x86/0xb8
>      ? acpi_boot_init+0x494/0x4e3
>      ? acpi_parse_x2apic+0x87/0x87
>      ? setup_acpi_sci+0xa2/0xa2
>      ? setup_arch+0x8db/0x9e1
>      ? start_kernel+0x6a/0x547
>      ? secondary_startup_64+0xb6/0xc0
> 
> Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
> services data to fix kexec breakage" is listed in Fixes: since it
> introduces more occurrences where efi_memmap_insert() is invoked after
> an efi_fake_mem= configuration has been parsed. Previously the side
> effects of vestigial empty entries were benign, but with commit
> af1648984828 that follow-on efi_memmap_insert() invocation triggers
> efi_memmap_insert() overruns.
> 
> Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")

A nitpick for the Fixes flags, as I replied in the thread below:
https://lore.kernel.org/linux-efi/CAPcyv4jLxqPaB22Ao9oV31Gm=b0+Phty+Uz33Snex4QchOUb0Q@mail.gmail.com/T/#m2bb2dd00f7715c9c19ccc48efef0fcd5fdb626e7

I reproduced two other panics without the patches applied, so this issue
is not caused by either of the commits, maybe just drop the Fixes.

> Link: https://lore.kernel.org/r/20191231014630.GA24942@dhcp-128-65.nay.redhat.com
> Reported-by: Dave Young <dyoung@redhat.com>
> Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> Cc: Michael Weiser <michael@weiser.dinsnail.net>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@kernel.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  drivers/firmware/efi/fake_mem.c |   31 ++++++++++++++++---------------
>  drivers/firmware/efi/memmap.c   |    2 +-
>  include/linux/efi.h             |    2 ++
>  3 files changed, 19 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
> index a8d20568d532..6e0f34a38171 100644
> --- a/drivers/firmware/efi/fake_mem.c
> +++ b/drivers/firmware/efi/fake_mem.c
> @@ -34,25 +34,16 @@ static int __init cmp_fake_mem(const void *x1, const void *x2)
>  	return 0;
>  }
>  
> -void __init efi_fake_memmap(void)
> +static void __init efi_fake_range(struct efi_mem_range *efi_range)
>  {
>  	struct efi_memory_map_data data = { 0 };
>  	int new_nr_map = efi.memmap.nr_map;
>  	efi_memory_desc_t *md;
>  	void *new_memmap;
> -	int i;
> -
> -	if (!efi_enabled(EFI_MEMMAP) || !nr_fake_mem)
> -		return;
>  
>  	/* count up the number of EFI memory descriptor */
> -	for (i = 0; i < nr_fake_mem; i++) {
> -		for_each_efi_memory_desc(md) {
> -			struct range *r = &efi_fake_mems[i].range;
> -
> -			new_nr_map += efi_memmap_split_count(md, r);
> -		}
> -	}
> +	for_each_efi_memory_desc(md)
> +		new_nr_map += efi_memmap_split_count(md, &efi_range->range);

For this part, although I still have some concerns, but since I'm not
100% clear about it, maybe just leave it as you do, and see if it is
good to Ard.

>  
>  	/* allocate memory for new EFI memmap */
>  	if (efi_memmap_alloc(new_nr_map, &data) != 0)
> @@ -61,17 +52,27 @@ void __init efi_fake_memmap(void)
>  	/* create new EFI memmap */
>  	new_memmap = early_memremap(data.phys_map, data.size);
>  	if (!new_memmap) {
> -		memblock_free(data.phys_map, data.size);
> +		__efi_memmap_free(data.phys_map, data.size, data.flags);
>  		return;
>  	}
>  
> -	for (i = 0; i < nr_fake_mem; i++)
> -		efi_memmap_insert(&efi.memmap, new_memmap, &efi_fake_mems[i]);
> +	efi_memmap_insert(&efi.memmap, new_memmap, efi_range);
>  
>  	/* swap into new EFI memmap */
>  	early_memunmap(new_memmap, data.size);
>  
>  	efi_memmap_install(&data);
> +}
> +
> +void __init efi_fake_memmap(void)
> +{
> +	int i;
> +
> +	if (!efi_enabled(EFI_MEMMAP) || !nr_fake_mem)
> +		return;
> +
> +	for (i = 0; i < nr_fake_mem; i++)
> +		efi_fake_range(&efi_fake_mems[i]);
>  
>  	/* print new EFI memmap */
>  	efi_print_memmap();
> diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> index bffa320d2f9a..1b6a4aa78a09 100644
> --- a/drivers/firmware/efi/memmap.c
> +++ b/drivers/firmware/efi/memmap.c
> @@ -29,7 +29,7 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
>  	return PFN_PHYS(page_to_pfn(p));
>  }
>  
> -static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
> +void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
>  {
>  	if (flags & EFI_MEMMAP_MEMBLOCK) {
>  		if (slab_is_available())
> diff --git a/include/linux/efi.h b/include/linux/efi.h
> index 416eac01b1a1..539e81c942dc 100644
> --- a/include/linux/efi.h
> +++ b/include/linux/efi.h
> @@ -1062,6 +1062,8 @@ extern void __iomem *efi_lookup_mapped_addr(u64 phys_addr);
>  
>  extern int __init efi_memmap_alloc(unsigned int num_entries,
>  				   struct efi_memory_map_data *data);
> +extern void __efi_memmap_free(u64 phys, unsigned long size,
> +			      unsigned long flags);
>  extern int __init efi_memmap_init_early(struct efi_memory_map_data *data);
>  extern int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size);
>  extern void __init efi_memmap_unmap(void);
> 

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
