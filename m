Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8513512CEFF
	for <lists+kexec@lfdr.de>; Mon, 30 Dec 2019 11:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1kCKWud2yiLytaL441VmzPvvV9OVYSG6RvDgQLjAKc=; b=MFygH7FhhSolFO
	VULGuQqdWD54QXzz5ZIB8yeqJYX4MFDitv/y7zI/WHZHrAvhAQOK/xSDDYnMqPxxiLwvrXTBTDoQq
	NTEHMuQ8LM/1BmuE4+ztZJYlpLVi1prkiLX+pFZpA89i8wfncDqQa9qyv6GbOPTWgmHP7ibOaG5HO
	yq0rdjgVE/+V0DZj3AV/hxgd5+mztRwUp6dVMR5s06ryPBdKwX2Yq2tBtEX2usRmQHmQFiR6B8+RO
	HRoFe5zmFflfG2xwD2qoi9FN9R61M1pCW8Z7TBh4RLlh5KgZfFpH5FQ3oDBUe+VXx0Iv+YmrTMjg6
	m4I1YCxY83zmLerRQ7gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilscI-0006aR-M6; Mon, 30 Dec 2019 10:49:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilscE-0006a3-L5
 for kexec@lists.infradead.org; Mon, 30 Dec 2019 10:49:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577702977;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hJa72CmFrQq4gAWpDR2+FRwRpYQu3hnMmC9EZDd2GoY=;
 b=IHEHJEMV3h8NSf3uAjOKTW0hiiwfEpr2IvDwIEjXORJATKCRkOdYSP0OAbB5/Munn9SMZ3
 MzaZjB5FRMzc5KCdOpa6YUoN1RBogBORacg4nkm4iScT+ugTRs1KNMsXgqZ+4m8yxYdqCR
 yBOJ76tudFAaCsEGAb4PmVGrza4iIuI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-258-UW4dviq2Pt-WxMvgbk182w-1; Mon, 30 Dec 2019 05:49:33 -0500
X-MC-Unique: UW4dviq2Pt-WxMvgbk182w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1229F8024CD;
 Mon, 30 Dec 2019 10:49:31 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-231.pek2.redhat.com
 [10.72.12.231])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B37095C1B5;
 Mon, 30 Dec 2019 10:49:25 +0000 (UTC)
Date: Mon, 30 Dec 2019 18:49:21 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191230104921.GA16888@dhcp-128-65.nay.redhat.com>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <CANTgghnsdijH90qnm24qat70T7FA5qOwmnXXt+NYVxHYa4SLJA@mail.gmail.com>
 <CAPcyv4iRdJO6xrCaN=vrSvYFLZanLazmJLArT5YMfdJ6rc-PEQ@mail.gmail.com>
 <CAPcyv4hT9HXN2CqZw96zqgdNaapc=9oqSYvGrnEbeqSmx0t5xw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4hT9HXN2CqZw96zqgdNaapc=9oqSYvGrnEbeqSmx0t5xw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_024938_765293_37070039 
X-CRM114-Status: GOOD (  33.09  )
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Dan Williams <dan.j.williams.korg@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 12/30/19 at 01:42am, Dan Williams wrote:
> On Sat, Dec 28, 2019 at 10:13 PM Dan Williams <dan.j.williams@intel.com> wrote:
> >
> > On Sat, Dec 28, 2019 at 12:54 PM Dan Williams
> > <dan.j.williams.korg@gmail.com> wrote:
> > >
> > > On Tue, Dec 3, 2019 at 11:53 PM Dave Young <dyoung@redhat.com> wrote:
> > > >
> > > > Michael Weiser reported he got below error during a kexec rebooting:
> > > > esrt: Unsupported ESRT version 2904149718861218184.
> > > >
> > > > The ESRT memory stays in EFI boot services data, and it was reserved
> > > > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > > > is to reuse the EFI boot services data across kexec reboot. For example
> > > > the BGRT image data and some ESRT memory like Michael reported.
> > > >
> > > > But although the memory is reserved it is not updated in X86 e820 table.
> > > > And kexec_file_load iterate system ram in io resource list to find places
> > > > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > > > initramfs overwritten the ESRT memory and then the failure happened.
> > > >
> > > > Since kexec_file_load depends on the e820 to be updated, just fix this
> > > > by updating the reserved EFI boot services memory as reserved type in e820.
> > > >
> > > > Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> > > > bypassed in the reservation code path because they are assumed as reserved.
> > > > But the reservation is still needed for multiple kexec reboot.
> > > > And it is the only possible case we come here thus just drop the code
> > > > chunk then everything works without side effects.
> > > >
> > > > On my machine the ESRT memory sits in an EFI runtime data range, it does
> > > > not trigger the problem, but I successfully tested with BGRT instead.
> > > > both kexec_load and kexec_file_load work and kdump works as well.
> > > >
> > > > Signed-off-by: Dave Young <dyoung@redhat.com>
> > > > ---
> > > >  arch/x86/platform/efi/quirks.c |    6 ++----
> > > >  1 file changed, 2 insertions(+), 4 deletions(-)
> > > >
> > > > --- linux-x86.orig/arch/x86/platform/efi/quirks.c
> > > > +++ linux-x86/arch/x86/platform/efi/quirks.c
> > > > @@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_ad
> > > >                 return;
> > > >         }
> > > >
> > > > -       /* No need to reserve regions that will never be freed. */
> > > > -       if (md.attribute & EFI_MEMORY_RUNTIME)
> > > > -               return;
> > > > -
> > > >         size += addr % EFI_PAGE_SIZE;
> > > >         size = round_up(size, EFI_PAGE_SIZE);
> > > >         addr = round_down(addr, EFI_PAGE_SIZE);
> > > > @@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_ad
> > > >         early_memunmap(new, new_size);
> > > >
> > > >         efi_memmap_install(new_phys, num_entries);
> > > > +       e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> > > > +       e820__update_table(e820_table);
> > > >  }
> > > >
> > > >  /*
> > > >
> > >
> > > Bisect says this change (commit af1648984828) is triggering a
> > > regression, likely not urgent, in my testing of the new efi_fake_mem=
> > > facility to allow memory to be marked "soft reserved" via the kernel
> > > command line (commit 199c84717612 x86/efi: Add efi_fake_mem support
> > > for EFI_MEMORY_SP). The following command line triggers the crash
> > > signature below:
> > >
> > >     efi_fake_mem=4G@9G:0x40000,4G@13G:0x40000
> > >
> > > However, this command line works ok:
> > >
> > >     efi_fake_mem=8G@9G:0x40000
> > >
> > > So, something about multiple efi_fake_mem statements interacts badly
> > > with this change. Nothing obvious occurs to me at the moment, I'll
> > > keep debugging, but wanted to highlight this in the meantime in case
> > > someone else sees a deeper issue or the root cause.
> >
> > Still looking, but this failure does not seem to be specific to the
> > "soft reservation" changes. Any update to the efi memmap that pushes
> > it over a page boundary triggers this failure. I.e. I can fix the
> > problem by over-allocating the efi memmap and then page aligning the
> > result. __early_ioremap "should" be handling this case, but it appears
> > something else is messing this up.
> 
> Found it. Neither this patch nor the soft reservation changes are at
> fault, they are just helping to trigger a long standing bug in
> efi_fake_memmap(). Its usage of efi_memmap_split_count() can over
> count the number of splits needed for new entries. Consider the case
> of 2 contiguous fake entries intersecting the end of a single entry.
> The first call to efi_memmap_split_count() determines the resulting
> split will be (old1, new1, old2), the second call determines (old1,
> new2). The result is 2 splits when only 1 is needed to get a result of
> (old1, new1, new2) and the new map ends up with an empty entry.
> efi_memmap_install() interprets an empty entry as start = 0 end =
> 0xffffffffffffffff and attempts an extra split / copy past the end of
> the new map.
> 
> I'll send a patch to fix up efi_fake_memmap().
> 

Cool, I also noticed if two of fake mem used, we only get one md with
"SP" attribute in print_efi_memmap, that is the root cause.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
