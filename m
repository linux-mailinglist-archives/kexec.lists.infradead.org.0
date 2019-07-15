Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0149568443
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 09:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6QA48ge8IDMzp8C6qcuhR7ZtCnKMF2WUA84lNB7UCc=; b=np1d0zmQdj33Hn
	leFcSZyKcSQj0B9jtE3S072xnBt/7RPPXJ/Axo2bCTlM2ujXqxEKqTRNpXHUt6ngvrRzkJXwOaIWN
	nbdRT0cf0mhVDRaOE9/++pufVA5hYrxBXxXdrR9EySwLIMtuqWHeJgii/G1oYJ5mYXTxDxaZ2HaeV
	+G8N6oLYNZCAfkFHyjF44/DYeAn/YbLI48stDesyUXzOz1EhiBRdb+xP3ABe4khEKwru7qqY2nkCj
	Ax1gIZlc6vCjwZit3EA8BA4FcqmNPJvtyLt8U7hQyE+017KrC2gCst3652vzJHUZ1axws0FiKgl1k
	uDC797ZOrSe/DWArlWZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvLj-0000oe-Fm; Mon, 15 Jul 2019 07:24:39 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvLd-0000nq-CQ
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 07:24:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date;
 bh=rJOzvThKAhSey0b92P8NAZRn4VdLP1TqiehK4IVayo8=; b=YFqEOcGWCAHFtbAJMhFMhm7/8R
 /TmcGqLnhjzHJu82HlfaQVwobhpiYa7LPbqlKebrckdseI5hsGfBU7nWKFzTRfdPTB2OoXffd8jF/
 jKFHPr5yLk6gHXEiZ8+HOOY3slLgXnkTFgUdxk2iF1nCtF9419sD0fqUmJo8kpvBEM4w=;
Received: from frobwit.duncanthrax.net ([89.31.1.178]
 helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hmvLO-000310-Uf; Mon, 15 Jul 2019 09:24:19 +0200
Date: Mon, 15 Jul 2019 09:24:17 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH v3 5/7] kexec_elf: remove elf_addr_to_cpu macro
Message-ID: <20190715072417.GA25659@t470p.stackframe.org>
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-6-svens@stackframe.org>
 <49206784-009c-391b-5f9a-11e9b1de930b@c-s.fr>
 <20190710180518.GA6343@t470p.stackframe.org>
 <871rywhlq4.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rywhlq4.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_002433_725266_BBFE675A 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, kexec@lists.infradead.org,
 deller@gmx.de, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Michael,

On Thu, Jul 11, 2019 at 09:08:51PM +1000, Michael Ellerman wrote:
> Sven Schnelle <svens@stackframe.org> writes:
> > On Wed, Jul 10, 2019 at 05:09:29PM +0200, Christophe Leroy wrote:
> >> Le 10/07/2019 =E0 16:29, Sven Schnelle a =E9crit=A0:
> >> > It had only one definition, so just use the function directly.
> >> =

> >> It had only one definition because it was for ppc64 only.
> >> But as far as I understand (at least from the name of the new file), y=
ou
> >> want it to be generic, don't you ? Therefore I get on 32 bits it would=
 be
> >> elf32_to_cpu().
> >
> > That brings up the question whether we need those endianess conversions=
. I would
> > assume that the ELF file has always the same endianess as the running k=
ernel. So
> > i think we could just drop them. What do you think?
> =

> We should be able to kexec from big to little endian or vice versa, so
> they are necessary.

I'll update the patch to check for a needed 32/64 bit conversion during run=
time,
so we can also kexec from 32 to 64 bit kernels and vice versa. Don't know
whether that's possible on powerpc, but at least on parisc it is.

Regards
Sven

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
