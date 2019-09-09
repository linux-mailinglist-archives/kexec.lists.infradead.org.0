Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F880AD2C5
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 07:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FupPTyyrftdZtsAnpc5VTInKfiz/fDrsuVRN8eJO58=; b=red+GLIp3zao63
	wtnpp/MsHbTRTybC4tm1NGv3qViyZJEju6o8BmWkSVT7d/u15Sn00uhIv12NEhILnPoKYPTe755uC
	ebU1t11q00kA6XUZnNNUEFUplEq0QJXWeXB98W8I3vXw4UvZwNFEcHM7RcHovHUnHQfuPS03XOsRx
	OWNmF7vV/ekHNC33+ZB2Ps9DqmIx7zpJa4p+He99bYHon0ZVzEZHfXm1gY7PtfTnUFHrK60X6qSar
	0qxyZoQTNp0xpqF7ZkSSDf/X4mSKsW5e/RfM44exQFpDJMNqz/yCgBjZsUlHUo1a9Jj+6mQ+MAsd8
	4o4NAxG5OwthfLjCet3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Bpq-0003r3-VN; Mon, 09 Sep 2019 05:03:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Bpl-0003qj-QR
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 05:03:27 +0000
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BDF1911A14
 for <kexec@lists.infradead.org>; Mon,  9 Sep 2019 05:03:24 +0000 (UTC)
Received: by mail-lj1-f198.google.com with SMTP id a9so1084506ljb.5
 for <kexec@lists.infradead.org>; Sun, 08 Sep 2019 22:03:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=yubb2gq1v1ygvFisJFzyAHlkZlBHQXtjoI0jbYHHAlw=;
 b=OVOQnkdyEWzpz4xJ8f919EWO80+HiowUPPm5VkorTVh7EYEWQyBgNEStSOftDchLtU
 NWapnv+ZGGXyTcKtwugRltyB1ZrD0oH86DohfZ23Wy1UyFA3e/GYZ/NNc0M6daV3st2U
 ILYiIIutYR5+L15oEPaJu2akkNbv/va5h9vbX4krSW2hzxp019c4keshvJ7mXL4R/MFU
 esfysItXUiaSzJHVSbHv8i/VmbNd14YCEqKiTPQtBHdV5g+33oBT5+o2a92Vf0XFSbSH
 jCavu9PFHMD4u9Iry5BgVEjWGmnR3HWawfdM9wll6g7plUMUe8lsr7sovVslkMz5u2fx
 I1MQ==
X-Gm-Message-State: APjAAAXfaRuKEMCz9xxfzwZA+mNWh9yfhwFTinWiTtqZqGkTJgr2QsSW
 EzPdnCZq1qWLanXOW5sbMCHmSascf7z8mEP1wXWPeTHsLpYowfofFCoYhBS5JLt/6+RZLQILSHR
 lVSfe9aOtSzCUbuEBLAqYZtIoMh+hhjf9SRRK
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr6599300ljo.180.1568005403245; 
 Sun, 08 Sep 2019 22:03:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwu0l+OcqHvJ6gERPhZ9N6wRGuogqcBlpLlnKXmzkzGUO/HHngL9u2VMbEXVcndyZpcNMTzIUMGvsu32uix5wY=
X-Received: by 2002:a05:651c:1108:: with SMTP id
 d8mr6599287ljo.180.1568005403020; 
 Sun, 08 Sep 2019 22:03:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190903144127.opmnw42pie6klghc@verge.net.au>
 <848555a3-5a1f-c0c0-ef50-e684cf70595a@molgen.mpg.de>
In-Reply-To: <848555a3-5a1f-c0c0-ef50-e684cf70595a@molgen.mpg.de>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 9 Sep 2019 10:33:11 +0530
Message-ID: <CACi5LpPe5ueNMdCObWvCLg+k_kDrvd-SkOvc8ACa1V9UfSD77g@mail.gmail.com>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
To: Donald Buczek <buczek@molgen.mpg.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_220325_896715_F4D881AD 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Sorry Guys,

On Tue, Sep 3, 2019 at 11:36 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
>
> Dear Simon,
>
> On 03.09.19 16:41, Simon Horman wrote:
> > On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
> >> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> >> region on 5-level paging") changed the base of the direct mapping
> >> from 0xffff880000000000 to 0xffff888000000000. This was merged
> >> into v4.20-rc2.
> >>
> >> Update to new address accordingly.
> >
> > Thanks, applied for inclusion in v2.0.20.
>
> I must admit, that I overlooked that d52888aa2753 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging").
>
> Bhupesh Sharma wanted to look into a a dynamic solution, which, of course, would be better. But if you still want to include this (e.g. as the fallback for the dynamic solution), you might want to replace the patch with the following one, which selects the new PAGE_OFFSET starting from kernel version 4.19.5 instead of 4.20.0.

I was in a conference last week and was not able to connect to my test
machine(s) to develop and test a more generic fix, as I suggested in
my earlier message.

I will try to work on and send a generic fix in a couple of days.

Thanks.
Bhupesh

> Donald
>
> >8------------------------------------------------------8<
>
>      x86: Fix PAGE_OFFSET for kernels since 4.19.5
>
>      Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
>      region on 5-level paging") changed the base of the direct mapping
>      from 0xffff880000000000 to 0xffff888000000000. This was merged
>      into v4.20-rc2.
>
>      The patch was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT
>      remap out of KASLR region on 5-level paging").
>
>      Update to new address accordingly.
>
> diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
> index a2aea31..f9d1998 100644
> --- a/kexec/arch/i386/crashdump-x86.c
> +++ b/kexec/arch/i386/crashdump-x86.c
> @@ -61,6 +61,8 @@ static int get_kernel_page_offset(struct kexec_info *UNUSED(info),
>
>                  if (kv < KERNEL_VERSION(2, 6, 27))
>                          elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
> +               else if (kv < KERNEL_VERSION(4, 19, 5))
> +                       elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_4_19_5;
>                  else
>                          elf_info->page_offset = X86_64_PAGE_OFFSET;
>          }
> diff --git a/kexec/arch/i386/crashdump-x86.h b/kexec/arch/i386/crashdump-x86.h
> index ddee19f..6cd8826 100644
> --- a/kexec/arch/i386/crashdump-x86.h
> +++ b/kexec/arch/i386/crashdump-x86.h
> @@ -13,7 +13,8 @@ int load_crashdump_segments(struct kexec_info *info, char *mod_cmdline,
>
>   #define X86_64__START_KERNEL_map       0xffffffff80000000ULL
>   #define X86_64_PAGE_OFFSET_PRE_2_6_27  0xffff810000000000ULL
> -#define X86_64_PAGE_OFFSET             0xffff880000000000ULL
> +#define X86_64_PAGE_OFFSET_PRE_4_19_5  0xffff880000000000ULL
> +#define X86_64_PAGE_OFFSET     0xffff888000000000ULL
>
>   #define X86_64_MAXMEM                  0x3fffffffffffUL
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
