Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF325B357E
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 09:23:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMpJhNLkaChIWV69uwmwlNOB2zUhdTv11otFmc+7efQ=; b=Bpd/jzd1PQdTAa
	OC6s0nao9ITgAC33DjsKld/AnX4nCatOtD8RxOAWy8c78GSTB/g7v5r9+yZyqc5mFqnixBbhZWOVh
	ov69eLQ0xo+mKzEa5rVa08OxUsgTgiymZaZmhFyc5nnDnYKIEskd0yXUSgyr3ybdxhpAA/Bds8nD1
	oKM6xsCUlODuhfnCiEMgZ4E+tLJe8bj/X+rFtUYGQJH8PBvieGA/SmnEwVbXzafWBL6ZoJ9i7E0Q4
	6AmoAgXZ38jZpmKhNWXGCoR7a7OETXEYg65QpFqRqE2fgCPRNDgphcDNCs57iAwZT1qw3MXILVZS5
	yvoXNmWulbEfjJwnQFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9lML-0004u0-0U; Mon, 16 Sep 2019 07:23:41 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9lMG-0004tB-Cr
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 07:23:37 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 7D5A425B705;
 Mon, 16 Sep 2019 17:23:35 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 6A2AC940316; Mon, 16 Sep 2019 09:23:33 +0200 (CEST)
Date: Mon, 16 Sep 2019 09:23:33 +0200
From: Simon Horman <horms@verge.net.au>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
Message-ID: <20190916072333.7xma2kgjzucfes44@verge.net.au>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190903144127.opmnw42pie6klghc@verge.net.au>
 <848555a3-5a1f-c0c0-ef50-e684cf70595a@molgen.mpg.de>
 <CACi5LpPe5ueNMdCObWvCLg+k_kDrvd-SkOvc8ACa1V9UfSD77g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACi5LpPe5ueNMdCObWvCLg+k_kDrvd-SkOvc8ACa1V9UfSD77g@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_002336_585270_8588E168 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Donald Buczek <buczek@molgen.mpg.de>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 10:33:11AM +0530, Bhupesh Sharma wrote:
> Sorry Guys,
> 
> On Tue, Sep 3, 2019 at 11:36 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
> >
> > Dear Simon,
> >
> > On 03.09.19 16:41, Simon Horman wrote:
> > > On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
> > >> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> > >> region on 5-level paging") changed the base of the direct mapping
> > >> from 0xffff880000000000 to 0xffff888000000000. This was merged
> > >> into v4.20-rc2.
> > >>
> > >> Update to new address accordingly.
> > >
> > > Thanks, applied for inclusion in v2.0.20.
> >
> > I must admit, that I overlooked that d52888aa2753 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging").
> >
> > Bhupesh Sharma wanted to look into a a dynamic solution, which, of course, would be better. But if you still want to include this (e.g. as the fallback for the dynamic solution), you might want to replace the patch with the following one, which selects the new PAGE_OFFSET starting from kernel version 4.19.5 instead of 4.20.0.
> 
> I was in a conference last week and was not able to connect to my test
> machine(s) to develop and test a more generic fix, as I suggested in
> my earlier message.
> 
> I will try to work on and send a generic fix in a couple of days.

Thanks,

I think it would be best if this patch,
23b67f048dde ("x86: Fix PAGE_OFFSET for kernels since 4.20"),
was reverted.

Donald, Bhupesh, what do you think?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
