Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 320C9BFEA0
	for <lists+kexec@lfdr.de>; Fri, 27 Sep 2019 07:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSi0r1qHv7YLSYUdi7/3jyavRFC2u4NyI0VSUvw+KVQ=; b=F3WaCJ96V7OwVF
	UwdZpRKUlcRZoeFMPAvdnzzZFDISBwURin8TF2Vf8ZplIutvOk9aQdzhpM51L5FWkVBhbp+ia4MF8
	U68B6vqn9twHYXcgRebt5YDeHDgqvCE55yKJAzL3CeRD323MZkhg5v1MEfZPhJd9lqPqON5gIKPHr
	BBPQROJUU1mObhq2QC9r/LOR5qKv8vmJe+AJ0a/uDvy9ZKilmghe+bdxQku6vuoTO+OfAd3ZhlL4s
	LRiCaNINWyaFfxMGaKpvr8rjOSCzwjAgt67SDDJVrPhicIMALbpSIp6RsEJ9yxBUVUaBRqYv/XGjZ
	8RMMr+L7t5Mgd9IOLa/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDj1I-00082V-VA; Fri, 27 Sep 2019 05:42:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDj1E-00081o-Rw
 for kexec@lists.infradead.org; Fri, 27 Sep 2019 05:42:18 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 13A20307D962;
 Fri, 27 Sep 2019 05:42:16 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-78.pek2.redhat.com
 [10.72.12.78])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DDF9760BF4;
 Fri, 27 Sep 2019 05:42:11 +0000 (UTC)
Date: Fri, 27 Sep 2019 13:42:08 +0800
From: Dave Young <dyoung@redhat.com>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v3 2/2] x86/kdump: Reserve extra memory when SME or SEV
 is active
Message-ID: <20190927054208.GA13426@dhcp-128-65.nay.redhat.com>
References: <20190910151341.14986-1-kasong@redhat.com>
 <20190910151341.14986-3-kasong@redhat.com>
 <20190911055618.GA104115@gmail.com>
 <CACPcB9eZUZ1fCsc1GZs9MJnoqLK9Ld5KEx0_emx8J44Mjcy3WA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9eZUZ1fCsc1GZs9MJnoqLK9Ld5KEx0_emx8J44Mjcy3WA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 27 Sep 2019 05:42:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_224216_951255_BEC298F4 
X-CRM114-Status: GOOD (  33.96  )
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

On 09/25/19 at 06:36pm, Kairui Song wrote:
> On Wed, Sep 11, 2019 at 1:56 PM Ingo Molnar <mingo@kernel.org> wrote:
> > * Kairui Song <kasong@redhat.com> wrote:
> >
> > > Since commit c7753208a94c ("x86, swiotlb: Add memory encryption support"),
> > > SWIOTLB will be enabled even if there is less than 4G of memory when SME
> > > is active, to support DMA of devices that not support address with the
> > > encrypt bit.
> > >
> > > And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> > > active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> > >
> > > Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> > > encryption") will always force SWIOTLB to be enabled when SEV is active
> > > in all cases.
> > >
> > > Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> > > and this is also true for kdump kernel. As a result kdump kernel will
> > > run out of already scarce pre-reserved memory easily.
> > >
> > > So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> > > kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> > > is specified or any offset is used. As for the high reservation case, an
> > > extra low memory region will always be reserved and that is enough for
> > > SWIOTLB. Else if the offset format is used, user should be fully aware
> > > of any possible kdump kernel memory requirement and have to organize the
> > > memory usage carefully.
> > >
> > > Signed-off-by: Kairui Song <kasong@redhat.com>
> > > ---
> > >  arch/x86/kernel/setup.c | 20 +++++++++++++++++---
> > >  1 file changed, 17 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> > > index 71f20bb18cb0..ee6a2f1e2226 100644
> > > --- a/arch/x86/kernel/setup.c
> > > +++ b/arch/x86/kernel/setup.c
> > > @@ -530,7 +530,7 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
> > >                                         unsigned long long *crash_size,
> > >                                         bool high)
> > >  {
> > > -     unsigned long long base, size;
> > > +     unsigned long long base, size, mem_enc_req = 0;
> > >
> > >       base = *crash_base;
> > >       size = *crash_size;
> > > @@ -561,11 +561,25 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
> > >       if (high)
> > >               goto high_reserve;
> > >
> > > +     /*
> > > +      * When SME/SEV is active and not using high reserve,
> > > +      * it will always required an extra SWIOTLB region.
> > > +      */
> > > +     if (mem_encrypt_active())
> > > +             mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> > > +
> > >       base = memblock_find_in_range(CRASH_ALIGN,
> > > -                                   CRASH_ADDR_LOW_MAX, size,
> > > +                                   CRASH_ADDR_LOW_MAX,
> > > +                                   size + mem_enc_req,
> > >                                     CRASH_ALIGN);
> >
> 
> Hi Ingo,
> 
> I re-read my previous reply, it's long and tedious, let me try to make
> a more effective reply:
> 
> > What sizes are we talking about here?
> 
> The size here is how much memory will be reserved for kdump kernel, to
> ensure kdump kernel and userspace can run without OOM.
> 
> >
> > - What is the possible size range of swiotlb_size_or_default()
> 
> swiotlb_size_or_default() returns the swiotlb size, it's specified by
> user using swiotlb=<size>, or default size (64MB)
> 
> >
> > - What is the size of CRASH_ADDR_LOW_MAX (the old limit)?
> 
> It's 4G.
> 
> >
> > - Why do we replace one fixed limit with another fixed limit instead of
> >   accurately sizing the area, with each required feature adding its own
> >   requirement to the reservation size?
> 
> It's quite hard to "accurately sizing the area".
> 
> No way to tell the exact amount of memory kdump needs, we can only estimate.
> Kdump kernel use different cmdline, drivers and components will have
> special handling for kdump, and userspace is totally different.

Agreed about your above, but specific this the problem in this patch
There should be other ways.

First thought about doing generic handling in swiotlb part, and do
something like kdump_memory_reserve(size) Ingo suggested,  but according
to you swiotlb init is late, so it can not increase the size, OTOH if
reserve another region for kdump in swiotlb will cause other issues. 

So let's think about other improvement, for example to see if you can
call kdump_memory_reserve(size) in AMD SME init path, for example in
mem_encrypt_init(), is it before crashkernel reservation? 

If doable it will be at least cleaner than the code in this patch.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
