Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E625DFE6
	for <lists+kexec@lfdr.de>; Wed,  3 Jul 2019 10:34:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXRg9FMJOuSxhJ/3NaKDaEfTFwGNgkUsoxe/i5JobAM=; b=kZhMn/D2T/3mTW
	319B0ugUNEAY3XJaQ3SFLNWp0GLiym+4UgwiNKykcsWUwiFImwaNJWQ7v1v0shsKKAbl7O//cXBt+
	yJI4yWNkBTzku3DOiI6JKBWPZQDdljW41npbRl7N4Fv67vkv1b2kCU1mmtHIwxdnS0QVhmfcFv7em
	p4hYOv+sYP8rgj1VYHuGQ+ZagHHAMyTdGO9KVO1ZSiQvwBx7QQX7CAzpxXhWhEix5c2wDFMZZ8RW/
	PBa/fOZAruq9IYhPa1qeBLXRSGEmrB34t/w92JOnCzsSQaGMsNqA94KA+j/4c0PknGvuGp+/WyWvq
	LA0gJNZdOaSapo+9PObQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaiz-0003Qq-Ct; Wed, 03 Jul 2019 08:34:45 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaiv-0003Pp-9X
 for kexec@lists.infradead.org; Wed, 03 Jul 2019 08:34:42 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 601DC3092652;
 Wed,  3 Jul 2019 08:34:40 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-115.pek2.redhat.com
 [10.72.12.115])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0B7C017D2F;
 Wed,  3 Jul 2019 08:34:37 +0000 (UTC)
Date: Wed, 3 Jul 2019 16:34:34 +0800
From: Dave Young <dyoung@redhat.com>
To: Simon Horman <horms@verge.net.au>
Subject: Re: [PATCH kexec-tools] x86: re-order includes to avoid duplicate
 struct e820entry
Message-ID: <20190703083434.GA7897@localhost.localdomain>
References: <20190703080432.28806-1-horms@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703080432.28806-1-horms@verge.net.au>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 03 Jul 2019 08:34:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_013441_374720_285A19DE 
X-CRM114-Status: GOOD (  22.71  )
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
Cc: kexec@lists.infradead.org, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>, Lianbo Jiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 07/03/19 at 10:04am, Simon Horman wrote:
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

Not sure if those get rsdp code can go to x86-linux-setup.c then no need
the including.

Let's see if Kairui has some thoughts.

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
