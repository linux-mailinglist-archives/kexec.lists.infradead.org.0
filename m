Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE419A540
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 04:11:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5bsIgz6cjSPcXTgvM+85czYH4X+htH6nl1ZIuDUM/vU=; b=pu+4aruV9KRWvP
	5oQLaytpdXMuIuhgRqPsk1Qkx6k/44W7QwkazOlvF4RC3DuzrdWF6UuZa7bY5MyRLMxaBq2+ZyF/F
	zLuDp7f96b3NaHwXG96FNIYzPNNbe3+i+kFQzftq1KAIyuN9+C6bNKJwemN5MU7b35828L6GFxYrp
	Lq2aCs7vItQcbkjs4AHHShFHlCyuIxTnkbkij9GqdUJ/gzfezPtf17y4ibr9JPVk78ZatpSWG+TAO
	R6TYGVD+UtW4DdZLvB4jc+okuePEJiYS2yLY8CMeZi1AOUkHwPOwTS1v4Gk9ekedf2VwtlbTO12pB
	p4cYDwJTXEYZOsY52kmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0z3C-00016w-04; Fri, 23 Aug 2019 02:11:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0z33-00016G-Mu
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 02:11:31 +0000
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B00482A09A4
 for <kexec@lists.infradead.org>; Fri, 23 Aug 2019 02:11:27 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id a20so8844957iok.21
 for <kexec@lists.infradead.org>; Thu, 22 Aug 2019 19:11:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t+ZBnkkc6flUSqLwDF2ju3CQEpll/ZB3gVcng2w0c/E=;
 b=nHidlELcORRg++2p4NSlMRiwXPrSjK/7b5M7mWNxwGk5ZytAHVLQwidJDerKvLCzci
 rVWQb8Kn5sT2sU1Eg08KHDQ2SObE9ozYL6/qxY++NtIByT+GZlaBzFCxK9SZMqNbGMj6
 iU79j/hhNeJLEjuJTz1/Kz/2dA35ZkwR7+BWXn+M0sHK4N/dMAqCCaQbs4SY88fJ7DWc
 +1br3MS316Se1S1bkELd3apKfBZ7HIvkFPFF12M7mEq8gYzWwS+PtFi8MYfeymN581oZ
 Z4iN7B/70/1Djerd4uRICAVdEw1jvHPzMcanhstZisYN7y3i42DjcsNArQ2meRZEWoiD
 4yKA==
X-Gm-Message-State: APjAAAXuQJ0GJPOEH/T2YMguhMKCvLwMLJLQIpOuqpbjoOUT3Pr1Xws4
 mzMh+ua2FFAMY6LGDX6diFANVfz+gXY1TQ7xa+tvESne6KFqwWmD15CioQO3rFD0kRWCIQN75wg
 NmBTf95dnkI42t0lfIwYYBJ4cRLfCbxSsZlmC
X-Received: by 2002:a5d:9dd8:: with SMTP id 24mr2841434ioo.249.1566526287071; 
 Thu, 22 Aug 2019 19:11:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw6TD5jcMGMYhszqvCI11Yg+cgMO/QSdoVkVkKc1A45jKCCcxKMZSfaQ2fkmmZORaURFGVhJlKD4PP/o2Q6l9I=
X-Received: by 2002:a5d:9dd8:: with SMTP id 24mr2841416ioo.249.1566526286821; 
 Thu, 22 Aug 2019 19:11:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190822025328.17151-1-kasong@redhat.com>
 <ff049b95-92a3-52ab-7ee8-01051a597cff@amd.com>
In-Reply-To: <ff049b95-92a3-52ab-7ee8-01051a597cff@amd.com>
From: Kairui Song <kasong@redhat.com>
Date: Fri, 23 Aug 2019 10:11:15 +0800
Message-ID: <CACPcB9daWhyvqB_QEvnLuvp5BiZ4cSOoj6KaP8mcSUEiQGFC_w@mail.gmail.com>
Subject: Re: [PATCH] x86/kdump: Reserve extra memory when SME or SEV is active
To: "Lendacky, Thomas" <Thomas.Lendacky@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_191129_793386_E6534088 
X-CRM114-Status: GOOD (  32.83  )
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
Cc: Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 10:35 PM Lendacky, Thomas
<Thomas.Lendacky@amd.com> wrote:
>
> On 8/21/19 9:53 PM, Kairui Song wrote:
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
> >  arch/x86/kernel/setup.c | 26 +++++++++++++++++++++++---
> >  1 file changed, 23 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> > index bbe35bf879f5..ed91fa9d9f6e 100644
> > --- a/arch/x86/kernel/setup.c
> > +++ b/arch/x86/kernel/setup.c
> > @@ -528,7 +528,7 @@ static int __init reserve_crashkernel_low(void)
> >
> >  static void __init reserve_crashkernel(void)
> >  {
> > -     unsigned long long crash_size, crash_base, total_mem;
> > +     unsigned long long crash_size, crash_base, total_mem, mem_enc_req;
> >       bool high = false;
> >       int ret;
> >
> > @@ -550,6 +550,17 @@ static void __init reserve_crashkernel(void)
> >               return;
> >       }
> >
> > +     /*
> > +      * When SME/SEV is active, it will always required an extra SWIOTLB
> > +      * region.
> > +      */
> > +     if (sme_active() || sev_active()) {
>
> You can use mem_encrypt_active() here in place of the two checks.

That's a very good suggestion.

>
> > +             mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> > +             pr_info("Memory encryption is active, crashkernel needs %ldMB extra memory\n",
> > +                             (unsigned long)(mem_enc_req >> 20));
>
> There is a point below where you zero out this value, so should this
> be issued later only if mem_enc_req is non-zero?

Yes that's true, but currently if zero out this value when ",high" is
used, then an extra low memory region will be reserved, so this
message will not be very confusing I think? as the required extra
memory is now in the low memory region. And for the "@offset" case
this could be a hint for users. And if the reserve failed due to
enlarged crashkernel size, the user may also be better aware of what
is causing the failure by this message.

>
> Also, looks like one too many tabs.
>
> > +     } else
>
> Since you used braces on the if path, you need braces on the else path.

OK, will fix the code style issues.

>
> Thanks,
> Tom
>
> > +             mem_enc_req = 0;
> > +
> >       /* 0 means: find the address automatically */
> >       if (!crash_base) {
> >               /*
> > @@ -563,11 +574,19 @@ static void __init reserve_crashkernel(void)
> >               if (!high)
> >                       crash_base = memblock_find_in_range(CRASH_ALIGN,
> >                                               CRASH_ADDR_LOW_MAX,
> > -                                             crash_size, CRASH_ALIGN);
> > -             if (!crash_base)
> > +                                             crash_size + mem_enc_req,
> > +                                             CRASH_ALIGN);
> > +             /*
> > +              * For high reservation, an extra low memory for SWIOTLB will
> > +              * always be reserved later, so no need to reserve extra
> > +              * memory for memory encryption case here.
> > +              */
> > +             if (!crash_base) {
> > +                     mem_enc_req = 0;
> >                       crash_base = memblock_find_in_range(CRASH_ALIGN,
> >                                               CRASH_ADDR_HIGH_MAX,
> >                                               crash_size, CRASH_ALIGN);
> > +             }
> >               if (!crash_base) {
> >                       pr_info("crashkernel reservation failed - No suitable area found.\n");
> >                       return;
> > @@ -583,6 +602,7 @@ static void __init reserve_crashkernel(void)
> >                       return;
> >               }
> >       }
> > +     crash_size += mem_enc_req;
> >       ret = memblock_reserve(crash_base, crash_size);
> >       if (ret) {
> >               pr_err("%s: Error reserving crashkernel memblock.\n", __func__);
> >



-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
