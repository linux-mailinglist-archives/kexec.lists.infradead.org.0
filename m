Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FE964364
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 10:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/jlM6sndjFX6B3kUeoKIQPym6uYlSBakq4v5QRnLjU=; b=Al2z5Mih/8907m
	OYJYEWDhLVk3gMbpZhiPYMNH04Q2UwCbm8niypWSqV97eiE2XK5GUBnI8pZ0AphNoRnf9gxyvKXGX
	qPzvb9Ax4anm/cMY9ere64gmczuZ2jrr1sGlXx7rAgUtm31fMYEqZUBU97Rbt5KD87UUTeKNl9uHT
	fSdbXBeLf4kT/i+eP1J+Y7tLwUapv0bwAWonaPh8OnJlPqGGgPdXYUGRoi40OM05hPqBdJCvMtLLQ
	mXh+KStFphziYJT3+fACw5miRA2Fn0poC1UrB3mQfIbyJ1C6MWY8q0z0JjgGQ1sbg9EqhvvGyo0dN
	PHmWkLqwYt4UW5cJYCTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl7gr-0003Zy-8w; Wed, 10 Jul 2019 08:11:01 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hl7gm-0003Zc-Ij
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 08:10:57 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id AA51F25B7D5;
 Wed, 10 Jul 2019 18:10:55 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A8726940361; Wed, 10 Jul 2019 10:10:53 +0200 (CEST)
Date: Wed, 10 Jul 2019 10:10:53 +0200
From: Simon Horman <horms@verge.net.au>
To: kexec@lists.infradead.org
Subject: Re: [PATCH kexec-tools] x86: re-order includes to avoid duplicate
 struct e820entry
Message-ID: <20190710081053.qtiqskblmxcpkr6e@verge.net.au>
References: <20190703080432.28806-1-horms@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703080432.28806-1-horms@verge.net.au>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_011056_764696_B67D1D47 
X-CRM114-Status: GOOD (  18.44  )
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
Cc: Dave Young <dyoung@redhat.com>, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, Lianbo Jiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jul 03, 2019 at 10:04:32AM +0200, Simon Horman wrote:
> xenctrl.h defines struct e820entry as:
> 
> 	if defined(__i386__) || defined(__x86_64__)
> 	...
> 	#define E820_RAM	1
> 	...
> 	struct e820entry {
> 		uint64_t addr;
> 		uint64_t size;
> 		uint32_t type;
> 	} __attribute__((packed));
> 	...
> 	#endif
> 
>  $ dpkg-query -S /usr/include/xenctrl.h
>  libxen-dev:amd64: /usr/include/xenctrl.h
>  $  dpkg-query -W libxen-dev:amd64
>  libxen-dev:amd64	4.8.5+shim4.10.2+xsa282-1+deb9u11
> 
> ./include/x86/x86-linux.h defines struct e820entry as:
> 
> 	#ifndef E820_RAM
> 	struct e820entry {
> 		uint64_t addr;  /* start of memory segment */
> 		uint64_t size;  /* size of memory segment */
> 		uint32_t type;  /* type of memory segment */
> 		#define E820_RAM    1
> 		...
> 	} __attribute__((packed));
> 	#endif
> 
> Since cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
> ./kexec/arch/i386/kexec-x86-common.c includes
> 
> 	+#include "x86-linux-setup.h"
> 	 #include "../../kexec-xen.h"
> 
> When xenctrl.h is present the above results in:
> 
>  $ gcc
>  ...
>  In file included from kexec/arch/i386/../../kexec-xen.h:5:0,
>                   from kexec/arch/i386/kexec-x86-common.c:43:
>  /usr/include/xenctrl.h:1271:8: error: redefinition of 'struct e820entry'
>   struct e820entry {
>          ^~~~~~~~~
> 
>  In file included from kexec/arch/i386/x86-linux-setup.h:3:0,
>                   from kexec/arch/i386/kexec-x86-common.c:42:
>  ./include/x86/x86-linux.h:16:8: note: originally defined here
>   struct e820entry {
>          ^~~~~~~~~
>  ...
>  $ gcc --version | head -1
>  gcc (Debian 6.3.0-18+deb9u1) 6.3.0 20170516
> 
> To militate this this problem re-order the includes so that
> x86-linux.h is included after xenctrl.h and thus
> struct e820entry will only be defined once due to it
> being devined conditionally in x86-linux.h.
> 
> In practice the definitions are the same so it should
> not matter which is chosen.
> 
> It also seems rather unpleasent to me to need to play
> with include ordering. Perhaps a better solution in the longer
> term would be to rename the local definition of struct e820entry.
> 
> Fixes: cedeee0a3007 ("x86: Introduce helpers for getting RSDP address")
> Signed-off-by: Simon Horman <horms@verge.net.au>

I have applied this change.

> ---
>  kexec/arch/i386/kexec-x86-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
> index 5c55ec8a2cd3..61ea19380ab2 100644
> --- a/kexec/arch/i386/kexec-x86-common.c
> +++ b/kexec/arch/i386/kexec-x86-common.c
> @@ -38,9 +38,9 @@
>  #include "../../kexec-syscall.h"
>  #include "../../firmware_memmap.h"
>  #include "../../crashdump.h"
> +#include "../../kexec-xen.h"
>  #include "kexec-x86.h"
>  #include "x86-linux-setup.h"
> -#include "../../kexec-xen.h"
>  
>  /* Used below but not present in (older?) xenctrl.h */
>  #ifndef E820_PMEM
> -- 
> 2.11.0
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
