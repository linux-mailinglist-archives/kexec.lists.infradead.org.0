Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7961965E8
	for <lists+kexec@lfdr.de>; Sat, 28 Mar 2020 12:58:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdRQPTlplHzkL6IWnM6jX8OdBT4V7xZfMhDJyP1wbus=; b=RvsTz193k3L0Rr
	fDxSxM8r5f/yXriqcohJgX01hFDBLWE3GYu636vq9ajk6H7fkUKE5IXep9ilDCPG8IgHuapgECNMC
	aTDUOCTZToJVf/auqqHzkK/gfm8vzT/rxAgiEuTOYOsTdGQ2JmW6n3myOiSblyWCmWTXMZ0Sa/vxS
	u0iw8nNJ1Xx7GIwKb+AnSqQhR4CH7PeJqRy8W7nOLP2BdwNLk+4ZuKYRGWDxOsEy9nfdVNWCx4SHS
	uBRd3lNuUBdP+bTM+OkMBcjo2cGfAtvRbXkaHE6k3I/esP90EZI046Q5ZRHiiJ11XFkGrOJ5MLw5M
	3M11VVGlpFd6uwfipxeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIA6N-0007Vv-0w; Sat, 28 Mar 2020 11:58:11 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIA6J-0007VG-53
 for kexec@lists.infradead.org; Sat, 28 Mar 2020 11:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585396681;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=MlgUgoCS6ugUoJeRRLBbalZpTjLxsTZKRshOClHAQAs=;
 b=hwgozu9A/UgVvL2A0RapTmbKpUFh8vG3e82jir2X3fd9uMVhQWaP1/XmvqcsS3pbsEuj+9
 xkoUlnyLYOtDRGzpfE4A/sXLhzA6LoclZQQFboSDTfRr3u/RNsjeXcz4SzGlt1F0x5thn7
 ElgrXJDAwxhehXYgm3vKtMIqB/3Ytr8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-ikfo-PwRMFC4t_MRjKb6Kg-1; Sat, 28 Mar 2020 07:57:49 -0400
X-MC-Unique: ikfo-PwRMFC4t_MRjKb6Kg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AB0B8017CC;
 Sat, 28 Mar 2020 11:57:46 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-137.pek2.redhat.com
 [10.72.12.137])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8661D90800;
 Sat, 28 Mar 2020 11:57:37 +0000 (UTC)
Date: Sat, 28 Mar 2020 19:57:33 +0800
From: Dave Young <dyoung@redhat.com>
To: Alexander Graf <graf@amazon.com>
Subject: Re: [PATCH] swiotlb: Allow swiotlb to live at pre-defined address
Message-ID: <20200328115733.GA67084@dhcp-128-65.nay.redhat.com>
References: <20200326162922.27085-1-graf@amazon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326162922.27085-1-graf@amazon.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_045807_271301_81CC6AE6 
X-CRM114-Status: GOOD (  30.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, brijesh.singh@amd.com,
 lijiang@redhat.com, linux-doc@vger.kernel.org,
 Jan Kiszka <jan.kiszka@siemens.com>, Christoph Hellwig <hch@lst.de>,
 Marek Szyprowski <m.szyprowski@samsung.com>, bhe@redhat.com, x86@kernel.org,
 Laszlo Ersek <lersek@redhat.com>, aggh@amazon.com, thomas.lendacky@amd.com,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, alcioa@amazon.com,
 dhr@amazon.com, benh@amazon.com, kasong@redhat.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 aagch@amazon.com, Robin Murphy <robin.murphy@arm.com>, dwmw@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 03/26/20 at 05:29pm, Alexander Graf wrote:
> The swiotlb is a very convenient fallback mechanism for bounce buffering of
> DMAable data. It is usually used for the compatibility case where devices
> can only DMA to a "low region".
> 
> However, in some scenarios this "low region" may be bound even more
> heavily. For example, there are embedded system where only an SRAM region
> is shared between device and CPU. There are also heterogeneous computing
> scenarios where only a subset of RAM is cache coherent between the
> components of the system. There are partitioning hypervisors, where
> a "control VM" that implements device emulation has limited view into a
> partition's memory for DMA capabilities due to safety concerns.
> 
> This patch adds a command line driven mechanism to move all DMA memory into
> a predefined shared memory region which may or may not be part of the
> physical address layout of the Operating System.
> 
> Ideally, the typical path to set this configuration would be through Device
> Tree or ACPI, but neither of the two mechanisms is standardized yet. Also,
> in the x86 MicroVM use case, we have neither ACPI nor Device Tree, but
> instead configure the system purely through kernel command line options.
> 
> I'm sure other people will find the functionality useful going forward
> though and extend it to be triggered by DT/ACPI in the future.

Hmm, we have a use case for kdump, this maybe useful.  For example
swiotlb is enabled by default if AMD SME/SEV is active, and in kdump
kernel we have to increase the crashkernel reserved size for the extra
swiotlb requirement.  I wonder if we can just reuse the old kernel's
swiotlb region and pass the addr to kdump kernel.

> 
> Signed-off-by: Alexander Graf <graf@amazon.com>
> ---
>  Documentation/admin-guide/kernel-parameters.txt |  3 +-
>  Documentation/x86/x86_64/boot-options.rst       |  4 ++-
>  kernel/dma/swiotlb.c                            | 46 +++++++++++++++++++++++--
>  3 files changed, 49 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index c07815d230bc..d085d55c3cbe 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -4785,11 +4785,12 @@
>  			it if 0 is given (See Documentation/admin-guide/cgroup-v1/memory.rst)
>  
>  	swiotlb=	[ARM,IA-64,PPC,MIPS,X86]
> -			Format: { <int> | force | noforce }
> +			Format: { <int> | force | noforce | addr=<phys addr> }
>  			<int> -- Number of I/O TLB slabs
>  			force -- force using of bounce buffers even if they
>  			         wouldn't be automatically used by the kernel
>  			noforce -- Never use bounce buffers (for debugging)
> +			addr=<phys addr> -- Try to allocate SWIOTLB at defined address
>  
>  	switches=	[HW,M68k]
>  
> diff --git a/Documentation/x86/x86_64/boot-options.rst b/Documentation/x86/x86_64/boot-options.rst
> index 2b98efb5ba7f..ca46c57b68c9 100644
> --- a/Documentation/x86/x86_64/boot-options.rst
> +++ b/Documentation/x86/x86_64/boot-options.rst
> @@ -297,11 +297,13 @@ iommu options only relevant to the AMD GART hardware IOMMU:
>  iommu options only relevant to the software bounce buffering (SWIOTLB) IOMMU
>  implementation:
>  
> -    swiotlb=<pages>[,force]
> +    swiotlb=<pages>[,force][,addr=<phys addr>]
>        <pages>
>          Prereserve that many 128K pages for the software IO bounce buffering.
>        force
>          Force all IO through the software TLB.
> +      addr=<phys addr>
> +        Try to allocate SWIOTLB at defined address
>  
>  Settings for the IBM Calgary hardware IOMMU currently found in IBM
>  pSeries and xSeries machines
> diff --git a/kernel/dma/swiotlb.c b/kernel/dma/swiotlb.c
> index c19379fabd20..83da0caa2f93 100644
> --- a/kernel/dma/swiotlb.c
> +++ b/kernel/dma/swiotlb.c
> @@ -46,6 +46,7 @@
>  #include <linux/init.h>
>  #include <linux/memblock.h>
>  #include <linux/iommu-helper.h>
> +#include <linux/io.h>
>  
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/swiotlb.h>
> @@ -102,6 +103,12 @@ unsigned int max_segment;
>  #define INVALID_PHYS_ADDR (~(phys_addr_t)0)
>  static phys_addr_t *io_tlb_orig_addr;
>  
> +/*
> + * The TLB phys addr may be defined on the command line. Store it here if it is.
> + */
> +static phys_addr_t io_tlb_addr = INVALID_PHYS_ADDR;
> +
> +
>  /*
>   * Protect the above data structures in the map and unmap calls
>   */
> @@ -119,11 +126,23 @@ setup_io_tlb_npages(char *str)
>  	}
>  	if (*str == ',')
>  		++str;
> -	if (!strcmp(str, "force")) {
> +	if (!strncmp(str, "force", 5)) {
>  		swiotlb_force = SWIOTLB_FORCE;
> -	} else if (!strcmp(str, "noforce")) {
> +		str += 5;
> +	} else if (!strncmp(str, "noforce", 7)) {
>  		swiotlb_force = SWIOTLB_NO_FORCE;
>  		io_tlb_nslabs = 1;
> +		str += 7;
> +	}
> +
> +	if (*str == ',')
> +		++str;
> +	if (!strncmp(str, "addr=", 5)) {
> +		char *addrstr = str + 5;
> +
> +		io_tlb_addr = kstrtoul(addrstr, 0, &str);
> +		if (addrstr == str)
> +			io_tlb_addr = INVALID_PHYS_ADDR;
>  	}
>  
>  	return 0;
> @@ -239,6 +258,25 @@ int __init swiotlb_init_with_tbl(char *tlb, unsigned long nslabs, int verbose)
>  	return 0;
>  }
>  
> +static int __init swiotlb_init_io(int verbose, unsigned long bytes)
> +{
> +	unsigned __iomem char *vstart;
> +
> +	if (io_tlb_addr == INVALID_PHYS_ADDR)
> +		return -EINVAL;
> +
> +	vstart = memremap(io_tlb_addr, bytes, MEMREMAP_WB);
> +	if (!vstart)
> +		return -EINVAL;
> +
> +	if (swiotlb_init_with_tbl(vstart, io_tlb_nslabs, verbose)) {
> +		memunmap(vstart);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /*
>   * Statically reserve bounce buffer space and initialize bounce buffer data
>   * structures for the software IO TLB used to implement the DMA API.
> @@ -257,6 +295,10 @@ swiotlb_init(int verbose)
>  
>  	bytes = io_tlb_nslabs << IO_TLB_SHIFT;
>  
> +	/* Map IO TLB from device memory */
> +	if (!swiotlb_init_io(verbose, bytes))
> +		return;
> +
>  	/* Get IO TLB memory from the low pages */
>  	vstart = memblock_alloc_low(PAGE_ALIGN(bytes), PAGE_SIZE);
>  	if (vstart && !swiotlb_init_with_tbl(vstart, io_tlb_nslabs, verbose))
> -- 
> 2.16.4
> 
> 
> 
> 
> Amazon Development Center Germany GmbH
> Krausenstr. 38
> 10117 Berlin
> Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
> Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
> Sitz: Berlin
> Ust-ID: DE 289 237 879
> 
> 
> 

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
