Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA2F10E769
	for <lists+kexec@lfdr.de>; Mon,  2 Dec 2019 10:05:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TxywWPYnYMIoYRTPgYHgso9NfVrw2x/I4QJU15Clio=; b=rScbw3xhwnm8BD
	y3swZnZZsDLMIL423Gonvq10lZ6xw6iaj67p9xEfPiCeVy1pamUpOaP5l9+bqgGroAoWpssM0x/l+
	bXXS5C2LitcO87YvgF3mwxYT0lmvRWY8Kn9Dtaa1RPODQkHczGISsg7E1x52O5SPlp10vESsM4mEu
	p2e12Bfp/HnZYbwrlEcVAjL3WIogwiurFapnjb2oXKdzlA1VV9YZGezaoBwI9899tAKCIeE11olI5
	V+yyiTyiTn9IEGRF/Pgw7E3Y+LZNLKmS3BSNYu3Nlp0Fkj8vKQVF+TsO5QZC5xZGEbASj7yrKcn9v
	WwCI1tSCRnp9CdH4M0Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibheG-00084i-KA; Mon, 02 Dec 2019 09:05:40 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibheC-00083r-34
 for kexec@lists.infradead.org; Mon, 02 Dec 2019 09:05:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575277534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qAoDcpZsTZBeGAgb4FDu6Iu8xRQd3BKioUUXksqixrQ=;
 b=fBneG1cnsmmwoZJbvesaSEif1Mz1ZElbD7AV/ZKUaQVeqlvP0XunJryyOUhV69UG3HY+zq
 34sLyYHA/NNRgqdBOWnxzHiff3eVqBFiwnvo1xVngVR36xSmUpOB0RmOe84YF8PoL7SjHI
 QmpiReuTuwXrSosVwRPiDTXeVIrjZXk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-311-twPDTInbNQyZkEM9W9Tjqw-1; Mon, 02 Dec 2019 04:05:31 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 357BB8017DF;
 Mon,  2 Dec 2019 09:05:29 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-203.pek2.redhat.com
 [10.72.12.203])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2443D5C21A;
 Mon,  2 Dec 2019 09:05:23 +0000 (UTC)
Date: Mon, 2 Dec 2019 17:05:20 +0800
From: Dave Young <dyoung@redhat.com>
To: Michael Weiser <michael@weiser.dinsnail.net>
Subject: Re: kexec_file overwrites reserved EFI ESRT memory
Message-ID: <20191202090520.GA15874@dhcp-128-65.nay.redhat.com>
References: <20191122180552.GA32104@weiser.dinsnail.net>
 <87blt3y949.fsf@x220.int.ebiederm.org>
 <20191122210702.GE32104@weiser.dinsnail.net>
 <20191125055201.GA6569@dhcp-128-65.nay.redhat.com>
 <20191129152700.GA8286@weiser.dinsnail.net>
 <20191202085829.GA15808@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191202085829.GA15808@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: twPDTInbNQyZkEM9W9Tjqw-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_010536_221129_D1A7C1E3 
X-CRM114-Status: GOOD (  37.20  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add more cc
On 12/02/19 at 04:58pm, Dave Young wrote:
> On 11/29/19 at 04:27pm, Michael Weiser wrote:
> > Hello Dave,
> > 
> > On Mon, Nov 25, 2019 at 01:52:01PM +0800, Dave Young wrote:
> > 
> > > > > Fundamentally when deciding where to place a new kernel kexec (either
> > > > > user space or the in kernel kexec_file implementation) needs to be able
> > > > > to ask the question which memory ares are reserved.
> > [...]
> > > > > So my question is why doesn't the ESRT reservation wind up in
> > > > > /proc/iomem?
> > > > 
> > > > My guess is that the focus was that some EFI structures need to be kept
> > > > around accross the life cycle of *one* running kernel and
> > > > memblock_reserve() was enough for that. Marking them so they survive
> > > > kexecing another kernel might just never have cropped up thus far. Ard
> > > > or Matt would know.
> > > Can you check your un-reserved memory, if your memory falls into EFI
> > > BOOT* then in X86 you can use something like below if it is not covered:
> > 
> > > void __init efi_esrt_init(void)
> > > {
> > > ...
> > > 	pr_info("Reserving ESRT space from %pa to %pa.\n", &esrt_data, &end);
> > > 	if (md.type == EFI_BOOT_SERVICES_DATA)
> > > 		efi_mem_reserve(esrt_data, esrt_data_size);
> > > ...
> > > }
> > 
> > Please bear with me if I'm a bit slow on the uptake here: On my machine,
> > the esrt module reports at boot:
> > 
> > [    0.001244] esrt: Reserving ESRT space from 0x0000000074dd2f98 to 0x0000000074dd2fd0.
> > 
> > This area is of type "Boot Data" (== BOOT_SERVICES_DATA) which makes the
> > code you quote reserve it using memblock_reserve() shown by
> > memblock=debug:
> > 
> > [    0.001246] memblock_reserve: [0x0000000074dd2f98-0x0000000074dd2fcf] efi_mem_reserve+0x1d/0x2b
> > 
> > It also calls into arch/x86/platform/efi/quirks.c:efi_arch_mem_reserve()
> > which tags it as EFI_MEMORY_RUNTIME while the surrounding ones aren't
> > as shown by efi=debug:
> > 
> > [    0.178111] efi: mem10: [Boot Data          |   |  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x0000000074dd3000-0x0000000075becfff] (14MB)
> > [    0.178113] efi: mem11: [Boot Data          |RUN|  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x0000000074dd2000-0x0000000074dd2fff] (0MB)
> > [    0.178114] efi: mem12: [Boot Data          |   |  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x000000006d635000-0x0000000074dd1fff] (119MB)
> > 
> > This prevents arch/x86/platform/efi/quirks.c:efi_free_boot_services()
> > from calling __memblock_free_late() on it. And indeed, memblock=debug does
> > not report this area as being free'd while the surrounding ones are:
> > 
> > [    0.178369] __memblock_free_late: [0x0000000074dd3000-0x0000000075becfff] efi_free_boot_services+0x126/0x1f8
> > [    0.178658] __memblock_free_late: [0x000000006d635000-0x0000000074dd1fff] efi_free_boot_services+0x126/0x1f8
> > 
> > The esrt area does not show up in /proc/iomem though:
> > 
> > 00100000-763f5fff : System RAM
> >   62000000-62a00d80 : Kernel code
> >   62c00000-62f15fff : Kernel rodata
> >   63000000-630ea8bf : Kernel data
> >   63fed000-641fffff : Kernel bss
> >   65000000-6affffff : Crash kernel
> > 
> > And thus kexec loads the new kernel right over that area as shown when
> > enabling -DDEBUG on kexec_file.c (0x74dd3000 being inbetween 0x73000000
> > and 0x73000000+0x24be000 = 0x754be000):
> > 
> > [  650.007695] kexec_file: Loading segment 0: buf=0x000000003a9c84d6 bufsz=0x5000 mem=0x98000 memsz=0x6000
> > [  650.007699] kexec_file: Loading segment 1: buf=0x0000000017b2b9e6 bufsz=0x1240 mem=0x96000 memsz=0x2000
> > [  650.007703] kexec_file: Loading segment 2: buf=0x00000000fdf72ba2 bufsz=0x1150888 mem=0x73000000 memsz=0x24be000
> > 
> > ... because it looks for any memory hole large enough in iomem resources
> > tagged as System RAM, which 0x74dd2000-0x74dd2fff would then need to be
> > excluded from on my system.
> > 
> > Looking some more at efi_arch_mem_reserve() I see that it also registers
> > the area with efi.memmap and installs it using efi_memmap_install().
> > which seems to call memremap(MEMREMAP_WB) on it. From my understanding
> > of the comments in the source of memremap(), MEMREMAP_WB does specifically
> > *not* reserve that memory in any way.
> > 
> > > Unfortunately I noticed there are different requirements/ways for
> > > different types of "reserved" memory.  But that is another topic..
> > 
> > I tried to reserve the area with something like this:
> > 
> > t a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
> > index 4de244683a7e..b86a5df027a2 100644
> > --- a/arch/x86/platform/efi/quirks.c
> > +++ b/arch/x86/platform/efi/quirks.c
> > @@ -249,6 +249,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
> >         efi_memory_desc_t md;
> >         int num_entries;
> >         void *new;
> > +       struct resource *res;
> >  
> >         if (efi_mem_desc_lookup(addr, &md) ||
> >             md.type != EFI_BOOT_SERVICES_DATA) {
> > @@ -294,6 +295,21 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
> >         early_memunmap(new, new_size);
> >  
> >         efi_memmap_install(new_phys, num_entries);
> > +
> > +       res = memblock_alloc(sizeof(*res), SMP_CACHE_BYTES);
> > +       if (!res) {
> > +               pr_err("Failed to allocate EFI io resource allocator for "
> > +                               "0x%llx:0x%llx", mr.range.start, mr.range.end);
> > +               return;
> > +       }
> > +
> > +       res->start      = mr.range.start;
> > +       res->end        = mr.range.end;
> > +       res->name       = "EFI runtime";
> > +       res->flags      = IORESOURCE_MEM | IORESOURCE_BUSY;
> > +       res->desc       = IORES_DESC_NONE;
> > +
> > +       insert_resource(&iomem_resource, res);
> >  }
> >  
> >  /*
> > 
> > ... but failed miserably in terms of the kernel not booting because I
> > have no experience whatsoever in programming and debugging early kernel
> > init. But I am somewhat keen to ride the learning curve here. :)
> > 
> > Am I on the right track or were you a couple of leaps ahead of me
> > already and I just didn't get the question?
> 
> It seems a serious problem, the EFI modified memmap does not get an
> /proc/iomem resource update, but kexec_file relies on /proc/iomem in
> X86.
> 
> Can you try below diff see if it works for you? (not tested, and need
> explicitly 'add_efi_memmap' in kernel cmdline param)
> 
> There is an question from Sai about why add_efi_memmap is not enabled by
> default:
> https://www.spinics.net/lists/linux-mm/msg185166.html
> 
> Long time ago the add_efi_memmap is only enabled in case we explict
> enable it on cmdline, I'm not sure if we can do it by default, maybe we
> should.   Need opinion from X86 maintainers..
> 
> diff --git a/arch/x86/include/asm/efi.h b/arch/x86/include/asm/efi.h
> index 43a82e59c59d..eddaac6131cf 100644
> --- a/arch/x86/include/asm/efi.h
> +++ b/arch/x86/include/asm/efi.h
> @@ -243,6 +243,7 @@ static inline bool efi_is_64bit(void)
>  
>  extern bool efi_reboot_required(void);
>  extern bool efi_is_table_address(unsigned long phys_addr);
> +extern void do_add_efi_memmap(void);
>  
>  #else
>  static inline void parse_efi_setup(u64 phys_addr, u32 data_len) {}
> diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
> index 425e025341db..39e28ec76522 100644
> --- a/arch/x86/platform/efi/efi.c
> +++ b/arch/x86/platform/efi/efi.c
> @@ -149,10 +149,12 @@ void __init efi_find_mirror(void)
>   * (zeropage) memory map.
>   */
>  
> -static void __init do_add_efi_memmap(void)
> +void __init do_add_efi_memmap(void)
>  {
>  	efi_memory_desc_t *md;
>  
> +	if (!add_efi_memmap)
> +		return;
>  	for_each_efi_memory_desc(md) {
>  		unsigned long long start = md->phys_addr;
>  		unsigned long long size = md->num_pages << EFI_PAGE_SHIFT;
> @@ -224,8 +226,7 @@ int __init efi_memblock_x86_reserve_range(void)
>  	if (rv)
>  		return rv;
>  
> -	if (add_efi_memmap)
> -		do_add_efi_memmap();
> +	do_add_efi_memmap();
>  
>  	WARN(efi.memmap.desc_version != 1,
>  	     "Unexpected EFI_MEMORY_DESCRIPTOR version %ld",
> diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
> index 3b9fd679cea9..cfda591e51e3 100644
> --- a/arch/x86/platform/efi/quirks.c
> +++ b/arch/x86/platform/efi/quirks.c
> @@ -496,6 +496,7 @@ void __init efi_free_boot_services(void)
>  		pr_err("Could not install new EFI memmap\n");
>  		return;
>  	}
> +	do_add_efi_memmap();
>  }
>  
>  /*


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
