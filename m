Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5767D12CE8A
	for <lists+kexec@lfdr.de>; Mon, 30 Dec 2019 10:42:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7auCcFOFGxjFuB45E9ViXE6H2LAlX5i1C2peIyqRyE=; b=IkR7tIO9mCE5/C
	J6KUQB0Pxmk6HXdra2QXwUbRUtClBWgn7y41OFwSqIp4I1GCYsceT76AOn+2g8k91fCo34D7t8TVr
	UdyYfSZmaxfBzvEwX2JpOuDgv1cQ96yi8M8nnQjdnnfqCzXmGb7EEMNW7FuBsIHoJc9SGQ0UGYsCT
	ThscOu0BflNlgpKwtxmMLgNTXiROZAKWCu+lce5XcbwECohwRyVZ3hyHoAS9VsKVZhyzOQkj0n75y
	OXMBi6SWBYg1yuGTz1VFZHf5BBYE0xa/RZ5bFSjHCFitFQXrU5rN9eThClLrxfxqUiR/h/kw4QPWs
	t9sApKTks/g2D7GF7RNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilrZC-0000VF-Ow; Mon, 30 Dec 2019 09:42:26 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilrZ9-0000Us-15
 for kexec@lists.infradead.org; Mon, 30 Dec 2019 09:42:24 +0000
Received: by mail-ot1-x342.google.com with SMTP id k14so45622128otn.4
 for <kexec@lists.infradead.org>; Mon, 30 Dec 2019 01:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7aJ1y7kojlezhXxwCAdzL2Cz1fpp5Mlwq/T9MyJ5Ytc=;
 b=TyjztaV08AZvzV59Zdl0SvtbkaC827fqWnZXdmVUUkgIQIbcjIxa+85MPylZdoHwoD
 aG6NlJEh5syG7O4b2m3q2Ue05RwU7M3fTzuLhRNNm8o9fT6kwWBeOZH7igbgIZbypV/9
 TzMjIpuwu1AevS5HIURy7SeRvS+tHdQJfhlZeK2ZJlemKchV6LFMmw3r1W6M3HHpyUww
 ZfUJ3X/6Ku0vmWSIwDPre0OycgeA+5o54gRpf/AhgLGSfuoc/c0xzHT6MVHdQiP6+tKZ
 1OvDJnpMr6/nPpKAuWGDylu9LfRplJuzl5G4um8Pc2peacY/9D9UiUU/c/7aN3gav5Zl
 P5+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7aJ1y7kojlezhXxwCAdzL2Cz1fpp5Mlwq/T9MyJ5Ytc=;
 b=h3VRvk7cRRstrFGowDbqNuKwMrNAPLFQoQaiy+BwXtihNAjEhqJqzBp1KBO+Ur1CxR
 1bX+j6TOjLyks3+ahE1Lni27SyQkYtuQoY/ygrN0Zf4VSbygfeWDJiiQw+9zUbgIG4eX
 VW5fqXwEYv7079ugTpAgYC1cDA1+wjSF6jO4JOS16Rr6JNAY5h5m5KeCahfLnFZS0JPH
 6KQ2N623jLOiRppMssvGaJuqaFMyOrthwsNY3EycMpX2xi5vJUsU+HjSk3K9Ro/qtT0K
 3QxYRlGFBaK7zdkpCumqml56GF+6jjtNhWE2KHbxCfVvQVkz9cKnu/8wPS1x3agZ2w5X
 Ckjg==
X-Gm-Message-State: APjAAAWl0egRuYia8iOzR2d7iIWiqHCuoUxcwGQ3t4o9hTCcr+QIlAkq
 lXmzC6ld/NnxKGKrB95hjtnOqvhnh8Phele1SUmucw==
X-Google-Smtp-Source: APXvYqzTYr6aV+rPI0Pmwpf+N298DKL88SZz9iyTWr2mhh+zFVppiuaocEDoNMW1GBuinPaNQ1q4OK5ewnpeCvMxXXs=
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr18735495oto.71.1577698941942; 
 Mon, 30 Dec 2019 01:42:21 -0800 (PST)
MIME-Version: 1.0
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <CANTgghnsdijH90qnm24qat70T7FA5qOwmnXXt+NYVxHYa4SLJA@mail.gmail.com>
 <CAPcyv4iRdJO6xrCaN=vrSvYFLZanLazmJLArT5YMfdJ6rc-PEQ@mail.gmail.com>
In-Reply-To: <CAPcyv4iRdJO6xrCaN=vrSvYFLZanLazmJLArT5YMfdJ6rc-PEQ@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 30 Dec 2019 01:42:10 -0800
Message-ID: <CAPcyv4hT9HXN2CqZw96zqgdNaapc=9oqSYvGrnEbeqSmx0t5xw@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
To: Dan Williams <dan.j.williams.korg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_014223_098306_890C38DB 
X-CRM114-Status: GOOD (  28.28  )
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Dec 28, 2019 at 10:13 PM Dan Williams <dan.j.williams@intel.com> wrote:
>
> On Sat, Dec 28, 2019 at 12:54 PM Dan Williams
> <dan.j.williams.korg@gmail.com> wrote:
> >
> > On Tue, Dec 3, 2019 at 11:53 PM Dave Young <dyoung@redhat.com> wrote:
> > >
> > > Michael Weiser reported he got below error during a kexec rebooting:
> > > esrt: Unsupported ESRT version 2904149718861218184.
> > >
> > > The ESRT memory stays in EFI boot services data, and it was reserved
> > > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > > is to reuse the EFI boot services data across kexec reboot. For example
> > > the BGRT image data and some ESRT memory like Michael reported.
> > >
> > > But although the memory is reserved it is not updated in X86 e820 table.
> > > And kexec_file_load iterate system ram in io resource list to find places
> > > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > > initramfs overwritten the ESRT memory and then the failure happened.
> > >
> > > Since kexec_file_load depends on the e820 to be updated, just fix this
> > > by updating the reserved EFI boot services memory as reserved type in e820.
> > >
> > > Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> > > bypassed in the reservation code path because they are assumed as reserved.
> > > But the reservation is still needed for multiple kexec reboot.
> > > And it is the only possible case we come here thus just drop the code
> > > chunk then everything works without side effects.
> > >
> > > On my machine the ESRT memory sits in an EFI runtime data range, it does
> > > not trigger the problem, but I successfully tested with BGRT instead.
> > > both kexec_load and kexec_file_load work and kdump works as well.
> > >
> > > Signed-off-by: Dave Young <dyoung@redhat.com>
> > > ---
> > >  arch/x86/platform/efi/quirks.c |    6 ++----
> > >  1 file changed, 2 insertions(+), 4 deletions(-)
> > >
> > > --- linux-x86.orig/arch/x86/platform/efi/quirks.c
> > > +++ linux-x86/arch/x86/platform/efi/quirks.c
> > > @@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_ad
> > >                 return;
> > >         }
> > >
> > > -       /* No need to reserve regions that will never be freed. */
> > > -       if (md.attribute & EFI_MEMORY_RUNTIME)
> > > -               return;
> > > -
> > >         size += addr % EFI_PAGE_SIZE;
> > >         size = round_up(size, EFI_PAGE_SIZE);
> > >         addr = round_down(addr, EFI_PAGE_SIZE);
> > > @@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_ad
> > >         early_memunmap(new, new_size);
> > >
> > >         efi_memmap_install(new_phys, num_entries);
> > > +       e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> > > +       e820__update_table(e820_table);
> > >  }
> > >
> > >  /*
> > >
> >
> > Bisect says this change (commit af1648984828) is triggering a
> > regression, likely not urgent, in my testing of the new efi_fake_mem=
> > facility to allow memory to be marked "soft reserved" via the kernel
> > command line (commit 199c84717612 x86/efi: Add efi_fake_mem support
> > for EFI_MEMORY_SP). The following command line triggers the crash
> > signature below:
> >
> >     efi_fake_mem=4G@9G:0x40000,4G@13G:0x40000
> >
> > However, this command line works ok:
> >
> >     efi_fake_mem=8G@9G:0x40000
> >
> > So, something about multiple efi_fake_mem statements interacts badly
> > with this change. Nothing obvious occurs to me at the moment, I'll
> > keep debugging, but wanted to highlight this in the meantime in case
> > someone else sees a deeper issue or the root cause.
>
> Still looking, but this failure does not seem to be specific to the
> "soft reservation" changes. Any update to the efi memmap that pushes
> it over a page boundary triggers this failure. I.e. I can fix the
> problem by over-allocating the efi memmap and then page aligning the
> result. __early_ioremap "should" be handling this case, but it appears
> something else is messing this up.

Found it. Neither this patch nor the soft reservation changes are at
fault, they are just helping to trigger a long standing bug in
efi_fake_memmap(). Its usage of efi_memmap_split_count() can over
count the number of splits needed for new entries. Consider the case
of 2 contiguous fake entries intersecting the end of a single entry.
The first call to efi_memmap_split_count() determines the resulting
split will be (old1, new1, old2), the second call determines (old1,
new2). The result is 2 splits when only 1 is needed to get a result of
(old1, new1, new2) and the new map ends up with an empty entry.
efi_memmap_install() interprets an empty entry as start = 0 end =
0xffffffffffffffff and attempts an extra split / copy past the end of
the new map.

I'll send a patch to fix up efi_fake_memmap().

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
