Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304D0ABEEB
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 19:41:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3bflyW3pbQYd5xU24pSyEW00+UyAsoHuUjNnyPMYxQ=; b=h6I92v8Jz/7Ns8
	RHsNxZzhOMocIsp1FIic5CddTk9DviFxiG+a/dIw3Ckt+4Y3kvlldQXipnKplprfKWMCwQH8gk/BX
	RSJguTkTc0fJHi7eR6NDVCwf2bRrhlcUgxUK3hRD7KPT/1bRXUKM4jttpsG85VwReoHwG9/1E8yKO
	HpR9u+bTzhm7dwPLirIEoAk1ZTRaNjJq5jshNQsqCezOtlvzJRes1t5+BgvpHIPq/geJLVx8c6bOY
	FMrAURoTBYFz1Hq3rwB5UG4vvn7t5Nf5MfdGWYUuzLBf6yo/8xx/u2ImAmorPtDNNCKNlE0vlMQDC
	Xc10uudtBQcxgpcmGb4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6IEq-00005c-Bn; Fri, 06 Sep 2019 17:41:36 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6IEk-0008WP-Dz
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 17:41:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id c19so6968315edy.10
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 10:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VBkiR/7BisGtZVmNVXhHtJrfmofi1qU8Pxcjpjv/ZgU=;
 b=KWbZvsNIkISQq4DJ0Jn0+DC13xFv36DJ+INz1iCwsDURlinnxi/FqltluIcUdyKEH+
 rohLlAAcGa9S/ZYLvc1vTaR6e7aQaHawkNyzLp29w4f6Au1gxqx6ccQi15xWrUysZLko
 l0O4EcJcNb3Zxrza5Xu2Cdd0Q8c1MNJiep4Y23PuKjCm1JHlOUjUXO3rjxiUgpMuxdBZ
 195WYeYAEX+sfEiPtjph8YRPHJ5jQAWbkYH6/UE6sgH5I3Tkdk2sSbsvvqd+Xnpv0uvu
 1ilSBFkcIXgD0EgHuYTfM1YDM5ly+poGMtxFMSDOaOGhgSkdDDpWTmBO4MBPmbtsnmHo
 MKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VBkiR/7BisGtZVmNVXhHtJrfmofi1qU8Pxcjpjv/ZgU=;
 b=EZpAD+XyDpZXV3rN0gZ3kSP1HCOqDtCmhbotN+uhYOe8bBTjnGAVo7IpTiIV6zTkvF
 9yHxmuq0FB5VSlpK1WSHZxbE458lJwMYMMbPto4j8W2GHxhiNySPFSF8C6/SbGcZtHKk
 oCLgFnDJljU79uxG2xBgEFTb7IwYzf9wTfy83UBs3qep+wWIBSfogdmEFPxUbXjuGCyH
 wWSuHMKv4kLu8gnUHjDTbn4foAfhtm7ByzS76Vqw6KZFBs/zHZxUpVLdPJJmABfslZ++
 /ccN1G0p4ugqo6WW5e6MiWFgtymRp6Evt/+ZawoMoXY0B8g/m/YXNXuIwePQTzcZOcwF
 knBQ==
X-Gm-Message-State: APjAAAVqWpYCxT9L0HOet0exGCF4ZVN/+AW04L/r6P0kR3Jv64xEm4ZL
 uQUjFRNzkd/9orSR2LpKEwSGfT+BFsTPRszBBEQeSw==
X-Google-Smtp-Source: APXvYqzdydAQq2XsQ/paSb9m4rgwscf0/CCdiPGGGSWL+1ARUwePukKygj3cKHXfmSeUdjAS/Egx8Zb0S9m9dpj+AVQ=
X-Received: by 2002:aa7:c40c:: with SMTP id j12mr11037477edq.80.1567791688713; 
 Fri, 06 Sep 2019 10:41:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-8-pasha.tatashin@soleen.com>
 <f1db863a-de57-2d1a-6bec-6020b2130964@arm.com>
In-Reply-To: <f1db863a-de57-2d1a-6bec-6020b2130964@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 13:41:17 -0400
Message-ID: <CA+CK2bDTVGm6pNRGQx7eAyEP6m0xr9X1No_=qgUOTDAoL9uigw@mail.gmail.com>
Subject: Re: [PATCH v3 07/17] arm64, hibernate: move page handling function to
 new trans_pgd.c
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_104130_887004_8C87D032 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Sep 6, 2019 at 11:18 AM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 21/08/2019 19:31, Pavel Tatashin wrote:
> > Now, that we abstracted the required functions move them to a new home.
> > Later, we will generalize these function in order to be useful outside
> > of hibernation.
>
> > diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> > new file mode 100644
> > index 000000000000..00b62d8640c2
> > --- /dev/null
> > +++ b/arch/arm64/mm/trans_pgd.c
> > @@ -0,0 +1,211 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +/*
> > + * Copyright (c) 2019, Microsoft Corporation.
> > + * Pavel Tatashin <patatash@linux.microsoft.com>
>
> Hmmm, while line-count isn't a useful metric: this file contains 41% of the code that was
> in hibernate.c, but has stripped the substantial copyright-pedigree that the hibernate
> code had built up over the years.
> (counting lines identified by 'cloc' as code, not comments or blank)
>
> If you are copying or moving a non trivial quantity of code, you need to preserve the
> copyright. Something like 'Derived from the arm64 hibernate support which has:'....

I will do that.  The copyright thing was meant to appear in
"generalization" patch that comes later, where I unified most of the
code to be symmetric.
So, I will add it there, and also do the derived message that you suggested.

>
>
> > + */
> > +
> > +/*
> > + * Transitional tables are used during system transferring from one world to
> > + * another: such as during hibernate restore, and kexec reboots. During these
> > + * phases one cannot rely on page table not being overwritten.
>
> I think you need to mention that hibernate and kexec are rewriting memory, and may
> overwrite the live page tables, therefore ...

Will add, thank you.

Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
