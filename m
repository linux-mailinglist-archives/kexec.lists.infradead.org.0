Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E83BB6146
	for <lists+kexec@lfdr.de>; Wed, 18 Sep 2019 12:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9gI3gFSk18yKg5XZx+hiTFiR03l4CfS+zaaH8EL1g0g=; b=RJk7ksV9AcGl0I
	Zqtolza+uRoVls7U3l2R3yC5uHBYqyfJBLnAUXhJ5Ex0ethGLXX5aD/aRVyBBPM5WVTVGzogoqlIr
	oOhX+vQyb8A3++q0C3B6Uto4X12B0OyyM7Pl1j9v93TdE2to6Xnlb5yu5luqTDijZ6tJfvjLpdSYh
	DsYNYKgMq6ne9Xxe0B2WfAzOmaKiXSnhMaDxnVBqGwHKuRiWPY07PhKbM/DkPdr9EtRNfqdqEKuJw
	JRkvZJnb33aE88AtQGO1nLLuOQsRtd/IRGv4iH/AnltxSZU4uL+i51qlfaWWJqy/l26o809MGAtMq
	zosDYfyv9tyMmY6pNdEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAX1e-0007F2-Nz; Wed, 18 Sep 2019 10:17:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAX1V-00077w-Vq
 for kexec@lists.infradead.org; Wed, 18 Sep 2019 10:17:25 +0000
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 91D2D34CC
 for <kexec@lists.infradead.org>; Wed, 18 Sep 2019 10:17:20 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id j23so10478714iog.16
 for <kexec@lists.infradead.org>; Wed, 18 Sep 2019 03:17:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h9qkus6BDSFHHLIE8gD/iqwgA7/AGOPyca5SvI+pJl8=;
 b=N5eCOkHStSCpi82geh/0CdFRMB51oCCXSRI/JR2Y5l4hMo7h8Tt0ffqBF6Qsg332zj
 2XdBA+K5YSA+efmmbr8tJqpbP0AZGvjJ4DsphfBMUkPADCzp7NVtQQUM3ZnMlDuEN1MC
 8+/nkHf+5j+Gwm1Nu23y1CQ6qJJAG0QP5198zpi6Q2V+Mi5wdvUfcyQlav+mxiKvMJlk
 RIFWvNupv7JH30zFtAD2DzTXqirAPRV1EW+3oPno7hsjRpcwAlcK/Q8xnI/ftHqNyNPV
 5oHTHHGFlEMzIF2WY7TzKCZyxg/PQHnze0w35A9pJOJ/TMfD3FIgIM7sGLAKdhonPFaT
 SOaQ==
X-Gm-Message-State: APjAAAVRbtBVocnpCG+2ibKc0IYGj+ElWKlwHBsnx/6gbQvIrIMBiIhf
 xCzfvjsIiqegg665OG9i4CVvHW/W09aGfVVtAN54WnrV956wf+TePQ6NNiBK9fnAciT4zYtXsJm
 HaUVjVzzPcKdFv/Z8/oIGOVTWjBa8aFGBuxUs
X-Received: by 2002:a5d:8b12:: with SMTP id k18mr4201073ion.93.1568801839954; 
 Wed, 18 Sep 2019 03:17:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzhD8HY5hJ+E3sL1TOHHCWf+LHdWcubzRkjwa1mppWeftJzW9alJTKmKz6IFIxEnOzk+Q5DVEYQTc8zr9I/nyQ=
X-Received: by 2002:a5d:8b12:: with SMTP id k18mr4201054ion.93.1568801839577; 
 Wed, 18 Sep 2019 03:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190910151341.14986-1-kasong@redhat.com>
 <20190910151341.14986-3-kasong@redhat.com>
 <20190911055618.GA104115@gmail.com>
 <CACPcB9cEE5eYWixkUvMeLVdRC5qhrru9PbjbLLxP3k1jsbRanQ@mail.gmail.com>
 <20190918075546.GA27186@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190918075546.GA27186@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Wed, 18 Sep 2019 18:17:08 +0800
Message-ID: <CACPcB9dbC-mSzKA3cnea4OGB71tvbZLr=_yWPM5UJij+nVz4UA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] x86/kdump: Reserve extra memory when SME or SEV is
 active
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_031722_081078_5A6B7BB9 
X-CRM114-Status: GOOD (  47.87  )
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
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Sep 18, 2019 at 3:55 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 09/12/19 at 12:23am, Kairui Song wrote:
> > On Wednesday, September 11, 2019, Ingo Molnar <mingo@kernel.org> wrote:
> > >
> > > * Kairui Song <kasong@redhat.com> wrote:
> > >
> > >> Since commit c7753208a94c ("x86, swiotlb: Add memory encryption
> > support"),
> > >> SWIOTLB will be enabled even if there is less than 4G of memory when SME
> > >> is active, to support DMA of devices that not support address with the
> > >> encrypt bit.
> > >>
> > >> And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> > >> active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> > >>
> > >> Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> > >> encryption") will always force SWIOTLB to be enabled when SEV is active
> > >> in all cases.
> > >>
> > >> Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> > >> and this is also true for kdump kernel. As a result kdump kernel will
> > >> run out of already scarce pre-reserved memory easily.
> > >>
> > >> So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> > >> kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> > >> is specified or any offset is used. As for the high reservation case, an
> > >> extra low memory region will always be reserved and that is enough for
> > >> SWIOTLB. Else if the offset format is used, user should be fully aware
> > >> of any possible kdump kernel memory requirement and have to organize the
> > >> memory usage carefully.
> > >>
> > >> Signed-off-by: Kairui Song <kasong@redhat.com>
> > >> ---
> > >>  arch/x86/kernel/setup.c | 20 +++++++++++++++++---
> > >>  1 file changed, 17 insertions(+), 3 deletions(-)
> > >>
> > >> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> > >> index 71f20bb18cb0..ee6a2f1e2226 100644
> > >> --- a/arch/x86/kernel/setup.c
> > >> +++ b/arch/x86/kernel/setup.c
> > >> @@ -530,7 +530,7 @@ static int __init crashkernel_find_region(unsigned
> > long long *crash_base,
> > >>                                         unsigned long long *crash_size,
> > >>                                         bool high)
> > >>  {
> > >> -     unsigned long long base, size;
> > >> +     unsigned long long base, size, mem_enc_req = 0;
> > >>
> > >>       base = *crash_base;
> > >>       size = *crash_size;
> > >> @@ -561,11 +561,25 @@ static int __init crashkernel_find_region(unsigned
> > long long *crash_base,
> > >>       if (high)
> > >>               goto high_reserve;
> > >>
> > >> +     /*
> > >> +      * When SME/SEV is active and not using high reserve,
> > >> +      * it will always required an extra SWIOTLB region.
> > >> +      */
> > >> +     if (mem_encrypt_active())
> > >> +             mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> > >> +
> > >>       base = memblock_find_in_range(CRASH_ALIGN,
> > >> -                                   CRASH_ADDR_LOW_MAX, size,
> > >> +                                   CRASH_ADDR_LOW_MAX,
> > >> +                                   size + mem_enc_req,
> > >>                                     CRASH_ALIGN);
> > >
> > > What sizes are we talking about here?
> > >
> > > - What is the possible size range of swiotlb_size_or_default()
> > >
> > > - What is the size of CRASH_ADDR_LOW_MAX (the old limit)?
> > >
> > > - Why do we replace one fixed limit with another fixed limit instead of
> > >   accurately sizing the area, with each required feature adding its own
> > >   requirement to the reservation size?
> > >
> > > I.e. please engineer this into a proper solution instead of just
> > > modifying it around the edges.
> > >
> > > For example have you considered adding some sort of
> > > kdump_memory_reserve(size) facility, which increases the reservation size
> > > as something like SWIOTLB gets activated? That would avoid the ugly
> > > mem_encrypt_active() flag, it would just automagically work.
> >
> > Hi, thanks for the suggestions, actually I did try to workout a better
> > resolution, at least for SWIOTLB and crashkernel memory, like make
> > crashkernel reserve more memory as SWIOTLB get activated to be more
> > flexible and generic.
> >
> > There are some problems:
> >
> > - Usually, for SWIOTLB, even if the first booting kernel have SWIOTLB
> > activated, second kernel will most likely not need it. Currently, only the
> > high reservation case will still need SWIOTLB in second kernel, and it's
> > already reserving extra low memory automatically. SME/SEV systems is the
> > only other special case that will force both kernel to use it.
> >
> > - There is a little complex procedure to judge whether SWIOTLB is required
> > (Depends on whether the system have >4G, if there is an iommu want to shut
> > down SWIOTLB, and some times iommu still expect SWIOTLB to exist, and
> > SWIOTLB could be activated first, then got closed later etc...). The crash
> > kernel reserve should happen very early to ensure the region is usable, but
> > kernel is not aware of if SWIOTLB is needed. Have to either move the
> > reservation to some later stage or always reserve extra memories early,
> > then release if not needed later. Neither sound a good solution, and after
> > all, as mentioned above, currently kernel need it doesn't mean kdump kernel
> > needs it.
> >
> > - Also tried to reuse and improve the currently crashk_low_res facility to
> > reserve the memory in a different block at first, make the code simpler.
> > Didn't work well due to some other issue with all current version of user
> > space kexec-tools, which never expect there will be an extra memory region
> > for non-high reservation case, and failed to load the kernel for kdump.
> > Have to always make the another block in a lower position or rename the
> > memory resource. I think this will either break user space tools heavily,
> > or make the implementation even more complex and confusing.
>
> Kairui, I remember you tried to reuse the swiotlb regions across kexec
> reboot, are you saying this as the 3rd problem above?
>
> It is not clear how you use crashk_low_res,  can you elaborate it I
> remember you mentioned some problem with this approach, maybe we can
> re-explore it.
>
> Thanks
> Dave

Yes, previously I tried to pass the swiotlb region in 1st kernel to
kdump kernel as usable memory. What I worried is that if there are
still on going DMA, and kdump kernel just used the region as normal
memory, it may cause memory corruption.

There are other ways to make it work properly, maybe pass it as
reserved and build the map on need when doing swiotlb init, or
introduce an earlier swiotlb reserving logic so nothing else will
occupy the region. But still have to find a way to let kdump kernel
know about the reusable swiotlb region, like extend the
swiotlb=<nslab>@<addr> syntax so both userspace kernel kexec can
specify where the kdump kernel should reuse as swiotlb, and have to
expose swiotlb in iomem so userspace kexec-tools can actually find the
range...
But this seems getting a bit trouble some just for solving this
particular problem, not sure if it's acceptable. SME/SEV is currently
the only case that swiotlb will be required in kdump kernel, and reuse
it will force drop the swiotlb content when doing kdump.


About the "reuse crashk_low_res" part, I was trying to simply change
the "if (condition)" of previous low memory reserving logic, so an
extra low memory region for swiotlb will be reserve when SME/SEV is
used, just like high reserve case, and it will be only a few lines of
code change.

But that will make it always reserve at lease 256M more memory when
SME/SEV is active, it doesn't require that much. The previous reason
for always reserving at lease 256M of low memory could be found in
commit 94fb933418228. Then I tried to change the logic a bit to
reserve fewer low memory for SME/SEV case, and encountered the issue I
mentioned, that all current version of user space kexec-tools, never
expect there will be a smaller extra memory region for non-high
reservation case. It always try to load kernel image into the highest
region, it's totally possible that the extra smaller swiotlb region
reserved for SME/SEV case is actually higher. So have to always make
the another block in a lower position, or rename the low memory
resource. This also seems more confusing and complex. So instead I
just posted this patch, at lease it's a straight and clean approach.

--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
