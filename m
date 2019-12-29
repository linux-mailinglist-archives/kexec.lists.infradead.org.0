Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4180F12C0E8
	for <lists+kexec@lfdr.de>; Sun, 29 Dec 2019 07:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCALyNKVYNQAbVQIyxPQQuTqh0nQehA5PWUp+Xlvndg=; b=jJdRVN4qrH75Lm
	dYFW4HX8gbslfaNYWVAzyUvXc8nWPKgSBVI6dX2eWDgR3RgbsMQwLKRf1iMQ4cHgyIzAlVSOfQKv0
	d7FyrEP1/8bcLiJhEBtl3TDMOYBpNx4pReilV8XnbUznMD2ieBMs8mbxI88QgOQ5wrAuY4INDxkYc
	gojPHAgJBow07C4GXtLx3jvhkH+CPl7Uy3bVw31hTGlN+aNh68fXzJDkCUuZi8YHEV1CWkbf6rnbv
	oUm95isnbAATJnS+nvrtlqr7bAY9/9NZvHKmhiT/J81O/zS6GcYjnxkkhZvyaEl7kZIH/1F+3PuBE
	FeK5wcqlxH3TYxQZ7/2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilRqC-0007qV-Rt; Sun, 29 Dec 2019 06:14:16 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilRq8-0007pO-D6
 for kexec@lists.infradead.org; Sun, 29 Dec 2019 06:14:14 +0000
Received: by mail-ot1-x342.google.com with SMTP id 66so42045586otd.9
 for <kexec@lists.infradead.org>; Sat, 28 Dec 2019 22:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NnO+Vz89RyAqBUQNFzWAU5ax1hd+sZfi+vzEk0a2/qU=;
 b=xUCEkKCSlmZTLinjacI/ef5Yg+vjWFf1Whe8LZ4mckgXjMHt89r3++zhOcHWmm6+eU
 PozEihiircxlptcyoYngItGLkRV+xHYguUYLYiIIUoiTPacYERMJ9cNd42aeTzKRbNqT
 06RY+egAx1VSCoSxHveg37DU6g01igNUujATTlp5K7QPrgCRQ02CoNYXMH30NE1b+Yh0
 nevdEDZUgEcZi8lxy+1pxWV96mLjIuPPTx3WZDBLFSFkjFv6zyiQq75ESx2xn3ZHlN/4
 K5B83L9moq8B+bX9Hrm+qXTrWHi04OwUpRre1E79AUrExpevej0nli3dg+xK9ek4s8lq
 JMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NnO+Vz89RyAqBUQNFzWAU5ax1hd+sZfi+vzEk0a2/qU=;
 b=lYRQ0k2CpH/pXYhiJXSmCb6QanG4eIJVaeBEmxaXHpzcv2JctmVPczFErhgm5seWKn
 VWl0A7rRADun04CcL7Ivy6onLmW3yxkkGQGeTbyCrDM1b/RCQ/RzGJRGdfb3uTohepPi
 iLeGC6E7mSc6mLO00/B5h4Re+83CnwlaqEqa7qOyS/aW98mR/SnDZIc0CacED1ctYOPg
 Zd6BrJXn11EeEChNCssdFavzIOcuajJYIariTpnWzKaGwoZGZWen2e/R7ic6curf9liG
 S/1GA2Ha9RLVpShwrnSGQpW1U75Q+owm7uuJeujjvLvg5QoCJv+hqS8wWLkvd9xGc8Ce
 MghA==
X-Gm-Message-State: APjAAAUsT3G5JMRC9C0G4BoQ9EtlliVBV1KvrDcXNXylBm4mUKh6G0N/
 r9GKF75r5iEO9oWbB7lqAqxw+hbwEotRCTK5F+KBlQ==
X-Google-Smtp-Source: APXvYqylXJqmTwB20sKm/0rWy8VEqOIwnRDprMjueOyxNvJGvJhVtnDBPxTPA9BnR6q1JtjrAXrrEcGRFLYL/rnyQAA=
X-Received: by 2002:a9d:4e99:: with SMTP id v25mr68590801otk.363.1577600049062; 
 Sat, 28 Dec 2019 22:14:09 -0800 (PST)
MIME-Version: 1.0
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <CANTgghnsdijH90qnm24qat70T7FA5qOwmnXXt+NYVxHYa4SLJA@mail.gmail.com>
In-Reply-To: <CANTgghnsdijH90qnm24qat70T7FA5qOwmnXXt+NYVxHYa4SLJA@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 28 Dec 2019 22:13:58 -0800
Message-ID: <CAPcyv4iRdJO6xrCaN=vrSvYFLZanLazmJLArT5YMfdJ6rc-PEQ@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
To: Dan Williams <dan.j.williams.korg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_221412_505579_8E17B0D0 
X-CRM114-Status: GOOD (  25.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
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

On Sat, Dec 28, 2019 at 12:54 PM Dan Williams
<dan.j.williams.korg@gmail.com> wrote:
>
> On Tue, Dec 3, 2019 at 11:53 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > Michael Weiser reported he got below error during a kexec rebooting:
> > esrt: Unsupported ESRT version 2904149718861218184.
> >
> > The ESRT memory stays in EFI boot services data, and it was reserved
> > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > is to reuse the EFI boot services data across kexec reboot. For example
> > the BGRT image data and some ESRT memory like Michael reported.
> >
> > But although the memory is reserved it is not updated in X86 e820 table.
> > And kexec_file_load iterate system ram in io resource list to find places
> > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > initramfs overwritten the ESRT memory and then the failure happened.
> >
> > Since kexec_file_load depends on the e820 to be updated, just fix this
> > by updating the reserved EFI boot services memory as reserved type in e820.
> >
> > Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> > bypassed in the reservation code path because they are assumed as reserved.
> > But the reservation is still needed for multiple kexec reboot.
> > And it is the only possible case we come here thus just drop the code
> > chunk then everything works without side effects.
> >
> > On my machine the ESRT memory sits in an EFI runtime data range, it does
> > not trigger the problem, but I successfully tested with BGRT instead.
> > both kexec_load and kexec_file_load work and kdump works as well.
> >
> > Signed-off-by: Dave Young <dyoung@redhat.com>
> > ---
> >  arch/x86/platform/efi/quirks.c |    6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > --- linux-x86.orig/arch/x86/platform/efi/quirks.c
> > +++ linux-x86/arch/x86/platform/efi/quirks.c
> > @@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_ad
> >                 return;
> >         }
> >
> > -       /* No need to reserve regions that will never be freed. */
> > -       if (md.attribute & EFI_MEMORY_RUNTIME)
> > -               return;
> > -
> >         size += addr % EFI_PAGE_SIZE;
> >         size = round_up(size, EFI_PAGE_SIZE);
> >         addr = round_down(addr, EFI_PAGE_SIZE);
> > @@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_ad
> >         early_memunmap(new, new_size);
> >
> >         efi_memmap_install(new_phys, num_entries);
> > +       e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> > +       e820__update_table(e820_table);
> >  }
> >
> >  /*
> >
>
> Bisect says this change (commit af1648984828) is triggering a
> regression, likely not urgent, in my testing of the new efi_fake_mem=
> facility to allow memory to be marked "soft reserved" via the kernel
> command line (commit 199c84717612 x86/efi: Add efi_fake_mem support
> for EFI_MEMORY_SP). The following command line triggers the crash
> signature below:
>
>     efi_fake_mem=4G@9G:0x40000,4G@13G:0x40000
>
> However, this command line works ok:
>
>     efi_fake_mem=8G@9G:0x40000
>
> So, something about multiple efi_fake_mem statements interacts badly
> with this change. Nothing obvious occurs to me at the moment, I'll
> keep debugging, but wanted to highlight this in the meantime in case
> someone else sees a deeper issue or the root cause.

Still looking, but this failure does not seem to be specific to the
"soft reservation" changes. Any update to the efi memmap that pushes
it over a page boundary triggers this failure. I.e. I can fix the
problem by over-allocating the efi memmap and then page aligning the
result. __early_ioremap "should" be handling this case, but it appears
something else is messing this up.

>
> BUG: unable to handle page fault for address: ffffffffff281000
> #PF: supervisor write access in kernel mode
> #PF: error_code(0x0002) - not-present page
> PGD 188615067 P4D 188615067 PUD 188617067 PMD 188e4d067 PTE 0
> Oops: 0002 [#1] SMP PTI
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.4.0+ #154
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
> RIP: 0010:efi_memmap_insert+0xed/0x14b
> Code: 48 89 48 18 49 39 d9 76 67 49 39 d1 73 62 4c 89 c9 48 2b 48 08
> 4c 89 c6 48 c1 e9 0c 48 89 48 18 49 8b 4a 28 48 01 c8 48 89 c7 <f3> a4
> 49 39 d3 73 2c 4c 89 48 08 4c 29 da 4c 89 c6 4c 89 68 18 48
> RSP: 0000:ffffffffb7603d70 EFLAGS: 00010086
> RAX: ffffffffff280ff0 RBX: 0000000000000000 RCX: 0000000000000020
> RDX: ffffffffffffffff RSI: ffffffffff200fe0 RDI: ffffffffff281000
> RBP: 00000000bea2d000 R08: ffffffffff200fd0 R09: 00000000bea06000
> R10: ffffffffb77e1718 R11: 00000000bea2cfff R12: 800000000000000f
> R13: 0000000000000027 R14: ffffffff415fa001 R15: 0000000000000ab0
> FS:  0000000000000000(0000) GS:ffffffffb7c31000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: ffffffffff281000 CR3: 0000000188610000 CR4: 00000000000606b0
> Call Trace:
>  ? efi_arch_mem_reserve+0x149/0x1a6
>  ? bgrt_init+0xbe/0xbe
>  ? bgrt_init+0xbe/0xbe
>  ? acpi_parse_bgrt+0xa/0xd
>  ? acpi_table_parse+0x86/0xb8
>  ? acpi_boot_init+0x494/0x4e3
>  ? acpi_parse_x2apic+0x87/0x87
>  ? setup_acpi_sci+0xa2/0xa2
>  ? setup_arch+0x8db/0x9e1
>  ? start_kernel+0x6a/0x547
>  ? secondary_startup_64+0xb6/0xc0
> Modules linked in:
> CR2: ffffffffff281000
> random: get_random_bytes called from print_oops_end_marker+0x26/0x40
> with crng_init=0
> ---[ end trace 2acc14aa0990ee9d ]---
> RIP: 0010:efi_memmap_insert+0xed/0x14b
> Code: 48 89 48 18 49 39 d9 76 67 49 39 d1 73 62 4c 89 c9 48 2b 48 08
> 4c 89 c6 48 c1 e9 0c 48 89 48 18 49 8b 4a 28 48 01 c8 48 89 c7 <f3> a4
> 49 39 d3 73 2c 4c 89 48 08 4c 29 da 4c 89 c6 4c 89 68 18 48
> RSP: 0000:ffffffffb7603d70 EFLAGS: 00010086
> RAX: ffffffffff280ff0 RBX: 0000000000000000 RCX: 0000000000000020
> RDX: ffffffffffffffff RSI: ffffffffff200fe0 RDI: ffffffffff281000
> RBP: 00000000bea2d000 R08: ffffffffff200fd0 R09: 00000000bea06000
> R10: ffffffffb77e1718 R11: 00000000bea2cfff R12: 800000000000000f
> R13: 0000000000000027 R14: ffffffff415fa001 R15: 0000000000000ab0
> FS:  0000000000000000(0000) GS:ffffffffb7c31000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: ffffffffff281000 CR3: 0000000188610000 CR4: 00000000000606b0
> Kernel panic - not syncing: Fatal exception
> ---[ end Kernel panic - not syncing: Fatal exception ]---

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
