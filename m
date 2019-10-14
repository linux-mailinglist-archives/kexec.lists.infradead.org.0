Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FB0D6C16
	for <lists+kexec@lfdr.de>; Tue, 15 Oct 2019 01:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1LiaXO4kOSL6BIzcCQCxsQ6K4YVWs4F5lKbXFWmYGc=; b=fa29vHRvy8XNmD
	NnTw/Ku0R4BmPi4oPepPS1myy+EGQ+PudXL9SoAwoOQbC7IjmWuitaqKW4qP8X8w9r2pkqYHcKPSW
	WIzsIk9H3XJba+PkYBzcLUjRYAFrInObucHlQ5hg7S2lAkY+NtHW9AKVRqMYAtD7drDNhl/38HRIU
	EZFQ84J79RA4SjsTLEYE5lui8gHfLhVnd7Uu3UH0pwh46qvgqUVWXKmg6as9kRDvQSTwRkZz+BwJM
	1dpzB69ff0N7XmKzDWQJsJUq7BQuhkY5V8X+qXaTgmNbQ2mjbEWL5kFbpC6PlJk9T2nQdCk2HTK4M
	AV0zqB+qPLTMYOMKLONg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK9sn-0003CF-2o; Mon, 14 Oct 2019 23:36:09 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK9sj-0003BQ-5l
 for kexec@lists.infradead.org; Mon, 14 Oct 2019 23:36:06 +0000
Received: by mail-ed1-x541.google.com with SMTP id r16so16197772edq.11
 for <kexec@lists.infradead.org>; Mon, 14 Oct 2019 16:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gkziEWncJFESfbeN+tNU3lnfttVx9foN0npvs9N1QsY=;
 b=O70o41Dmveei74jWdiTluAuKZOpFdp96KyP9T2+VLvoKG3708U5MU64uqWTOjJw2DI
 8fVopJbte7kdQDLDcOkGWxqOo1hPyLSGm9W5pwD9uSuKBWkYzkLQFnL0pO9rTTUkuOwv
 YEKeJM4UaS36FSYnUDagTkfYpdKCDO1v58PJtngbqG4oKmWsHirTjN3FGADnX7mMblrq
 UoC9Mmp7mBesVzhNvG+fDBUv3wy6kw0zxiKZxsynzZSe6ujfai3BCrztgADTlvkRGS6j
 L5d9t+3fpiXBswUSa0ApWFQVBYX/GhB0xFLteIF/S20CrXAf1E8aB8uFws2F6tsq2Kpp
 vUVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gkziEWncJFESfbeN+tNU3lnfttVx9foN0npvs9N1QsY=;
 b=k5kd21OHiDgdqRx4uqM4d6/xfKM8oaUKiEfF6QgpMzpcAtFErAnBcGg4FQxVIoDxh2
 lf7dWse1oLL2hsnjH/w7m2hBQYYKRTdlROKqBFXinkpivKwTlRlog3k/rjUSt3EmRSDV
 lSRtUVkrnPFg/8Yg60BduBb0wTZWmWFAVtbAFhKW12FG+sq9KZMVnEKee7EopCWf63Xj
 81Xi0SqQ87aedIAgkXSwuxFtg4dQcjYhZV/VZdEJFnE3aoWxvevGk5Jjq5u6hAq+NFJd
 1MTF3F4NgMi62tFPnkm7ymOV2EMIviZ40w+D2IGGVRDeHpurydj3HO84ff3im04w0rEz
 44YQ==
X-Gm-Message-State: APjAAAXRKc7+G+lj+g1FeS9lerQFffS/oyXnpJiJpdPLOTLfkoXCPwX8
 H041d4ZjERW9Si1JDKY0Omtk3EWcXq4pv+pi4fwVvw==
X-Google-Smtp-Source: APXvYqw21dAMS585cJditaHg7KjhOgxBh6OmUSMoHjJ0YGRuL7a8yLmdCHKtPPDp4d/BFzWCo6uVZPGvN8Y+J4yqjTw=
X-Received: by 2002:a17:906:2cca:: with SMTP id
 r10mr31786307ejr.108.1571096163334; 
 Mon, 14 Oct 2019 16:36:03 -0700 (PDT)
MIME-Version: 1.0
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-16-pasha.tatashin@soleen.com>
 <fe5a4aae-fae3-f30f-db15-f3eced229a6e@arm.com>
In-Reply-To: <fe5a4aae-fae3-f30f-db15-f3eced229a6e@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 14 Oct 2019 19:35:51 -0400
Message-ID: <CA+CK2bBRRQsepxrWnOUOnFfPUe5SYsOurQ3kL_P1ghxze77RFQ@mail.gmail.com>
Subject: Re: [PATCH v6 15/17] arm64: kexec: add expandable argument to
 relocation function
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_163605_395040_92B0B679 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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

> > +struct kern_reloc_arg {
> > +     unsigned long   head;
> > +     unsigned long   entry_addr;
> > +     unsigned long   kern_arg0;
> > +     unsigned long   kern_arg1;
> > +     unsigned long   kern_arg2;
> > +     unsigned long   kern_arg3;
>
> ... at least one of these should by phys_addr_t!

OK, changed them to phys_addr_t

>
> While the sizes are the same on arm64, this reminds the reader what kind of address this
> is, and lets the compiler warn you if you make a mistake.

OK

>
>
> > +};
>
> > diff --git a/arch/arm64/kernel/asm-offsets.c b/arch/arm64/kernel/asm-offsets.c
> > index 214685760e1c..900394907fd8 100644
> > --- a/arch/arm64/kernel/asm-offsets.c
> > +++ b/arch/arm64/kernel/asm-offsets.c
> > @@ -23,6 +23,7 @@
> >  #include <asm/suspend.h>
> >  #include <linux/kbuild.h>
> >  #include <linux/arm-smccc.h>
> > +#include <linux/kexec.h>
> >
> >  int main(void)
> >  {
> > @@ -126,6 +127,14 @@ int main(void)
> >  #ifdef CONFIG_ARM_SDE_INTERFACE
> >    DEFINE(SDEI_EVENT_INTREGS, offsetof(struct sdei_registered_event, interrupted_regs));
> >    DEFINE(SDEI_EVENT_PRIORITY,        offsetof(struct sdei_registered_event, priority));
> > +#endif
> > +#ifdef CONFIG_KEXEC_CORE
> > +  DEFINE(KRELOC_HEAD,                offsetof(struct kern_reloc_arg, head));
> > +  DEFINE(KRELOC_ENTRY_ADDR,  offsetof(struct kern_reloc_arg, entry_addr));
> > +  DEFINE(KRELOC_KERN_ARG0,   offsetof(struct kern_reloc_arg, kern_arg0));
> > +  DEFINE(KRELOC_KERN_ARG1,   offsetof(struct kern_reloc_arg, kern_arg1));
> > +  DEFINE(KRELOC_KERN_ARG2,   offsetof(struct kern_reloc_arg, kern_arg2));
> > +  DEFINE(KRELOC_KERN_ARG3,   offsetof(struct kern_reloc_arg, kern_arg3));
>
> Please use kexec as the prefix. The kernel also applies relocations during early boot.
> These are global values, and in isolation doesn't imply kexec.

OK
> >  .align 3     /* To keep the 64-bit values below naturally aligned. */
> > -
> >  .Lcopy_end:
> >  .org KEXEC_CONTROL_PAGE_SIZE
> >
>
> My eyes!
>
> Please don't make unnecessary changes. Its hard enough to read the assembly, moving
> whitespace, comments and re-allocating the register guarantees that no-one can work out
> what is happening.
>
> If something needs cleaning up to make the change obvious, it needs doing as a previous
> patch. Mechanical changes are fairly easy to review.
> Functional changes behind a whirlwind of mechanical changes will cause the reviewer to
> give up.

Sure, I have split this patch into several patches, and moved
clean-ups into separate patches.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
