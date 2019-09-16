Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4828B3C4A
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 16:13:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=DkSAzhEhqVzLDvi4O05MUoXuXDsMvWP+JDNlYgREiBY=; b=BLFzZ2svTrM+BR
	pi8T4ZAQgmHsCmsQcZdAvlW9zEy1g249fgZu7sWym3uz+TJ2V5oOV/soGk4hVd0k44dJr3FXt3WUj
	9UlYOreWyvq/XIIThWa71Uwxbu/4uW7y26nsVsBnfmjkAWM0ukvShFnJWn5Ljt+pk74Vico0ORM4w
	v+q3yo3d1CHpDW51Wm1jPeKDgcPOg6h1iNRVLuf3eHoFOZdygM6pNqU3SuzGH9jyCdMnW0Qgm3qdn
	kQeAiRMeqBgzqMsWCLQ/TqVocid1T98ZdO36ptitkPw7wOFQZWfi12Lgr1KK/ZQ9PWVtyYJ6f3twX
	v6oaf+/MGpVqkRW3mg0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9rlJ-00040H-Ky; Mon, 16 Sep 2019 14:13:53 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9rlD-0003zv-PA
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 14:13:49 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AC88F25B6F5;
 Tue, 17 Sep 2019 00:13:44 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 8FEA59405CF; Mon, 16 Sep 2019 16:13:42 +0200 (CEST)
Date: Mon, 16 Sep 2019 16:13:42 +0200
From: Simon Horman <horms@verge.net.au>
To: Donald Buczek <buczek@molgen.mpg.de>, Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
Message-ID: <20190916141342.7zlqivdz4ljigplq@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpOnsY6T6GrDn7mFkGSRR4KCjveuE=a=f928ahMuG26n1g@mail.gmail.com>
 <1d8f474a-4ed1-4b83-7e70-36504dfa6f69@molgen.mpg.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_071348_114900_91929753 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 12:47:00PM +0200, Donald Buczek wrote:
> On 9/16/19 9:23 AM, Simon Horman wrote:
> > On Mon, Sep 09, 2019 at 10:33:11AM +0530, Bhupesh Sharma wrote:
> > > Sorry Guys,
> > > 
> > > On Tue, Sep 3, 2019 at 11:36 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
> > > > 
> > > > Dear Simon,
> > > > 
> > > > On 03.09.19 16:41, Simon Horman wrote:
> > > > > On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
> > > > > > Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> > > > > > region on 5-level paging") changed the base of the direct mapping
> > > > > > from 0xffff880000000000 to 0xffff888000000000. This was merged
> > > > > > into v4.20-rc2.
> > > > > > 
> > > > > > Update to new address accordingly.
> > > > > 
> > > > > Thanks, applied for inclusion in v2.0.20.
> > > > 
> > > > I must admit, that I overlooked that d52888aa2753 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging").
> > > > 
> > > > Bhupesh Sharma wanted to look into a a dynamic solution, which, of course, would be better. But if you still want to include this (e.g. as the fallback for the dynamic solution), you might want to replace the patch with the following one, which selects the new PAGE_OFFSET starting from kernel version 4.19.5 instead of 4.20.0.
> > > 
> > > I was in a conference last week and was not able to connect to my test
> > > machine(s) to develop and test a more generic fix, as I suggested in
> > > my earlier message.
> > > 
> > > I will try to work on and send a generic fix in a couple of days.
> > 
> > Thanks,
> > 
> > I think it would be best if this patch,
> > 23b67f048dde ("x86: Fix PAGE_OFFSET for kernels since 4.20"),
> > was reverted.
> > 
> > Donald, Bhupesh, what do you think?
> 
> The original patch is technically correct and fixes the problem for 4.20 kernels, so I don't know, why it should be reverted.
> 
> My replacement patch was to address 4.19 kernels as well. But if the original patch has already been comitted and published, it should not be replaced of course. 4.20 kernels should be addressed by a separate patch on top of it instead.
> 
> As I'm not subscribed to the kexec list, I may have missed the latest news, however.

On Mon, Sep 16, 2019 at 04:21:20PM +0530, Bhupesh Sharma wrote:
> Hi Simon,
> 
> On Mon, Sep 16, 2019 at 12:53 PM Simon Horman <horms@verge.net.au> wrote:
> >
> > On Mon, Sep 09, 2019 at 10:33:11AM +0530, Bhupesh Sharma wrote:

...

> > Thanks,
> >
> > I think it would be best if this patch,
> > 23b67f048dde ("x86: Fix PAGE_OFFSET for kernels since 4.20"),
> > was reverted.
> >
> > Donald, Bhupesh, what do you think?
> 
> I am still working on a correct fix for this issue, so I would think
> we can keep Donald' patch for now.
> Once my fix is ready and it is accepted after reviews, I think we can
> revert Donald's patch.
> 
> Thanks,
> Bhupesh
> 

Thanks Donald, thanks Bhupesh.

I will leave 23b67f048dde ("x86: Fix PAGE_OFFSET for kernels since 4.20")
in the tree and look forward to the follow-up work from Bhupesh.

Kind regards,
Simon

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
