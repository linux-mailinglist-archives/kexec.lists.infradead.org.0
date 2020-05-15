Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0C71D492C
	for <lists+kexec@lfdr.de>; Fri, 15 May 2020 11:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R7b4FTB4f0jmQtnKSSAgK0bfvxpzVyXPjQXmSVZYr18=; b=WOK1+HuDiYtu3F
	QPBcpVb2S6l1ErH1TFs+VK5UgI7/abrG7tEv+a0D5rqi5PW4W7+yaL+wKQWy557X99INEvUz8WrNX
	vwePshCrWw9RKgEnjttrviDoUW4r5v6f2MojED/e/SUvj23K4/b+Ldo2v1XabLeR6rWT4wobYEd21
	tWi4vgu4WLkXHan7pL227EuSjuYAk1AFUidat3CUUSI7seSWfstAtrUwQUgDRkdexTGE3qOnj6bUZ
	Tu1NvwoCl+20ULW3Hp7YEAppgxmV6c/eWhoK9Qt7gvzx77qOPXjmbDwR4QoPDnPkmnt6X3lxKuU0w
	Fsspfza/deqI/IEn/lxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWQV-0004Sf-9d; Fri, 15 May 2020 09:14:43 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWQF-0004Kn-EZ
 for kexec@lists.infradead.org; Fri, 15 May 2020 09:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589534066;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sAyNKqy0PvpNZ7XM4XJFqPAgjGRTcvpeLX/hBzxhqBM=;
 b=b/ML8OY4BzcxdGNtYsOnGOZzmxe5UqOQwnA1M3rFmZ/e8BEndZpOGRwrQIjIP8bS1Fgi9H
 6Y9MHTpOIgbv8JyqJRF0fE4e8C8gfjEUSih04B1C73K9Y1s+k2Mls5ivajftasxifazyVQ
 +kYu8GIOGtd4STJnZsH2kPGbLKzDyio=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-7HMEfe_TN4aHh4BR4hoTCA-1; Fri, 15 May 2020 05:14:22 -0400
X-MC-Unique: 7HMEfe_TN4aHh4BR4hoTCA-1
Received: by mail-qk1-f197.google.com with SMTP id f200so1536495qke.14
 for <kexec@lists.infradead.org>; Fri, 15 May 2020 02:14:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sAyNKqy0PvpNZ7XM4XJFqPAgjGRTcvpeLX/hBzxhqBM=;
 b=R/PVjkoVFqO8PweK+SRLkMaJjhiLE8QVAjeRMeyNqNZNnkGAbVANGnQFTyjTv9Tv5l
 T5JsiFyRwLeRs5PXRNQpDVRoqf4rV7eOwkU6NCqZAfd/8HhcVXGXw4pMZDh/sbDbn56f
 HYjmtuWKO7CXpkzMLtdKShdlV1ByQ+K/CNxc4o014z+fUTMwFezJDyf6sYTGY+/NyY3g
 W//Oib2h1r6TE1R9lFhg7SFbdm1sAPEwnkOfyEwDW0aELPGVjqLv5zHh1iJ/lP4Nb+/b
 xwMdY4QukKw4wrTQiTnbsw24hlfkQ/6Q2yqQUGrE/7AZIrJtVMsuo4ra4HZS6crLN0MU
 Opdw==
X-Gm-Message-State: AOAM532D5saxTU6Fyl/c8TP5nvPCDgK+qL26DHwS+97DDsdATPA33Xno
 QhH5JmBNRrSidBqa39v4vxlWc+oaofx1RMOPlFsqP0vu+rbvlm7T28UMyAmWhEF2Ir+XpI6Dwjc
 72Y0OlXVnBU7AZjaNK12tGI52Qc2IRVTNdTZm
X-Received: by 2002:ac8:380d:: with SMTP id q13mr2367460qtb.200.1589534062295; 
 Fri, 15 May 2020 02:14:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzwyLTxFyixDvnPyg3oeL1fkkw3utZ2sn7m3Aff/TLZ0tuJ5vQAmsiR8I5ZPVoH3XSv1K0qQ5EhHgkWu/AeBT0=
X-Received: by 2002:ac8:380d:: with SMTP id q13mr2367418qtb.200.1589534061588; 
 Fri, 15 May 2020 02:14:21 -0700 (PDT)
MIME-Version: 1.0
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
 <20200408104655.GA92698@C02TD0UTHF1T.local>
 <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
 <20200428100710.GD3868@gaia>
 <CACi5LpPW2zmq0-UDnU_115ePxXKWG+1i6UciVWPpq=PzQHrkOw@mail.gmail.com>
In-Reply-To: <CACi5LpPW2zmq0-UDnU_115ePxXKWG+1i6UciVWPpq=PzQHrkOw@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 15 May 2020 14:44:08 +0530
Message-ID: <CACi5LpMnbFbmqWOn0GfPD2H50UcZ0XHQ7X+Cd0E-cS-zfL7tQQ@mail.gmail.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
To: Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_021427_560882_C63E120E 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, arm@kernel.org,
 James Morse <james.morse@arm.com>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Arnd,

On Thu, Apr 30, 2020 at 10:05 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> On Tue, Apr 28, 2020 at 3:37 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Tue, Apr 28, 2020 at 01:55:58PM +0530, Bhupesh Sharma wrote:
> > > On Wed, Apr 8, 2020 at 4:17 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > > > On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> > > > >  arch/arm64/configs/defconfig | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >
> > > > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > > > index 24e534d85045..fa122f4341a2 100644
> > > > > --- a/arch/arm64/configs/defconfig
> > > > > +++ b/arch/arm64/configs/defconfig
> > > > > @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
> > > > >  CONFIG_NUMA=y
> > > > >  CONFIG_SECCOMP=y
> > > > >  CONFIG_KEXEC=y
> > > > > +CONFIG_KEXEC_FILE=y
> > > > >  CONFIG_CRASH_DUMP=y
> > > > >  CONFIG_XEN=y
> > > > >  CONFIG_COMPAT=y
> > > > > --
> > > > > 2.7.4
> > >
> > > Thanks a lot  Mark.
> > >
> > > Hi Catalin, Will,
> > >
> > > Can you please help pick this patch in the arm tree. We have an
> > > increasing number of user-cases from distro users
> > > who want to use kexec_file_load() as the default interface for
> > > kexec/kdump on arm64.
> >
> > We could pick it up if it doesn't conflict with the arm-soc tree. They
> > tend to pick most of the defconfig changes these days (and could as well
> > pick this one).
>
> Thanks Catalin.
> (+Cc Arnd)
>
> Hi Arnd,
>
> Can you please help pick this change via the arm-soc tree?

Ping. Any updates on this defconfig patch.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
