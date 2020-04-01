Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A21019ABFF
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 14:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrZgYb9ojrrF0IQENSyLb+u+Gf9TM2uBKcg4jvm7ObA=; b=JH4VfYHW9g278g
	2dNYZ/k9fWUF/QzBWSrZl5PX0+knspqvYZ0Yo4g7XGqkA6/sIcOljPx6MVVcfP1eeJBjnUUKWEB10
	4D4y50zBEwGvmgBlOgIe0L70AU4WoWCM3rMiNFEXWu8nzeMKPqBs4KQNpV0MdN3GdPDT6ncx2WlCK
	5bEQg9RdKPcRxrvMr960hpBwcIg/lK10yUlc11c1zk7pG06rG32gRj8CaJzcH8J2l4teLhVrWa3Pi
	Yaao2tJ1LNalzTk30qP1KhODhWhEfGSKsccLNDHQZY3iZ9MLGjS/WeSTBEE+zYN5KffHsGIwb37Tz
	40KYSCLF14Euo+Xjr3ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcp4-0000xe-LQ; Wed, 01 Apr 2020 12:50:22 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJcp1-0000xC-E1
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 12:50:20 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 6859325B779;
 Wed,  1 Apr 2020 23:50:18 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id DD3101B71; Wed,  1 Apr 2020 14:50:15 +0200 (CEST)
Date: Wed, 1 Apr 2020 14:50:15 +0200
From: Simon Horman <horms@verge.net.au>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] kexec-tools: Remove duplicated variable declarations
Message-ID: <20200401125015.GF29376@vergenet.net>
References: <20200129053819.622511-1-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129053819.622511-1-kasong@redhat.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_055019_622482_91CE679D 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jan 29, 2020 at 01:38:19PM +0800, Kairui Song wrote:
> When building kexec-tools for Fedora 32, following error is observed:
> 
> /usr/bin/ld: kexec/arch/x86_64/kexec-bzImage64.o:(.bss+0x0): multiple definition of `bzImage_support_efi_boot';
> kexec/arch/i386/kexec-bzImage.o:(.bss+0x0): first defined here
> 
> /builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm/../../fs2dt.h:33: multiple definition of `my_debug';
> kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/kexec/fs2dt.h:33: first defined here
> 
> /builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm64/kexec-arm64.h:68: multiple definition of `arm64_mem';
> kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/././kexec/arch/arm64/kexec-arm64.h:68: first defined here
> 
> /builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm64/kexec-arm64.h:54: multiple definition of `initrd_size';
> kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/././kexec/arch/arm64/kexec-arm64.h:54: first defined here
> 
> /builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm64/kexec-arm64.h:53: multiple definition of `initrd_base';
> kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/././kexec/arch/arm64/kexec-arm64.h:53: first defined here
> 
> And apparently, these variables are wrongly declared multiple times. So
> remove duplicated declaration.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
