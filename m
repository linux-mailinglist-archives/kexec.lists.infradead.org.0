Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68CB2CB772
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 11:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJUXmz8FhSv5rFcoAgsfEcwlZvoKSRyJQf1+PBOwsEY=; b=PhLl4FNfDg2ADw
	RW3O/QTjRiV9to80a7Z3k5NtK7zRoASJE6ciTw4ocxymiUwc+5Vsi7yLC9WFAG3yyKLIu/e9Lmgyu
	flKlufMWk5cCHmvcB3kVOBOckxvyT2ElWeVRnLIXLdrnaUEyQLvlAjHElAhdFmJIOVv2MiI3bgovm
	WHUPNMLhndF8/HB3JAVScpvwj6GMfb7UAjzRz2ZiCk6tmTQOW30Wr+ALQLnzz/3Y/OSjYQ21lcsE8
	SJUMNT5qJCUIzwV9zv/LTKQ1TCQoxhJXsIgFxrhgV67nPo7CngpfMY67PJOGnMVHhowy/2Kxbc63b
	SWQcT7+jcOswxpyhzQJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGK26-0000rh-Vy; Fri, 04 Oct 2019 09:37:54 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGK1z-0000rB-Qq
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 09:37:49 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id E342725B7B5;
 Fri,  4 Oct 2019 19:37:42 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 3E9FC940903; Fri,  4 Oct 2019 11:37:40 +0200 (CEST)
Date: Fri, 4 Oct 2019 11:37:40 +0200
From: Simon Horman <horms@verge.net.au>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
Message-ID: <20191004093737.wftu7iat2gk3abq6@verge.net.au>
References: <20191001151416.GA25667@ls3530.fritz.box>
 <20191003081406.5qmzlmlpwobydfok@verge.net.au>
 <2ac17dd1-99ef-3528-a05e-d51f8af01c95@gmx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ac17dd1-99ef-3528-a05e-d51f8af01c95@gmx.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_023748_024797_9DD91F85 
X-CRM114-Status: GOOD (  15.87  )
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
Cc: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 10:52:37AM +0200, Helge Deller wrote:
> On 03.10.19 10:14, Simon Horman wrote:
> > On Tue, Oct 01, 2019 at 05:14:16PM +0200, Helge Deller wrote:
> > > When compiling kexec-tools on a 32-bit platform, assigning an
> > > (unsigned long long) value to an (unsigned long) variable creates
> > > this warning:
> > > 
> > > elf_info.c: In function 'read_phys_offset_elf_kcore':
> > > elf_info.c:805:14: warning: conversion from 'long long unsigned int' to 'long unsigned int' changes value from '18446744073709551615' to '4294967295'
> > >    805 |  *phys_off = UINT64_MAX;
> > >        |              ^~~~~~~~~~
> > > 
> > > Fix it by casting UINT64_MAX to (unsigned long) before storing it to *phys_off.
> > > 
> > > Signed-off-by: Helge Deller <deller@gmx.de>
> > > 
> > > diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
> > > index 2bce5cb..4d16983 100644
> > > --- a/util_lib/elf_info.c
> > > +++ b/util_lib/elf_info.c
> > > @@ -802,7 +802,7 @@ int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
> > >   {
> > >   	int ret;
> > > 
> > > -	*phys_off = UINT64_MAX;
> > > +	*phys_off = (unsigned long) UINT64_MAX;
> > 
> > This seems to mask the problem that UINT64_MAX is not the right
> > initialiser for unsigned long values on 32-bit platforms.
> > Could we consider using UINT64_MAX from limits.h instead?
> 
> UINT64 means it is a 64bit value, while "unsigned long" is either 32-bit,
> 64bit (or maybe in the future even 128bit?).
> Even assigning UINT32_MAX on a 32bit platform might be wrong.
> So I think the cast above is probably the best solution.

Sorry, I made a typo above.
What I meant is, can we consider using ULONG_MAX.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
