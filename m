Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AA764A44
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 17:58:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nx9uReuapaCnMXzvr0YLj8MofUQiDIOoVhdFuBqThJ0=; b=P0nV3oNBOsNf5h
	Q0wZzLc/Tm/NsNowVThG1MFo45jWlj565HIMzTLqHz7lKlCPx7PvcmOc4zBWa8UjE2pd3lZHAiJyr
	cf7qFN0JIgDASDT7NK0XfCUYweIUl/A6V8cYR0J5iboFMcfCZlqJdfhLfNPZEv8CLkBnAWZNLch3V
	dF+zL+3XE/YP0GjcLAYbCkPP3+ZuCklxrfUgTFXfXfytOqD/6NjSRYfsUjhoCoP+ftJYSgxogJi+2
	hHWdS0XTkW/hfr4Jgjz5K9DmwmxYHXwsoS5wb7u4oExgB8zbaaFcuemAIwvgH5dMTaemHBHBCD0pq
	mVCSbRVYOwaaKNhSaPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlEza-0000bg-QO; Wed, 10 Jul 2019 15:58:51 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlEz2-0000Od-2H
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 15:58:17 +0000
Received: by mail-ed1-x542.google.com with SMTP id e3so2668509edr.10
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 08:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a2hs0dyIQnh/sqo6KZ61rFm4L2r82B8qQvgfu80yNSo=;
 b=gUROxfvOCyof5ttodsBwlj38d9Umt2I6xGHrwlqIsUPaybPlSEyo4PeNiLuLBswZBu
 P2LmcnGTqODgeD4cMmrLHxkm4Iq/LqAXgBIhK2Dx55nA07tPc3wGPSLpk1/msnl6E/Zm
 GYl49EaZAKHk8zVTYx91QARCB83H+wvpSxA90NlBeMIVCcAo15xoY54JpX7JHcIMTKoc
 UsuJnGacdA2AzPTi8L4x6/cRVu1dtBW5/FSXWhxzF2GVvq1x5chEg9DO2wO+GpoyJpz8
 bOu2Oyb4yZhXQsckMoHRzjJsZAv4Q7Jzrfqjb3xwTCrnMTLbJAEvxOBLVwkwPMyH9GOb
 zn+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a2hs0dyIQnh/sqo6KZ61rFm4L2r82B8qQvgfu80yNSo=;
 b=knQIM96BJoHfTYPeABZ1h6JmgrOFPplPpwtyi+amfsfPo4pkg7eLl4sHuVWFoBGpo/
 HOVWXgGxBCGKlTv5l3UOZOjjYowAy1u3tyahtoFVz98Ve9Z/jgHa/LhQoVwhjz5Kt0A2
 GrCiTO3ZGjrnHMPAqCGoUNxJ7Uchzomf0/K8L+WNSOuQfbphz7nA8DlDvUHaD/5Pxmy6
 N+MvBry77m44A+Iz2yI3zlZrr/pb4paSVFZxQlQtH/Ye5j3YE0GWGcjJcqGNAr33bVB7
 wYTiCXEF/Y515kw1FvvAXhzELLTCExNcybPxy5tN6io4tPtXDftQ3JYGeEAkfXbzYVyr
 sKxg==
X-Gm-Message-State: APjAAAW5i1LJcoBTPkkAPc4sztJVOZETwdWbG9tkfSHc404d2ZOgG+0a
 /awKDDOm6/4acNkMBwfSnNb09dZSuP8LhoHHPFytTw==
X-Google-Smtp-Source: APXvYqzjnwEQ5TMXiUq18EB46BY4ST+24XYmOoYFpr+h9ihRCO3FuxJVvZCtqNTGY1LYXAg4KvZi2LZiyzoe+Acj8C8=
X-Received: by 2002:a17:906:d1d0:: with SMTP id
 bs16mr26806724ejb.286.1562774294818; 
 Wed, 10 Jul 2019 08:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
 <0a141018-c09e-56e4-6a73-45b951e8490f@gmail.com>
In-Reply-To: <0a141018-c09e-56e4-6a73-45b951e8490f@gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 10 Jul 2019 11:58:04 -0400
Message-ID: <CA+CK2bBJydDGSGtQ49RDLR-WdiH=8G4WfDe5PEe8DE1rfEFONQ@mail.gmail.com>
Subject: Re: [v2 0/5] arm64: allow to reserve memory for normal kexec kernel
To: Matthias Brugger <matthias.bgg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_085816_109707_20CA8CE8 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 11:28 AM Matthias Brugger
<matthias.bgg@gmail.com> wrote:
>
>
>
> On 09/07/2019 20:20, Pavel Tatashin wrote:
> > Changelog
> > v1 - v2
> >       - No changes to patches, addressed suggestion from James Morse
> >         to add "arm64" tag to cover letter.
> >       - Improved cover letter information based on discussion.
> >
> > Currently, it is only allowed to reserve memory for crash kernel, because
> > it is a requirement in order to be able to boot into crash kernel without
> > touching memory of crashed kernel is to have memory reserved.
> >
> > The second benefit for having memory reserved for kexec kernel is
> > that it does not require a relocation after segments are loaded into
> > memory.
> >
> > If kexec functionality is used for a fast system update, with a minimal
> > downtime, the relocation of kernel + initramfs might take a significant
> > portion of reboot.
> >
> > In fact, on the machine that we are using, that has ARM64 processor
> > it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> > time:
> >
> > kernel shutdown       0.03s
> > relocation    0.35s
> > kernel startup        0.29s
> >
> > Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> > time increases proportionally.
> >
> > While, it is possible to add 'kexeckernel=' parameters support to other
> > architectures by modifying reserve_crashkernel(), in this series this is
> > done for arm64 only.
> >
>
> I wonder if we couldn't use the crashkernel reserved memory area for that and
> just add logic to kexec-tools to pass to the kernel a flag (a new magic reboot
> number?) to use the crashkernel memory for that?
> The kernel would then unload the crash/capture system in the reserved memory
> area and reuse the latter for kexec.
> This would also enable the feature for all architectures.

I decided to take another route: enable MMU during kernel relocation
on ARM64. This will eliminate the problem that I am experiencing with
slow relocation.

Pasha

>
> Regards,
> Matthias
>
> > The reason it is so slow on arm64 to relocate kernel is because the code
> > that does relocation does this with MMU disabled, and thus D-Cache and
> > I-Cache must also be disabled.
> >
> > Alternative solution is more complicated: Setup a temporary page table
> > for relocation_routine and also for code from cpu_soft_restart. Perform
> > relocation with MMU enabled, do cpu_soft_restart where MMU and caching
> > are disabled, jump to purgatory. A similar approach was suggested for
> > purgatory and was rejected due to making purgatory too complicated.
> > On, the other hand hibernate does something similar already, but there
> > MMU never needs to be disabled, and also by the time machine_kexec()
> > is called, allocator is not available, as we can't fail to do reboot,
> > so page table must be pre-allocated during kernel load time.
> >
> > Note: the above time is relocation time only. Purgatory usually also
> > computes checksum, but that is skipped, because --no-check is used when
> > kernel image is loaded via kexec.
> >
> > Pavel Tatashin (5):
> >   kexec: quiet down kexec reboot
> >   kexec: add resource for normal kexec region
> >   kexec: export common crashkernel/kexeckernel parser
> >   kexec: use reserved memory for normal kexec reboot
> >   arm64, kexec: reserve kexeckernel region
> >
> >  .../admin-guide/kernel-parameters.txt         |  7 ++
> >  arch/arm64/kernel/setup.c                     |  5 ++
> >  arch/arm64/mm/init.c                          | 83 ++++++++++++-------
> >  include/linux/crash_core.h                    |  6 ++
> >  include/linux/ioport.h                        |  1 +
> >  include/linux/kexec.h                         |  6 +-
> >  kernel/crash_core.c                           | 27 +++---
> >  kernel/kexec_core.c                           | 50 +++++++----
> >  8 files changed, 127 insertions(+), 58 deletions(-)
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
