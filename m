Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 277BB120843
	for <lists+kexec@lfdr.de>; Mon, 16 Dec 2019 15:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0b3tgAbwsFcPM8Tm4pmH16L+Vuvdvx/LZJRS1r1oK74=; b=Brbt8kpaMhyCJq
	GLdYf489gWK70U9wGUOtamvzER3OGvPYinzoi1kpLOqqlMCeRkOYxct6ZOyh1P522B18NeycyVSYM
	CgBAqlaYgDOQO0RbhCDeX7oUDxszK/Cc6qqMNjx7+PW6zTKhrT3XVxbKL5WA12DsD19SGcO8BRIg1
	R1LWXr1T+jMWAL1RYBHEMs6FXLrQCp5PS0lErpigFD6b6SSag9CRxkVKP/USNsHh7XQ5st3zo2P/m
	0fraXiBpY0vngW/0jg4C2gmoUgX4Zbw22GEHzB5ZGQi+CVr/rGIvvdGp7SF65Sw77lthfhiY8ODyi
	8AbinwLD/mc6NjhMKitg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrAc-0004rh-Se; Mon, 16 Dec 2019 14:16:22 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrAZ-0004r7-J5
 for kexec@lists.infradead.org; Mon, 16 Dec 2019 14:16:21 +0000
Received: by mail-qv1-xf41.google.com with SMTP id dc14so1109213qvb.9
 for <kexec@lists.infradead.org>; Mon, 16 Dec 2019 06:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=95NB/e65XCWxJPA2uyuxrN1163f5PdaCdkL66p/VrPg=;
 b=MS+DeSc+tMCYr5NnLyceOyGQsaenw2t2Am1m/EksvhWNT+Afp06Sa5DOWGE1lqEGt8
 pZy2EIfG9BlGUdz3hafAA7kTSuf5hMiD9LZqB5iefcnOweUwrAX+lIb4CGIGUqfcUFmU
 Gg8kFjvo2Z6SSf1i80ttfCiVlhHPcpma9f2jUxkEPmN0VrQ8tVlbb3op9T6bcKnrVi0k
 eUkYwDOdmr15tvoohtTcK9tUjaGLzEbMNo/bZxojIKyOwthn7GalBnycTeXQQC+ImDOC
 R5+r6z7jHf1it1guIZNRRGptmhnfjEL3qJieAdbJtHPZcCdEo2+Pz/u3IHNkopFh5bn4
 pK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=95NB/e65XCWxJPA2uyuxrN1163f5PdaCdkL66p/VrPg=;
 b=dhTnJ2GD4mckyaZmwlyVsifPwqmaDFZ9KcuGo7N1tHD3Ez1bGUCxnHp/WVBkT9wtOs
 J/kutsnG2YTJEE6mpw4nmEjLxNz9q7J0xqWRV5Yu66VvfzzJgAAOmNtIB8ZJ95B5JGvv
 6ffPo7IZIMwDlQT6yQGLUp9uG0kmcxWOe7XxnVU+guTQ2stUlyWkIIxMWiYrHN5KhtZP
 u1fA4oMq4Zgn8UL3LEMwekpDiI4tXOuDkrDUZM3HF190ZwShcfvHL1oXjuLk4fTuy4ol
 haMIoC0epmEhqoqZN8sv3IvjUOJeWS51uN/d27kXv4oJ63n34vOdchs9X47xYjvub6OS
 eJjg==
X-Gm-Message-State: APjAAAXCpFuN8azruQu64Ny3kmG4EjPAgi+o4PLdm+1zGolCRCDKazPI
 F6hL62g/Bqz4FsG1I/8jhg==
X-Google-Smtp-Source: APXvYqy2ek0ko2pCYv9HCs4UjGLPhZfeCoDmhglAS6Yo3kNQ+sN52KRrYlNrB9bFFuylrViZIb8eow==
X-Received: by 2002:a0c:cdc4:: with SMTP id a4mr1147975qvn.21.1576505777628;
 Mon, 16 Dec 2019 06:16:17 -0800 (PST)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id c84sm5995469qkg.78.2019.12.16.06.16.16
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 16 Dec 2019 06:16:16 -0800 (PST)
Date: Mon, 16 Dec 2019 09:16:06 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v2 2/3] arm64: kexec: allocate memory space avoiding
 reserved regions
Message-ID: <20191216141606.nhosl4v233mtvu4u@gabell>
References: <20190111095946.28070-1-takahiro.akashi@linaro.org>
 <20190111095946.28070-3-takahiro.akashi@linaro.org>
 <20191213200430.uxuebdavpq64scfh@gabell>
 <CACi5LpOKCfgjmxo59sT5bVN0qHvYapy1NRXn0F=_By-vp0g=sA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpOKCfgjmxo59sT5bVN0qHvYapy1NRXn0F=_By-vp0g=sA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_061619_631281_C7FB0545 
X-CRM114-Status: GOOD (  32.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Dec 16, 2019 at 11:22:56AM +0530, Bhupesh Sharma wrote:
> Thanks Masa,
> 
> On Sat, Dec 14, 2019 at 1:34 AM Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
> >
> > some nits as below:
> >
> > On Fri, Jan 11, 2019 at 06:59:45PM +0900, AKASHI Takahiro wrote:
> > > On UEFI/ACPI-only system, some memory regions, including but not limited
> > > to UEFI memory map and ACPI tables, must be preserved across kexec'ing.
> > > Otherwise, they can be corrupted and result in early failure in booting
> > > a new kernel.
> > >
> > > In recent kernels, /proc/iomem now has an extended file format like:
> > >       40000000-5871ffff : System RAM
> > >         41800000-426affff : Kernel code
> > >         426b0000-42aaffff : reserved
> > >         42ab0000-42c64fff : Kernel data
> > >         54400000-583fffff : Crash kernel
> > >         58590000-585effff : reserved
> > >         58700000-5871ffff : reserved
> > >       58720000-58b5ffff : reserved
> > >       58b60000-5be3ffff : System RAM
> > >         58b61000-58b61fff : reserved
> > >         59a77000-59a77fff : reserved
> > >       5be40000-5becffff : reserved
> > >       5bed0000-5bedffff : System RAM
> > >       5bee0000-5bffffff : reserved
> > >       5c000000-5fffffff : System RAM
> > >         5da00000-5e9fffff : reserved
> > >         5ec00000-5edfffff : reserved
> > >         5ef6a000-5ef6afff : reserved
> > >         5ef6b000-5efcafff : reserved
> > >         5efcd000-5efcffff : reserved
> > >         5efd0000-5effffff : reserved
> > >         5f000000-5fffffff : reserved
> > >
> > > where the "reserved" entries at the top level or under System RAM (and
> > > its descendant resources) are ones of such kind and should not be regarded
> > > as usable memory ranges where several free spaces for loading kexec data
> > > will be allocated.
> > >
> > > With this patch, get_memory_ranges() will handle this format of file
> > > correctly. Note that, for safety, unknown regions, in addition to
> > > "reserved" ones, will also be excluded.
> > >
> > > Signed-off-by: AKASHI Takahiro <takahiro.akashi at linaro.org>
> > > ---
> > >  kexec/arch/arm64/kexec-arm64.c | 146 ++++++++++++++++++++-------------
> > >  1 file changed, 87 insertions(+), 59 deletions(-)
> > >
> > > diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
> > > index 1cde75d1a771..2e923b54f5b1 100644
> > > --- a/kexec/arch/arm64/kexec-arm64.c
> > > +++ b/kexec/arch/arm64/kexec-arm64.c
> > > @@ -10,7 +10,9 @@
> > >  #include <inttypes.h>
> > >  #include <libfdt.h>
> > >  #include <limits.h>
> > > +#include <stdio.h>
> > >  #include <stdlib.h>
> > > +#include <string.h>
> > >  #include <sys/stat.h>
> > >  #include <linux/elf-em.h>
> > >  #include <elf.h>
> > > @@ -29,6 +31,7 @@
> > >  #include "fs2dt.h"
> > >  #include "iomem.h"
> > >  #include "kexec-syscall.h"
> > > +#include "mem_regions.h"
> > >  #include "arch/options.h"
> > >
> > >  #define ROOT_NODE_ADDR_CELLS_DEFAULT 1
> > > @@ -899,19 +902,33 @@ int get_phys_base_from_pt_load(unsigned long *phys_offset)
> > >       return 0;
> > >  }
> > >
> > > +static bool to_be_excluded(char *str)
> > > +{
> > > +     if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)) ||
> > > +         !strncmp(str, KERNEL_CODE, strlen(KERNEL_CODE)) ||
> > > +         !strncmp(str, KERNEL_DATA, strlen(KERNEL_DATA)) ||
> > > +         !strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)))
> > > +             return false;
> > > +     else
> > > +             return true;
> > > +}
> > > +
> > >  /**
> > > - * get_memory_ranges_iomem_cb - Helper for get_memory_ranges_iomem.
> > > + * get_memory_ranges - Try to get the memory ranges from
> > > + * /proc/iomem.
> > >   */
> > > -
> > > -static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> > > -     unsigned long long base, unsigned long long length)
> > > +int get_memory_ranges(struct memory_range **range, int *ranges,
> > > +     unsigned long kexec_flags)
> > >  {
> > > -     int ret;
> > >       unsigned long phys_offset = UINT64_MAX;
> > > -     struct memory_range *r;
> > > -
> > > -     if (nr >= KEXEC_SEGMENT_MAX)
> > > -             return -1;
> > > +     FILE *fp;
> > > +     const char *iomem = proc_iomem();
> > > +     char line[MAX_LINE], *str;
> > > +     unsigned long long start, end;
> > > +     int n, consumed;
> > > +     struct memory_ranges memranges;
> > > +     struct memory_range *last, excl_range;
> > > +     int ret;
> > >
> > >       if (!try_read_phys_offset_from_kcore) {
> > >               /* Since kernel version 4.19, 'kcore' contains
> > > @@ -945,17 +962,65 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> > >               try_read_phys_offset_from_kcore = true;
> > >       }
> > >
> > > -     r = (struct memory_range *)data + nr;
> > > +     fp = fopen(iomem, "r");
> > > +     if (!fp)
> > > +             die("Cannot open %s\n", iomem);
> > > +
> > > +     memranges.ranges = NULL;
> > > +     memranges.size = memranges.max_size  = 0;
> > > +
> > > +     while (fgets(line, sizeof(line), fp) != 0) {
> > > +             n = sscanf(line, "%llx-%llx : %n", &start, &end, &consumed);
> > > +             if (n != 2)
> > > +                     continue;
> > > +             str = line + consumed;
> > > +
> > > +             if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM))) {
> > > +                     ret = mem_regions_alloc_and_add(&memranges,
> > > +                                     start, end - start + 1, RANGE_RAM);
> > > +                     if (ret) {
> > > +                             fprintf(stderr,
> > > +                                     "Cannot allocate memory for ranges\n");
> >
> >                                 fclose(fp);
> >
> > > +                             return -ENOMEM;
> > > +                     }
> > >
> > > -     if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)))
> > > -             r->type = RANGE_RAM;
> > > -     else if (!strncmp(str, IOMEM_RESERVED, strlen(IOMEM_RESERVED)))
> > > -             r->type = RANGE_RESERVED;
> > > -     else
> > > -             return 1;
> > > +                     dbgprintf("%s:+[%d] %016llx - %016llx\n", __func__,
> > > +                             memranges.size - 1,
> > > +                             memranges.ranges[memranges.size - 1].start,
> > > +                             memranges.ranges[memranges.size - 1].end);
> > > +             } else if (to_be_excluded(str)) {
> > > +                     if (!memranges.size)
> > > +                             continue;
> > > +
> > > +                     /*
> > > +                      * Note: mem_regions_exclude() doesn't guarantee
> > > +                      * that the ranges are sorted out, but as long as
> > > +                      * we cope with /proc/iomem, we only operate on
> > > +                      * the last entry and so it is safe.
> > > +                      */
> > >
> > > -     r->start = base;
> > > -     r->end = base + length - 1;
> > > +                     /* The last System RAM range */
> > > +                     last = &memranges.ranges[memranges.size - 1];
> > > +
> > > +                     if (last->end < start)
> > > +                             /* New resource outside of System RAM */
> > > +                             continue;
> > > +                     if (end < last->start)
> > > +                             /* Already excluded by parent resource */
> > > +                             continue;
> > > +
> > > +                     excl_range.start = start;
> > > +                     excl_range.end = end;
> >
> > > +                     mem_regions_alloc_and_exclude(&memranges, &excl_range);
> >                         ret = mem_regions_alloc_and_exclude(&memranges, &excl_range);
> >                         if (ret) {
> >                                 fprintf(stderr,
> >                                         "Cannot allocate memory for ranges (exclude)\n");
> >                                 fclose(fp);
> >                                 return -ENOMEM;
> >                         }
> 
> Since this is an old thread, it would be useful for people looking at
> the same, if you can add some comments/details about why you think
> this nit is needed.

Thank you for your follow up and I'm sorry I didn't explain it.
mem_regions_alloc_and_exclude() may fail in case realloc() or
mem_region_exclude() fail, so it would be better to add the error
handling.

> 
> Also if Akashi agrees with the same, it would be better if he could
> send a rebased version of the patchset (with your comments addressed),
> so that the same can be picked for upstream kexec-tools cleanly.

Sounds great!

- Masa

> 
> @Akashi- Hi Akashi, Please let us know your views.
> 
> Thanks,
> Bhupesh
> 
> > +                     dbgprintf("%s:-      %016llx - %016llx\n",
> > > +                                     __func__, start, end);
> > > +             }
> > > +     }
> > > +
> > > +     fclose(fp);
> > > +
> > > +     *range = memranges.ranges;
> > > +     *ranges = memranges.size;
> > >
> > >       /* As a fallback option, we can try determining the PHYS_OFFSET
> > >        * value from the '/proc/iomem' entries as well.
> > > @@ -976,52 +1041,15 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> > >        * between the user-space and kernel space 'PHYS_OFFSET'
> > >        * value.
> > >        */
> > > -     set_phys_offset(r->start, "iomem");
> > > +     if (memranges.size)
> > > +             set_phys_offset(memranges.ranges[0].start, "iomem");
> > >
> > > -     dbgprintf("%s: %016llx - %016llx : %s", __func__, r->start,
> > > -             r->end, str);
> > > +     dbgprint_mem_range("System RAM ranges;",
> > > +                             memranges.ranges, memranges.size);
> > >
> > >       return 0;
> > >  }
> > >
> > > -/**
> > > - * get_memory_ranges_iomem - Try to get the memory ranges from
> > > - * /proc/iomem.
> > > - */
> > > -
> > > -static int get_memory_ranges_iomem(struct memory_range *array,
> > > -     unsigned int *count)
> > > -{
> > > -     *count = kexec_iomem_for_each_line(NULL,
> > > -             get_memory_ranges_iomem_cb, array);
> > > -
> > > -     if (!*count) {
> > > -             dbgprintf("%s: failed: No RAM found.\n", __func__);
> > > -             return EFAILED;
> > > -     }
> > > -
> > > -     return 0;
> > > -}
> > > -
> > > -/**
> > > - * get_memory_ranges - Try to get the memory ranges some how.
> > > - */
> > > -
> > > -int get_memory_ranges(struct memory_range **range, int *ranges,
> > > -     unsigned long kexec_flags)
> > > -{
> > > -     static struct memory_range array[KEXEC_SEGMENT_MAX];
> > > -     unsigned int count;
> > > -     int result;
> > > -
> > > -     result = get_memory_ranges_iomem(array, &count);
> > > -
> > > -     *range = result ? NULL : array;
> > > -     *ranges = result ? 0 : count;
> > > -
> > > -     return result;
> > > -}
> > > -
> > >  int arch_compat_trampoline(struct kexec_info *info)
> > >  {
> > >       return 0;
> > > --
> > > 2.19.1
> > >
> > >
> >
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
