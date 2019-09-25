Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E15BDC3F
	for <lists+kexec@lfdr.de>; Wed, 25 Sep 2019 12:37:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVbVy1m3AwUnnIWxqyNrDJXl99qW6KUKIF5IZnjArbM=; b=b23dAl6FZdkXfI
	v97wbf+9u993znd/8uRXXpPOQk3HqohW1dmTdNFzkwC44oTUdAxyZm4o2zy6qRQMLt4KIDTrskwjO
	3xsXLZLShr5xPNMb/312tz+eiq/4+5PccdLMoV6SvLS/1oEVuvnrTu9V4clLMu+XSbfoZSzTkuK9l
	hHIyI+28fuojQpn+mvodKEKlpMjWrtj2SfIznfHfjjlvNGbm8I3IfKjWYRLdYvDsfDWoGxABgzpqR
	BdoNyXFFo0fN4bUIjfIk1TRd3XI2uUesrjAaPlKrkLFxVygxPeVbINkkTsGENMbyd4ghOKKzupIwg
	a19M79es9Oni0J5vChxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD4fN-0006dX-6p; Wed, 25 Sep 2019 10:37:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4fF-0006cR-Po
 for kexec@lists.infradead.org; Wed, 25 Sep 2019 10:36:56 +0000
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 0269E81DE0
 for <kexec@lists.infradead.org>; Wed, 25 Sep 2019 10:36:49 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id a8so8601113ios.5
 for <kexec@lists.infradead.org>; Wed, 25 Sep 2019 03:36:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NdvVuCfFLXjVHxywXEjyNWAMi7Dm8AjJWXCcb/jJKAg=;
 b=FRRWo/67DDABfupp8yboLG7LJWbekCKXKPuD1SeYWRlpcm0GQBwgroDWN1npxUoj4R
 mbWaveRHzXql4HbxSbpj+CdY+YQpNQmjGxYBn2WCe5y+321AauoXHwhWlmBTAsKu3qmg
 bJTchMZpTEmMKo+uItjoMxKtSGuBDbXq4i+p7NOYIHEhqF2Q6ZlJDb1HDsyZonaAHquH
 mXoYlTRW7RdQeP1pa0vtKfSEnqqDgxWuzHU6aDzI0fpPZkGAAusCC22Fr5Miv5aLmIfk
 mcgC9yolmrZFAt1y49DAnsmT+lFtVIOexlz2MN2ZCvgZ8h0cPiRqn/8u44/hvxnaz8Ne
 Lvcw==
X-Gm-Message-State: APjAAAV95h1URrJ9T1ho3HD+fSdqREHH1JS2TGvFHLweakltviec7Atl
 ysIXWJePOD4oWUjuJbNRT6uBmqK+q0Ofu0Y/UFJhh2Avb6LuKfkuG4+Mp8X5ipPj01pb1lrYL+f
 ieQaKHpdLpykiheBgIWMJgOZ8lmi+VK9Qq+jH
X-Received: by 2002:a6b:14c6:: with SMTP id 189mr9456807iou.202.1569407808281; 
 Wed, 25 Sep 2019 03:36:48 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwnS9lQgCMgWdl29gbqz3gatArNxk8QN2NoOwKwj4dVqJTk2gZr9jeVjroaCsqi73bSKZQwB4ti64TZfA4QHk8=
X-Received: by 2002:a6b:14c6:: with SMTP id 189mr9456782iou.202.1569407807952; 
 Wed, 25 Sep 2019 03:36:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190910151341.14986-1-kasong@redhat.com>
 <20190910151341.14986-3-kasong@redhat.com>
 <20190911055618.GA104115@gmail.com>
In-Reply-To: <20190911055618.GA104115@gmail.com>
From: Kairui Song <kasong@redhat.com>
Date: Wed, 25 Sep 2019 18:36:36 +0800
Message-ID: <CACPcB9eZUZ1fCsc1GZs9MJnoqLK9Ld5KEx0_emx8J44Mjcy3WA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] x86/kdump: Reserve extra memory when SME or SEV is
 active
To: Ingo Molnar <mingo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_033654_271302_40F73751 
X-CRM114-Status: GOOD (  34.58  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Thomas Lendacky <Thomas.Lendacky@amd.com>,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 1:56 PM Ingo Molnar <mingo@kernel.org> wrote:
> * Kairui Song <kasong@redhat.com> wrote:
>
> > Since commit c7753208a94c ("x86, swiotlb: Add memory encryption support"),
> > SWIOTLB will be enabled even if there is less than 4G of memory when SME
> > is active, to support DMA of devices that not support address with the
> > encrypt bit.
> >
> > And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> > active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> >
> > Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> > encryption") will always force SWIOTLB to be enabled when SEV is active
> > in all cases.
> >
> > Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> > and this is also true for kdump kernel. As a result kdump kernel will
> > run out of already scarce pre-reserved memory easily.
> >
> > So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> > kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> > is specified or any offset is used. As for the high reservation case, an
> > extra low memory region will always be reserved and that is enough for
> > SWIOTLB. Else if the offset format is used, user should be fully aware
> > of any possible kdump kernel memory requirement and have to organize the
> > memory usage carefully.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >  arch/x86/kernel/setup.c | 20 +++++++++++++++++---
> >  1 file changed, 17 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> > index 71f20bb18cb0..ee6a2f1e2226 100644
> > --- a/arch/x86/kernel/setup.c
> > +++ b/arch/x86/kernel/setup.c
> > @@ -530,7 +530,7 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
> >                                         unsigned long long *crash_size,
> >                                         bool high)
> >  {
> > -     unsigned long long base, size;
> > +     unsigned long long base, size, mem_enc_req = 0;
> >
> >       base = *crash_base;
> >       size = *crash_size;
> > @@ -561,11 +561,25 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
> >       if (high)
> >               goto high_reserve;
> >
> > +     /*
> > +      * When SME/SEV is active and not using high reserve,
> > +      * it will always required an extra SWIOTLB region.
> > +      */
> > +     if (mem_encrypt_active())
> > +             mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> > +
> >       base = memblock_find_in_range(CRASH_ALIGN,
> > -                                   CRASH_ADDR_LOW_MAX, size,
> > +                                   CRASH_ADDR_LOW_MAX,
> > +                                   size + mem_enc_req,
> >                                     CRASH_ALIGN);
>

Hi Ingo,

I re-read my previous reply, it's long and tedious, let me try to make
a more effective reply:

> What sizes are we talking about here?

The size here is how much memory will be reserved for kdump kernel, to
ensure kdump kernel and userspace can run without OOM.

>
> - What is the possible size range of swiotlb_size_or_default()

swiotlb_size_or_default() returns the swiotlb size, it's specified by
user using swiotlb=<size>, or default size (64MB)

>
> - What is the size of CRASH_ADDR_LOW_MAX (the old limit)?

It's 4G.

>
> - Why do we replace one fixed limit with another fixed limit instead of
>   accurately sizing the area, with each required feature adding its own
>   requirement to the reservation size?

It's quite hard to "accurately sizing the area".

No way to tell the exact amount of memory kdump needs, we can only estimate.
Kdump kernel use different cmdline, drivers and components will have
special handling for kdump, and userspace is totally different.

>
> I.e. please engineer this into a proper solution instead of just
> modifying it around the edges.
>
> For example have you considered adding some sort of
> kdump_memory_reserve(size) facility, which increases the reservation size
> as something like SWIOTLB gets activated? That would avoid the ugly
> mem_encrypt_active() flag, it would just automagically work.

My first attempt is increase crashkernel memory as swiotlb is
activated. There are problems.

First, SME/SEV is currently the only case that both kernel require
SWIOTLB, for most other case, it's wasting memory.

If we don't care about the memory waste, it has to check/reserve/free
crashkernel memory at three different points:
1. Early boot:
    - crash kernel reserved a region as usual.
2. Right before memblock freeing memoy:
    - If SWIOTLB is activated, crash kernel should reserve another region.
3. After Initcalls:
    - SWIOTLB may get deactivated by initcalls, so need to do a later
check for if we need to release the later reserved region.
It's more complex.

And about a "kdump_memory_reserve(size)" facility, as talked above,
it's hard to know how much kdump needs for now, also hard to find any
user of this.

Please let me know if I failed to make something clear or have any
misunderstanding.

>
> Thanks,
>
>         Ingo



--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
