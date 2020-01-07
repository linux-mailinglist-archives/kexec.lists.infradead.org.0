Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C715D131F02
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 06:18:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5Wszz2q1OdYiSw+gYx6EvLV7ojo2yNHzHSHWjafwI0=; b=s0eQzJ/kHNRG4b
	+0W5+F0U6pSuQ3Vc7eDgddje5m4TiJyz1pVVP+Z00mJgPvlQV8jqHkqKwbpZdpuevYoeymlgPTiao
	Go7WZEn8CO9WzFZc8Biugi4t4aZIjGYhrccsyV9AZyi1E0/0+os9ZooNRjoWgiG8rpxUsaAcBYYvy
	vItLNRh0NU/yLG8n3jZSTK24wdUdl0RUMY55x6vTBflcmt+ugC/uxO2l9CohImlcCMr2lek+tqVb4
	eRAK+31kNhbVg2wIAZlAfYxk2Tgo4OQPiWBgddfeYJuSViv8VQ460HGQrUbOj0fsyxs1RzqwuwQnO
	hVFSLcqpQlcTsNIUlrDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohGL-0002Z3-2e; Tue, 07 Jan 2020 05:18:41 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohGG-0002XR-Fx
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 05:18:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578374315;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e+pMdW3YlNEjXyRDuZ2IYPHP1swSW2oY5Q3WONSeYK4=;
 b=NT5rq4x0YYNTrUeva4aH+JWZ7tfaT03GcYcf2qjNZCTvSyqcSJ7+rlpzZDRlKwHTUjiSCZ
 PAfCZaTPSm5/6fofBsmaYyJ+GVkMBAZeK5JNc2YoQVO80O+ZddullYCoogzXicy5NU60yR
 S86xFVEVFiZXqBhALdPhtiQYO0ie68o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-FJfdGUOEPeCfwn242bSx9A-1; Tue, 07 Jan 2020 00:18:31 -0500
X-MC-Unique: FJfdGUOEPeCfwn242bSx9A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3AF4A1800D4E;
 Tue,  7 Jan 2020 05:18:30 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-32.pek2.redhat.com
 [10.72.12.32])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E7F541036D1B;
 Tue,  7 Jan 2020 05:18:26 +0000 (UTC)
Date: Tue, 7 Jan 2020 13:18:22 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v4 3/4] efi: Fix efi_memmap_alloc() leaks
Message-ID: <20200107051822.GB19080@dhcp-128-65.nay.redhat.com>
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835763783.1456824.4013634516855823659.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107035824.GA19080@dhcp-128-65.nay.redhat.com>
 <CAPcyv4jbf2WR2ZU55564fORxKLf8tGH1XbYBpRfTvPouGWk2mg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4jbf2WR2ZU55564fORxKLf8tGH1XbYBpRfTvPouGWk2mg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_211836_604525_5C8197B7 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 01/06/20 at 08:24pm, Dan Williams wrote:
> On Mon, Jan 6, 2020 at 7:58 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 01/06/20 at 04:40pm, Dan Williams wrote:
> > > With efi_fake_memmap() and efi_arch_mem_reserve() the efi table may be
> > > updated and replaced multiple times. When that happens a previous
> > > dynamically allocated efi memory map can be garbage collected. Use the
> > > new EFI_MEMMAP_{SLAB,MEMBLOCK} flags to detect when a dynamically
> > > allocated memory map is being replaced.
> > >
> > > Debug statements in efi_memmap_free() reveal:
> > >
> > >  efi: __efi_memmap_free:37: phys: 0x23ffdd580 size: 2688 flags: 0x2
> > >  efi: __efi_memmap_free:37: phys: 0x9db00 size: 2640 flags: 0x2
> > >  efi: __efi_memmap_free:37: phys: 0x9e580 size: 2640 flags: 0x2
> > >
> > > ...a savings of 7968 bytes on a qemu boot with 2 entries specified to
> > > efi_fake_mem=.
> > >
> > > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > > ---
> > >  drivers/firmware/efi/memmap.c |   24 ++++++++++++++++++++++++
> > >  1 file changed, 24 insertions(+)
> > >
> > > diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
> > > index 04dfa56b994b..bffa320d2f9a 100644
> > > --- a/drivers/firmware/efi/memmap.c
> > > +++ b/drivers/firmware/efi/memmap.c
> > > @@ -29,6 +29,28 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
> > >       return PFN_PHYS(page_to_pfn(p));
> > >  }
> > >
> > > +static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
> > > +{
> > > +     if (flags & EFI_MEMMAP_MEMBLOCK) {
> > > +             if (slab_is_available())
> > > +                     memblock_free_late(phys, size);
> > > +             else
> > > +                     memblock_free(phys, size);
> > > +     } else if (flags & EFI_MEMMAP_SLAB) {
> > > +             struct page *p = pfn_to_page(PHYS_PFN(phys));
> > > +             unsigned int order = get_order(size);
> > > +
> > > +             free_pages((unsigned long) page_address(p), order);
> > > +     }
> > > +}
> > > +
> > > +static void __init efi_memmap_free(void)
> > > +{
> > > +     __efi_memmap_free(efi.memmap.phys_map,
> > > +                     efi.memmap.desc_size * efi.memmap.nr_map,
> > > +                     efi.memmap.flags);
> > > +}
> > > +
> > >  /**
> > >   * efi_memmap_alloc - Allocate memory for the EFI memory map
> > >   * @num_entries: Number of entries in the allocated map.
> > > @@ -100,6 +122,8 @@ static int __init __efi_memmap_init(struct efi_memory_map_data *data)
> > >               return -ENOMEM;
> > >       }
> > >
> > > +     efi_memmap_free();
> > > +
> >
> > This seems still not safe,  see below function:
> > arch/x86/platform/efi/efi.c:
> > static void __init efi_clean_memmap(void)
> > It use same memmap for both old and new, and filter out those invalid
> > ranges in place, if the memory is freed then ..
> 
> In the efi_clean_memmap() case flags are 0, so efi_memmap_free() is a nop.
> 
> Would you feel better with an explicit?
> 
> WARN_ON(efi.memmap.phys_map == data->phys_map && (data->flags &
> (EFI_MEMMAP_SLAB | EFI_MEMMAP_MEMBLOCK))
> 
> ...not sure it's worth it.

Ah, yes, sorry I did not see the flags, although it is not very obvious.
Maybe add some code comment for efi_mem_alloc and efi_mem_init.

Let's defer the suggestion to Ard.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
