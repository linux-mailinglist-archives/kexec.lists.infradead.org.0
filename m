Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC7A5902D
	for <lists+kexec@lfdr.de>; Fri, 28 Jun 2019 04:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enJNfK1MhF8ob9K0vMvz2Y9mYx2ssuOBrarMBLKSSws=; b=UasVvbWLJkhhX9
	ECQJhqFV+k2hV3Uve6PKDFgiMYfpWXX0jYFPEprWOyXA2LO7/ybOnnZcR7dbfxbZmhdZIkb+IETlH
	oHGjIbHW0i91m+n+fdNoXICRWSA4KsdHDPm7YWMWxR/ekp5qCTOMjFK0cR7k5kWyXKt+p7uCdbulg
	oNpg+zQiUHsA2Ax4lCR+jovx++vCxJaA6SMkLIT0NyNmJNYRIsVAw2CSCNGEvE/VjTnPy8Z71Mkgk
	qzX3z5yzqu7oG3lVpW9BfXj0yWgXvKLnjhaC1WGxETb6znNpQf0+WxqIPBGKrC7JiBI0RCTBeSK4K
	LoqtNaO9AZzkLQNfmB+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggFS-0008AO-Lt; Fri, 28 Jun 2019 02:04:22 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggFN-00089k-Dx
 for kexec@lists.infradead.org; Fri, 28 Jun 2019 02:04:19 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45Zg703sPhz9s3Z;
 Fri, 28 Jun 2019 12:04:11 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
Subject: Re: [PATCH RFC] generic ELF support for kexec
In-Reply-To: <20190625185433.GA10934@t470p.stackframe.org>
References: <20190625185433.GA10934@t470p.stackframe.org>
Date: Fri, 28 Jun 2019 12:04:11 +1000
Message-ID: <87o92isbxg.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_190417_832403_B7B16FDC 
X-CRM114-Status: GOOD (  26.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, deller@gmx.de, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Sven,

Sven Schnelle <svens@stackframe.org> writes:
> Hi List,
>
> i recently started working on kexec for PA-RISC. While doing so, i figured
> that powerpc already has support for reading ELF images inside of the Kernel.
> My first attempt was to steal the source code and modify it for PA-RISC, but
> it turned out that i didn't had to change much. Only ARM specific stuff like
> fdt blob fetching had to be removed.
>
> So instead of duplicating the code, i thought about moving the ELF stuff to
> the core kexec code, and exposing several function to use that code from the
> arch specific code.
>
> I'm attaching the patch to this Mail. What do you think about that change?
> s390 also uses ELF files, and (maybe?) could also switch to this implementation.
> But i don't know anything about S/390 and don't have one in my basement. So
> i'll leave s390 to the IBM folks.

It looks mostly OK, a few comments below.

> I haven't really tested PowerPC yet. Can anyone give me a helping hand what
> would be a good target to test this code in QEMU? Or even better, test this
> code on real Hardware?

There's some info on using qemu here:
  https://github.com/linuxppc/wiki/wiki/Booting-with-Qemu

But I'm not sure where you get a version of kexec that uses kexec_file().

We can probably work out those details though.

> If that change is acceptable i would finish the patch and submit it. I think
> best would be to push this change through Helge's parisc tree, so we don't
> have any dependencies to sort out.

That will work for you but could cause us problems if we have any
changes that touch that code.

It's easy enough to create a topic branch with just that patch that both
of us merge.


> diff --git a/arch/Kconfig b/arch/Kconfig
> index c47b328eada0..de7520100136 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -18,6 +18,9 @@ config KEXEC_CORE
>  	select CRASH_CORE
>  	bool
>  
> +config KEXEC_FILE_ELF
> +	bool

We could probably just call it KEXEC_ELF I think? The functions are
called that after all.

> diff --git a/arch/powerpc/kernel/kexec_elf_64.c b/arch/powerpc/kernel/kexec_elf_64.c
> index ba4f18a43ee8..0059e36913e9 100644
> --- a/arch/powerpc/kernel/kexec_elf_64.c
> +++ b/arch/powerpc/kernel/kexec_elf_64.c
> @@ -21,8 +21,6 @@
>   * GNU General Public License for more details.
>   */
>  
> -#define pr_fmt(fmt)	"kexec_elf: " fmt
> -

Please don't remove that, there are still some prints left in this file
that use it.

>  #include <linux/elf.h>
>  #include <linux/kexec.h>
>  #include <linux/libfdt.h>
> @@ -31,540 +29,6 @@
>  #include <linux/slab.h>
>  #include <linux/types.h>
>  
> -#define PURGATORY_STACK_SIZE	(16 * 1024)

This is unused AFAICS. We should probably remove it explicitly rather
than as part of this patch.

> diff --git a/kernel/kexec_file_elf.c b/kernel/kexec_file_elf.c
> new file mode 100644
> index 000000000000..bb966c93492c
> --- /dev/null
> +++ b/kernel/kexec_file_elf.c
> @@ -0,0 +1,574 @@
> +/*
> + * Load ELF vmlinux file for the kexec_file_load syscall.
> + *
> + * Copyright (C) 2004  Adam Litke (agl@us.ibm.com)
> + * Copyright (C) 2004  IBM Corp.
> + * Copyright (C) 2005  R Sharada (sharada@in.ibm.com)
> + * Copyright (C) 2006  Mohan Kumar M (mohan@in.ibm.com)
> + * Copyright (C) 2016  IBM Corporation
> + *
> + * Based on kexec-tools' kexec-elf-exec.c and kexec-elf-ppc64.c.
> + * Heavily modified for the kernel by
> + * Thiago Jung Bauermann <bauerman@linux.vnet.ibm.com>.
> + *
> + * This program is free software; you can redistribute it and/or modify
> + * it under the terms of the GNU General Public License as published by
> + * the Free Software Foundation (version 2 of the License).
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.

You shouldn't be adding new license text. Instead remove those two
paragraphs and use a SPDX tag.

If you look at the file in master it already has the tag.

> +
> +#define pr_fmt(fmt)	"kexec_elf: " fmt
> +
> +#include <linux/elf.h>
> +#include <linux/kexec.h>
> +#include <linux/libfdt.h>

You don't need that do you?

> +#include <linux/module.h>
> +#include <linux/of_fdt.h>

Or that.

> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#define elf_addr_to_cpu	elf64_to_cpu

Why are we doing that rather than just using elf64_to_cpu directly?

> +#ifndef Elf_Rel
> +#define Elf_Rel		Elf64_Rel
> +#endif /* Elf_Rel */

And that?



cheers

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
