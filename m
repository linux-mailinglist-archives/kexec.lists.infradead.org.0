Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7B8C0070
	for <lists+kexec@lfdr.de>; Fri, 27 Sep 2019 09:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIBs1g4FeIYq8Y+xcQIFEFOv8PD6OBaa2vLVkZnrU4Q=; b=C+QazM28yUFsgE
	nI0i+fm3afY0VYjk7VwPhdfKyRvzVdzHnCoQstKauTswc/yKCT0OyVjR/i0GlXlJ6/u+AQA3ZKcmN
	adrGKpwC+Knj5rxFR4qYbLWdsHa96yPYLTy4ZFRt3zMFeatfHjGtdUgg9k2mdrl3sNC3Uou6ytlSY
	omU1qtx5aAsUL6w/sTG5F6W9F9Bgm0HMiM6yqTusA/NXXkDpNTLDY3WRe/+slqsNZPyG344kG4YNU
	4x0COgRkt8LKjFD3TlbevjOTrksZ11rL9/e+IA1midi+20nH6tkhRvAaCtWXWtzKtaYfP0/FI0lzn
	p488z/13dBH53wEk0k9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDl41-0004Fk-Ez; Fri, 27 Sep 2019 07:53:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDl3w-0004Ej-Mz
 for kexec@lists.infradead.org; Fri, 27 Sep 2019 07:53:14 +0000
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C899D806CD
 for <kexec@lists.infradead.org>; Fri, 27 Sep 2019 07:53:10 +0000 (UTC)
Received: by mail-io1-f71.google.com with SMTP id w8so10669004iod.21
 for <kexec@lists.infradead.org>; Fri, 27 Sep 2019 00:53:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+z967OGKFyzsipkAMvwKR90NL+oBP6ClqcqeupYnwJM=;
 b=JmxFmMLUvxpDH2blPP+mH80XXK62nTWcaPxv4YNe47TtBsIdpZM0hiZlwQErJ++WLV
 dZk8xGvnMM7fmvw/OflGtQziKzDKw/tNCX90JEe4XiZQerdsWk5tZr3FMeV4gzLXA6LI
 SrT4Xr1n+kP+pStBiH7PxN3kMmh7DIgf6DvMtBAC905w5HNGg+V8YVdoQlB2SRLPoOMC
 fT6NH6AW5z8Cge28IuNksqiHvTdkwdQC3f6MxqUWMCR3HPBMoPZ8CgGfJ39Nk8U9J/99
 QRIeIzP/hbGvH9TmGdspEIeY6OQ80OMUEr/bndHc9DLgX1QP5iyyHN8WGWuFaiDnZbzP
 APTQ==
X-Gm-Message-State: APjAAAVXw0PjjUkI9ehaEPw/PYRH9+kdKOGqGWSqw0K711wO1rp7HMhD
 EcMJur2L6XEK4+L/XMG1+izLURRmrSmn+MTQ1H7IfE35nTGVy2+dstzgscP8RmhyQql3tHLEpA7
 YKugoaYeK7Ki2GLaNxvQ4KI/WTyZtUm28bVm/
X-Received: by 2002:a92:5c13:: with SMTP id q19mr3296385ilb.249.1569570790132; 
 Fri, 27 Sep 2019 00:53:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyQAC9ocy3CrD0E1lT+wFbJDvNy6gND2zhgtJZP9qoxiBZjNnVGhEx653IsvSSXH18WtvDnbJSa8TQZbQj7HiU=
X-Received: by 2002:a92:5c13:: with SMTP id q19mr3296358ilb.249.1569570789810; 
 Fri, 27 Sep 2019 00:53:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190910151341.14986-1-kasong@redhat.com>
 <20190910151341.14986-3-kasong@redhat.com>
 <20190911055618.GA104115@gmail.com>
 <CACPcB9eZUZ1fCsc1GZs9MJnoqLK9Ld5KEx0_emx8J44Mjcy3WA@mail.gmail.com>
 <20190927054208.GA13426@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190927054208.GA13426@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Fri, 27 Sep 2019 15:52:58 +0800
Message-ID: <CACPcB9d+5idm-0r69Qeh3GyGF-wuyie_w1jBL5GRsnxq40Gs6w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] x86/kdump: Reserve extra memory when SME or SEV is
 active
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_005312_772863_F7624CAB 
X-CRM114-Status: GOOD (  38.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Sep 27, 2019 at 1:42 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 09/25/19 at 06:36pm, Kairui Song wrote:
> > On Wed, Sep 11, 2019 at 1:56 PM Ingo Molnar <mingo@kernel.org> wrote:
> > > * Kairui Song <kasong@redhat.com> wrote:
> > >
> > > > Since commit c7753208a94c ("x86, swiotlb: Add memory encryption support"),
> > > > SWIOTLB will be enabled even if there is less than 4G of memory when SME
> > > > is active, to support DMA of devices that not support address with the
> > > > encrypt bit.
> > > >
> > > > And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> > > > active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> > > >
> > > > Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> > > > encryption") will always force SWIOTLB to be enabled when SEV is active
> > > > in all cases.
> > > >
> > > > Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> > > > and this is also true for kdump kernel. As a result kdump kernel will
> > > > run out of already scarce pre-reserved memory easily.
> > > >
> > > > So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> > > > kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> > > > is specified or any offset is used. As for the high reservation case, an
> > > > extra low memory region will always be reserved and that is enough for
> > > > SWIOTLB. Else if the offset format is used, user should be fully aware
> > > > of any possible kdump kernel memory requirement and have to organize the
> > > > memory usage carefully.
> > > >
> > > > Signed-off-by: Kairui Song <kasong@redhat.com>
> > > > ---
> > > >  arch/x86/kernel/setup.c | 20 +++++++++++++++++---
> > > >  1 file changed, 17 insertions(+), 3 deletions(-)
> > > >
> > > > diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> > > > index 71f20bb18cb0..ee6a2f1e2226 100644
> > > > --- a/arch/x86/kernel/setup.c
> > > > +++ b/arch/x86/kernel/setup.c
> > > > @@ -530,7 +530,7 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
> > > >                                         unsigned long long *crash_size,
> > > >                                         bool high)
> > > >  {
> > > > -     unsigned long long base, size;
> > > > +     unsigned long long base, size, mem_enc_req = 0;
> > > >
> > > >       base = *crash_base;
> > > >       size = *crash_size;
> > > > @@ -561,11 +561,25 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
> > > >       if (high)
> > > >               goto high_reserve;
> > > >
> > > > +     /*
> > > > +      * When SME/SEV is active and not using high reserve,
> > > > +      * it will always required an extra SWIOTLB region.
> > > > +      */
> > > > +     if (mem_encrypt_active())
> > > > +             mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> > > > +
> > > >       base = memblock_find_in_range(CRASH_ALIGN,
> > > > -                                   CRASH_ADDR_LOW_MAX, size,
> > > > +                                   CRASH_ADDR_LOW_MAX,
> > > > +                                   size + mem_enc_req,
> > > >                                     CRASH_ALIGN);
> > >
> >
> > Hi Ingo,
> >
> > I re-read my previous reply, it's long and tedious, let me try to make
> > a more effective reply:
> >
> > > What sizes are we talking about here?
> >
> > The size here is how much memory will be reserved for kdump kernel, to
> > ensure kdump kernel and userspace can run without OOM.
> >
> > >
> > > - What is the possible size range of swiotlb_size_or_default()
> >
> > swiotlb_size_or_default() returns the swiotlb size, it's specified by
> > user using swiotlb=<size>, or default size (64MB)
> >
> > >
> > > - What is the size of CRASH_ADDR_LOW_MAX (the old limit)?
> >
> > It's 4G.
> >
> > >
> > > - Why do we replace one fixed limit with another fixed limit instead of
> > >   accurately sizing the area, with each required feature adding its own
> > >   requirement to the reservation size?
> >
> > It's quite hard to "accurately sizing the area".
> >
> > No way to tell the exact amount of memory kdump needs, we can only estimate.
> > Kdump kernel use different cmdline, drivers and components will have
> > special handling for kdump, and userspace is totally different.
>
> Agreed about your above, but specific this the problem in this patch
> There should be other ways.
>
> First thought about doing generic handling in swiotlb part, and do
> something like kdump_memory_reserve(size) Ingo suggested,  but according
> to you swiotlb init is late, so it can not increase the size, OTOH if
> reserve another region for kdump in swiotlb will cause other issues.
>
> So let's think about other improvement, for example to see if you can
> call kdump_memory_reserve(size) in AMD SME init path, for example in
> mem_encrypt_init(), is it before crashkernel reservation?

Yes, mem_encrypt_init is before the crashkernel reservation.
I think this is a good idea. Will make a V4 patch based on this.

>
> If doable it will be at least cleaner than the code in this patch.
>
> Thanks
> Dave

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
