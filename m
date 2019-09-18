Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C9BB5E7A
	for <lists+kexec@lfdr.de>; Wed, 18 Sep 2019 10:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3qsDySBH1TZPChqw+n4saz40HQ7ClXgACjq2tjOGH4A=; b=d0hCc7Fpgfg15K
	99haNLowLkq0rIj2lM8ttXdhw4d1noQuLWPPAJWS38JQ3RNaxbGHl7jwFpDGtKiKUPuGCKH+zQb+W
	AIT/X0Vimjnpm28TeyvIg1tyKu6GxhHk4KT76kTNjysivZqLUUVdGainVHFT2OGmjQakcHT+dz7JD
	Ub0JvvZPNpZNHcq4ch4ECpDeDkdOUzbPASUORCWXgEooGrzS4T+uW4vlQkhXGE616x3S/9uW2zWKj
	H7TAk7VeSYB8NDV9RgVDw5ZWbT3HglTsXvA1HagMcpKnF6nqJa3/rztxdlWYwkBc1hro9PE2Yc0w0
	/VbHWdg2M60EJqkbjccw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAUsb-0005nC-OZ; Wed, 18 Sep 2019 08:00:02 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUod-0003tf-NR
 for kexec@lists.infradead.org; Wed, 18 Sep 2019 07:55:57 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 8A78B10F2E85;
 Wed, 18 Sep 2019 07:55:54 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-104.pek2.redhat.com
 [10.72.12.104])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BA99600C8;
 Wed, 18 Sep 2019 07:55:50 +0000 (UTC)
Date: Wed, 18 Sep 2019 15:55:46 +0800
From: Dave Young <dyoung@redhat.com>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v3 0/2] x86/kdump: Reserve extra memory when SME or SEV
 is active
Message-ID: <20190918075546.GA27186@dhcp-128-65.nay.redhat.com>
References: <20190910151341.14986-1-kasong@redhat.com>
 <20190910151341.14986-3-kasong@redhat.com>
 <20190911055618.GA104115@gmail.com>
 <CACPcB9cEE5eYWixkUvMeLVdRC5qhrru9PbjbLLxP3k1jsbRanQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9cEE5eYWixkUvMeLVdRC5qhrru9PbjbLLxP3k1jsbRanQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.66]); Wed, 18 Sep 2019 07:55:54 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_005555_980271_93EAD05F 
X-CRM114-Status: GOOD (  36.82  )
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

On 09/12/19 at 12:23am, Kairui Song wrote:
> On Wednesday, September 11, 2019, Ingo Molnar <mingo@kernel.org> wrote:
> >
> > * Kairui Song <kasong@redhat.com> wrote:
> >
> >> Since commit c7753208a94c ("x86, swiotlb: Add memory encryption
> support"),
> >> SWIOTLB will be enabled even if there is less than 4G of memory when SME
> >> is active, to support DMA of devices that not support address with the
> >> encrypt bit.
> >>
> >> And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> >> active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> >>
> >> Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> >> encryption") will always force SWIOTLB to be enabled when SEV is active
> >> in all cases.
> >>
> >> Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> >> and this is also true for kdump kernel. As a result kdump kernel will
> >> run out of already scarce pre-reserved memory easily.
> >>
> >> So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> >> kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> >> is specified or any offset is used. As for the high reservation case, an
> >> extra low memory region will always be reserved and that is enough for
> >> SWIOTLB. Else if the offset format is used, user should be fully aware
> >> of any possible kdump kernel memory requirement and have to organize the
> >> memory usage carefully.
> >>
> >> Signed-off-by: Kairui Song <kasong@redhat.com>
> >> ---
> >>  arch/x86/kernel/setup.c | 20 +++++++++++++++++---
> >>  1 file changed, 17 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> >> index 71f20bb18cb0..ee6a2f1e2226 100644
> >> --- a/arch/x86/kernel/setup.c
> >> +++ b/arch/x86/kernel/setup.c
> >> @@ -530,7 +530,7 @@ static int __init crashkernel_find_region(unsigned
> long long *crash_base,
> >>                                         unsigned long long *crash_size,
> >>                                         bool high)
> >>  {
> >> -     unsigned long long base, size;
> >> +     unsigned long long base, size, mem_enc_req = 0;
> >>
> >>       base = *crash_base;
> >>       size = *crash_size;
> >> @@ -561,11 +561,25 @@ static int __init crashkernel_find_region(unsigned
> long long *crash_base,
> >>       if (high)
> >>               goto high_reserve;
> >>
> >> +     /*
> >> +      * When SME/SEV is active and not using high reserve,
> >> +      * it will always required an extra SWIOTLB region.
> >> +      */
> >> +     if (mem_encrypt_active())
> >> +             mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> >> +
> >>       base = memblock_find_in_range(CRASH_ALIGN,
> >> -                                   CRASH_ADDR_LOW_MAX, size,
> >> +                                   CRASH_ADDR_LOW_MAX,
> >> +                                   size + mem_enc_req,
> >>                                     CRASH_ALIGN);
> >
> > What sizes are we talking about here?
> >
> > - What is the possible size range of swiotlb_size_or_default()
> >
> > - What is the size of CRASH_ADDR_LOW_MAX (the old limit)?
> >
> > - Why do we replace one fixed limit with another fixed limit instead of
> >   accurately sizing the area, with each required feature adding its own
> >   requirement to the reservation size?
> >
> > I.e. please engineer this into a proper solution instead of just
> > modifying it around the edges.
> >
> > For example have you considered adding some sort of
> > kdump_memory_reserve(size) facility, which increases the reservation size
> > as something like SWIOTLB gets activated? That would avoid the ugly
> > mem_encrypt_active() flag, it would just automagically work.
> 
> Hi, thanks for the suggestions, actually I did try to workout a better
> resolution, at least for SWIOTLB and crashkernel memory, like make
> crashkernel reserve more memory as SWIOTLB get activated to be more
> flexible and generic.
> 
> There are some problems:
> 
> - Usually, for SWIOTLB, even if the first booting kernel have SWIOTLB
> activated, second kernel will most likely not need it. Currently, only the
> high reservation case will still need SWIOTLB in second kernel, and it's
> already reserving extra low memory automatically. SME/SEV systems is the
> only other special case that will force both kernel to use it.
> 
> - There is a little complex procedure to judge whether SWIOTLB is required
> (Depends on whether the system have >4G, if there is an iommu want to shut
> down SWIOTLB, and some times iommu still expect SWIOTLB to exist, and
> SWIOTLB could be activated first, then got closed later etc...). The crash
> kernel reserve should happen very early to ensure the region is usable, but
> kernel is not aware of if SWIOTLB is needed. Have to either move the
> reservation to some later stage or always reserve extra memories early,
> then release if not needed later. Neither sound a good solution, and after
> all, as mentioned above, currently kernel need it doesn't mean kdump kernel
> needs it.
> 
> - Also tried to reuse and improve the currently crashk_low_res facility to
> reserve the memory in a different block at first, make the code simpler.
> Didn't work well due to some other issue with all current version of user
> space kexec-tools, which never expect there will be an extra memory region
> for non-high reservation case, and failed to load the kernel for kdump.
> Have to always make the another block in a lower position or rename the
> memory resource. I think this will either break user space tools heavily,
> or make the implementation even more complex and confusing.

Kairui, I remember you tried to reuse the swiotlb regions across kexec
reboot, are you saying this as the 3rd problem above?

It is not clear how you use crashk_low_res,  can you elaborate it I
remember you mentioned some problem with this approach, maybe we can
re-explore it.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
