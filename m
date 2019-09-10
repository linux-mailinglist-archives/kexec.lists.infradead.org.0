Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBDDAE666
	for <lists+kexec@lfdr.de>; Tue, 10 Sep 2019 11:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToV41+hKCz0y/UeTzvEJhOWfRioAycnf/KQ2/T7h6aU=; b=UI1CjRnKKVV4pX
	UdhvtPlH89+EH2EHHe3sF4jCUmQnhZ1OBwyBW5ESf0/Ut6HXt8WOoJTe/6i+WKkX/YjfMtt/aozxK
	SdLiZPfKKaRdfEVsSrmF5T58x1tiIXtD+pkeTjY1MfnGRBXgVuQ0U3UOMi+F0PkQwOGLELRt0CEJw
	InjNHm+kxWpWszRmqYm9n8g5Guhs3oVEdqKPSuO1XHRYNgmZ3kjPGdKH7dqoiPzwBm2WW1ipLxRIk
	r8ZtrKAmqWM3KKOfynFMjCi/KXrLcImQ+KHHjlNHqtvxY3Ocx49tElrUwocY9ibN5WZrxwFemlvQt
	Us/3ISM4yuChK/ZXGFEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7cD9-0006AE-Oj; Tue, 10 Sep 2019 09:13:19 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7cCw-0005yn-OI
 for kexec@lists.infradead.org; Tue, 10 Sep 2019 09:13:08 +0000
Received: by mail-ed1-x541.google.com with SMTP id f19so16292851eds.12
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 02:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jbBZuUfX3eYzsTIc3XZwtrg9Htc+jzFYCQ9N85/KvC8=;
 b=Z5OxgccHbfn9g3PIB8bPABfGmcCaxxb1J7F7+yr0+pGuVMBBQo8ANum7+26tfvS4RC
 G9MhvM4u2bE+JEv+ewuotVeHnoUnEMymJcCm6fbOq3w5MhGsy0hCiKquBnVNH+5tUTJe
 KVSszKycXH/ARdNzK93YM+Nr1islpESB3U2PpA44vFenbEcXrBvdSr1Jl8cKPONV0f7t
 lMNh/HHY7OgbawBfOYH5CmxcbwMInVqOQydF3uyjVPuhXfy8POmejGJXwNpdOnq1ZnwW
 ChZVNZGSzPgQe1quf1GT8CWiuf1xFhGrKS5XKkCrtKg005TW0Ma1UYXs8TgHunhNocL4
 4rYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jbBZuUfX3eYzsTIc3XZwtrg9Htc+jzFYCQ9N85/KvC8=;
 b=iDvQ1zhgREjzbB1KvO0EHWE8h45zKXk/o3R10/pBEeN3aSyA8mLj4KqpSDEwtLUF0q
 E99jEQmV1jU+vcXiAGgxzWgcRixPpMOW8k+GLfQCdY8TRiCLYvD+D5KaOWP3b/S9UoSd
 5Fo+hCHNlDIeavJLD3Unym2oXLxO9bSYrG3hikNfI01qv11ORrgsZgzYW1acv/2uIN9X
 PhQd8MO2JnwaB+1+tphRyUj3YqTCvkDsO0ual/gxAgKtwJ77D8LnnooLUWSRrvY8dlCr
 gPjqBdVLtuUz5HLw3RchTEjQptew28agjXl0F+ZyIYFErQL1UswMRzIUu1iceeRbtRox
 GN6A==
X-Gm-Message-State: APjAAAUetcprR3PTFqW1XBjgzwLBjlOXj5/iuUqYkgI+MYw63oXDVSKY
 lVazOc6sfxOdvRDvSFsy3p3X6K31iRHSdJCJN6iBUQ==
X-Google-Smtp-Source: APXvYqwiy51QDBEUeHPFO4jWirM5BDZX1zPUw+Hne5qlRbnCZgObrJm78xql+txsNxH8uVTBgiORMGERQfs9UNrBN84=
X-Received: by 2002:a17:906:414:: with SMTP id
 d20mr23875393eja.165.1568106785200; 
 Tue, 10 Sep 2019 02:13:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
 <20190909181221.309510-6-pasha.tatashin@soleen.com>
 <9135be3e-cf7e-821d-928d-db98aa3ec9c8@suse.com>
In-Reply-To: <9135be3e-cf7e-821d-928d-db98aa3ec9c8@suse.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 10 Sep 2019 10:12:54 +0100
Message-ID: <CA+CK2bCGgAXDdjDVS1KYj8uYWmeBM6cTJ3Y-DXZ_8+93uCiV7w@mail.gmail.com>
Subject: Re: [PATCH v4 05/17] arm64: hibernate: remove gotos in
 create_safe_exec_page
To: Matthias Brugger <mbrugger@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_021306_829537_BA134D95 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

> On 09/09/2019 20:12, Pavel Tatashin wrote:
> > Usually, gotos are used to handle cleanup after exception, but
> > in case of create_safe_exec_page there are no clean-ups. So,
> > simply return the errors directly.
> >
>
> While at it, how about also cleaning up swsusp_arch_resume() which has the same
> issue.

Thank you for suggestion. I will do cleanups in swsusp_arch_resume() as well.

Pasha

>
> Regards,
> Matthias
>
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > Reviewed-by: James Morse <james.morse@arm.com>
> > ---
> >  arch/arm64/kernel/hibernate.c | 34 +++++++++++-----------------------
> >  1 file changed, 11 insertions(+), 23 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 47a861e0cb0c..7bbeb33c700d 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -198,7 +198,6 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >                                unsigned long dst_addr,
> >                                phys_addr_t *phys_dst_addr)
> >  {
> > -     int rc = 0;
> >       pgd_t *trans_pgd;
> >       pgd_t *pgdp;
> >       pud_t *pudp;
> > @@ -206,47 +205,37 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >       pte_t *ptep;
> >       unsigned long dst = get_safe_page(GFP_ATOMIC);
> >
> > -     if (!dst) {
> > -             rc = -ENOMEM;
> > -             goto out;
> > -     }
> > +     if (!dst)
> > +             return -ENOMEM;
> >
> >       memcpy((void *)dst, src_start, length);
> >       __flush_icache_range(dst, dst + length);
> >
> >       trans_pgd = (void *)get_safe_page(GFP_ATOMIC);
> > -     if (!trans_pgd) {
> > -             rc = -ENOMEM;
> > -             goto out;
> > -     }
> > +     if (!trans_pgd)
> > +             return -ENOMEM;
> >
> >       pgdp = pgd_offset_raw(trans_pgd, dst_addr);
> >       if (pgd_none(READ_ONCE(*pgdp))) {
> >               pudp = (void *)get_safe_page(GFP_ATOMIC);
> > -             if (!pudp) {
> > -                     rc = -ENOMEM;
> > -                     goto out;
> > -             }
> > +             if (!pudp)
> > +                     return -ENOMEM;
> >               pgd_populate(&init_mm, pgdp, pudp);
> >       }
> >
> >       pudp = pud_offset(pgdp, dst_addr);
> >       if (pud_none(READ_ONCE(*pudp))) {
> >               pmdp = (void *)get_safe_page(GFP_ATOMIC);
> > -             if (!pmdp) {
> > -                     rc = -ENOMEM;
> > -                     goto out;
> > -             }
> > +             if (!pmdp)
> > +                     return -ENOMEM;
> >               pud_populate(&init_mm, pudp, pmdp);
> >       }
> >
> >       pmdp = pmd_offset(pudp, dst_addr);
> >       if (pmd_none(READ_ONCE(*pmdp))) {
> >               ptep = (void *)get_safe_page(GFP_ATOMIC);
> > -             if (!ptep) {
> > -                     rc = -ENOMEM;
> > -                     goto out;
> > -             }
> > +             if (!ptep)
> > +                     return -ENOMEM;
> >               pmd_populate_kernel(&init_mm, pmdp, ptep);
> >       }
> >
> > @@ -272,8 +261,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
> >
> >       *phys_dst_addr = virt_to_phys((void *)dst);
> >
> > -out:
> > -     return rc;
> > +     return 0;
> >  }
> >
> >  #define dcache_clean_range(start, end)       __flush_dcache_area(start, (end - start))
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
