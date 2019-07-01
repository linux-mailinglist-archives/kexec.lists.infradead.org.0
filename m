Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A685C1BB
	for <lists+kexec@lfdr.de>; Mon,  1 Jul 2019 19:09:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wqy+Z3nFGGqnFqsWmzS2XkUqF97OMzQs1bUMIL6cTHU=; b=ner7mN2U+EovPA
	6CFIk2gGMPbhHc+oyN9N6c1oVaELM05svt/e2KO+bzbYLyYZG3eIKl/69iijiMfofS3sibQRVvnO4
	qz4JsQBlAX93yoClv6TfnO6YEDlzdJKCu3p2Co3HOkm+UYNCIUO5dr8Il+dHlhLrzqHfFta3JO2ZB
	dj3D7X0pg2nBNiOV04TTxwNSYa3SOy2tSOdITCFpeeC/DB/RLO840bLyXpVJ8ZUMBqYBJZKxxCAfS
	NQtzavj7rBfvSlrIrUVeRlRJNtdTYvu9TM3t3P9aaEIEadvNWbMd0JHOj3ZIIpvb7s1OX1Q922+qD
	zieAX3wT+uGRjF/1TuoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhznc-0008Km-Av; Mon, 01 Jul 2019 17:09:04 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhznX-0008K5-MT
 for kexec@lists.infradead.org; Mon, 01 Jul 2019 17:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Type:MIME-Version:References
 :Message-ID:Subject:Cc:To:From:Date;
 bh=lMzex8jlUCJ2Gwea4xwdWvbCtAAUxSDLkgjI9TE9va0=; b=ZdE/vRjPVuJYU9QL+q2GQwaSjq
 qeaGU3B+ntdQjmLgoZc6V6wW40HUteu1CTDy6jkHHjWywYcj36MCoQbPCuT/ufIwd+gCZCsCwfUk9
 IqU54V7HHV4AFAjIk89VwcSCw2Lt4ly1qCt1JF10kSnBpRIko28/gILQyjAaYuWMiuZM=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hhznT-0006GR-8o; Mon, 01 Jul 2019 19:08:55 +0200
Date: Mon, 1 Jul 2019 19:08:53 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH RFC] generic ELF support for kexec
Message-ID: <20190701170853.GD19243@t470p.stackframe.org>
References: <20190625185433.GA10934@t470p.stackframe.org>
 <87o92isbxg.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o92isbxg.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_100900_038324_76156165 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390@vger.kernel.org, deller@gmx.de, kexec@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Michael,

On Fri, Jun 28, 2019 at 12:04:11PM +1000, Michael Ellerman wrote:
> Sven Schnelle <svens@stackframe.org> writes:
>   https://github.com/linuxppc/wiki/wiki/Booting-with-Qemu
> 
> But I'm not sure where you get a version of kexec that uses kexec_file().

kexec-tools HEAD supports it, so that's not a problem.

> > If that change is acceptable i would finish the patch and submit it. I think
> > best would be to push this change through Helge's parisc tree, so we don't
> > have any dependencies to sort out.
> 
> That will work for you but could cause us problems if we have any
> changes that touch that code.
> 
> It's easy enough to create a topic branch with just that patch that both
> of us merge.

What should be the base branch for that patch? Christophe suggested the
powerpc/merge branch?

> >  #include <linux/elf.h>
> >  #include <linux/kexec.h>
> >  #include <linux/libfdt.h>
> > @@ -31,540 +29,6 @@
> >  #include <linux/slab.h>
> >  #include <linux/types.h>
> >  
> > -#define PURGATORY_STACK_SIZE	(16 * 1024)
> 
> This is unused AFAICS. We should probably remove it explicitly rather
> than as part of this patch.

I have one patch right now. If wanted i can split up all the changes
suggested during the review into smaller pieces, whatever you prefer.

> Or that.
> 
> > +#include <linux/slab.h>
> > +#include <linux/types.h>
> > +
> > +#define elf_addr_to_cpu	elf64_to_cpu
> 
> Why are we doing that rather than just using elf64_to_cpu directly?
> 
> > +#ifndef Elf_Rel
> > +#define Elf_Rel		Elf64_Rel
> > +#endif /* Elf_Rel */
> 
> And that?

Don't know - ask the PPC people :-)

Regards
Sven

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
