Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 401E59D826
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 23:25:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eXejok5GKdNPHBCHAaimztNJbcFuTBNlJNCkhxOxbbI=; b=j6MILoRkDYQgJH
	kI9i5MGRdJgIs3kqSYzOqIW5+J6j0wqJRyGIvOCw2pq1szSqGuyhAotexTy9xg2bgEB3FtdE078iB
	bavIrxY50/E26bNhSbRZd+5uS3TrS9McaA+6LdLOVsUz+od7YNS3eZNwMzfWe7cr6ePc6UxV4o6CV
	bZwKrMw0lnsEODdijiPtmJVlhtNIN19ET8+vD2RsCID+/mHBxM7a4FB7PBL5KldROb86lovYGLGy7
	4RD0MtY1ah8xt9XonD3uL0EUDcclhueQf/ax1aHObjkb+Q0zIH/W92+8EdSH2FWmKaTdyhyOSbRvk
	xf2AkynzT8BZ5QFdmRCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2MUa-0002cq-5l; Mon, 26 Aug 2019 21:25:36 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2MUU-0002bo-8B
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 21:25:31 +0000
Received: by mail-ed1-x543.google.com with SMTP id r12so28415135edo.5
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 14:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RjHtRjpt5n1D5PkM7JJuND3OTb3knfbKMR+iXMOhZqY=;
 b=RhSAK6cZxhoShVI3uLD+VbBsuMha0OSSyDgeFjQS7YjArvB/H5SXBtRv02ke17B9oZ
 M075wq3vhHdh69HLgebWxf1GaV3GmaRkolY2AgQeEhE92D/tDsSXGsNpFDp2eqHTvrM+
 RZCqyHDeNWmppYzixwRJd30HVbUoyhgTAciwv8cvceKYFiD49Prv6ne/WSH/zS/d5rue
 qRbHvBxD6EfubSJHrVwSozhSCXTBTHT1H+Yms2IBRaWeAmB7eAftkUU95l457yQkXue1
 Ui5aKs0M2fycBJhZLiWHAXYI7sLy+SG04D/5CgSnE+w/AKIdWRsdjeC7jksyCwg72Uk2
 GcDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RjHtRjpt5n1D5PkM7JJuND3OTb3knfbKMR+iXMOhZqY=;
 b=QGGualP46vaQglcxl5QtzgxFWYVwsgcXrZWBwz1NLcnP04UlafYGrxZOAPsadEEHTE
 Y/bdzBgQwNrM3Q0ACyk00JvASCaYJ7Pn8PkWjhqIxx1X4TjIa3E8U+IiwETKi8NfSz2s
 VxFfoLpCiv1d3qZcPLsDelkIlFoEd7VnbVwEsZixb/vYiZVXN5W3hIActtUEdOfwVOvp
 R40jO+ABS3Q1hBT2SpcR43hjndaVtt0rdFQvwEw9+ja2JypXkj2Uh9PU4KQMYDbslihr
 6CGk8RexIh4WAfEFtJN5PwaWJrc4gtYymPtWmZnmfkdrje8aS9FLLKfWudSbOiFI6fKw
 JsOw==
X-Gm-Message-State: APjAAAWBniQprABH7itcX3YjJpnpCb3op2HV0ttBKPPnLzi+bL4XiKSQ
 I7zepjS1OZCnqk7oI4gP3UbKZONMZyilLuTF4Pd8Pw==
X-Google-Smtp-Source: APXvYqyABUhgPZOjnwHXeRWkAX8BnPYEgYKam/sudCJIYd2ADQ0Mj3+fRruR7J61TZo9OKQ0uMpF34pAIRcVGgRyznI=
X-Received: by 2002:a50:9116:: with SMTP id e22mr20865143eda.161.1566854727449; 
 Mon, 26 Aug 2019 14:25:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
 <20190826201313.246208e9@why>
In-Reply-To: <20190826201313.246208e9@why>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 26 Aug 2019 17:25:16 -0400
Message-ID: <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_142530_433638_059E901C 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Vladimir Murzin <vladimir.murzin@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 3:13 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Mon, 26 Aug 2019 15:00:50 -0400
> Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> > Marc Zyngier added the support for kexec and GICv3 for EFI based systems.
> > However, it is still not possible todo on systems with device trees.
> >
> > Here is EFI fixes from Marc:
> > https://lore.kernel.org/lkml/20180921195954.21574-1-marc.zyngier@arm.com
> >
> > For Device Tree variant: lets allow reserve a memory region in interrupt
> > controller node, and use this property to allocate interrupt tables.
>
> There is no such thing as a "device tree variant". As long as your
> bootloader implements EFI, everything will work correctly, whether
> you're using DT, ACPI, or the anything else.
>
> This already works today, without any need to add anything to the
> kernel (I have systems using EDK II and u-boot, both implementing EFI,
> and I'm able to kexec without any issue). If your bootloader doesn't
> support EFI, here's a good opportunity to implement it!

Hi Marc,

Thank you very much for looking at this work.

Running Linux without EFI is common, and there are scenarios which
make it appropriate. As I understand most of embedded linux do not
have EFI enabled, and thus I do not see a reason why we would not
support a first class feature of Linux (kexec) on non-EFI bootloaders.

We (Microsoft) have a small highly secure device with a high uptime
requirement. The device also has PCIe and thus GICv3. The update for
this device relies on kexec. For a number of reasons, it was decided
to use U-Boot and Linux without EFI enabled. One of those reasons is
to improve boot performance, enabling EFI in U-Boot alone reduces the
boot performance by half a second. Our total reboot budget is under a
second which makes that half a second unacceptable. Also, adding EFI
support to kernel increases its size and there are security
implications from enabling more code both in U-Boot and Linux.

> --
> Without deviation from the norm, progress is not possible.

Totally agreed.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
