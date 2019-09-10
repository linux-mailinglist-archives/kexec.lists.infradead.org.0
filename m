Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DC3AE6B4
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 11:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0kwxUOa60lyJk/gFkpckPMsoUgmkm7qEXut0ZLKiZzg=; b=KEIKfUjP5KnjBT
	oLn+KJqY6Kz/AXWqAR0iM+4/SyPJyLS6rX7soC4ENEQD3W7f8+0H+RvlHsthMK7LuYAvuyv1qnM2E
	Dzw4EpuXmNRQiK7L6B2AkHIFHQ8CoQJoOE6vXRa65Eqv62jiJ1mBbNdr8+E1J33rMbm7FIMRIiNJd
	rmZJl7TLSVBIYBlavA72yvMpcc1TW4mzIKWFBJRxsfmnJ0tFWA0wm0zpFQ4zisSTNxCu7IsdzK483
	GqfkXOOJg0VOFlgGzqa0KST01ZjVNvl/WTbgZJSHkslKv2NBb5TWVjzyLcBGBnmCh6ILnH/cXqbsr
	QbjluqASmJ1W5aiWhO6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cKa-00025z-1o; Tue, 10 Sep 2019 09:21:00 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cKW-000259-HT
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 09:20:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id i8so16316536edn.13
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 02:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fVGVsESSvCGQOFNvs9wLVPNtEbA+xNhK0Vsp0KuYL0U=;
 b=l1enudLKhX+NelYlOqQKvgNY5xLG29otQPhknZNcMkv0NM6LGktXu52o7Rq9oXni7U
 rT6qa9jJFvVV7DGrQcvT7TkQVr7YPjzLLN2yyQhzqc/3CKUefFYh0Wj1fNGmGs1LrBaU
 +Rt/P8fFgugTd0kFHr2Ss0tY7TIbjyM5B9kitn9D5U0zYDDTKHkZiimf0vIykHPbq2fZ
 mZWj8mIoPkIvn0hdw5gdaffVtvbc7DNotaOw6ScSEUxSsXK+bbSJXldYd/iSPSahFARY
 wygqctO/41VVuzlrbXrPVfgvn1BZBO8SRggWpYtz77R2bRkNGZ3TfXnz9srnNazLkorr
 QBDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fVGVsESSvCGQOFNvs9wLVPNtEbA+xNhK0Vsp0KuYL0U=;
 b=DyznaTup2McbQ4Vzpms9CEhp86FfJHCgf0AEEm09IdP+q1NEe4euujoyfjTM7VKEpR
 zED9NGIzyUGlO/eeV47WcjEMk8aGTx+y9WgHuWdtqVY2PChrfNxRXnaKa0OBjIZP69oX
 UmwIc8evsT54rXpcY3zWkr9vVOzpnImZ2vlicZzcP7LYPYaQmJSJFOyNkrRN00Kdoa6M
 /PJgE+X6YQmNyur5ndSHZgFzNE36i91AI/0PmDCuOb/ZGH1AUc++xC2cB5U2fKQFuk5p
 wuwFZ23CmipeL7mvJp4kU591n9E6jdALqRLh/+dZf30VSN+AdSMh5SgjgYcBeob/y2bt
 BLcg==
X-Gm-Message-State: APjAAAUCMGa8XxEVHNVfn43Fgmch3Y8cIU5XoqBykPHY8fWeg2GHtYAI
 qd4joGQM3HNXH5PHAhmv+LcJJXvhQlUHRp9XqK87gw==
X-Google-Smtp-Source: APXvYqxafwr9K7U55nRLBrBFKjJwhzRPMsyqMlNm7SM6xGY0Iw+4afMLkFcRjz7kyMGTKRb774E7d1RrUT7vfuc/ufA=
X-Received: by 2002:aa7:dd17:: with SMTP id i23mr28832869edv.124.1568107254841; 
 Tue, 10 Sep 2019 02:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
 <20190909181221.309510-11-pasha.tatashin@soleen.com>
 <60975350-87f8-56b3-437d-d9ee26ac3bd3@suse.com>
In-Reply-To: <60975350-87f8-56b3-437d-d9ee26ac3bd3@suse.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 10 Sep 2019 10:20:43 +0100
Message-ID: <CA+CK2bBK40T_DEhNvz8nQaKSsanxXpGYhBm05N_NmZtq+JDVTg@mail.gmail.com>
Subject: Re: [PATCH v4 10/17] arm64: trans_pgd: make trans_pgd_map_page generic
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_022056_585103_95DE4374 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> > +/*
> > + * Add map entry to trans_pgd for a base-size page at PTE level.
> > + * page:     page to be mapped.
> > + * dst_addr: new VA address for the pages
> > + * pgprot:   protection for the page.
>
> For consistency please describe all function parameters. From my experience
> function parameter description is normally done in the C-file that implements
> the logic. Don't ask me why.

Ok, I move the comment, and will describe every parameter. Thank you.

>
> > + */
> > +int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
> > +                    void *page, unsigned long dst_addr, pgprot_t pgprot);
> >
> >  #endif /* _ASM_TRANS_TABLE_H */
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 94ede33bd777..9b75b680ab70 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -179,6 +179,12 @@ int arch_hibernation_header_restore(void *addr)
> >  }
> >  EXPORT_SYMBOL(arch_hibernation_header_restore);
> >
> > +static void *
> > +hibernate_page_alloc(void *arg)
>
> AFAICS no new line needed here.

Right, will fix it.

>
> > +{
> > +     return (void *)get_safe_page((gfp_t)(unsigned long)arg);
> > +}
> > +
> >  /*
> >   * Copies length bytes, starting at src_start into an new page,
> >   * perform cache maintenance, then maps it at the specified address low
> > @@ -195,6 +201,10 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >                                unsigned long dst_addr,
> >                                phys_addr_t *phys_dst_addr)
> >  {
> > +     struct trans_pgd_info trans_info = {
> > +             .trans_alloc_page       = hibernate_page_alloc,
> > +             .trans_alloc_arg        = (void *)GFP_ATOMIC,
> > +     };
>
> New line between end of struct and other variables.

Sure.

>
> With these changes:
> Reviewed-by: Matthias Brugger <mbrugger@suse.com>

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
