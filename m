Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7842E8F5A1
	for <lists+kexec@lfdr.de>; Thu, 15 Aug 2019 22:19:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AvWTmB6+fSl/kZCyT1K6tY5R9ZICcicDS+mUWbrVSx8=; b=TD/JnGyek4g/jA
	BhYTzuUpLmyR1mXuOVgv5ufLP39jThm5s+Isky+jkATV5r2/LqqD8S9RVT2UvLXy5FYs2EtpwriTA
	A7xYcg8wzvnsx46kW4q1fj94OQLBBMwnErLLcJ6qNKBvFXCj+4+OPwHtooV9udchgxnGOQaIxK4Ua
	2gY/8hToyqcoAHvuWqFpYex0dWqM4IEm6E6kBWM/BvgC7SKC2MY26QfjQX58wufJc2fWiogfblR02
	nFx93FPe8SwLqXmnTzx0hNNZVwyTXVBnVUtk7+SzNF8ipvzAJzFPIH4Kv3kDAlSnVHQifOg54dqhB
	3zuD8SB1Asvi5+qn2pdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyMD7-0007TL-0U; Thu, 15 Aug 2019 20:19:01 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyMD1-0007S2-Es
 for kexec@lists.infradead.org; Thu, 15 Aug 2019 20:18:58 +0000
Received: by mail-ed1-x544.google.com with SMTP id a21so3201757edt.11
 for <kexec@lists.infradead.org>; Thu, 15 Aug 2019 13:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AxiXdJJYXpzjPIpLv2Ddxotgylmhlwtib1+7lvBDYak=;
 b=Ju5cEMjQPSyBe5Qdc1WzBz5Ov2k2ICfZUob39j/oyK3i8LoFDj+5xFzSfZlAK54Kwp
 czoNKnAMW8wUiIKRq8iHCR5/hYI1EeQIJowboQ2123licx38xK3w8mH/nMX+ssbumUek
 cPcWRL0fjhtIgMYkonmtKhgvqZCvwdZP24IBnbbwIjzEdBBB5WJSqnDtzrYSbxY+Zf7o
 J3Ulenc6DRQk3xc+D0kIuO17NZVBAp2NHWEqj157pUGGo2AA8mNOyfundV2UHi4HUYFg
 I+SHJa5kYajDhB+N6oMpbnBI1K/s9bUciTkjsjkSRledR7MfCuC91DKOo+ACYc5l5E79
 zt3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AxiXdJJYXpzjPIpLv2Ddxotgylmhlwtib1+7lvBDYak=;
 b=GMEIeK/N91qoIq0xpPmmhvlLWmG+IPi4ITEoUxCZ804yu4gQuA/ZwTCZrC4Z2b5P9W
 DI/UyptmpH4csfIaIZbbWBnmTmemibfp0C1y6Uom/Nfc0Pt2trcWNu6vrU04gyX7AYJx
 bE7xdMkHRL2kMVSGp6cVQwmn9zkofyvXcfa/4kJceJHZfVSAC9qnVCHcUC8u7zw5QUWj
 42jKJ9McQk+qiWqOcZUlEtsysY8ee2gMbahF7A3SDiRm38K6UjG5G/UKJq5bwNJEv2GR
 3DjbH0GgFsLFCqURNKcfXepyqnkzAI1Rr0UqnfkXtK5nyvATMgga/DcNKYHK0VoppRGh
 suEw==
X-Gm-Message-State: APjAAAUcQstRzC8OsmK+4DPjtWGB3Rj52Chn8P1eS9rEyZI75p95i2Of
 Pv7TiiJM5C3ezXQooqKElC4TvKXA3HZskcj2lICXQCls19g=
X-Google-Smtp-Source: APXvYqxDqYmpkSZeqPgeXbtT8kCNF6W+EAndNXYXrDbS40C1YMhrbgAvoxEdsH1jiLldvnT389ZR52u5JUC9ZljwS7k=
X-Received: by 2002:aa7:d48c:: with SMTP id b12mr7277828edr.170.1565900333819; 
 Thu, 15 Aug 2019 13:18:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <20190801152439.11363-3-pasha.tatashin@soleen.com>
 <e00455af-a9f6-82e1-4c0d-78fae01ae00a@arm.com>
In-Reply-To: <e00455af-a9f6-82e1-4c0d-78fae01ae00a@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 15 Aug 2019 16:18:43 -0400
Message-ID: <CA+CK2bD-_34o0McpFwSYgEDyFa8MDXWUNid0GgVsUKC=ZiQzMg@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] arm64, mm: transitional tables
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_131855_505957_432EE595 
X-CRM114-Status: GOOD (  19.02  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
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

On Thu, Aug 15, 2019 at 2:11 PM James Morse <james.morse@arm.com> wrote:
>
> Hi Pavel,
>
> On 01/08/2019 16:24, Pavel Tatashin wrote:
> > There are cases where normal kernel pages tables, i.e. idmap_pg_dir
> > and swapper_pg_dir are not sufficient because they may be overwritten.
> >
> > This happens when we transition from one world to another: for example
> > during kexec kernel relocation transition, and also during hibernate
> > kernel restore transition.
> >
> > In these cases, if MMU is needed, the page table memory must be allocated
> > from a safe place. Transitional tables is intended to allow just that.
>
> > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
> > index db92950bb1a0..dcb4f13c7888 100644
> > --- a/arch/arm64/include/asm/pgtable-hwdef.h
> > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> > @@ -110,6 +110,7 @@
> >  #define PUD_TABLE_BIT                (_AT(pudval_t, 1) << 1)
> >  #define PUD_TYPE_MASK                (_AT(pudval_t, 3) << 0)
> >  #define PUD_TYPE_SECT                (_AT(pudval_t, 1) << 0)
> > +#define PUD_SECT_RDONLY              (_AT(pudval_t, 1) << 7)         /* AP[2] */
>
> This shouldn't be needed. As far as I'm aware, we only get read-only pages in the linear
> map from debug-pagealloc, and the module aliases. Both of which require the linear map to
> be made of page-size mappings.
>
> Where are you seeing these?

This was done simply for generalization.

In old copy_pud:

445   set_pud(dst_pudp,
446   __pud(pud_val(pud) & ~PMD_SECT_RDONLY));

In new trans_table_copy_pud():
119                 if (!pud_table(src_pud)) {
120                         if (info->trans_flags & TRANS_MKWRITE)
121                                 pud_val(src_pud) &= ~PUD_SECT_RDONLY;

If you want, I can replace it with PMD_SECT_RDONLY

> > + * trans_flags
> > + *   - bitmap with flags that control how page table is filled.
> > + *     TRANS_MKWRITE: during page table copy make PTE, PME, and PUD page
> > + *                    writeable by removing RDONLY flag from PTE.
> > + *     TRANS_MKVALID: during page table copy, if PTE present, but not valid,
> > + *                    make it valid.
> > + *     TRANS_CHECKPFN: During page table copy, for every PTE entry check that
> > + *                     PFN that this PTE points to is valid. Otherwise return
> > + *                     -ENXIO
>
> Adding top-level global knobs to manipulate the copied linear map is going to lead to
> bugs. The existing code will only change the PTE in specific circumstances, that it tests
> for, that only happen at the PTE level.

I am simply doing the same what the old code is doing:

hibernate sets this flag if: debug_pagealloc_enabled() and trans_table
in this case check if pfn_valid() or not. This is part of
generalization, without which it is not possible to re-use the code
between kexec and hibernate.

>
>
> > + *     TRANS_FORCEMAP: During page map, if translation exists, force
> > + *                     overwrite it. Otherwise -ENXIO may be returned by
> > + *                     trans_table_map_* functions if conflict is detected.
>

I will remove it.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
