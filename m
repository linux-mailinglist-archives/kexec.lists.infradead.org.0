Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597FCB38A2
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 12:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7NP8GkCsSSYdSUam77kkiQ2wvbX+Ag6KYIZz534JqA=; b=sf97F18WEm8MAQ
	JenjAWQE0UDoTtmKYZ6krDCb1aFmGwmmdOIV056Xy9ub9rJcw8t5M+hrDc3zTJV/SZjHir3UuH74s
	DJ5UFQaa3vRUXch40TRuMMjF0EefWfqkc8pIpMpdYpS+mGXAjge42mXehUtJOT8F3N27ODODdnzFt
	5QIfY0H6AhSVytnM86v7lq0zQk0sFpahCcIMvNoksYi6PTOna5Qub2kQ6+CMIy1BiIBglw4SJhBSa
	g8psFcWhmcQ1jpzeisXW3ryU4zZndhhKq73+DVy8kxBsqLPJYM3kuAW32nykkwtE9iWsHWBfblrJI
	BowxYtTIN/wvpNhZO2nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9obb-0004MG-Oh; Mon, 16 Sep 2019 10:51:39 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9obX-0004LT-DE
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 10:51:37 +0000
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2FB544E926
 for <kexec@lists.infradead.org>; Mon, 16 Sep 2019 10:51:34 +0000 (UTC)
Received: by mail-lj1-f199.google.com with SMTP id i22so1268039ljj.2
 for <kexec@lists.infradead.org>; Mon, 16 Sep 2019 03:51:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jmNXpgBmVbv0Ut3O6a9gp5H5a1GmFrzXBc6VGmiQsnY=;
 b=tjUBhETBLfAHcYFczBeTELU6ujRjhjExCEH56HUOlsXS09FcoLVRDE0bwqrUcd2RNj
 gKNNHzZfENaIOkk81YyuZt6gMHcmy6Es7z787fC1DtW2Y0CbgwWcZoU1bdvJEO2OvK/F
 mc7YJ5X+EVeI3rmFrdhhIetmwxIpMAdeqO+8BVJRgqgLVBoqqmOOo+y84tY+iwLv4/+A
 5MOB5N4qK+JcgLyDqunPNL5I5jZUW5UKhrD6zynPGAw9CCTmIp3eUbEjdAKK5EjPJC1W
 t1DaVp2BFgPFzH3oqymXJ+JAHtXnuXvqcwnxkW/aI1VaDmjJFMMguhsSiuFc5jKMjvmc
 6IIA==
X-Gm-Message-State: APjAAAXSMHrF4rDZffLMBfDpPnorSna7LEdfdqJvoz1Nj4ENJ7pyteR7
 ehcKIc77kWc8MYTUo9KnpKXCaKLyuLCskSg9Jmz7I0AjOw+CF6BgJpvVEDDxo50VFVAISEESOsd
 +cfEMlhAGCAPN70C1ZAmSangMghXoBzhqN6sJ
X-Received: by 2002:a2e:9cd3:: with SMTP id g19mr37167200ljj.150.1568631092713; 
 Mon, 16 Sep 2019 03:51:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzro9aEjPSmcJZ7hlLjQgMErsCdsX8yWy3nW6Xl+gc2XsZVQje3n2MpHSgEyevlPBrWj2/KKJMu0m2vpGzzjDg=
X-Received: by 2002:a2e:9cd3:: with SMTP id g19mr37167194ljj.150.1568631092489; 
 Mon, 16 Sep 2019 03:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190903144127.opmnw42pie6klghc@verge.net.au>
 <848555a3-5a1f-c0c0-ef50-e684cf70595a@molgen.mpg.de>
 <CACi5LpPe5ueNMdCObWvCLg+k_kDrvd-SkOvc8ACa1V9UfSD77g@mail.gmail.com>
 <20190916072333.7xma2kgjzucfes44@verge.net.au>
In-Reply-To: <20190916072333.7xma2kgjzucfes44@verge.net.au>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 16 Sep 2019 16:21:20 +0530
Message-ID: <CACi5LpOnsY6T6GrDn7mFkGSRR4KCjveuE=a=f928ahMuG26n1g@mail.gmail.com>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
To: Simon Horman <horms@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_035135_484901_B742B2EE 
X-CRM114-Status: GOOD (  22.26  )
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Donald Buczek <buczek@molgen.mpg.de>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Simon,

On Mon, Sep 16, 2019 at 12:53 PM Simon Horman <horms@verge.net.au> wrote:
>
> On Mon, Sep 09, 2019 at 10:33:11AM +0530, Bhupesh Sharma wrote:
> > Sorry Guys,
> >
> > On Tue, Sep 3, 2019 at 11:36 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
> > >
> > > Dear Simon,
> > >
> > > On 03.09.19 16:41, Simon Horman wrote:
> > > > On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
> > > >> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> > > >> region on 5-level paging") changed the base of the direct mapping
> > > >> from 0xffff880000000000 to 0xffff888000000000. This was merged
> > > >> into v4.20-rc2.
> > > >>
> > > >> Update to new address accordingly.
> > > >
> > > > Thanks, applied for inclusion in v2.0.20.
> > >
> > > I must admit, that I overlooked that d52888aa2753 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging").
> > >
> > > Bhupesh Sharma wanted to look into a a dynamic solution, which, of course, would be better. But if you still want to include this (e.g. as the fallback for the dynamic solution), you might want to replace the patch with the following one, which selects the new PAGE_OFFSET starting from kernel version 4.19.5 instead of 4.20.0.
> >
> > I was in a conference last week and was not able to connect to my test
> > machine(s) to develop and test a more generic fix, as I suggested in
> > my earlier message.
> >
> > I will try to work on and send a generic fix in a couple of days.
>
> Thanks,
>
> I think it would be best if this patch,
> 23b67f048dde ("x86: Fix PAGE_OFFSET for kernels since 4.20"),
> was reverted.
>
> Donald, Bhupesh, what do you think?

I am still working on a correct fix for this issue, so I would think
we can keep Donald' patch for now.
Once my fix is ready and it is accepted after reviews, I think we can
revert Donald's patch.

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
