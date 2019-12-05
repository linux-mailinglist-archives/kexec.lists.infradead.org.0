Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0181146B5
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 19:18:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5tcXOIGfdYIfrsjQghx3l3APBPbThe+V7HuC2/rwXY=; b=HzC69iOfCDdUbx
	8AfvFB5CNzMBav/1k1C8avU1uEge6ddd1IRMSqzlvUjKtGll0zUj+eOlCwlJFDadUvsKfU+j9nctH
	1GsdsTYUoP8W/ECSwU3iuXk1/UU5FS4Oh0IlaErgzlCuRT3BQu5unm75JYhZUYsBEMkr922FdbpQW
	MYgsh8ZLt10mTjX/JYOPKb5rze9rHCcZlZWYBgF6ryqVQHj3gjf67/z7NImumVNSqyNcQAGKcEgjf
	jwBELW9GimE+e+yDdZ+fkwQj13uqHnjntuDsZ/aDRRa1jGzYJdAWcQzNmIuLcIBFUzB++XCfjPTcY
	OnuFRt6o7QafHWWYMHEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvhV-0000uY-1Q; Thu, 05 Dec 2019 18:18:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvhQ-0000tI-9J
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 18:18:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575569878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=MGXzdspOCpw+ItvxJspm+Wmxc51kvjoO6id4G5yBx4U=;
 b=dfxLdBbMq683swkSHnqL/7VTqSzXNcTxjUQttVC7Rv0strfo9rh+SJh9TcEgfWa7KJxX7e
 ndvkELt8EYT7swZM7jURAuRYw0FCZlZbT4SkFdNEu5A2Cbf0iSuLUUvjnCSmlYilInshtU
 6YTPWm/C5FSyqEXPg1KSur8tvzn3neg=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-384-MK_DoRMcPtiTEoLHw0RHdQ-1; Thu, 05 Dec 2019 13:17:56 -0500
Received: by mail-lj1-f197.google.com with SMTP id l10so1194578ljb.15
 for <kexec@lists.infradead.org>; Thu, 05 Dec 2019 10:17:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HmK++1IgVoHun6QoVaR1lAKqNmyAtqwALWTUnJMGwt0=;
 b=ZH6YxT5yhfMhj+yvWsuxkvdhqdT0Q2Ulfs2D28wwQTlqr/2AHtap0mUkt+ub84CYTi
 CTzesihpyw4UtrlcYhzL6xmcQ5aT6M+0hRVxoGCQ9j9wyqBo770PPCy6XFMZl1MRWMhE
 4nnkOtBeIzD16bjURrFmSb9FKB+4Mx2gUok9w0Gc3BsRkDz7Tull1GKKoPUchtCmdw5/
 lwfaZgRjf66CUfcWPEZD8w1yZdClACtX8uXENGIWNMkYJr5PTrBsmJmiH4lrBlNsXheD
 mU+NNKCTbvlqYZVyoO0lXa+ZnuwEtVVROXWOja552ArOsN3DF4PFLBBu+bwl8wHqNZhr
 0Ghg==
X-Gm-Message-State: APjAAAV/7npNuklOqN9JrwN2j5cEBsaUi2omCjIxMt6AfN/O+T+Z9I1K
 sm4PHjATFdsNzdTjmp1BqOkNe+poJAHuqJ0bWUcZM97lbf9AyJElijhzO/dkGqorYvOraxxGWHt
 reEEM2UtZHGD3x9psFL+8F6IezfbWWn06gPFe
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr6317964ljk.226.1575569874018; 
 Thu, 05 Dec 2019 10:17:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqzZbCfQzJchL9T1+ssTQ6lLWssHTZuKBYBRRZQWJINQdyxbV83ejo3z+5IVSgIAwR3kiaU3VlbvFdmKApBdAeY=
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr6317945ljk.226.1575569873758; 
 Thu, 05 Dec 2019 10:17:53 -0800 (PST)
MIME-Version: 1.0
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <1573556939-17803-2-git-send-email-bhsharma@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597103@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03597103@BPXM09GP.gisp.nec.co.jp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 5 Dec 2019 23:47:40 +0530
Message-ID: <CACi5LpNVeQYYYoXovVweaBwFbqrkFacMdiZzCn0G_Tp6OhZ=2A@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from
 vmcoreinfo (if available)
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
X-MC-Unique: MK_DoRMcPtiTEoLHw0RHdQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_101800_477967_174C51A0 
X-CRM114-Status: GOOD (  25.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kazu,

On Wed, Dec 4, 2019 at 11:05 PM Kazuhito Hagio <k-hagio@ab.jp.nec.com> wrote:
>
> Hi Bhupesh,
>
> Sorry for the late reply.

No problem.

> > -----Original Message-----
> > This patch adds a common feature for archs (except arm64, for which
> > similar support is added via subsequent patch) to retrieve
> > 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).
>
> We already have the calibrate_machdep_info() function, which sets
> info->max_physmem_bits from vmcoreinfo, so practically we don't need
> to add this patch for the benefit.

Since other user-space tools like crash use the 'MAX_PHYSMEM_BITS' value as well
it was agreed with the arm64 maintainers that it would be a good
approach to export the
same in vmcoreinfo and not use different methods to determine the same
in user-space.

Take an example of the PPC makedumpfile implementation for example. It
uses the following complex method of dtereming
'info->max_physmem_bits':
int
set_ppc64_max_physmem_bits(void)
{
    long array_len = ARRAY_LENGTH(mem_section);
    /*
     * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
     * newer kernels 3.7 onwards uses 46 bits.
     */

    info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
    if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
        || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
        return TRUE;

    info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
    if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
        || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
        return TRUE;

    info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
    if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
        || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
        return TRUE;

    info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
    if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
        || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
        return TRUE;

    return FALSE;
}

This might need modification and introduction of another
_MAX_PHYSMEM_BITS_x_y macro when this changes for a newer kernel
version.

I think this makes the code error-prone and hard to read. Its much
better to replace it with:
/* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
    if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
        info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
        return TRUE;
} else {
..
}

I think it will reduce future reworks (as per kernel versions) and
also reduce issues while backporting makedumpfile to older kernels.

What do you think?

Regards,
Bhupesh
> > I recently posted a kernel patch (see [0]) which appends
> > 'MAX_PHYSMEM_BITS' to vmcoreinfo in the core code itself rather than
> > in arch-specific code, so that user-space code can also benefit from
> > this addition to the vmcoreinfo and use it as a standard way of
> > determining 'SECTIONS_SHIFT' value in 'makedumpfile' utility.
> >
> > This patch ensures backward compatibility for kernel versions in which
> > 'MAX_PHYSMEM_BITS' is not available in vmcoreinfo.
> >
> > [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
> >
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > Cc: kexec@lists.infradead.org
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  arch/arm.c     |  8 +++++++-
> >  arch/ia64.c    |  7 ++++++-
> >  arch/ppc.c     |  8 +++++++-
> >  arch/ppc64.c   | 49 ++++++++++++++++++++++++++++---------------------
> >  arch/s390x.c   | 29 ++++++++++++++++++-----------
> >  arch/sparc64.c |  9 +++++++--
> >  arch/x86.c     | 34 ++++++++++++++++++++--------------
> >  arch/x86_64.c  | 27 ++++++++++++++++-----------
> >  8 files changed, 109 insertions(+), 62 deletions(-)
> >
> > diff --git a/arch/arm.c b/arch/arm.c
> > index af7442ac70bf..33536fc4dfc9 100644
> > --- a/arch/arm.c
> > +++ b/arch/arm.c
> > @@ -81,7 +81,13 @@ int
> >  get_machdep_info_arm(void)
> >  {
> >       info->page_offset = SYMBOL(_stext) & 0xffff0000UL;
> > -     info->max_physmem_bits = _MAX_PHYSMEM_BITS;
> > +
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > +     else
> > +             info->max_physmem_bits = _MAX_PHYSMEM_BITS;
> > +
> >       info->kernel_start = SYMBOL(_stext);
> >       info->section_size_bits = _SECTION_SIZE_BITS;
> >
> > diff --git a/arch/ia64.c b/arch/ia64.c
> > index 6c33cc7c8288..fb44dda47172 100644
> > --- a/arch/ia64.c
> > +++ b/arch/ia64.c
> > @@ -85,7 +85,12 @@ get_machdep_info_ia64(void)
> >       }
> >
> >       info->section_size_bits = _SECTION_SIZE_BITS;
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > +
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > +     else
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> >
> >       return TRUE;
> >  }
> > diff --git a/arch/ppc.c b/arch/ppc.c
> > index 37c6a3b60cd3..ed9447427a30 100644
> > --- a/arch/ppc.c
> > +++ b/arch/ppc.c
> > @@ -31,7 +31,13 @@ get_machdep_info_ppc(void)
> >       unsigned long vmlist, vmap_area_list, vmalloc_start;
> >
> >       info->section_size_bits = _SECTION_SIZE_BITS;
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > +
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > +     else
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > +
> >       info->page_offset = __PAGE_OFFSET;
> >
> >       if (SYMBOL(_stext) != NOT_FOUND_SYMBOL)
> > diff --git a/arch/ppc64.c b/arch/ppc64.c
> > index 9d8f2525f608..a3984eebdced 100644
> > --- a/arch/ppc64.c
> > +++ b/arch/ppc64.c
> > @@ -466,30 +466,37 @@ int
> >  set_ppc64_max_physmem_bits(void)
> >  {
> >       long array_len = ARRAY_LENGTH(mem_section);
> > -     /*
> > -      * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > -      * newer kernels 3.7 onwards uses 46 bits.
> > -      */
> > -
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > -             return TRUE;
> > -
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
> > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > -             return TRUE;
> >
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
> > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> >               return TRUE;
> > +     } else {
> > +             /*
> > +              * The older ppc64 kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > +              * newer kernels 3.7 onwards uses 46 bits.
> > +              */
> >
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
> > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > -             return TRUE;
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +                     return TRUE;
> > +
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_7;
> > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +                     return TRUE;
> > +
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_19;
> > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +                     return TRUE;
> > +
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_4_20;
> > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +                     return TRUE;
> > +     }
> >
> >       return FALSE;
> >  }
> > diff --git a/arch/s390x.c b/arch/s390x.c
> > index bf9d58e54fb7..4d17a783e5bd 100644
> > --- a/arch/s390x.c
> > +++ b/arch/s390x.c
> > @@ -63,20 +63,27 @@ int
> >  set_s390x_max_physmem_bits(void)
> >  {
> >       long array_len = ARRAY_LENGTH(mem_section);
> > -     /*
> > -      * The older s390x kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > -      * newer kernels uses 46 bits.
> > -      */
> >
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> >               return TRUE;
> > +     } else {
> > +             /*
> > +              * The older s390x kernels uses _MAX_PHYSMEM_BITS as 42 and the
> > +              * newer kernels uses 46 bits.
> > +              */
> >
> > -     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_3;
> > -     if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > -             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > -             return TRUE;
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG ;
> > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +                     return TRUE;
> > +
> > +             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_3_3;
> > +             if ((array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT_EXTREME()))
> > +                             || (array_len == (NR_MEM_SECTIONS() / _SECTIONS_PER_ROOT())))
> > +                     return TRUE;
> > +     }
> >
> >       return FALSE;
> >  }
> > diff --git a/arch/sparc64.c b/arch/sparc64.c
> > index 1cfaa854ce6d..b93a05bdfe59 100644
> > --- a/arch/sparc64.c
> > +++ b/arch/sparc64.c
> > @@ -25,10 +25,15 @@ int get_versiondep_info_sparc64(void)
> >  {
> >       info->section_size_bits = _SECTION_SIZE_BITS;
> >
> > -     if (info->kernel_version >= KERNEL_VERSION(3, 8, 13))
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > +     else if (info->kernel_version >= KERNEL_VERSION(3, 8, 13))
> >               info->max_physmem_bits = _MAX_PHYSMEM_BITS_L4;
> > -     else {
> > +     else
> >               info->max_physmem_bits = _MAX_PHYSMEM_BITS_L3;
> > +
> > +     if (info->kernel_version < KERNEL_VERSION(3, 8, 13)) {
> >               info->flag_vmemmap = TRUE;
> >               info->vmemmap_start = VMEMMAP_BASE_SPARC64;
> >               info->vmemmap_end = VMEMMAP_BASE_SPARC64 +
> > diff --git a/arch/x86.c b/arch/x86.c
> > index 3fdae93084b8..f1b43d4c8179 100644
> > --- a/arch/x86.c
> > +++ b/arch/x86.c
> > @@ -72,21 +72,27 @@ get_machdep_info_x86(void)
> >  {
> >       unsigned long vmlist, vmap_area_list, vmalloc_start;
> >
> > -     /* PAE */
> > -     if ((vt.mem_flags & MEMORY_X86_PAE)
> > -         || ((SYMBOL(pkmap_count) != NOT_FOUND_SYMBOL)
> > -           && (SYMBOL(pkmap_count_next) != NOT_FOUND_SYMBOL)
> > -           && ((SYMBOL(pkmap_count_next)-SYMBOL(pkmap_count))/sizeof(int))
> > -           == 512)) {
> > -             DEBUG_MSG("\n");
> > -             DEBUG_MSG("PAE          : ON\n");
> > -             vt.mem_flags |= MEMORY_X86_PAE;
> > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_PAE;
> > -     } else {
> > -             DEBUG_MSG("\n");
> > -             DEBUG_MSG("PAE          : OFF\n");
> > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER)
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > +     else {
> > +             /* PAE */
> > +             if ((vt.mem_flags & MEMORY_X86_PAE)
> > +                             || ((SYMBOL(pkmap_count) != NOT_FOUND_SYMBOL)
> > +                                     && (SYMBOL(pkmap_count_next) != NOT_FOUND_SYMBOL)
> > +                                     && ((SYMBOL(pkmap_count_next)-SYMBOL(pkmap_count))/sizeof(int))
> > +                                     == 512)) {
> > +                     DEBUG_MSG("\n");
> > +                     DEBUG_MSG("PAE          : ON\n");
> > +                     vt.mem_flags |= MEMORY_X86_PAE;
> > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_PAE;
> > +             } else {
> > +                     DEBUG_MSG("\n");
> > +                     DEBUG_MSG("PAE          : OFF\n");
> > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS;
> > +             }
> >       }
> > +
> >       info->page_offset = __PAGE_OFFSET;
> >
> >       if (SYMBOL(_stext) == NOT_FOUND_SYMBOL) {
> > diff --git a/arch/x86_64.c b/arch/x86_64.c
> > index 876644f932be..eff90307552c 100644
> > --- a/arch/x86_64.c
> > +++ b/arch/x86_64.c
> > @@ -268,17 +268,22 @@ get_machdep_info_x86_64(void)
> >  int
> >  get_versiondep_info_x86_64(void)
> >  {
> > -     /*
> > -      * On linux-2.6.26, MAX_PHYSMEM_BITS is changed to 44 from 40.
> > -      */
> > -     if (info->kernel_version < KERNEL_VERSION(2, 6, 26))
> > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG;
> > -     else if (info->kernel_version < KERNEL_VERSION(2, 6, 31))
> > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_26;
> > -     else if(check_5level_paging())
> > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_5LEVEL;
> > -     else
> > -             info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_31;
> > +     /* Check if we can get MAX_PHYSMEM_BITS from vmcoreinfo */
> > +     if (NUMBER(MAX_PHYSMEM_BITS) != NOT_FOUND_NUMBER) {
> > +             info->max_physmem_bits = NUMBER(MAX_PHYSMEM_BITS);
> > +     } else {
> > +             /*
> > +              * On linux-2.6.26, MAX_PHYSMEM_BITS is changed to 44 from 40.
> > +              */
> > +             if (info->kernel_version < KERNEL_VERSION(2, 6, 26))
> > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_ORIG;
> > +             else if (info->kernel_version < KERNEL_VERSION(2, 6, 31))
> > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_26;
> > +             else if(check_5level_paging())
> > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_5LEVEL;
> > +             else
> > +                     info->max_physmem_bits  = _MAX_PHYSMEM_BITS_2_6_31;
> > +     }
> >
> >       if (!get_page_offset_x86_64())
> >               return FALSE;
> > --
> > 2.7.4
> >
>
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
