Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B23D6A23
	for <lists+kexec@lfdr.de>; Mon, 14 Oct 2019 21:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzD+H5AZCVoLcWkga6QhjCIXNnYCxsX+9Flj1bRpW6g=; b=KrD337mUHEU94D
	UU3B2ZNooXMY4f0Ak7ejydF6IkW7YU1bni8S0Jn2Umc84eO+wye1hurLIJc0cxWnT8CCTlGqBg5HX
	9BYqjoZj3KaxG918g4cmthhQ0LdEtTlPrZVHJ1sHEjEKyTCfJ0iwE2mBlqbcHNfkmSkr5U4I99jA+
	cIgIA8Ib9e/AxniaYYU9EGkmTWMOgwNrcLuw/+ql5usoHgk1+ui++XnVxT6L7MYEeXjCrA+1k0TB/
	CyCBRwk+D5rgifmCr0lp9TtUmqTKqR0iyNV9fSVrLdzhnDHmim0NBO4LJcsWFTnFIPMS32vJGDXA4
	IYy4b90CtNbYSG3JyBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK63B-00065R-RT; Mon, 14 Oct 2019 19:30:37 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK62m-0004V1-Kn
 for kexec@lists.infradead.org; Mon, 14 Oct 2019 19:30:18 +0000
Received: by mail-ed1-x542.google.com with SMTP id r9so15786972edl.10
 for <kexec@lists.infradead.org>; Mon, 14 Oct 2019 12:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kIlGWH7wshAdmQPQnvh6IPOGbDUQee/fBcMupsDy2Yg=;
 b=V5mdnIjnioWkVjrobG6tmEwjoXrFCBzemiMo18PIPiiNQFechVzXynv20H09Z+wndl
 OMqX6Yvcbob/cCOW/HG7f+QsYKt1sMYEfs2EFuygO5szJ1B3msXMCHsy/JdKCHLvtdDG
 yFYg55ufHy0FmyPgxHM2IyS7eIYsDknKnfTvLW9jQ9xkR2+IurjnFSi+osyTiNd7iBK/
 T/IS0M0tgeJpEOPuyaLXLT4tCCOb21zqZxeF5WUng4uAud/yRJr3y0xK3U15B+AH6Qhg
 gmgiPhyccTZth7D5jiiRTsjpxts8hf36+Fy3OW7clcAbGbSEJVHIJfIzSZEKBs2+cK5d
 HpsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kIlGWH7wshAdmQPQnvh6IPOGbDUQee/fBcMupsDy2Yg=;
 b=BS78u52t1JZYtk2Bp1uKP8UzQqDWobVzW7Mlfcym1ggzCNlwGI3mjWows6gbsg9RSI
 fXl4uBmaJrsgV9rU1kIjEylz64t7XQPjg1Y/w+kX7gbNzs1o6Y5o4pQoc4bn5Y+GDc7P
 DCHICGXAym8aeWa5ijYBUGsHP+Fi2YBRa1pOF8JQ0hJhB4hxy9OYhr2DgxU1Qhex9RfE
 MdCxyVdbq+Q3jVSA2fA0CvQfHsF65REVCapjE+pWVCQ5TRlcTYBj+vWXiE/u2xsxOZtT
 W9dSn9tY2bM+aAMD3eaqlzv9lZ2e5jQDWdhHfT5S/9ukWECHatRmThxACtAC4UBIemuG
 CWUA==
X-Gm-Message-State: APjAAAUst2NaxPJOUZDQA8PVNTW1eaay3FTJSrMKlb5F1H9RVJHqBsAQ
 3aZAiC33BxoNop0JaWW5IpBGYc+CBzrpyicjSyZ0lQ==
X-Google-Smtp-Source: APXvYqz3tIhyaGsZu4/lfjFbR9DxFhIt0sseQX6CsiNmmunhKYf+FnIGntsN+/O5mKhxIu232qNcvhzgmMK19NiaHWU=
X-Received: by 2002:a17:906:2cca:: with SMTP id
 r10mr30792016ejr.108.1571081409709; 
 Mon, 14 Oct 2019 12:30:09 -0700 (PDT)
MIME-Version: 1.0
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-15-pasha.tatashin@soleen.com>
 <f1c50a5f-103e-e6d7-e93d-e873a169833e@arm.com>
In-Reply-To: <f1c50a5f-103e-e6d7-e93d-e873a169833e@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 14 Oct 2019 15:29:58 -0400
Message-ID: <CA+CK2bBU3ZkTRP8VuS7zwKLPBa+4nSdirq_ss7_aODoLe2iucA@mail.gmail.com>
Subject: Re: [PATCH v6 14/17] arm64: kexec: move relocation function setup and
 clean up
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_123013_111670_38837980 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> > In addition, do some cleanup: add infor about reloction function to
>
> infor ? reloction?

Typo. I have fixed commit log. It meant to be "info about
arm64_relocate_new_kernel function"

>
>
> > kexec_image_info(), and remove extra messages from machine_kexec().
>
>
> > Make dtb_mem, always available, if CONFIG_KEXEC_FILE is not configured
> > dtb_mem is set to zero anyway.
>
> This is unrelated cleanup, please do it as an earlier patch to make it clearer what you
> are changing here.
Ok.

>
> (I'm not convinced you need to cache va<->pa)
>
>
> > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > index 12a561a54128..d15ca1ca1e83 100644
> > --- a/arch/arm64/include/asm/kexec.h
> > +++ b/arch/arm64/include/asm/kexec.h
> > @@ -90,14 +90,15 @@ static inline void crash_prepare_suspend(void) {}
> >  static inline void crash_post_resume(void) {}
> >  #endif
> >
> > -#ifdef CONFIG_KEXEC_FILE
> >  #define ARCH_HAS_KIMAGE_ARCH
> >
> >  struct kimage_arch {
> >       void *dtb;
> >       unsigned long dtb_mem;
>
> > +     unsigned long kern_reloc;
>
> This is cache-ing the physical address of an all-architectures value from struct kimage,
> in the arch specific part of struct kiamge. Why?
> (You must have the struct kimage on hand to access this thing at all!)

Because, currently only one physical page is used in order to do reboot:
control_code_page; this is where arm64_relocate_new_kernel is copied.
So, PA of control_code_page is used as a handler. But with MMU enabled
kexec reboot, a number of pages are allocated for reboot purposes,
they contain page table, arm64_relocate_new_kernel, and el2 vector
table. This is why we need handlers. control_code_page is simply one
of the pages that can contains any of the kexec reboot specific data.

> If its supposed to be a physical address, please use phys_addr_t.

Done that, also changed dtb_mem to phys_addr_t.

>
> >  };
>
>
> > diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> > index 0df8493624e0..9b41da50e6f7 100644
> > --- a/arch/arm64/kernel/machine_kexec.c
> > +++ b/arch/arm64/kernel/machine_kexec.c
> > @@ -42,6 +42,7 @@ static void _kexec_image_info(const char *func, int line,
> >       pr_debug("    start:       %lx\n", kimage->start);
> >       pr_debug("    head:        %lx\n", kimage->head);
> >       pr_debug("    nr_segments: %lu\n", kimage->nr_segments);
> > +     pr_debug("    kern_reloc: %pa\n", &kimage->arch.kern_reloc);
> >
> >       for (i = 0; i < kimage->nr_segments; i++) {
> >               pr_debug("      segment[%lu]: %016lx - %016lx, 0x%lx bytes, %lu pages\n",
> > @@ -58,6 +59,19 @@ void machine_kexec_cleanup(struct kimage *kimage)
> >       /* Empty routine needed to avoid build errors. */
> >  }
> >
> > +int machine_kexec_post_load(struct kimage *kimage)
> > +{
> > +     unsigned long kern_reloc;
> > +
> > +     kern_reloc = page_to_phys(kimage->control_code_page);
>
> kern_reloc should be phys_addr_t.

Ok

>
>
> > +     memcpy(__va(kern_reloc), arm64_relocate_new_kernel,
> > +            arm64_relocate_new_kernel_size);
> > +     kimage->arch.kern_reloc = kern_reloc;
>
>
> Please move the cache maintenance in here too. This will save us doing it late during
> kdump. This will also group the mmu-on changes together.

OK, but I think we should do it in a separate patch. I assume you mean
this code to be moved to load time:

177         /* Flush the reboot_code_buffer in preparation for its execution. */
178         __flush_dcache_area(reboot_code_buffer,
arm64_relocate_new_kernel_size);
179
180         /*
181          * Although we've killed off the secondary CPUs, we don't update
182          * the online mask if we're handling a crash kernel and consequently
183          * need to avoid flush_icache_range(), which will attempt to IPI
184          * the offline CPUs. Therefore, we must use the __* variant here.
185          */
186         __flush_icache_range((uintptr_t)reboot_code_buffer,
187                              arm64_relocate_new_kernel_size);

Is it safe to do? We do not know what CPU is going to be executing
kexec reboot for us at the load time.

Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
