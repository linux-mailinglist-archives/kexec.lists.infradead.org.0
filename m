Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F30114845
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 21:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKyZCd89NlF2nG8LrYx+eD+Jqr+H/BQyMrI5rUBJuNo=; b=MxCUSSt0aclm64
	+NmM0UOhScP8/bxTCOAhllHwJas0OdewN/XO0dth8TH8c/gmrJ6xGM4Wp7mtXm++v0+7svF26nzeG
	SCLNLP87DG8A0Ee0n7qzjL6/2NRqNRpcdalheA+pyaPkx1Hz+EtcLH25miJZVDWU0alM0CquQRDTW
	8sXi+RZ2ILMSnP6+PpD04eooFpPFGUaz/4V6gAS8Rh8eEwumoTUVFbgOGZpcHSPf7pkiXUIANkS8I
	8ljNUUMxHUjrW8Yx5w41MbvWtWhQMDiL3OfGy3qNTx8WMHEAZZkmpkCYILK+aGFPVLzALbVs8JCjL
	JkR1EeYmKtZ0g7hDeYMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icxxt-0007bi-JT; Thu, 05 Dec 2019 20:43:09 +0000
Received: from tyo162.gate.nec.co.jp ([114.179.232.162])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icxxo-0007ai-Om
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 20:43:07 +0000
Received: from mailgate01.nec.co.jp ([114.179.233.122])
 by tyo162.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xB5KguXH011084
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Fri, 6 Dec 2019 05:42:56 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB5KguXU021778;
 Fri, 6 Dec 2019 05:42:56 +0900
Received: from mail03.kamome.nec.co.jp (mail03.kamome.nec.co.jp [10.25.43.7])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xB5KgutE028219; 
 Fri, 6 Dec 2019 05:42:56 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.136] [10.38.151.136]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-11027441;
 Fri, 6 Dec 2019 05:41:28 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC08GP.gisp.nec.co.jp ([10.38.151.136]) with mapi id 14.03.0439.000; Fri, 6
 Dec 2019 05:41:27 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: RE: [PATCH v4 1/4] tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from
 vmcoreinfo (if available)
Thread-Topic: [PATCH v4 1/4] tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from
 vmcoreinfo (if available)
Thread-Index: AQHVmUmqtNteu8alVkO71mm3tbyMxqeozBcAgAKbBACAAKxsMA==
Date: Thu, 5 Dec 2019 20:41:27 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03597509@BPXM09GP.gisp.nec.co.jp>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <1573556939-17803-2-git-send-email-bhsharma@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597103@BPXM09GP.gisp.nec.co.jp>
 <CACi5LpNVeQYYYoXovVweaBwFbqrkFacMdiZzCn0G_Tp6OhZ=2A@mail.gmail.com>
In-Reply-To: <CACi5LpNVeQYYYoXovVweaBwFbqrkFacMdiZzCn0G_Tp6OhZ=2A@mail.gmail.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.132.108]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_124305_143844_A7A80DFF 
X-CRM114-Status: GOOD (  28.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.162 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Bhupesh,

> -----Original Message-----
> > > -----Original Message-----
> > > This patch adds a common feature for archs (except arm64, for which
> > > similar support is added via subsequent patch) to retrieve
> > > 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).
> >
> > We already have the calibrate_machdep_info() function, which sets
> > info->max_physmem_bits from vmcoreinfo, so practically we don't need
> > to add this patch for the benefit.

I meant that we already have an arch-independent setter for info->max_physmem_bits:

 3714 int
 3715 calibrate_machdep_info(void)
 3716 {
 3717         if (NUMBER(MAX_PHYSMEM_BITS) > 0)
 3718                 info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
 3719 
 3720         if (NUMBER(SECTION_SIZE_BITS) > 0)
 3721                 info->section_size_bits = NUMBER(SECTION_SIZE_BITS);
 3722 
 3723         return TRUE;
 3724 }

so if NUMBER(MAX_PHYSMEM_BITS) appears, it is automatically used in makedumpfile
without this patch 1/4.

Thanks,
Kazu

> 
> Since other user-space tools like crash use the 'MAX_PHYSMEM_BITS' value as well
> it was agreed with the arm64 maintainers that it would be a good
> approach to export the
> same in vmcoreinfo and not use different methods to determine the same
> in user-space.
> 
> Take an example of the PPC makedumpfile implementation for example. It
> uses the following complex method of dtereming
> 'info->max_physmem_bits':
> int
> set_ppc64_max_physmem_bits(void)
> {
>     long array_len = ARRAY_LENGTH(mem_section);
>     /*
>      * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
>      * newer kernels 3.7 onwards uses 46 bits.
>      */
> 
>     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
>     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
>         || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
>         return TRUE;
> 
>     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
>     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
>         || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
>         return TRUE;
> 
>     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
>     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
>         || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
>         return TRUE;
> 
>     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
>     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
>         || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
>         return TRUE;
> 
>     return FALSE;
> }
> 
> This might need modification and introduction of another
> _MAX_PHYSMEM_BITS_x_y macro when this changes for a newer kernel
> version.
> 
> I think this makes the code error-prone and hard to read. Its much
> better to replace it with:
> /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
>     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
>         info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
>         return TRUE;
> } else {
> ..
> }
> 
> I think it will reduce future reworks (as per kernel versions) and
> also reduce issues while backporting makedumpfile to older kernels.
> 
> What do you think?
> 
> Regards,
> Bhupesh
> > > I recently posted a kernel patch (see [0]) which appends
> > > 'MAX_PHYSMEM_BITS' to vmcoreinfo in the core code itself rather than
> > > in arch-specific code, so that user-space code can also benefit from
> > > this addition to the vmcoreinfo and use it as a standard way of
> > > determining 'SECTIONS_SHIFT' value in 'makedumpfile' utility.
> > >
> > > This patch ensures backward compatibility for kernel versions in which
> > > 'MAX_PHYSMEM_BITS' is not available in vmcoreinfo.
> > >
> > > [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
> > >
> > > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > > Cc: kexec@lists.infradead.org
> > > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > > ---
> > >  arch/arm.c     |  8 +++++++-
> > >  arch/ia64.c    |  7 ++++++-
> > >  arch/ppc.c     |  8 +++++++-
> > >  arch/ppc64.c   | 49 ++++++++++++++++++++++++++++---------------------
> > >  arch/s390x.c   | 29 ++++++++++++++++++-----------
> > >  arch/sparc64.c |  9 +++++++--
> > >  arch/x86.c     | 34 ++++++++++++++++++++--------------
> > >  arch/x86_64.c  | 27 ++++++++++++++++-----------
> > >  8 files changed, 109 insertions(+), 62 deletions(-)
> > >
> > > diff --git a/arch/arm.c b/arch/arm.c
> > > index af7442ac70bf..33536fc4dfc9 100644
> > > --- a/arch/arm.c
> > > +++ b/arch/arm.c
> > > @@ -81,7 +81,13 @@ int
> > >  get_machdep_info_arm(void)
> > >  {
> > >       info->page_offset = SYMBOL(_stext) & 0xffff0000UL;
> > > -     info->max_physmem_bits = _MAX_PHYSMEM_BITS;
> > > +
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > > +     else
> > > +             info->max_physmem_bits = _MAX_PHYSMEM_BITS;
> > > +
> > >       info->kernel_start = SYMBOL(_stext);
> > >       info->section_size_bits = _SECTION_SIZE_BITS;
> > >
> > > diff --git a/arch/ia64.c b/arch/ia64.c
> > > index 6c33cc7c8288..fb44dda47172 100644
> > > --- a/arch/ia64.c
> > > +++ b/arch/ia64.c
> > > @@ -85,7 +85,12 @@ get_machdep_info_ia64(void)
> > >       }
> > >
> > >       info->section_size_bits = _SECTION_SIZE_BITS;
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > > +
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > > +     else
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > >
> > >       return TRUE;
> > >  }
> > > diff --git a/arch/ppc.c b/arch/ppc.c
> > > index 37c6a3b60cd3..ed9447427a30 100644
> > > --- a/arch/ppc.c
> > > +++ b/arch/ppc.c
> > > @@ -31,7 +31,13 @@ get_machdep_info_ppc(void)
> > >       unsigned long vmlist, vmap_area_list, vmalloc_start;
> > >
> > >       info->section_size_bits = _SECTION_SIZE_BITS;
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > > +
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > > +     else
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > > +
> > >       info->page_offset = __PAGE_OFFSET;
> > >
> > >       if (SYMBOL(_stext) != NOT_FOUND_SYMBOL)
> > > diff --git a/arch/ppc64.c b/arch/ppc64.c
> > > index 9d8f2525f608..a3984eebdced 100644
> > > --- a/arch/ppc64.c
> > > +++ b/arch/ppc64.c
> > > @@ -466,30 +466,37 @@ int
> > >  set_ppc64_max_physmem_bits(void)
> > >  {
> > >       long array_len = ARRAY_LENGTH(mem_section);
> > > -     /*
> > > -      * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > > -      * newer kernels 3.7 onwards uses 46 bits.
> > > -      */
> > > -
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > -             return TRUE;
> > > -
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
> > > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > -             return TRUE;
> > >
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
> > > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > >               return TRUE;
> > > +     } else {
> > > +             /*
> > > +              * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > > +              * newer kernels 3.7 onwards uses 46 bits.
> > > +              */
> > >
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
> > > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > -             return TRUE;
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +                     return TRUE;
> > > +
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
> > > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +                     return TRUE;
> > > +
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
> > > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +                     return TRUE;
> > > +
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
> > > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +                     return TRUE;
> > > +     }
> > >
> > >       return FALSE;
> > >  }
> > > diff --git a/arch/s390x.c b/arch/s390x.c
> > > index bf9d58e54fb7..4d17a783e5bd 100644
> > > --- a/arch/s390x.c
> > > +++ b/arch/s390x.c
> > > @@ -63,20 +63,27 @@ int
> > >  set_s390x_max_physmem_bits(void)
> > >  {
> > >       long array_len = ARRAY_LENGTH(mem_section);
> > > -     /*
> > > -      * The older s390x kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > > -      * newer kernels uses 46 bits.
> > > -      */
> > >
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > >               return TRUE;
> > > +     } else {
> > > +             /*
> > > +              * The older s390x kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > > +              * newer kernels uses 46 bits.
> > > +              */
> > >
> > > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_3;
> > > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > -             return TRUE;
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +                     return TRUE;
> > > +
> > > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_3;
> > > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > > +                     return TRUE;
> > > +     }
> > >
> > >       return FALSE;
> > >  }
> > > diff --git a/arch/sparc64.c b/arch/sparc64.c
> > > index 1cfaa854ce6d..b93a05bdfe59 100644
> > > --- a/arch/sparc64.c
> > > +++ b/arch/sparc64.c
> > > @@ -25,10 +25,15 @@ int get_versiondep_info_sparc64(void)
> > >  {
> > >       info->section_size_bits = _SECTION_SIZE_BITS;
> > >
> > > -     if (info->kernel_version >= KERNEL_VERSION(3, 8, 13))
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > > +     else if (info->kernel_version >= KERNEL_VERSION(3, 8, 13))
> > >               info->max_physmem_bits = _MAX_PHYSMEM_BITS_L4;
> > > -     else {
> > > +     else
> > >               info->max_physmem_bits = _MAX_PHYSMEM_BITS_L3;
> > > +
> > > +     if (info->kernel_version < KERNEL_VERSION(3, 8, 13)) {
> > >               info->flag_vmemmap = TRUE;
> > >               info->vmemmap_start = VMEMMAP_BASE_SPARC64;
> > >               info->vmemmap_end = VMEMMAP_BASE_SPARC64 +
> > > diff --git a/arch/x86.c b/arch/x86.c
> > > index 3fdae93084b8..f1b43d4c8179 100644
> > > --- a/arch/x86.c
> > > +++ b/arch/x86.c
> > > @@ -72,21 +72,27 @@ get_machdep_info_x86(void)
> > >  {
> > >       unsigned long vmlist, vmap_area_list, vmalloc_start;
> > >
> > > -     /* PAE */
> > > -     if ((vt.mem_flags & MEMORY_X86_PAE)
> > > -         || ((SYMBOL(pkmap_count) != NOT_FOUND_SYMBOL)
> > > -           && (SYMBOL(pkmap_count_next) != NOT_FOUND_SYMBOL)
> > > -           && ((SYMBOL(pkmap_count_next)-SYMBOL(pkmap_count))/sizeof(int))
> > > -           == 512)) {
> > > -             DEBUG_MSG("\n");
> > > -             DEBUG_MSG("PAE          : ON\n");
> > > -             vt.mem_flags |= MEMORY_X86_PAE;
> > > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_PAE;
> > > -     } else {
> > > -             DEBUG_MSG("\n");
> > > -             DEBUG_MSG("PAE          : OFF\n");
> > > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > > +     else {
> > > +             /* PAE */
> > > +             if ((vt.mem_flags & MEMORY_X86_PAE)
> > > +                             || ((SYMBOL(pkmap_count) != NOT_FOUND_SYMBOL)
> > > +                                     && (SYMBOL(pkmap_count_next) != NOT_FOUND_SYMBOL)
> > > +                                     &&
> ((SYMBOL(pkmap_count_next)-SYMBOL(pkmap_count))/sizeof(int))
> > > +                                     == 512)) {
> > > +                     DEBUG_MSG("\n");
> > > +                     DEBUG_MSG("PAE          : ON\n");
> > > +                     vt.mem_flags |= MEMORY_X86_PAE;
> > > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_PAE;
> > > +             } else {
> > > +                     DEBUG_MSG("\n");
> > > +                     DEBUG_MSG("PAE          : OFF\n");
> > > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > > +             }
> > >       }
> > > +
> > >       info->page_offset = __PAGE_OFFSET;
> > >
> > >       if (SYMBOL(_stext) == NOT_FOUND_SYMBOL) {
> > > diff --git a/arch/x86_64.c b/arch/x86_64.c
> > > index 876644f932be..eff90307552c 100644
> > > --- a/arch/x86_64.c
> > > +++ b/arch/x86_64.c
> > > @@ -268,17 +268,22 @@ get_machdep_info_x86_64(void)
> > >  int
> > >  get_versiondep_info_x86_64(void)
> > >  {
> > > -     /*
> > > -      * On linux-2.6.26, MAX_PHYSMEM_BITS is changed to 44 from 40.
> > > -      */
> > > -     if (info->kernel_version < KERNEL_VERSION(2, 6, 26))
> > > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG;
> > > -     else if (info->kernel_version < KERNEL_VERSION(2, 6, 31))
> > > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_26;
> > > -     else if(check_5level_paging())
> > > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_5LEVEL;
> > > -     else
> > > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_31;
> > > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
> > > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > > +     } else {
> > > +             /*
> > > +              * On linux-2.6.26, MAX_PHYSMEM_BITS is changed to 44 from 40.
> > > +              */
> > > +             if (info->kernel_version < KERNEL_VERSION(2, 6, 26))
> > > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG;
> > > +             else if (info->kernel_version < KERNEL_VERSION(2, 6, 31))
> > > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_26;
> > > +             else if(check_5level_paging())
> > > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_5LEVEL;
> > > +             else
> > > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_31;
> > > +     }
> > >
> > >       if (!get_page_offset_x86_64())
> > >               return FALSE;
> > > --
> > > 2.7.4
> > >
> >
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec
> >
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
