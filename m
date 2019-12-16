Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A698D11FE38
	for <lists+kexec@lfdr.de>; Mon, 16 Dec 2019 06:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9II2yNMTJU44WjJOUZIiiaLoySaLs8Z1GuLvQk737GY=; b=FQyhFe2q/b1LF+
	QBuR0w/noP47G8O4Nr2g5ypf0nvIlNgtxGwMqEmpVj/8GSVip83Zga0y6MQP1v9Z/e+s9jtySgx26
	HXCTCMPK6GwmSBED5UJvHlBKKJ5+GnWd2ikIvcfiPFresYJdhGqTMHoMxmiYWFj1KIVOpYwtBLy3R
	X8hWgLL4rApMEPQT/9Djq6bmYqSFFERr7GlNO3KlaA2gGttEf6kWwLZWhWOMPXE59ieb3RGnkzm6U
	B4crUliqQxF4bQi1ObEfQBnhZV4SkivoleG+dl3Rp3zA3RRshZEt5XZzlfLUJdtMXykD19TayBrfT
	yQ9o13br8mafcxUtxgqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igjJp-0005oS-16; Mon, 16 Dec 2019 05:53:21 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igjJl-0005nt-K4
 for kexec@lists.infradead.org; Mon, 16 Dec 2019 05:53:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576475594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/lES8oYQ4jy0r7fIrMyINYALuSvkHexIvjlQweEqC6U=;
 b=B1ixD7gQVVbLfE6K0AgRBD7gY9FBqlYi/fbA2RjhMHPbADM0x8nIr2UjYvwPQyYjyU80Mz
 3kqr//HZPO6HKrd27aZbEU/N7kp2goTxX3PlZemy2zZ/QuMC2NwKbCjez71qvKQk8U4Ctv
 +8dDtzjpQHg0Pu5QFuaD7fKLH0lB6Ew=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-376-YH48nDQsMdmpG_LghEFm7A-1; Mon, 16 Dec 2019 00:53:10 -0500
Received: by mail-lf1-f71.google.com with SMTP id i29so402830lfc.18
 for <kexec@lists.infradead.org>; Sun, 15 Dec 2019 21:53:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FJz22iG7m447KXc9yGYv+9PFaKG8uhBG/BNaty0EVdw=;
 b=KYfzWgYBojcOVge8x5umOZHGycW5NNnHExqGGEXgLgcrzKSBr9ntv1o4mpTsbw7QfR
 V+3Phrjuw7FUa9P8L4HWIUhBP+jZchODzHOAOOhmCpsc7sbwTugRsWcDBq2rr2yiJfFc
 xZf06cMkBWVQMMy1OtKzL1mZOajkD2SHkFEIBlw3HJ9NNFjTB6e5SobAwU4BG4TgiJ3d
 8R7HLK84vKSy0Jr4sYy1SniZC4dyHue2vGIqW4SiBKLH8VjbzTDPj/+qhtvaEJEL8oeW
 wzIF1r3pyaIzfO/fxK03bEW5QI+zzW8opWVuPyn5Z7WemlFoJ4kj8GnNKNdl+IddQ6aV
 nSTw==
X-Gm-Message-State: APjAAAX4XMRxaq7KR11kyYo6Pd7F8dvKbwl31LBclaKwp0EY0wTenopO
 hVAYZ5rZ3PszikO3bsu49Clu6QrYFMRwuuLnFjekQb9Zr8dmJTKrjDVdtHw8jfRKdXNXB9F/cGr
 Q5nb1cuVuQrq4aUAoiNhlkZLiDilTZ887HGcT
X-Received: by 2002:a2e:6a14:: with SMTP id f20mr18988909ljc.87.1576475589176; 
 Sun, 15 Dec 2019 21:53:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqyIPpMusueIP2T3UwvlyYk9sxLDjRQ0dG7UHl4M1SXeDVhuPqaIrOp2NLfFSaKiPuQ//TYPHJYMagTD9Bdq0wo=
X-Received: by 2002:a2e:6a14:: with SMTP id f20mr18988889ljc.87.1576475588839; 
 Sun, 15 Dec 2019 21:53:08 -0800 (PST)
MIME-Version: 1.0
References: <20190111095946.28070-1-takahiro.akashi@linaro.org>
 <20190111095946.28070-3-takahiro.akashi@linaro.org>
 <20191213200430.uxuebdavpq64scfh@gabell>
In-Reply-To: <20191213200430.uxuebdavpq64scfh@gabell>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 16 Dec 2019 11:22:56 +0530
Message-ID: <CACi5LpOKCfgjmxo59sT5bVN0qHvYapy1NRXn0F=_By-vp0g=sA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: kexec: allocate memory space avoiding
 reserved regions
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
X-MC-Unique: YH48nDQsMdmpG_LghEFm7A-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_215317_736614_C36B2C75 
X-CRM114-Status: GOOD (  28.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Simon Horman <horms@verge.net.au>, James Morse <james.morse@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Thanks Masa,

On Sat, Dec 14, 2019 at 1:34 AM Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
>
> some nits as below:
>
> On Fri, Jan 11, 2019 at 06:59:45PM +0900, AKASHI Takahiro wrote:
> > On UEFI/ACPI-only system, some memory regions, including but not limited
> > to UEFI memory map and ACPI tables, must be preserved across kexec'ing.
> > Otherwise, they can be corrupted and result in early failure in booting
> > a new kernel.
> >
> > In recent kernels, /proc/iomem now has an extended file format like:
> >       40000000-5871ffff : System RAM
> >         41800000-426affff : Kernel code
> >         426b0000-42aaffff : reserved
> >         42ab0000-42c64fff : Kernel data
> >         54400000-583fffff : Crash kernel
> >         58590000-585effff : reserved
> >         58700000-5871ffff : reserved
> >       58720000-58b5ffff : reserved
> >       58b60000-5be3ffff : System RAM
> >         58b61000-58b61fff : reserved
> >         59a77000-59a77fff : reserved
> >       5be40000-5becffff : reserved
> >       5bed0000-5bedffff : System RAM
> >       5bee0000-5bffffff : reserved
> >       5c000000-5fffffff : System RAM
> >         5da00000-5e9fffff : reserved
> >         5ec00000-5edfffff : reserved
> >         5ef6a000-5ef6afff : reserved
> >         5ef6b000-5efcafff : reserved
> >         5efcd000-5efcffff : reserved
> >         5efd0000-5effffff : reserved
> >         5f000000-5fffffff : reserved
> >
> > where the "reserved" entries at the top level or under System RAM (and
> > its descendant resources) are ones of such kind and should not be regarded
> > as usable memory ranges where several free spaces for loading kexec data
> > will be allocated.
> >
> > With this patch, get_memory_ranges() will handle this format of file
> > correctly. Note that, for safety, unknown regions, in addition to
> > "reserved" ones, will also be excluded.
> >
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi at linaro.org>
> > ---
> >  kexec/arch/arm64/kexec-arm64.c | 146 ++++++++++++++++++++-------------
> >  1 file changed, 87 insertions(+), 59 deletions(-)
> >
> > diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
> > index 1cde75d1a771..2e923b54f5b1 100644
> > --- a/kexec/arch/arm64/kexec-arm64.c
> > +++ b/kexec/arch/arm64/kexec-arm64.c
> > @@ -10,7 +10,9 @@
> >  #include <inttypes.h>
> >  #include <libfdt.h>
> >  #include <limits.h>
> > +#include <stdio.h>
> >  #include <stdlib.h>
> > +#include <string.h>
> >  #include <sys/stat.h>
> >  #include <linux/elf-em.h>
> >  #include <elf.h>
> > @@ -29,6 +31,7 @@
> >  #include "fs2dt.h"
> >  #include "iomem.h"
> >  #include "kexec-syscall.h"
> > +#include "mem_regions.h"
> >  #include "arch/options.h"
> >
> >  #define ROOT_NODE_ADDR_CELLS_DEFAULT 1
> > @@ -899,19 +902,33 @@ int get_phys_base_from_pt_load(unsigned long *phys_offset)
> >       return 0;
> >  }
> >
> > +static bool to_be_excluded(char *str)
> > +{
> > +     if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)) ||
> > +         !strncmp(str, KERNEL_CODE, strlen(KERNEL_CODE)) ||
> > +         !strncmp(str, KERNEL_DATA, strlen(KERNEL_DATA)) ||
> > +         !strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)))
> > +             return false;
> > +     else
> > +             return true;
> > +}
> > +
> >  /**
> > - * get_memory_ranges_iomem_cb - Helper for get_memory_ranges_iomem.
> > + * get_memory_ranges - Try to get the memory ranges from
> > + * /proc/iomem.
> >   */
> > -
> > -static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> > -     unsigned long long base, unsigned long long length)
> > +int get_memory_ranges(struct memory_range **range, int *ranges,
> > +     unsigned long kexec_flags)
> >  {
> > -     int ret;
> >       unsigned long phys_offset = UINT64_MAX;
> > -     struct memory_range *r;
> > -
> > -     if (nr >= KEXEC_SEGMENT_MAX)
> > -             return -1;
> > +     FILE *fp;
> > +     const char *iomem = proc_iomem();
> > +     char line[MAX_LINE], *str;
> > +     unsigned long long start, end;
> > +     int n, consumed;
> > +     struct memory_ranges memranges;
> > +     struct memory_range *last, excl_range;
> > +     int ret;
> >
> >       if (!try_read_phys_offset_from_kcore) {
> >               /* Since kernel version 4.19, 'kcore' contains
> > @@ -945,17 +962,65 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> >               try_read_phys_offset_from_kcore = true;
> >       }
> >
> > -     r = (struct memory_range *)data + nr;
> > +     fp = fopen(iomem, "r");
> > +     if (!fp)
> > +             die("Cannot open %s\n", iomem);
> > +
> > +     memranges.ranges = NULL;
> > +     memranges.size = memranges.max_size  = 0;
> > +
> > +     while (fgets(line, sizeof(line), fp) != 0) {
> > +             n = sscanf(line, "%llx-%llx : %n", &start, &end, &consumed);
> > +             if (n != 2)
> > +                     continue;
> > +             str = line + consumed;
> > +
> > +             if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM))) {
> > +                     ret = mem_regions_alloc_and_add(&memranges,
> > +                                     start, end - start + 1, RANGE_RAM);
> > +                     if (ret) {
> > +                             fprintf(stderr,
> > +                                     "Cannot allocate memory for ranges\n");
>
>                                 fclose(fp);
>
> > +                             return -ENOMEM;
> > +                     }
> >
> > -     if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)))
> > -             r->type = RANGE_RAM;
> > -     else if (!strncmp(str, IOMEM_RESERVED, strlen(IOMEM_RESERVED)))
> > -             r->type = RANGE_RESERVED;
> > -     else
> > -             return 1;
> > +                     dbgprintf("%s:+[%d] %016llx - %016llx\n", __func__,
> > +                             memranges.size - 1,
> > +                             memranges.ranges[memranges.size - 1].start,
> > +                             memranges.ranges[memranges.size - 1].end);
> > +             } else if (to_be_excluded(str)) {
> > +                     if (!memranges.size)
> > +                             continue;
> > +
> > +                     /*
> > +                      * Note: mem_regions_exclude() doesn't guarantee
> > +                      * that the ranges are sorted out, but as long as
> > +                      * we cope with /proc/iomem, we only operate on
> > +                      * the last entry and so it is safe.
> > +                      */
> >
> > -     r->start = base;
> > -     r->end = base + length - 1;
> > +                     /* The last System RAM range */
> > +                     last = &memranges.ranges[memranges.size - 1];
> > +
> > +                     if (last->end < start)
> > +                             /* New resource outside of System RAM */
> > +                             continue;
> > +                     if (end < last->start)
> > +                             /* Already excluded by parent resource */
> > +                             continue;
> > +
> > +                     excl_range.start = start;
> > +                     excl_range.end = end;
>
> > +                     mem_regions_alloc_and_exclude(&memranges, &excl_range);
>                         ret = mem_regions_alloc_and_exclude(&memranges, &excl_range);
>                         if (ret) {
>                                 fprintf(stderr,
>                                         "Cannot allocate memory for ranges (exclude)\n");
>                                 fclose(fp);
>                                 return -ENOMEM;
>                         }

Since this is an old thread, it would be useful for people looking at
the same, if you can add some comments/details about why you think
this nit is needed.

Also if Akashi agrees with the same, it would be better if he could
send a rebased version of the patchset (with your comments addressed),
so that the same can be picked for upstream kexec-tools cleanly.

@Akashi- Hi Akashi, Please let us know your views.

Thanks,
Bhupesh

> +                     dbgprintf("%s:-      %016llx - %016llx\n",
> > +                                     __func__, start, end);
> > +             }
> > +     }
> > +
> > +     fclose(fp);
> > +
> > +     *range = memranges.ranges;
> > +     *ranges = memranges.size;
> >
> >       /* As a fallback option, we can try determining the PHYS_OFFSET
> >        * value from the '/proc/iomem' entries as well.
> > @@ -976,52 +1041,15 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> >        * between the user-space and kernel space 'PHYS_OFFSET'
> >        * value.
> >        */
> > -     set_phys_offset(r->start, "iomem");
> > +     if (memranges.size)
> > +             set_phys_offset(memranges.ranges[0].start, "iomem");
> >
> > -     dbgprintf("%s: %016llx - %016llx : %s", __func__, r->start,
> > -             r->end, str);
> > +     dbgprint_mem_range("System RAM ranges;",
> > +                             memranges.ranges, memranges.size);
> >
> >       return 0;
> >  }
> >
> > -/**
> > - * get_memory_ranges_iomem - Try to get the memory ranges from
> > - * /proc/iomem.
> > - */
> > -
> > -static int get_memory_ranges_iomem(struct memory_range *array,
> > -     unsigned int *count)
> > -{
> > -     *count = kexec_iomem_for_each_line(NULL,
> > -             get_memory_ranges_iomem_cb, array);
> > -
> > -     if (!*count) {
> > -             dbgprintf("%s: failed: No RAM found.\n", __func__);
> > -             return EFAILED;
> > -     }
> > -
> > -     return 0;
> > -}
> > -
> > -/**
> > - * get_memory_ranges - Try to get the memory ranges some how.
> > - */
> > -
> > -int get_memory_ranges(struct memory_range **range, int *ranges,
> > -     unsigned long kexec_flags)
> > -{
> > -     static struct memory_range array[KEXEC_SEGMENT_MAX];
> > -     unsigned int count;
> > -     int result;
> > -
> > -     result = get_memory_ranges_iomem(array, &count);
> > -
> > -     *range = result ? NULL : array;
> > -     *ranges = result ? 0 : count;
> > -
> > -     return result;
> > -}
> > -
> >  int arch_compat_trampoline(struct kexec_info *info)
> >  {
> >       return 0;
> > --
> > 2.19.1
> >
> >
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
