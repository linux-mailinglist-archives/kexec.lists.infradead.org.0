Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDB612BF45
	for <lists+kexec@lfdr.de>; Sat, 28 Dec 2019 21:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZFi4trbVLPO+nZLPUPSq2r0zv86A2bVhR0HRKAQMx4=; b=C9dKOMlw2TAMxw
	zEMviW1Ucxq/qJOaYvjpfteyfZL1P91AhTV5zFd+OVTDxMcCfhRyjbGcGKDTh013RWnTBnpC02YXH
	5VivKrkojlvThxrNgeal+VC8e/Fg5aRjRhsMGUU5nWdZLeY/lBccyEXGLOtJ6pqSJUMv9ZIqlzuGu
	2LrxbSbDYnE/WRkf2CIxcFoohSjNKluSk9p/VYPJC61r1rGRBS06AhTMptjdisp3Gy/ftneoBuNp2
	ne9tHy1ppWY62v0j3om31uOuby8wqhkHZiXFUNE73ulU5p94Sxu6r0KNQabDePCIAFHbWRgAtUPF8
	jeG2jEtrZaLb1deKHR8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilJ6T-0005CN-2M; Sat, 28 Dec 2019 20:54:29 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilJ6P-0005Bc-Bf
 for kexec@lists.infradead.org; Sat, 28 Dec 2019 20:54:27 +0000
Received: by mail-io1-xd43.google.com with SMTP id c16so24926448ioo.8
 for <kexec@lists.infradead.org>; Sat, 28 Dec 2019 12:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=E76VhA6+/ZrBIyRCsnWyOQg6YbJeoiHUNcjR94zQd3I=;
 b=E5DDVujOnEp57q7i/BSeK3GVw5XBqaB5InXyuR9+JC9MoAnOW/YC/lPcWcxr0mGQGh
 L5n6q5e89ePMOLn8nUeTJoy2ECnr4q6Z3dWtqFPrRp8KGmGTZgC8p+Pp5SL+aU/T9EyB
 TTyzbB+Zq2CWFvPj/SUjqzZ7DT7uejeP/BrtT64i7dFInZRLL3CaSXcTJ1YN6K/0WU4d
 bnYG9KAOWHyqm0h5MJZrSDAAvpxqSUxo5scFV+/D4LuokGSEooJqHUx19Z5/ilPzwomP
 EK3oGUGTdJCoNZSfgkYX/d0A7mO47CMqCeqrS/yMv4vnzBzoJX9wjZDHiCBAhLwtEbtY
 jYmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E76VhA6+/ZrBIyRCsnWyOQg6YbJeoiHUNcjR94zQd3I=;
 b=p6fd8qnQtTKFsu9DLH8VUOOCVA2t1lvLozr3LKxeeEA7pxM+N62nEksAtLIczWL7Za
 gqdrn8MWG2m6gpOiFz/Y8FkGbSahTzb5JqDSedZvVj/EySAcNp1+IG+PqSiyh7wvhLhc
 zzVp12mTkM0ByVVb25r0Ux4WzaFfAo/PoRp436gJ1wDTj+uYPDcuVsme10vAf76qz92v
 MQ4kC8QPx5u2yerq0t3JKrzTHi7t9+k2BTep9LwXBP3BnTjYseorLcv+GxaP9DVP/vPG
 77FyWkp32Q4RqoXYpRKLHD1JOvFgl4D30FfZ0tbmGNVPRc5BGgYURV2mxNLZSEIJ9TBv
 TmfQ==
X-Gm-Message-State: APjAAAX8d83iDS71/K5CKprQ58+7i97f29bIHAb/Jpg9GS/FwMQncmw7
 OppFWqkk06c773RxT9WxmmP/6u1eS4EXcyVN640=
X-Google-Smtp-Source: APXvYqxQVMMkZRR9L3by6JE1ApXMMCe9ngnyrh6hZRYHV7R0mSIR3UoEtpISeD0e1Po99FUkul6VtibYqggIVtNDLBI=
X-Received: by 2002:a6b:d219:: with SMTP id q25mr26334114iob.49.1577566462461; 
 Sat, 28 Dec 2019 12:54:22 -0800 (PST)
MIME-Version: 1.0
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
From: Dan Williams <dan.j.williams.korg@gmail.com>
Date: Sat, 28 Dec 2019 12:54:11 -0800
Message-ID: <CANTgghnsdijH90qnm24qat70T7FA5qOwmnXXt+NYVxHYa4SLJA@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_125425_426156_04E87841 
X-CRM114-Status: GOOD (  20.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (dan.j.williams.korg[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, dan.j.williams@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Dec 3, 2019 at 11:53 PM Dave Young <dyoung@redhat.com> wrote:
>
> Michael Weiser reported he got below error during a kexec rebooting:
> esrt: Unsupported ESRT version 2904149718861218184.
>
> The ESRT memory stays in EFI boot services data, and it was reserved
> in kernel via efi_mem_reserve().  The initial purpose of the reservation
> is to reuse the EFI boot services data across kexec reboot. For example
> the BGRT image data and some ESRT memory like Michael reported.
>
> But although the memory is reserved it is not updated in X86 e820 table.
> And kexec_file_load iterate system ram in io resource list to find places
> for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> initramfs overwritten the ESRT memory and then the failure happened.
>
> Since kexec_file_load depends on the e820 to be updated, just fix this
> by updating the reserved EFI boot services memory as reserved type in e820.
>
> Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> bypassed in the reservation code path because they are assumed as reserved.
> But the reservation is still needed for multiple kexec reboot.
> And it is the only possible case we come here thus just drop the code
> chunk then everything works without side effects.
>
> On my machine the ESRT memory sits in an EFI runtime data range, it does
> not trigger the problem, but I successfully tested with BGRT instead.
> both kexec_load and kexec_file_load work and kdump works as well.
>
> Signed-off-by: Dave Young <dyoung@redhat.com>
> ---
>  arch/x86/platform/efi/quirks.c |    6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> --- linux-x86.orig/arch/x86/platform/efi/quirks.c
> +++ linux-x86/arch/x86/platform/efi/quirks.c
> @@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_ad
>                 return;
>         }
>
> -       /* No need to reserve regions that will never be freed. */
> -       if (md.attribute & EFI_MEMORY_RUNTIME)
> -               return;
> -
>         size += addr % EFI_PAGE_SIZE;
>         size = round_up(size, EFI_PAGE_SIZE);
>         addr = round_down(addr, EFI_PAGE_SIZE);
> @@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_ad
>         early_memunmap(new, new_size);
>
>         efi_memmap_install(new_phys, num_entries);
> +       e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> +       e820__update_table(e820_table);
>  }
>
>  /*
>

Bisect says this change (commit af1648984828) is triggering a
regression, likely not urgent, in my testing of the new efi_fake_mem=
facility to allow memory to be marked "soft reserved" via the kernel
command line (commit 199c84717612 x86/efi: Add efi_fake_mem support
for EFI_MEMORY_SP). The following command line triggers the crash
signature below:

    efi_fake_mem=4G@9G:0x40000,4G@13G:0x40000

However, this command line works ok:

    efi_fake_mem=8G@9G:0x40000

So, something about multiple efi_fake_mem statements interacts badly
with this change. Nothing obvious occurs to me at the moment, I'll
keep debugging, but wanted to highlight this in the meantime in case
someone else sees a deeper issue or the root cause.

BUG: unable to handle page fault for address: ffffffffff281000
#PF: supervisor write access in kernel mode
#PF: error_code(0x0002) - not-present page
PGD 188615067 P4D 188615067 PUD 188617067 PMD 188e4d067 PTE 0
Oops: 0002 [#1] SMP PTI
CPU: 0 PID: 0 Comm: swapper Not tainted 5.4.0+ #154
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 0.0.0 02/06/2015
RIP: 0010:efi_memmap_insert+0xed/0x14b
Code: 48 89 48 18 49 39 d9 76 67 49 39 d1 73 62 4c 89 c9 48 2b 48 08
4c 89 c6 48 c1 e9 0c 48 89 48 18 49 8b 4a 28 48 01 c8 48 89 c7 <f3> a4
49 39 d3 73 2c 4c 89 48 08 4c 29 da 4c 89 c6 4c 89 68 18 48
RSP: 0000:ffffffffb7603d70 EFLAGS: 00010086
RAX: ffffffffff280ff0 RBX: 0000000000000000 RCX: 0000000000000020
RDX: ffffffffffffffff RSI: ffffffffff200fe0 RDI: ffffffffff281000
RBP: 00000000bea2d000 R08: ffffffffff200fd0 R09: 00000000bea06000
R10: ffffffffb77e1718 R11: 00000000bea2cfff R12: 800000000000000f
R13: 0000000000000027 R14: ffffffff415fa001 R15: 0000000000000ab0
FS:  0000000000000000(0000) GS:ffffffffb7c31000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff281000 CR3: 0000000188610000 CR4: 00000000000606b0
Call Trace:
 ? efi_arch_mem_reserve+0x149/0x1a6
 ? bgrt_init+0xbe/0xbe
 ? bgrt_init+0xbe/0xbe
 ? acpi_parse_bgrt+0xa/0xd
 ? acpi_table_parse+0x86/0xb8
 ? acpi_boot_init+0x494/0x4e3
 ? acpi_parse_x2apic+0x87/0x87
 ? setup_acpi_sci+0xa2/0xa2
 ? setup_arch+0x8db/0x9e1
 ? start_kernel+0x6a/0x547
 ? secondary_startup_64+0xb6/0xc0
Modules linked in:
CR2: ffffffffff281000
random: get_random_bytes called from print_oops_end_marker+0x26/0x40
with crng_init=0
---[ end trace 2acc14aa0990ee9d ]---
RIP: 0010:efi_memmap_insert+0xed/0x14b
Code: 48 89 48 18 49 39 d9 76 67 49 39 d1 73 62 4c 89 c9 48 2b 48 08
4c 89 c6 48 c1 e9 0c 48 89 48 18 49 8b 4a 28 48 01 c8 48 89 c7 <f3> a4
49 39 d3 73 2c 4c 89 48 08 4c 29 da 4c 89 c6 4c 89 68 18 48
RSP: 0000:ffffffffb7603d70 EFLAGS: 00010086
RAX: ffffffffff280ff0 RBX: 0000000000000000 RCX: 0000000000000020
RDX: ffffffffffffffff RSI: ffffffffff200fe0 RDI: ffffffffff281000
RBP: 00000000bea2d000 R08: ffffffffff200fd0 R09: 00000000bea06000
R10: ffffffffb77e1718 R11: 00000000bea2cfff R12: 800000000000000f
R13: 0000000000000027 R14: ffffffff415fa001 R15: 0000000000000ab0
FS:  0000000000000000(0000) GS:ffffffffb7c31000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: ffffffffff281000 CR3: 0000000188610000 CR4: 00000000000606b0
Kernel panic - not syncing: Fatal exception
---[ end Kernel panic - not syncing: Fatal exception ]---

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
