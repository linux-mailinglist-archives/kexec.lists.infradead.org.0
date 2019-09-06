Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D732AC015
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 21:04:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a+WIXEoWoHnJp1xUN+jB6NegkNt1Ke/65c0uJNVP7Y=; b=i9oJlYqOjOzH7p
	QFRYyzcxkF/mL4/Sza3AdoKcuBXnx+ZcajRQjWXtkuZroUthihp8WhKfsDBSsnKPF5p9m19vOMy1o
	O1xTWfYe20Ei7q+0kH3tf3r5a1eD3H+5Lg+o/6QJfdSP3XPUvJYa7dLx7lm08pdDYgdP6273Qotu4
	WxOWHXlgBKhIInNnq9RllVCF9TWc9fPSFgUoRyahl+aSDZjHtWDLgE1jgtSUo4waQJFzfz4uSPj4o
	3O6dTNkEMWSV/6HtW4mi0PpyUaWuUUFH6g75gbIrdw2iZ+A5krZnmSNwPTpTBp8bJeBOuChjrBEHn
	WfsNKsD1+mfSrTWj2xKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JWZ-0005xV-5Y; Fri, 06 Sep 2019 19:03:59 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JWV-0005wd-Cy
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 19:03:56 +0000
Received: by mail-ed1-x544.google.com with SMTP id i1so7268102edv.4
 for <kexec@lists.infradead.org>; Fri, 06 Sep 2019 12:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y/7qqRveiNTR8UpDJH9jJYLPMgNqGjPqi5VfF21WzFE=;
 b=QEPDQCvvF/sjHN2kJrzUVeb7IcXP2HWnSdRgACaIl585w3ZTFPm+c7jIRgZK0q2kuM
 92rKkxhkJNdxqD2rTigoeHOOBgEZvMLX1jEIN2PMc+bXuokn+I7auIRx3xEn1ykJyf1u
 CXLkGSvmkg2ksV0wgOa7ekkr38WY61xs1odE9/PBZA3P7HsDw85795v0qIS9QWC3f1Mi
 whJST2fStGwvRAp/SN37FFgS8pip/MVJJ1R051L4sBuMq5NVauiRReOfNiZJ14PNzP/r
 tzF75BO2LMAqLB/WKPYKhZweNmKjX5bKa3K+ThUussgLwJ2PIJ50AROtJu9cwcDhVCk1
 bJng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y/7qqRveiNTR8UpDJH9jJYLPMgNqGjPqi5VfF21WzFE=;
 b=PYVYSm3g/LhYsqLGqyDq5AYuyBR6o+9iwU/8gdjHj1O7H8J5ZKkAw9dfmDlIYixNzJ
 aUeIT/bmCL/oYJfqKJ8uU6mn7qdAW/2gD20/7b3LuwTjg0Bt7PfVFspjixnt4x+x2YjS
 mMGunW8KkFubav0BkGXGcRhliCvgST9mR+03hW1opTST3LcA/ueihU0fi0GP9/xG3jG5
 v4CXKigSI/NzU7mZaIDkuZmNcpFaPbKS7ypFjxbQvm6NmkAnL3FXuq2p6TPebjeDwGP/
 uj6Arh96KVw5bNc9t+Wf1lJH9aQvHw3TmtqcVvMM3ic23JWBaR1r4HMjVoAZrNfntX7P
 72GQ==
X-Gm-Message-State: APjAAAWk6uFkvtLmkADynv9bZks4c6/LNzytoRLUqOJ3G2y1wf6zelIM
 ZemKkc4eOoaBfeI5aqhJ/okPvLaoDasWQg1Xiq3s0w==
X-Google-Smtp-Source: APXvYqxBZr4A/XPsx9DL6X3UVVIiqZlxxSg15azW0Vlg1Y/GEwtp0qO5WsKKt8HfTWnnuA9cZMhLLr/nV3+FiR+zkNw=
X-Received: by 2002:a17:906:bb0f:: with SMTP id
 jz15mr8592077ejb.264.1567796633333; 
 Fri, 06 Sep 2019 12:03:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-11-pasha.tatashin@soleen.com>
 <21f6eb6f-be3a-a715-a37c-2f59183ed183@arm.com>
In-Reply-To: <21f6eb6f-be3a-a715-a37c-2f59183ed183@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Fri, 6 Sep 2019 15:03:42 -0400
Message-ID: <CA+CK2bAS37vPa0FD7Ya1vnZR29hiEsNfkq6q7+UreNRjRgUEFw@mail.gmail.com>
Subject: Re: [PATCH v3 10/17] arm64,
 trans_pgd: adjust trans_pgd_create_copy interface
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_120355_442976_617B3388 
X-CRM114-Status: GOOD (  21.42  )
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

> > -int trans_pgd_create_copy(pgd_t **dst_pgdp, unsigned long start,
> > +/*
> > + * Create trans_pgd and copy entries from from_table to trans_pgd in range
> > + * [start, end)
> > + */
> > +int trans_pgd_create_copy(struct trans_pgd_info *info, pgd_t **trans_pgd,
> > +                       pgd_t *from_table, unsigned long start,
> >                         unsigned long end);
>
> This creates a copy of the linear-map. Why does it need to be told from_table?

This what done as a generic page table entries copy, but I agree, will
remove the from_table.

>
>
> > diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> > index 8c2641a9bb09..8bb602e91065 100644
> > --- a/arch/arm64/kernel/hibernate.c
> > +++ b/arch/arm64/kernel/hibernate.c
> > @@ -323,15 +323,42 @@ int swsusp_arch_resume(void)
> >       phys_addr_t phys_hibernate_exit;
> >       void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
> >                                         void *, phys_addr_t, phys_addr_t);
> > +     struct trans_pgd_info trans_info = {
> > +             .trans_alloc_page       = hibernate_page_alloc,
> > +             .trans_alloc_arg        = (void *)GFP_ATOMIC,
> > +             /*
> > +              * Resume will overwrite areas that may be marked read only
> > +              * (code, rodata). Clear the RDONLY bit from the temporary
> > +              * mappings we use during restore.
> > +              */
> > +             .trans_flags            = TRANS_MKWRITE,
> > +     };
>
>
> > +     /*
> > +      * debug_pagealloc will removed the PTE_VALID bit if the page isn't in
> > +      * use by the resume kernel. It may have been in use by the original
> > +      * kernel, in which case we need to put it back in our copy to do the
> > +      * restore.
> > +      *
> > +      * Before marking this entry valid, check the pfn should be mapped.
> > +      */
> > +     if (debug_pagealloc_enabled())
> > +             trans_info.trans_flags |= (TRANS_MKVALID | TRANS_CHECKPFN);
>
> The debug_pagealloc_enabled() check should be with the code that generates a different
> entry. Whether the different entry is correct needs to be considered with
> debug_pagealloc_enabled() in mind. You are making this tricky logic less clear.
>
> There is no way the existing code invents an entry for a !pfn_valid() page. With your
> 'checkpfn' flag, this thing can. You don't need to generalise this for hypothetical users.

Ok

>
>
> If kexec needs to create mappings for bogus pages, I'd like to know why.
>

It does not.

>
> >       /*
> >        * Restoring the memory image will overwrite the ttbr1 page tables.
> >        * Create a second copy of just the linear map, and use this when
> >        * restoring.
> >        */
> > -     rc = trans_pgd_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
> > -     if (rc)
> > +     rc = trans_pgd_create_copy(&trans_info, &tmp_pg_dir, init_mm.pgd,
> > +                                PAGE_OFFSET, 0);
>
> > +     if (rc) {
> > +             if (rc == -ENOMEM)
> > +                     pr_err("Failed to allocate memory for temporary page tables.\n");
> > +             else if (rc == -ENXIO)
> > +                     pr_err("Tried to set PTE for PFN that does not exist\n");
> >               goto out;
> > +     }
>
> If you think the distinction for this error message is useful, it would be clearer to
> change it in the current hibernate code before you move it. (_copy_pte() to return an
> error, instead of silently failing). Done here, this is unrelated noise.
>

Ok, will do that.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
