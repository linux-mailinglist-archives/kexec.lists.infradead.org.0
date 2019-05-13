Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005C61B072
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 08:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNOkpGBYlcIwTJVeLczm1EvaJl0vIAWSZw/wIxBgDRQ=; b=jpXrEZY8vMvuYz
	mMDZ2ICO5Lre1w6nc2fmdKIdjyw6jPhMEZOAIKube5W0UMVEiE4nCRLqFGEBPGL5UHc1mvlP4fZWw
	xrzghGYnP++Rvj0d6TENiSyR6ya6D2DzXHjkFfRT7+xzzj+Wt4hr/OfBiLlOZ/lO5E72vJWSxncHs
	k3lqlAnR6MdL7OaGHl0v4el/BNHvpwZYDH4DCpFgfT6ZdyAsPGR5lEYtPcS5zzfxIfwFJVSU2rFPb
	f4WRTGdcp7/cdn2KYdJU/9XH6RwDXB+uIe09/DvS5+x7WRLOe5BpbZEOcZNP6u4z6ivMnfhUiAexg
	PQ5wA0Xbsjz6YJkCYQlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4e9-0000OT-Gk; Mon, 13 May 2019 06:41:13 +0000
Received: from mail-it1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4e6-0000Nt-42
 for kexec@lists.infradead.org; Mon, 13 May 2019 06:41:12 +0000
Received: by mail-it1-f195.google.com with SMTP id i63so11811175ita.3
 for <kexec@lists.infradead.org>; Sun, 12 May 2019 23:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b0QPbcte3V64aRsJ2vOGV0i8Yp9VQ1TUi3WDvtJUkmo=;
 b=NAlN/S1DQ+w7v9P///TZkH+IY+60/mrcbamTH5RiIwawl3LKbLPA3XlK75a8YrNLfj
 NaydUpfEDWHmFh3ZI4Cpzkmq+IKRRdj2JkkGhHZOy3aIh4leJmLIKaE4CQogw+11dyYx
 1lvjDi6dlBddf5MjnNArRGCTosZm4OJzQsDOdgRrNJeC/Hvf5OJ0oYe634AsMj81I/Bh
 igBTbF6YMjRpoqdVY9Ts3RSunKejk2UnzJk40N3PTEgklIe3pH3AUdzDPw/vMu/U0wZf
 ri4GGTJeunTfGAQDkeKidfgsI7Z/xK5r/0lIs8YBZ54nUNObgF8xmIpcCI2j9JZxMK+5
 U+xw==
X-Gm-Message-State: APjAAAVtgqcA6L0FBO4aaGRtaEBGZnG/CRLxbSKjIp9pH7ZviWRMXF1T
 QUHsvS/AphWxjXG91b6WDZdsqYzGZXIL8cftMf5YjA==
X-Google-Smtp-Source: APXvYqwRXYCkCkDVf30FEonpfDEEM/rfgroe33//LmHg26lPOHPIoHO3lVUjxOZT1tRlYYCnjhd0n6sxCKsjaaiI0Wo=
X-Received: by 2002:a05:660c:443:: with SMTP id
 d3mr17652347itl.147.1557729668165; 
 Sun, 12 May 2019 23:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190315093547.6057-1-lijiang@redhat.com>
In-Reply-To: <20190315093547.6057-1-lijiang@redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 13 May 2019 14:40:59 +0800
Message-ID: <CACPcB9fwdsj+gOfZUuAUGvPCHn2vF67jH-+2Mc8=mJquaGJSWA@mail.gmail.com>
Subject: Re: [PATCH] kexec/x86: Unconditionally add the acpi_rsdp command line
To: Lianbo Jiang <lijiang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_234110_162888_BC32C512 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 Baoquan He <bhe@redhat.com>, brijesh.singh@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Mar 15, 2019 at 5:36 PM Lianbo Jiang <lijiang@redhat.com> wrote:
>
> The Linux kernel commit 3a63f70bf4c3 introduces the early parsing
> of the RSDP. This means that boot loader must either set the
> boot_params.acpi_rsdp_addr or pass a command line 'acpi_rsdp=xxx'
> to tell the RDSP physical address.
>
> Currently, kexec neither sets the boot_params.acpi_rsdp or passes
> acpi_rsdp command line if it sees the first kernel support efi
> runtime. This is causing the second kernel boot failure.
> The EFI runtime is not available so early in the boot process so
> unconditionally pass the 'acpi_rsdp=xxx' to the second kernel.
>
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> Signed-off-by: Brijesh Singh <brijesh.singh@amd.com>
> ---
>  kexec/arch/i386/crashdump-x86.c | 17 +----------------
>  1 file changed, 1 insertion(+), 16 deletions(-)
>
> diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
> index 140f45b..a29b15b 100644
> --- a/kexec/arch/i386/crashdump-x86.c
> +++ b/kexec/arch/i386/crashdump-x86.c
> @@ -35,7 +35,6 @@
>  #include <sys/types.h>
>  #include <sys/stat.h>
>  #include <unistd.h>
> -#include <dirent.h>
>  #include "../../kexec.h"
>  #include "../../kexec-elf.h"
>  #include "../../kexec-syscall.h"
> @@ -772,18 +771,6 @@ static enum coretype get_core_type(struct crash_elf_info *elf_info,
>         }
>  }
>
> -static int sysfs_efi_runtime_map_exist(void)
> -{
> -       DIR *dir;
> -
> -       dir = opendir("/sys/firmware/efi/runtime-map");
> -       if (!dir)
> -               return 0;
> -
> -       closedir(dir);
> -       return 1;
> -}
> -
>  /* Appends 'acpi_rsdp=' commandline for efi boot crash dump */
>  static void cmdline_add_efi(char *cmdline)
>  {
> @@ -978,9 +965,7 @@ int load_crashdump_segments(struct kexec_info *info, char* mod_cmdline,
>         dbgprintf("Created elf header segment at 0x%lx\n", elfcorehdr);
>         if (delete_memmap(memmap_p, &nr_memmap, elfcorehdr, memsz) < 0)
>                 return -1;
> -       if (!bzImage_support_efi_boot || arch_options.noefi ||
> -           !sysfs_efi_runtime_map_exist())
> -               cmdline_add_efi(mod_cmdline);
> +       cmdline_add_efi(mod_cmdline);
>         cmdline_add_elfcorehdr(mod_cmdline, elfcorehdr);
>
>         /* Inform second kernel about the presence of ACPI tables. */
> --
> 2.17.1
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

Hi Lianbo,

I've sent another patch similiar to yours:
[PATCH] x86: Always try to fill acpi_rsdp_addr in boot params

I'll update V2 and your use case should also be covered in that patch,
as we have talked in IRC previously, thanks!

--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
