Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F5312F58D
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 09:36:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+q0YMHZv1GPImEebc51g3OtUVgg4Mbeu1/AiXQQn2cg=; b=Ku+FvYAJnmEwP3
	M2/yyjZ975QfG0ZUhsYR050WiMpsPjlnVFoZyfm+fD3xMOVWj5gEERnypj9HuEcexpNmrw8feRaDC
	WLhBPpYQFJJNPSvmULRniTcTduEIlzKJiGUijHHwtpt8SQdTac+rG+BDnjdtCk1SCx5MiWdL+x4UN
	cPSVFIrDADCXMOVzimNBXav/nNNyhM5Je/HGwsY3WjN0e4bmdGZig75uWD9M5pilI1lm0MSObPFnQ
	sl7u1CqmPKUVQmw8T/2ZbFups1ZFskalYxv8ijmL5zYTPypLP0HJSPMw2cMLzp5V+jM0INhyeGlbz
	yIz1xKh/9PwVLxM7yQzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inIRw-0001LL-5C; Fri, 03 Jan 2020 08:36:52 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inIRs-0001Ko-BX
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 08:36:50 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id BB2E025AEFB;
 Fri,  3 Jan 2020 19:36:41 +1100 (AEDT)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id AE9529402A2; Fri,  3 Jan 2020 09:36:39 +0100 (CET)
Date: Fri, 3 Jan 2020 09:36:39 +0100
From: Simon Horman <horms@verge.net.au>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH v3 0/3] arm64: handle "reserved" entries in /proc/iomem
Message-ID: <20200103083639.GH17507@vergenet.net>
References: <20191218164232.6086-1-msys.mizuma@gmail.com>
 <CACi5LpMwSvqBOBuKAbjv5DRwAuQ8OJ-s71Yv0rLPp2X+1WHkeg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpMwSvqBOBuKAbjv5DRwAuQ8OJ-s71Yv0rLPp2X+1WHkeg@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_003648_545878_FA331DAC 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Masayoshi Mizuma <msys.mizuma@gmail.com>, James Morse <james.morse@arm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Dec 23, 2019 at 12:25:00PM +0530, Bhupesh Sharma wrote:
> Thanks for the patches Masa,
> 
> On Wed, Dec 18, 2019 at 10:13 PM Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
> >
> > In recent arm64 kernels, /proc/iomem has an extended file format like:
> >
> >  40000000-5871ffff : System RAM
> >    41800000-426affff : Kernel code
> >    426b0000-42aaffff : reserved
> >    42ab0000-42c64fff : Kernel data
> >    54400000-583fffff : Crash kernel
> >    58590000-585effff : reserved
> >    58700000-5871ffff : reserved
> >  58720000-58b5ffff : reserved
> >  58b60000-5be3ffff : System RAM
> >    58b61000-58b61fff : reserved
> >
> > where "reserved" entries can be an ACPI table, UEFI related code or
> > data. They can be corrupted and result in early failure in booting
> > a new kernel. As an actual example, LPI pending table and LPI property
> > table, which are pointed by a UEFI data, are sometimes destroyed.
> >
> > They are expected to be preserved across kexec'ing.
> >
> > Changelog:
> >     v3: - Re-based to the latest commit (bd07796).
> >         - Added Tested-by tag from Bhupesh and Masayoshi
> >         - Added an error handling in case
> >           mem_regions_alloc_and_exclude() fails (0002 patch).
> >
> > AKASHI Takahiro (3):
> >   kexec: add variant helper functions for handling memory regions
> >   arm64: kexec: allocate memory space avoiding reserved regions
> >   arm64: kdump: deal with a lot of resource entries in /proc/iomem
> >
> >  kexec/arch/arm64/crashdump-arm64.c |  25 ++---
> >  kexec/arch/arm64/kexec-arm64.c     | 153 ++++++++++++++++++-----------
> >  kexec/mem_regions.c                |  42 ++++++++
> >  kexec/mem_regions.h                |   7 ++
> >  4 files changed, 153 insertions(+), 74 deletions(-)
> 
> The changes look fine to me (the patches already have my Tested-by).
> 
> Hi Simon,
> 
> Can you please help pick these changes for upstream kexec-tools and
> arm64 kexec is broken on few machines in the absence of these changes.
> The corresponding linux change (see [0]) has already been accepted in
> linux-next tree.
> 
> [0]. ab0eb16205b4 ("efi/memreserve: Register reservations as
> 'reserved' in /proc/iomem")

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
