Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAF2197439
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 08:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ue+dbHvHNQUQ8B6fnCOKlWQoaeiKxeVBwzYx8pSQK8I=; b=hN4c4EECoAsEwh
	awCWET4KzrgvYQYT9JQh7KaCCkWqQ0jaLoJzByAhGC/zLM4qdxpvgWnsP+Es6IJM7FkJpfcm6pWl2
	ueT90eRQOqMEy/r01jVCvvU8tTAbSt2LJQyoZ39ZGlnvU8NnBr0M+dD59Ol9umJwCR602pKqAMBmT
	vqwE5yRrCCQcpMd6dBeg6PR/St6RyjJvw5+mBIu5FSz0GGtClXgDeTdNsFXZDuJooIA1yFCPNR6n8
	FDkID64V5W7/ORYjeqTJyDc77zdIBeKRNpCFWrCtRkq5swkH1GSrZvrzoRUjT4OUv5KiIINgU0Nx1
	zQ9sM+BrtCjZGMPTLWYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jInZ2-0004h2-Af; Mon, 30 Mar 2020 06:06:24 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jInYz-0004g0-Ap
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 06:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585548376;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DoPnkWZzesBQB1eF0OASE8g2Wbtn3HrR4CTvqW5Xd1w=;
 b=CO5Y8sUuIBYZsaV5yrVVX7cNIIHYQIirxdeeyGhAmnvc6t7C13VIy9k22qZ+SWYXSAA3Tt
 1eCHTpHcHkPlVsWceAEn9P4dQFxIzCB7IpOOnDaIY1Ei7R7kPK1Qx+sGS/DaQLwHYfhahb
 FbBiojbZJpR7MhSOV4bqaOuyf35fCHk=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-176-n7xXvFMLN7uJWso0PHkFMQ-1; Mon, 30 Mar 2020 02:06:13 -0400
X-MC-Unique: n7xXvFMLN7uJWso0PHkFMQ-1
Received: by mail-il1-f199.google.com with SMTP id w76so15689897ila.6
 for <kexec@lists.infradead.org>; Sun, 29 Mar 2020 23:06:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3Z8MUb22p7ZiJoFtWbH8w9GnxOVCEYWuXorysUeb7ac=;
 b=o0eO6AeKqi8dAvSer2jhcdPpN+KJ7tFFUmlhptNN70BD80tYbqILs+p4+dlL/iPBTt
 pq33vyrzjzVLK0AOgPUWZp0PILS/4yh9vUzPvaoqCd3hOhfmjBlDl+ZG2mWgpnbHAe0F
 ZV87fXbCMqzR0fUh57OOOgjcbNgieRYiED6x8iPNRhw88Y1zvfjQW3EG8Fv3DoJmBUpd
 V8xcXEXtuGDb4nN6COem6Dp8M9Xh/c+hxxoj1PtCMvAbuCcBVbaxHCQW1aDKEkxwjaZi
 AnKpQLdpzJ7wXAmSrTACj0KgGd2cY8sUWOHJK2Ui9zl90UNARIffnWk0PEerlVDp06MD
 LbWA==
X-Gm-Message-State: ANhLgQ17jgMHdT2UU/5b55a/qk+8sFv2Y+oRF9A+ZqJ6pHi5G+DzYLc2
 2/ZkWppm/gzdsuUC0sOvtBF2QaIiYfybaV1wcv2LKUVZkNTVP4HIrZ7rQHHe7YFI9nWaUKDLBIY
 WI3ERrt0xd2riZVY3HYciiYEnSF3onTz7VbEJ
X-Received: by 2002:a02:5886:: with SMTP id f128mr9562944jab.90.1585548372559; 
 Sun, 29 Mar 2020 23:06:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtQT+OkauKtqxjcWqTugG3mPUS6iL3wOenAWEe+VQEhGQWTDfa7ppRS6Xx7Lin8b0dyX9tsWAk//LPtcMD1AbA=
X-Received: by 2002:a02:5886:: with SMTP id f128mr9562920jab.90.1585548372218; 
 Sun, 29 Mar 2020 23:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200326162922.27085-1-graf@amazon.com>
 <20200328115733.GA67084@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200328115733.GA67084@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 30 Mar 2020 14:06:01 +0800
Message-ID: <CACPcB9d_Pz9SRhSsRzqygRR6waV7r8MnGcCP952svnZtpFaxnQ@mail.gmail.com>
Subject: Re: [PATCH] swiotlb: Allow swiotlb to live at pre-defined address
To: Dave Young <dyoung@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_230621_450734_0FC7B195 
X-CRM114-Status: GOOD (  34.42  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, brijesh.singh@amd.com,
 Lianbo Jiang <lijiang@redhat.com>, linux-doc@vger.kernel.org,
 Jan Kiszka <jan.kiszka@siemens.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, Baoquan He <bhe@redhat.com>,
 the arch/x86 maintainers <x86@kernel.org>, Laszlo Ersek <lersek@redhat.com>,
 aggh@amazon.com, "Lendacky, Thomas" <thomas.lendacky@amd.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, alcioa@amazon.com,
 Alexander Graf <graf@amazon.com>, dhr@amazon.com, benh@amazon.com,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, aagch@amazon.com,
 Robin Murphy <robin.murphy@arm.com>, dwmw@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Mar 28, 2020 at 7:57 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 03/26/20 at 05:29pm, Alexander Graf wrote:
> > The swiotlb is a very convenient fallback mechanism for bounce buffering of
> > DMAable data. It is usually used for the compatibility case where devices
> > can only DMA to a "low region".
> >
> > However, in some scenarios this "low region" may be bound even more
> > heavily. For example, there are embedded system where only an SRAM region
> > is shared between device and CPU. There are also heterogeneous computing
> > scenarios where only a subset of RAM is cache coherent between the
> > components of the system. There are partitioning hypervisors, where
> > a "control VM" that implements device emulation has limited view into a
> > partition's memory for DMA capabilities due to safety concerns.
> >
> > This patch adds a command line driven mechanism to move all DMA memory into
> > a predefined shared memory region which may or may not be part of the
> > physical address layout of the Operating System.
> >
> > Ideally, the typical path to set this configuration would be through Device
> > Tree or ACPI, but neither of the two mechanisms is standardized yet. Also,
> > in the x86 MicroVM use case, we have neither ACPI nor Device Tree, but
> > instead configure the system purely through kernel command line options.
> >
> > I'm sure other people will find the functionality useful going forward
> > though and extend it to be triggered by DT/ACPI in the future.
>
> Hmm, we have a use case for kdump, this maybe useful.  For example
> swiotlb is enabled by default if AMD SME/SEV is active, and in kdump
> kernel we have to increase the crashkernel reserved size for the extra
> swiotlb requirement.  I wonder if we can just reuse the old kernel's
> swiotlb region and pass the addr to kdump kernel.
>

Yes, definitely helpful for kdump kernel. This can help reduce the
crashkernel value.

Previously I was thinking about something similar, play around the
e820 entry passed to kdump and let it place swiotlb in wanted region.
Simply remap it like in this patch looks much cleaner.

If this patch is acceptable, one more patch is needed to expose the
swiotlb in iomem, so kexec-tools can pass the right kernel cmdline to
second kernel.

> >
> > Signed-off-by: Alexander Graf <graf@amazon.com>
> > ---
> >  Documentation/admin-guide/kernel-parameters.txt |  3 +-
> >  Documentation/x86/x86_64/boot-options.rst       |  4 ++-
> >  kernel/dma/swiotlb.c                            | 46 +++++++++++++++++++++++--
> >  3 files changed, 49 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > index c07815d230bc..d085d55c3cbe 100644
> > --- a/Documentation/admin-guide/kernel-parameters.txt
> > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > @@ -4785,11 +4785,12 @@
> >                       it if 0 is given (See Documentation/admin-guide/cgroup-v1/memory.rst)
> >
> >       swiotlb=        [ARM,IA-64,PPC,MIPS,X86]
> > -                     Format: { <int> | force | noforce }
> > +                     Format: { <int> | force | noforce | addr=<phys addr> }
> >                       <int> -- Number of I/O TLB slabs
> >                       force -- force using of bounce buffers even if they
> >                                wouldn't be automatically used by the kernel
> >                       noforce -- Never use bounce buffers (for debugging)
> > +                     addr=<phys addr> -- Try to allocate SWIOTLB at defined address
> >
> >       switches=       [HW,M68k]
> >
> > diff --git a/Documentation/x86/x86_64/boot-options.rst b/Documentation/x86/x86_64/boot-options.rst
> > index 2b98efb5ba7f..ca46c57b68c9 100644
> > --- a/Documentation/x86/x86_64/boot-options.rst
> > +++ b/Documentation/x86/x86_64/boot-options.rst
> > @@ -297,11 +297,13 @@ iommu options only relevant to the AMD GART hardware IOMMU:
> >  iommu options only relevant to the software bounce buffering (SWIOTLB) IOMMU
> >  implementation:
> >
> > -    swiotlb=<pages>[,force]
> > +    swiotlb=<pages>[,force][,addr=<phys addr>]
> >        <pages>
> >          Prereserve that many 128K pages for the software IO bounce buffering.
> >        force
> >          Force all IO through the software TLB.
> > +      addr=<phys addr>
> > +        Try to allocate SWIOTLB at defined address
> >
> >  Settings for the IBM Calgary hardware IOMMU currently found in IBM
> >  pSeries and xSeries machines
> > diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> > index c19379fabd20..83da0caa2f93 100644
> > --- a/kernel/dma/swiotlb.c
> > +++ b/kernel/dma/swiotlb.c
> > @@ -46,6 +46,7 @@
> >  #include <linux/init.h>
> >  #include <linux/memblock.h>
> >  #include <linux/iommu-helper.h>
> > +#include <linux/io.h>
> >
> >  #define CREATE_TRACE_POINTS
> >  #include <trace/events/swiotlb.h>
> > @@ -102,6 +103,12 @@ unsigned int max_segment;
> >  #define INVALID_PHYS_ADDR (~(phys_addr_t)0)
> >  static phys_addr_t *io_tlb_orig_addr;
> >
> > +/*
> > + * The TLB phys addr may be defined on the command line. Store it here if it is.
> > + */
> > +static phys_addr_t io_tlb_addr = INVALID_PHYS_ADDR;
> > +
> > +
> >  /*
> >   * Protect the above data structures in the map and unmap calls
> >   */
> > @@ -119,11 +126,23 @@ setup_io_tlb_npages(char *str)
> >       }
> >       if (*str == ',')
> >               ++str;
> > -     if (!strcmp(str, "force")) {
> > +     if (!strncmp(str, "force", 5)) {
> >               swiotlb_force = SWIOTLB_FORCE;
> > -     } else if (!strcmp(str, "noforce")) {
> > +             str += 5;
> > +     } else if (!strncmp(str, "noforce", 7)) {
> >               swiotlb_force = SWIOTLB_NO_FORCE;
> >               io_tlb_nslabs = 1;
> > +             str += 7;
> > +     }
> > +
> > +     if (*str == ',')
> > +             ++str;
> > +     if (!strncmp(str, "addr=", 5)) {
> > +             char *addrstr = str + 5;
> > +
> > +             io_tlb_addr = kstrtoul(addrstr, 0, &str);
> > +             if (addrstr == str)
> > +                     io_tlb_addr = INVALID_PHYS_ADDR;
> >       }
> >
> >       return 0;
> > @@ -239,6 +258,25 @@ int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
> >       return 0;
> >  }
> >
> > +static int __init swiotlb_init_io(int verbose, unsigned long bytes)
> > +{
> > +     unsigned __iomem char *vstart;
> > +
> > +     if (io_tlb_addr == INVALID_PHYS_ADDR)
> > +             return -EINVAL;
> > +
> > +     vstart = memremap(io_tlb_addr, bytes, MEMREMAP_WB);
> > +     if (!vstart)
> > +             return -EINVAL;
> > +
> > +     if (swiotlb_init_with_tbl(vstart, io_tlb_nslabs, verbose)) {
> > +             memunmap(vstart);
> > +             return -EINVAL;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> >  /*
> >   * Statically reserve bounce buffer space and initialize bounce buffer data
> >   * structures for the software IO TLB used to implement the DMA API.
> > @@ -257,6 +295,10 @@ swiotlb_init(int verbose)
> >
> >       bytes = io_tlb_nslabs << IO_TLB_SHIFT;
> >
> > +     /* Map IO TLB from device memory */
> > +     if (!swiotlb_init_io(verbose, bytes))
> > +             return;
> > +
> >       /* Get IO TLB memory from the low pages */
> >       vstart = memblock_alloc_low(PAGE_ALIGN(bytes), PAGE_SIZE);
> >       if (vstart && !swiotlb_init_with_tbl(vstart, io_tlb_nslabs, verbose))
> > --
> > 2.16.4
> >
> >
> >
> >
> > Amazon Development Center Germany GmbH
> > Krausenstr. 38
> > 10117 Berlin
> > Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
> > Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
> > Sitz: Berlin
> > Ust-ID: DE 289 237 879
> >
> >
> >
>
> Thanks
> Dave
>


-- 
Best Regards,
Kairui Song


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
