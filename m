Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C093812DD84
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 04:35:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zy7oiu2mc9qBP0YCz9jqv279YNnngVEX1L3xr/scy2U=; b=RYwPhhW0of77yP
	cIMHlbISI2DL8RhlGeOrRJ5XmDykxugOWT3qOzR1opcj7Tve8BRwwlLezeQ0+nwbMXQs7h4yOTX/K
	/puPBpP9tQMsYb1sIBNJ88h8ZyH2WP578gceCFyWqeqAo/ugI8OPkxKp4sPToqNEPtOZJho5fJAjO
	WB+afEz1Z9e9IUmQ3w4NV5NTKv5Vx92SZMG5m2vVh/NVxswUZRP3qqBEaatvAPmHcdRonlsNZZGlm
	ilDqLE5riR4CkJWpYLbZQRaNmyHbvHxi18LotscAkXwklL0CDpX9GIdTmieHGDC+uWCY1HcnYahsb
	RWjxcXQboHnklGPV83pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imUnH-0007n8-TG; Wed, 01 Jan 2020 03:35:35 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imUnE-0007mY-GE
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 03:35:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577849730;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=xGzTIGJEZW1rd19x+B/i8LC/d+Fdo/UuA9DXF5ovwZU=;
 b=hWI8/t2qq0qF88rZGFnfrvGDjdl+8l4uyTwWeeICw2TOrOb1LxH0asySQJ2FmB1EZ/0+uH
 v51VZFh4DEpjs14lfx26Y+aPLEevh6xvY6Jp8zgebk8DAQCFdGG2GIyHRGcNIPnBEvtwo/
 2LkI04zlcycATU9yz2TfNWnzxIH3nkQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-roboTYx1PPClg702gfWojQ-1; Tue, 31 Dec 2019 22:35:26 -0500
X-MC-Unique: roboTYx1PPClg702gfWojQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 94034477;
 Wed,  1 Jan 2020 03:35:24 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-60.pek2.redhat.com
 [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A9ED5C1D8;
 Wed,  1 Jan 2020 03:35:20 +0000 (UTC)
Date: Wed, 1 Jan 2020 11:35:17 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v2 3/4] efi: Fix efi_memmap_alloc() leaks
Message-ID: <20200101033517.GB14346@dhcp-128-65.nay.redhat.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987346.367056.16932641815225610530.stgit@dwillia2-desk3.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157782987346.367056.16932641815225610530.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_193532_617538_2F9BCEF7 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dan,
On 12/31/19 at 02:04pm, Dan Williams wrote:
> With efi_fake_memmap() and efi_arch_mem_reserve() the efi table may be
> updated and replaced multiple times. When that happens a previous
> dynamically allocated efi memory map can be garbage collected. Use the
> new EFI_MEMMAP_{SLAB,MEMBLOCK} flags to detect when a dynamically
> allocated memory map is being replaced.
> 
> Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> ---
>  drivers/firmware/efi/memmap.c |   24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> index 2b81ee6858a9..188ab3cd5c52 100644
> --- a/drivers/firmware/efi/memmap.c
> +++ b/drivers/firmware/efi/memmap.c
> @@ -29,6 +29,28 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
>  	return PFN_PHYS(page_to_pfn(p));
>  }
>  
> +static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
> +{
> +	if (WARN_ON(slab_is_available() && (flags & EFI_MEMMAP_MEMBLOCK)))
> +		return;
> +
> +	if (flags & EFI_MEMMAP_MEMBLOCK) {
> +		memblock_free(phys, size);
> +	} else if (flags & EFI_MEMMAP_SLAB) {
> +		struct page *p = pfn_to_page(PHYS_PFN(phys));
> +		unsigned int order = get_order(size);
> +
> +		free_pages((unsigned long) page_address(p), order);
> +	}
> +}
> +
> +static void __init efi_memmap_free(void)
> +{
> +	__efi_memmap_free(efi.memmap.phys_map,
> +			efi.memmap.desc_size * efi.memmap.nr_map,
> +			efi.memmap.flags);
> +}
> +
>  /**
>   * efi_memmap_alloc - Allocate memory for the EFI memory map
>   * @num_entries: Number of entries in the allocated map.
> @@ -209,6 +231,8 @@ int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map,
>  	data.desc_size = efi.memmap.desc_size;
>  	flags |= efi.memmap.flags & EFI_MEMMAP_LATE;
>  
> +	efi_memmap_free();
> +
>  	return __efi_memmap_init(&data, flags);

Hmm, only free the memmap in case __efi_memmap_init succeeded..

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
