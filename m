Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A8A4CD83
	for <lists+kexec@lfdr.de>; Thu, 20 Jun 2019 14:16:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mZqY8xFrcnCCfEbuTuJgYkIxSxLSB9uIYEcgu25I3SE=; b=DKhn9F5xhzyZxX
	xwWU5D9iRqo7GyaB777g6imlqdmVGL0gh3z1lMAbgiS1qcPZMCB9N5FPBs3honuxVyl/z9hE4Kh9v
	YFq1Djdno/LWw0W3SZowJ5uEA5rq7lDeVNW7hWhzaZ8os0RKdlIdAv0vBTZZMgl1qe7+zkQwy1r+f
	/Uym8YpsmKRy7F4GDSBwXy81vGxPVNX2aCY/oa66uAi/wj6s4lJfCUmkm0bOwVRnvD1xdzaawVoDh
	rQZQlEL0GXn5x6jbv9gEgQDe33ZDUU6hE+F+D32HoFXUA998D6HfvbyOb+O4btcIqbcJaujoGxxbq
	QEomUHc4FQBn6//hfDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdvzC-0005D1-0W; Thu, 20 Jun 2019 12:16:14 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdvz7-0005Ch-Vv
 for kexec@lists.infradead.org; Thu, 20 Jun 2019 12:16:11 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 485F625AD85;
 Thu, 20 Jun 2019 22:16:07 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 5348294048B; Thu, 20 Jun 2019 14:16:05 +0200 (CEST)
Date: Thu, 20 Jun 2019 14:16:05 +0200
From: Simon Horman <horms@verge.net.au>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v3 0/4] x86: Always try to fill acpi_rsdp_addr in boot
 params
Message-ID: <20190620121605.sir7hwfwfmqdtykn@verge.net.au>
References: <20190524062321.24126-1-kasong@redhat.com>
 <20190531092743.qgwku2ob4trduadr@verge.net.au>
 <CACPcB9dOSwe1s2Z5W3ccwXSR_h_Y33cqnt2d=TPZ4hX+fpqdrA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9dOSwe1s2Z5W3ccwXSR_h_Y33cqnt2d=TPZ4hX+fpqdrA@mail.gmail.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_051610_183118_729FD2DA 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon, Jun 10, 2019 at 04:10:30PM +0800, Kairui Song wrote:
> On Fri, May 31, 2019 at 5:27 PM Simon Horman <horms@verge.net.au> wrote:
> >
> > On Fri, May 24, 2019 at 02:23:17PM +0800, Kairui Song wrote:
> > > This patch sync the behavior of user space kexec and kexec_file_load,
> > > they will both fill the boot_params.acpi_rsdp_addr with a valid RSDP
> > > value, to make sure second kernel can always get the RSDP consistently.
> > >
> > > This will make it effortless to boot newer version of kernel (5.0+)
> > > without specifying acpi_rsdp= cmdline on EFI system even with EFI
> > > service disabled. Should not change any behavior with older kernels.
> > >
> > > Update from V2:
> > >   - Drop unneeded 'packed' attribute for boot parameters structure
> > >   - Don't trust kernel cmdline as a reliable acpi rsdp source
> > >
> > > Update from V1:
> > >   - Split into multiple patches for a cleaner structure, content is not
> > >     changed.
> >
> > Thanks Kairui,
> >
> > applied.
> 
> Hi Simon,
> 
> I still haven't see this series get merged yet in the git repo, any update?

Sorry about that, it should be there now.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
