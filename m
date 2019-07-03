Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EFF95DF35
	for <lists+kexec@lfdr.de>; Wed,  3 Jul 2019 10:00:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4f0wsfeCiKysR0AwAlRxbJ6wbQJgCmu5Nu/lSZmSuSw=; b=MTcmRtrJkNNq0O
	WVcrW7d5HCnye6e06FJzNQxQUShWWZyzds6CQVpurV/MeNda0UjYPReR4B27UK4n4t5oDiXFs5xsd
	046mKnYM8U6dlVSSjp318IPFj6xS8ke7OiaDlxULwx0njZaYx0BEyxfaZU5l+cZY86D54Awi+YGdh
	CFdORovViNa9HO2yUkt5U1RPbRckBmCr1Fb1DHWO1RzyGefFSCKvr0UalrKKr2fkZkIVXaQDSNBEh
	WwkQm7OmyairnTR2AcHdrFu/jqk/XeX3bYyYoZg/Eof18tj/FbYbgsxV45rvBQ+No7XmZ8PxHx4ub
	mRwvtBcfr5inmX2/4Yew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaBb-00086v-Ne; Wed, 03 Jul 2019 08:00:15 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaBX-00086J-8C
 for kexec@lists.infradead.org; Wed, 03 Jul 2019 08:00:12 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 7C3E525AEEC;
 Wed,  3 Jul 2019 18:00:09 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 8AAD4940356; Wed,  3 Jul 2019 10:00:07 +0200 (CEST)
Date: Wed, 3 Jul 2019 10:00:07 +0200
From: Simon Horman <horms@verge.net.au>
To: David Woodhouse <dwmw2@infradead.org>
Subject: Re: [PATCH 2/2] x86: Support multiboot2 images
Message-ID: <20190703080007.aygcila3hdvnhjxb@verge.net.au>
References: <1561630363-6342-1-git-send-email-vrd@amazon.de>
 <1561630363-6342-2-git-send-email-vrd@amazon.de>
 <20190702110944.mcugf6krueakfpam@verge.net.au>
 <a8142dc999983b6fcd8c21314a1c082216226c92.camel@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8142dc999983b6fcd8c21314a1c082216226c92.camel@infradead.org>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_010011_445817_4FAB40F7 
X-CRM114-Status: GOOD (  21.80  )
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
Cc: Varad Gautam <vrd@amazon.de>, Amit Shah <aams@amazon.de>,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 02:29:56PM +0100, David Woodhouse wrote:
> On Tue, 2019-07-02 at 13:09 +0200, Simon Horman wrote:
> > > diff --git a/include/x86/multiboot2.h b/include/x86/multiboot2.h
> > > new file mode 100644
> > > index 0000000..5693923
> > > --- /dev/null
> > > +++ b/include/x86/multiboot2.h
> > > @@ -0,0 +1,416 @@
> > > +/*  multiboot2.h - Multiboot 2 header file.  */
> > > +/*  Copyright (C) 1999,2003,2007,2008,2009,2010  Free Software Foundation, Inc.
> > > + *
> > > + *  Permission is hereby granted, free of charge, to any person obtaining a copy
> > > + *  of this software and associated documentation files (the "Software"), to
> > > + *  deal in the Software without restriction, including without limitation the
> > > + *  rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
> > > + *  sell copies of the Software, and to permit persons to whom the Software is
> > > + *  furnished to do so, subject to the following conditions:
> > > + *
> > > + *  The above copyright notice and this permission notice shall be included in
> > > + *  all copies or substantial portions of the Software.
> > > + *
> > > + *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> > > + *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> > > + *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL ANY
> > > + *  DEVELOPER OR DISTRIBUTOR BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
> > > + *  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR
> > > + *  IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
> > > + */
> > 
> > As per my comment on your previous posting of this patch:
> > 
> > multiboot2.h does not appear to be licenced as GPLv2.
> > This seems incompatible with inclusion in kexec-tools.
> > Can we discuss this?
> 
> Er... why do you say that isn't GPL-compatible? It's just a standard
> MIT licence, isn't it?

Thanks David,

this is kind of what I meant by discuss.

Taking a look over the FSF site this morning I agree that:
a) this is the MIT license; and
b) it is compatible with GPLv2

With that in mind I have no objections to this series and
have applied it for inclusion in kexec v2.0.20.



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
