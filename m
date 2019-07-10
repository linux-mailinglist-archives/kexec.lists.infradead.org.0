Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A376440D
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 11:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNiNPfAkOWXsk7tJoGORXgp2v9Js9I2E66FutWWUGCA=; b=q3mf9tOFoKPi8t
	NLXfCbEzPTCSW1qLnmDAjoNsFQst6hs+qHVJZcHT/zCAniDYw/qdOfXCvMy+nGpsBoNeLDKHaKRAr
	Bk8wvuwNJ38AsiS9ntOxdWyo12G9C5pB3ABnF3HHQoQgW1qbc2aFuu7dNT/RW7yZXW1Z1OdtVCCCF
	h6JomIrYM9MbOrAV4Q6Vznt5QLldt+EqxAM74hSmUK4QwigPm1KVXexFFev8w1tPFRx449drS71v3
	WwXc+wtUo177eJNCk3Kp1db9zyP1Fp+S8lClwEaFtFO9eguev7ipDOPY981AHvEXfj1PnMOtnI8xj
	b3qgacvpzBl6h8Np0i5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl8UR-0007Oz-90; Wed, 10 Jul 2019 09:02:15 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl8UN-0007OW-Un
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 09:02:13 +0000
Received: by mail-io1-f66.google.com with SMTP id z3so3165116iog.0
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 02:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kxOvhHxADV/4tgGPJ/gmT123uBEEQiDcrfpf4s/7Y8Y=;
 b=glEe9KK9nY5J0d8WRaUw9Apv3K6yM17uQKxm37GYyKBEx0nsL4ypnBNkfJPJ4t2+gw
 mFReSeEowXiSYw3AJYiqh9WOg8UMQ1CIaqAGgEaOakxlbct8FiF9n6gBgpZNNNYp6id7
 8u7YpjDyvo4o/QqATDR0+pCKnQyn1B7fToVhsWOdxB4+4XQIeRRLE54wNkNZVFHK4XeB
 c6g3M3nl2OngqdFntjwI5m9MbP0+6dwLBQKHPtrB5mWO8v8Bx8YhAayz0p1ag0DJq/J7
 kcjGSwLQ95Mdo9g42EhAVtVZ5MCx6BpK1ZfDM3+UnL6XqPrMpY+0C3xp+Ml39UePkexk
 X99Q==
X-Gm-Message-State: APjAAAUlzi2HUEDNtYXS40yzv6KghbEsi49tja+HRMdaRVHDM61ncdBs
 u9xE4+Ch1i+NNb6jmnLbQtiCwB6e4USp5iQ5+EkQrWf42/Fnow==
X-Google-Smtp-Source: APXvYqzcsPjrkUT+v6aAuo8mSpQQYOYXtqr7XdYpHRvUUDYFXmT0x7GJtM29H/MRwWjsiHfuW1FXzkIx6JujyS7JbUM=
X-Received: by 2002:a6b:7d49:: with SMTP id d9mr11531622ioq.50.1562748968431; 
 Wed, 10 Jul 2019 01:56:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190703080432.28806-1-horms@verge.net.au>
 <20190710081053.qtiqskblmxcpkr6e@verge.net.au>
In-Reply-To: <20190710081053.qtiqskblmxcpkr6e@verge.net.au>
From: Kairui Song <kasong@redhat.com>
Date: Wed, 10 Jul 2019 16:55:57 +0800
Message-ID: <CACPcB9eVc1CDeNQyAr6Daq=vM3jVqyeUDmT+2p524jvH=08rAw@mail.gmail.com>
Subject: Re: [PATCH kexec-tools] x86: re-order includes to avoid duplicate
 struct e820entry
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_020211_986138_56F6035B 
X-CRM114-Status: GOOD (  15.99  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 4:11 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Wed, Jul 03, 2019 at 10:04:32AM +0200, Simon Horman wrote:
> > xenctrl.h defines struct e820entry as:
> >
> >       if defined(__i386__) || defined(__x86_64__)
> >       ...
> >       #define E820_RAM        1
> >       ...
> >       struct e820entry {
> >               uint64_t addr;
> >               uint64_t size;
> >               uint32_t type;
> >       } __attribute__((packed));
> >       ...
> >       #endif
> >
> >  $ dpkg-query -S /usr/include/xenctrl.h
> >  libxen-dev:amd64: /usr/include/xenctrl.h
> >  $  dpkg-query -W libxen-dev:amd64
> >  libxen-dev:amd64     4.8.5+shim4.10.2+xsa282-1+deb9u11
> >
> > ./include/x86/x86-linux.h defines struct e820entry as:
> >
> >       #ifndef E820_RAM
> >       struct e820entry {
> >               uint64_t addr;  /* start of memory segment */
> >               uint64_t size;  /* size of memory segment */
> >               uint32_t type;  /* type of memory segment */
> >               #define E820_RAM    1
> >               ...
> >       } __attribute__((packed));
> >       #endif
> >
> > Since cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
> > ./kexec/arch/i386/kexec-x86-common.c includes
> >
> >       +#include "x86-linux-setup.h"
> >        #include "../../kexec-xen.h"
> >
> > When xenctrl.h is present the above results in:
> >
> >  $ gcc
> >  ...
> >  In file included from kexec/arch/i386/../../kexec-xen.h:5:0,
> >                   from kexec/arch/i386/kexec-x86-common.c:43:
> >  /usr/include/xenctrl.h:1271:8: error: redefinition of 'struct e820entry'
> >   struct e820entry {
> >          ^~~~~~~~~
> >
> >  In file included from kexec/arch/i386/x86-linux-setup.h:3:0,
> >                   from kexec/arch/i386/kexec-x86-common.c:42:
> >  ./include/x86/x86-linux.h:16:8: note: originally defined here
> >   struct e820entry {
> >          ^~~~~~~~~
> >  ...
> >  $ gcc --version | head -1
> >  gcc (Debian 6.3.0-18+deb9u1) 6.3.0 20170516
> >
> > To militate this this problem re-order the includes so that
> > x86-linux.h is included after xenctrl.h and thus
> > struct e820entry will only be defined once due to it
> > being devined conditionally in x86-linux.h.
> >
> > In practice the definitions are the same so it should
> > not matter which is chosen.
> >
> > It also seems rather unpleasent to me to need to play
> > with include ordering. Perhaps a better solution in the longer
> > term would be to rename the local definition of struct e820entry.
> >
> > Fixes: cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
> > Signed-off-by: Simon Horman <horms@verge.net.au>
>
> I have applied this change.
>

Thanks for the fix, it looks good, so the "move the helpers to
x86-linux-setup.c" patch should be not needed now.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
