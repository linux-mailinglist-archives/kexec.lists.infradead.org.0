Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4B2ABD29
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 18:00:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zTxwyP4T70+inWM+u29g1dEJ4Dp3VER1Oc8ipFlUZY=; b=cWQyIR3+fxAaCC
	DBghwiVTaYNfA3xL9Yy2EiM55MJqEr1CdUZPqaX3IBUoyzyx8uKNPg602HpqPZq7wfy4xJxWCHDh1
	RY9wyoMc5plAHrAVh3WWc+NBrWLq6yEdJPQnyRt/UB6acbtTQs7HMIfXtvWwWRBS38f4XhLHmn31k
	0WFX1XJp9GvYt7P2tdy3If02mWT4iqw6sFQX+DGLBgsNiDk62hg2m5QpNrlxp+IRLnvNHEdZdgF4Q
	XzHo0wDKUi2tgUlHjGh68q0hMxPQWqh/KrcKDFDedPakJ0XOtM8oSO5VmGXZ/olMyJOsIQz7d0YrU
	MhdPbBwJGIfDza1rMfmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Gf5-0006TY-7x; Fri, 06 Sep 2019 16:00:35 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Gf1-0006SS-KL
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 16:00:33 +0000
Received: by mail-ed1-x544.google.com with SMTP id v38so6746640edm.7
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 09:00:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QiD1TwL/Id//xaqpbzs1lfvzt5WvDuUNyjDuGVpOVM8=;
 b=DrtnmIYB0GfZaFo92tmzBcMPxFlqSxYyiLcJ2k29wb15hQ6tGomjNtco6mkGB1/KM2
 x/qlHJWajTbuieX2M+cfvfX55UTgvqs1Uqqdh/zAUvCkhd3+Fcz1NJg3UBYg5aeOo9Tm
 vVJfvpmco/i+W9Z/4qD1zlzKasNjrKFO5/Ho1uvF8kOY5UK6dhzqHE4cS7+V1M0dangv
 rVAfV2UegDXDzUcSB0oZhMswVkxyoHUZWqiANMarBjI4GS1rtAQUam4bqNJQTNMexDIb
 nU3dVhU/T2yurplUf7I30QZKtvs1WwsfVbJb7FR+dt4/8O55yYG2FkuRDk873NvXmwza
 NtuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QiD1TwL/Id//xaqpbzs1lfvzt5WvDuUNyjDuGVpOVM8=;
 b=WIPtPCo6x19YTgv+8yE8idDe1rWjH91tSA/6iJZRDeU1JloFazoQXw14Bq7yk0hf5M
 +v/jxQ/ycSjEOHEzGVpjWDMAqtYIl7LpD23/CceGAYELtJU8zod4uHvFTlGKl98R+ZWO
 HKqNBCuw4b7kzaPher7HoHEM+0XTq/NP2S+h1ZlHA4rNq/MSMTys3j52vO4fCgB9P+aA
 xsEWDYX4mBC0h01RfXo/+qrpc7hIxQaLBtGgdviDgis+EEhdFNY4/XCpSXBBr3j1qzBg
 dIwzO1iyXg6ZPg0+nFcgN2ky48LFz9eJ/RtWkEYJcO5hE/BRYWfCd/168T5mPab6MDNf
 iNvw==
X-Gm-Message-State: APjAAAVqvvgsoDzP2NTw63Y3wa5tz4j46/ZjvnF5W8Wyvs8B5TTvOCgx
 b64ZHoQbElVLKDAKExJafojoht6b9R4Tn6Zg2r6xyw==
X-Google-Smtp-Source: APXvYqy09fzh96BWcQzuCXWwESDoCG5MbuNp+4Sq/95dcElSvTDxaCmjYIch+D1tDPc4Btkhhy46Glw06rUTj79kprY=
X-Received: by 2002:aa7:c40c:: with SMTP id j12mr10481211edq.80.1567785630260; 
 Fri, 06 Sep 2019 09:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-7-pasha.tatashin@soleen.com>
 <bcc3f71f-97d2-dff4-c55a-4798c6e2bede@arm.com>
In-Reply-To: <bcc3f71f-97d2-dff4-c55a-4798c6e2bede@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 12:00:19 -0400
Message-ID: <CA+CK2bCwRm_AQHzrJ8tdjp5k6Yj+32yRsvQsOoy7b44GTdd6wQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/17] arm64, hibernate: add trans_pgd public functions
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_090031_667801_2D559E26 
X-CRM114-Status: GOOD (  20.31  )
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
> > trans_pgd_create_copy() and trans_pgd_map_page() are going to be
> > the basis for public interface of new subsystem that handles page
>
> Please don't call this a subsystem. 'sound' and 'mm' are subsystems, this is just some
> shared code.

Sounds good: just could not find a better term to call trans_pgd_*. I
won't fix log commits.

>
> > tables for cases which are between kernels: kexec, and hibernate.
>
> Even though you've baked the get_safe_page() calls into trans_pgd_map_page()?

It is getting removed later. Just for a cleaner migration to new
place, get_safe_page() is included for now.

>
>
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 750ecc7f2cbe..2e29d620b56c 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -182,39 +182,15 @@ int arch_hibernation_header_restore(void *addr)
>
> > +int trans_pgd_map_page(pgd_t *trans_pgd, void *page,
> > +                    unsigned long dst_addr,
> > +                    pgprot_t pgprot)
>
> If this thing is going to be exposed, its name should reflect that its creating a set of
> page tables, to map a single page.
>
> A function called 'map_page' with this prototype should 'obviously' map @page at @dst_addr
> in @trans_pgd using the provided @pgprot... but it doesn't.

Answered below...

>
> This is what 'create' was doing in the old name, if that wasn't obvious, its because
> naming things is hard!
> | trans_create_single_page_mapping()?
>
> (might be too verbose)
>
> I think this bites you in patch 8, where you 'generalise' this.

The new naming makes more sense to me. The old code had function named:

create_safe_exec_page()

It was doing four things: 1. creating the actual page via provided
allocator, 2. copying content from the provided page to new page, 3
creating a new page table. 4 mapping it to a new page table at
specified destination address

After, I generalize this the function the prototype looks like this:

int trans_pgd_map_page(struct trans_pgd_info *info, pgd_t *trans_pgd,
                                         void *page, unsigned long
dst_addr, pgprot_t pgprot)

The function only does the "4" from the old code: map the specified
page at dst_addr. The trans_pgd is already created. Of course, and
mapping function will have to allocate missing tables in the page
tables when necessary.

> > +     return 0;
> > +}
> > +
> > +/*
> > + * Copies length bytes, starting at src_start into an new page,
> > + * perform cache maintentance, then maps it at the specified address low
>
> Could you fix the spelling of maintenance as git thinks you've moved it?

I will.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
