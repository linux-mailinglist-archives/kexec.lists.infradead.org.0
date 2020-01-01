Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2195312DD9F
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 05:52:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZ0weD44LK62UsK9DJjRd/iZ0rdegn9S/GOOoiz5uwU=; b=pS2nE9Pn4kGQBZ
	+njTnadbSU9kWCl5WlVr4nh6rc/sYaKmT2OgnbpFf0Qy+uclCwpArPeymzW9ZW0hFHEfm4JzMm7iU
	t5x8eyZDFXyncC05z+FGJ6Ef9diMeB2EOsGxBItmQabZZGtDd66xAZmo4WXtUDffNYk/dNPj6OsNF
	ZdUEs5144a5HWiaXFBkSD2W2RMprRoGm33VpfNHLuJ51JE87VioR5J6v7rZPIewqnKKmZ7WiHnZOL
	pfKI7Kr8HeRZeVYHuMqLkassh84ypqbbrNKB8EkvROy9CAAly30F92CEKUAhODRmFyh8xU8mGvO2+
	XVDIUZXrB9Ovej7b+dgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imVzJ-0002lg-JM; Wed, 01 Jan 2020 04:52:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imVzF-0002kw-5A
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 04:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577854317;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jNvAEKxX6esQ/hFCmJclrrUl53XOCEqp6qr78VvgHks=;
 b=f7hx9Zr3bm5GK8F68FfyueHTNVF8EUi7wF298dlIgkqXBjjyao+NuoGhRsHixSv8uphtmN
 +Vcb3mqvJIp7Er9guRl7h8ITzfa3ixibC++hf97C6bKMd3e7/4lMZULetdFMJhJ7s9dSAv
 C1FY6OZ1grwYiSQL6D5nju40Zi2Hnv8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-180-AhUNZXtEM16TvLbJMgacGQ-1; Tue, 31 Dec 2019 23:51:52 -0500
X-MC-Unique: AhUNZXtEM16TvLbJMgacGQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8C0D107ACC4;
 Wed,  1 Jan 2020 04:51:50 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-60.pek2.redhat.com
 [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6F06D9A84;
 Wed,  1 Jan 2020 04:51:45 +0000 (UTC)
Date: Wed, 1 Jan 2020 12:51:41 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v2 4/4] efi: Fix handling of multiple efi_fake_mem= entries
Message-ID: <20200101045141.GA15155@dhcp-128-65.nay.redhat.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_205201_428600_97DB993D 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Dan,
On 12/31/19 at 02:04pm, Dan Williams wrote:
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
> emtpy entries into the end of the efi memory map. The empty entry causes
> efi_memmap_insert() to attempt more memmap splits / copies than
> efi_memmap_split_count() accounted for when sizing the new map.
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
> af1648984828 that follow-on efi_memmap_insert() invocation triggers the
> above crash signature.
> 
> Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
> Link: https://lore.kernel.org/r/20191231014630.GA24942@dhcp-128-65.nay.redhat.com
> Reported-by: Dave Young <dyoung@redhat.com>
> Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> Cc: Michael Weiser <michael@weiser.dinsnail.net>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@kernel.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  drivers/firmware/efi/fake_mem.c |   32 +++++++++++++++++---------------
>  drivers/firmware/efi/memmap.c   |    2 +-
>  include/linux/efi.h             |    2 ++
>  3 files changed, 20 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
> index 7e53e5520548..68d752d8af21 100644
> --- a/drivers/firmware/efi/fake_mem.c
> +++ b/drivers/firmware/efi/fake_mem.c
> @@ -34,26 +34,17 @@ static int __init cmp_fake_mem(const void *x1, const void *x2)
>  	return 0;
>  }
>  
> -void __init efi_fake_memmap(void)
> +static void __init efi_fake_range(struct efi_mem_range *efi_range)
>  {
>  	int new_nr_map = efi.memmap.nr_map;
>  	efi_memory_desc_t *md;
>  	phys_addr_t new_memmap_phy;
>  	unsigned long flags = 0;
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

I have another concern here :(

THe efi_memmap_split_count mean to only split for a specific md, and you
can see arch/x86/platform/efi/quirks.c about the use:
        if (addr + size > md.phys_addr + (md.num_pages << EFI_PAGE_SHIFT)) {
                pr_err("Region spans EFI memory descriptors, %pa\n", &addr);
                return;
        }

Any memory region to be inserted but spans different md will be
rejected.  So the memmap insert logic seems does not support the
spanned ranges.  I did not find a case two contiguous same type ranges
eg. two "Conventional memory", if have they should have been merged. 

So maybe just use same way as the quirks.c here to find the valid md first
then get the split count?

Otherwise I tested the series bootup test passed.

BTW, another issue about fakemem,  currently it only works with normal
physical boot,  in case of kexec reboot the kernel only aware of EFI
runtime memory ranges, we do not pass other types in memmap.  But maybe
we can live with it considering fake mem is only for debugging purpose.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
