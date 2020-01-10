Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE1E13732E
	for <lists+kexec@lfdr.de>; Fri, 10 Jan 2020 17:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZNG0/+YnKMkiDLlIwEC4wXrR5kQldpDOmuLSstDy9Y=; b=BhUCmFT9P/DLZg
	L4jZm1xOd2NReCvNUmTn3kOBYF4Kc5qB9t7AXOxo/3onenyf9oQZmk9aTQy1ssX/+V/dJJjBWWqnd
	7Ofx2Eh+6N1JCKiO1vNXYqgt4Fzpuz+CiXQ500haMtPNEi9znX7CUURGA/D4C0my09bCX8XWfD21Q
	ayrcBwRJBTagYcF2mLUyaCZPDou90/8upeFQk3P2S+KMboiiVkSh918t/KNP6KKXV2NHD6wZ13z7j
	JFqJbp/5isMopPqiRX06nftOJeKqgI47dTjgEkj27ioDVVczzr6xTUZ602lWsbxD5eJCztbBMM5ME
	GERxbvY9Lr3A54AVA4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipx3f-0000rH-VV; Fri, 10 Jan 2020 16:22:47 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipx0T-0005GA-NB
 for kexec@lists.infradead.org; Fri, 10 Jan 2020 16:19:32 +0000
Received: by mail-ed1-x543.google.com with SMTP id i16so2058258edr.5
 for <kexec@lists.infradead.org>; Fri, 10 Jan 2020 08:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dh6us/Go02lHef84JDI3MgwC50UfsnhAdjL91XljPeU=;
 b=Wj9Ula7TMzC62JWXNFEdOeamwpPHP716Mj1o221OqkcCZCuecYxsiEVTW1V9auuAoO
 tLr7WRRGGjVm27eIwxcfIIqWay/7axRIcySUC2se8fNXdy+9qH2nXsubbVdJtt4Y/GtX
 dR91P+hET1gBNJvMMxIlS2z66iwqWzu7wIqHtmBSWENsd63fC1iD/gncylgo4Sff7qNZ
 u31mF/3Lxq9oq+nMmSQ26gzh4SXQHuXa+KZnIprk8RYyekjZlzXFHEUlNWl5qDsNP9Pt
 Ln+LQEFihXYzUGKt6YQq4BALU7uUXrzm841ow+HziKtKil8wsCUc+yp25xjqf1sRXOqi
 Kpcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dh6us/Go02lHef84JDI3MgwC50UfsnhAdjL91XljPeU=;
 b=n12pdgCK2uhD5EC33/K7lsTF6RPfIT8gBOFbypVfScn/NB2eGgMLcWsLSa+CL7OVwq
 4pbvYZE93SSsV5/mBnbwyeBkQ0xg5zPuHypACuWbmNBBzd435nq2u6eIkpE62qn/eZvj
 2wyAAYhEUZN/t0P55L2WGmCuktKAZ1kqS0I5D4Od554EtZrXQscW+46NVfpG7w/lcpRX
 S3mum+1EIQvvJLihVIfWnRkWF/YHxl6biHGke8x3zjLKGe+fZOLocDcQWCBhNUyREYbl
 l17CPjLWFOCL5X0uUbv9CjhLJPhfxPi/+vZ/LazbslIFgQwmRnuPmmtUnpVgEEKyVzOS
 1KoA==
X-Gm-Message-State: APjAAAUo3XtHpJ/lklilNNEOjh89siOe8LXOrW1MINnQlW4q62iofLO4
 8O0SdLk74eUgERdUGC8h3QvBlONbTm4+Kfr+UH09lQ==
X-Google-Smtp-Source: APXvYqzJfshZOAokaxWuwXwiLIbWcBjZg5SzN2kuFXInd6axrGTlsjdF6UVhNJfkj9FvMVF+vmnpssugqmY4nQwGd2w=
X-Received: by 2002:a05:6402:3088:: with SMTP id
 de8mr1668243edb.332.1578673167364; 
 Fri, 10 Jan 2020 08:19:27 -0800 (PST)
MIME-Version: 1.0
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org> <20200109083254.GA7280@willie-the-truck>
 <20200110160549.GA25437@willie-the-truck>
In-Reply-To: <20200110160549.GA25437@willie-the-truck>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 10 Jan 2020 11:19:16 -0500
Message-ID: <CA+CK2bAy-vfoz3kgUjZB74Hrobgu-a8H4pv6RbA_tbq++NWz5g@mail.gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_081930_197410_0C94ED0B 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, robh+dt@kernel.org,
 James Morse <james.morse@arm.com>, frowand.list@gmail.com,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jan 10, 2020 at 11:05 AM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> > On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > > index 12a561a54128..d24b527e8c00 100644
> > > > > --- a/arch/arm64/include/asm/kexec.h
> > > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > > >  struct kimage_arch {
> > > > >         void *dtb;
> > > > >         unsigned long dtb_mem;
> > > > > +       /* Core ELF header buffer */
> > > > > +       void *elf_headers;
> > > > > +       unsigned long elf_headers_mem;
> > > > > +       unsigned long elf_headers_sz;
> > > > >  };
> > > >
> > > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > > resolution? [1]
> > >
> > > I don't know why we need to change a type of dtb_mem,
> > > otherwise it looks good.
> > >
> > > (I also assume that you notice that kimage_arch is of no use for kexec.)
> >
> > Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> > to drop Pavel's patch altogether in light of your changes, we can do that
> > instead.
> >
> > Thoughts?
>
> Well, I've reverted the cleanup patch so please shout if you'd prefer
> something else.

As I understand, the only concern was the type change for dtb_mem.
This was one of the review comments for my patch
https://lore.kernel.org/lkml/20191204155938.2279686-21-pasha.tatashin@soleen.com/

(I believe it was from Marc Zyngier), I add a number of new fields,
and they all should be phys_addr_t, this is why I change dtb_mem to
phys_addr_t to be consistent.

Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
