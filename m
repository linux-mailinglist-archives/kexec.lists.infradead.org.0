Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B6E1BEF42
	for <lists+kexec@lfdr.de>; Thu, 30 Apr 2020 06:35:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=87EbSwd00LQJ0YLYyheYIcka9vuJgIC6Y3VfJVo59Rg=; b=UpWGAOeiKOYzT1
	8TpPtIa/LiIxCDCqRgQiqHV3l9HJ4vzTMGc1dMnh0W/FLAm1jn6ZR2HYQBaaLPvDTuPzE8vAOa8kH
	/OBs4sRQyqc0ni9EvBiOMsXE8iQYsn6mGvBd7CmBSagpgvyqw7Jx8QMO5O4pJcg9xDOB2nenet7aL
	tC3eC8hud5H+EYRyseR4B0smKuGKqJ4R1hPVhsrz9T643A8QeH7YjUQ3w73hbwfUrQDob/UhXpurU
	my7JbewdL3mtcXHMrIawDN1pEQEy8CR+IXk/VsJhHh6cyURdHyU49MRekwbRQYxbd3uigwrKR1zI7
	FzNRjok0oZAte20rp5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU0v8-0004Ci-IR; Thu, 30 Apr 2020 04:35:34 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU0v1-0004Ak-Pb
 for kexec@lists.infradead.org; Thu, 30 Apr 2020 04:35:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588221326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=n5jM63qDWJeyDGYCjjTCU+R9Ek+uHrEl9ULmh5ibqDw=;
 b=hlX4p0HqjFW1cNF1NF2kF5vYM9MdDwq03vyv6lRp9J6/fJMC4JU0i6Gw2GMbwkUIyf3+5v
 Bh2mlO8QUhk1HzBcuLV67Bt1DPMkOnu8rLT7l5Ii6z33Eytv9H3pBokyjWijhYoZdYMKgE
 qiwShHyNbywCxWb6Qe3iP7D27tB0wHY=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-QUUuXF0UPMKDdxgSamL7bw-1; Thu, 30 Apr 2020 00:35:22 -0400
X-MC-Unique: QUUuXF0UPMKDdxgSamL7bw-1
Received: by mail-qk1-f200.google.com with SMTP id d15so5209999qkl.10
 for <kexec@lists.infradead.org>; Wed, 29 Apr 2020 21:35:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zKtrMfHGu+y4vYE02s1puHzZQ5/jhATWRhrNjWq5a+4=;
 b=l0HHl26Yy+PKXvNMthkARS3/g1nnzZLKRZglT1ppvqWeOqwtI2Dl8riauI+hyMzgEA
 QpxUt9g0BoTyvLfgk7d2L392wg4Yi73y2PSCIapFLkkXOsB/rkBns+1c3GS8yH74mvQz
 f2VIcL3i6El61OP+gYVyOZf4VO1xJIAUoRJfIMARk1mnp+oc6e4+Nxg0A0zGnkUs4Fq5
 kByfcU+XKG4FHLYNg6aOS+H38BCDuUvJF0a3H2tt8tYpTCoRfHK42dChaE7esDJdYFfU
 wwvUcWj6oOyleGyitdwv0mjSgXxJHkhlJ0NtASn7vhxOQGTXMeFe1fPTMIbUu/4D+ZDu
 7koA==
X-Gm-Message-State: AGi0PuY4Pkj1SZNdtoT3Gyo3JvkWMZdrD9RP/riUfaDfnFojx0DPHH4F
 pWMBIw6RAPsYFXTpvxNrM3mM8Z5C6AEF/GyuMfE/kr4QDo5VnHPUGfkJwE5t8V8BTEPJDwnb6CU
 2reYeAl2Tb7toRQMT6ySb4ZH8T2pefpUcdzZ0
X-Received: by 2002:a05:6214:a14:: with SMTP id
 dw20mr1157828qvb.179.1588221321688; 
 Wed, 29 Apr 2020 21:35:21 -0700 (PDT)
X-Google-Smtp-Source: APiQypJwv05UoqY7fgJ1iBedETm9PSq8uwxu8tgslkEj0MSEDpFQVgedzwdDm+IHqADZkUseufdbjkQYsL2aKni/Lpc=
X-Received: by 2002:a05:6214:a14:: with SMTP id
 dw20mr1157809qvb.179.1588221321477; 
 Wed, 29 Apr 2020 21:35:21 -0700 (PDT)
MIME-Version: 1.0
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
 <20200408104655.GA92698@C02TD0UTHF1T.local>
 <CACi5LpP0WqYGxrJL6BJia-ceSR5XbjytsSY+P74xaDJZTJA8jA@mail.gmail.com>
 <20200428100710.GD3868@gaia>
In-Reply-To: <20200428100710.GD3868@gaia>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 30 Apr 2020 10:05:09 +0530
Message-ID: <CACi5LpPW2zmq0-UDnU_115ePxXKWG+1i6UciVWPpq=PzQHrkOw@mail.gmail.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
To: Catalin Marinas <catalin.marinas@arm.com>, Arnd Bergmann <arnd@arndb.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_213530_894886_EF4BE10F 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Tue, Apr 28, 2020 at 3:37 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Apr 28, 2020 at 01:55:58PM +0530, Bhupesh Sharma wrote:
> > On Wed, Apr 8, 2020 at 4:17 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > > On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> > > >  arch/arm64/configs/defconfig | 1 +
> > > >  1 file changed, 1 insertion(+)
> > > >
> > > > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > > > index 24e534d85045..fa122f4341a2 100644
> > > > --- a/arch/arm64/configs/defconfig
> > > > +++ b/arch/arm64/configs/defconfig
> > > > @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
> > > >  CONFIG_NUMA=y
> > > >  CONFIG_SECCOMP=y
> > > >  CONFIG_KEXEC=y
> > > > +CONFIG_KEXEC_FILE=y
> > > >  CONFIG_CRASH_DUMP=y
> > > >  CONFIG_XEN=y
> > > >  CONFIG_COMPAT=y
> > > > --
> > > > 2.7.4
> >
> > Thanks a lot  Mark.
> >
> > Hi Catalin, Will,
> >
> > Can you please help pick this patch in the arm tree. We have an
> > increasing number of user-cases from distro users
> > who want to use kexec_file_load() as the default interface for
> > kexec/kdump on arm64.
>
> We could pick it up if it doesn't conflict with the arm-soc tree. They
> tend to pick most of the defconfig changes these days (and could as well
> pick this one).

Thanks Catalin.
(+Cc Arnd)

Hi Arnd,

Can you please help pick this change via the arm-soc tree?

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
