Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0531129211
	for <lists+kexec@lfdr.de>; Mon, 23 Dec 2019 07:55:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u47Kiwm/OhHJ0LtlIvYC8cf2sgcyZN2Ir9cM0bYZfDY=; b=BrrYBc+TqJIQUN
	DjLKds8GpyblskRHr1tImZLXD7V4ZBLEiHUTBSVdJefwsg2u3HyEAx9yymdtbVFK/dlKzrHOycox5
	9je6pb3djjknxk7LkU146R6EJam6FDJwppI87Rs3IyVUhEXONPiDr/NE6qNSziDn5CBdHpIKUS9fb
	+Z/c7U6k8d+rsWBj2toyFzkkUohyu42iUYNJDHq7o7K25MtswI2ihfLzzjCwE90UIEIP2YUV4mo2v
	Ljy5TphGCNYxipcTRg0N+ejMN/6ozY8m7ZYYGv+e6TIIYmytTiQVp6anuHLblO0zLPz8arloQ6atx
	gM+9xGScUYiuxlOoTSCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHcd-000337-Vb; Mon, 23 Dec 2019 06:55:19 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHcZ-00032h-SL
 for kexec@lists.infradead.org; Mon, 23 Dec 2019 06:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577084114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5nsU41EoFTu/AmHHazwyg/44pYXhf90l8p4ZXbH7CRQ=;
 b=KwRQ2oD+j6mkBZvhUSHR3OHNMiAkF0olI7WRZxM6quOiKP/oYHjkjTjNR/7gMR6I5zbol6
 10BXGq6fIfP7ysd3sC0OEIeUBssJXzsVRxyCx5yXPWDjmHwAgoRuAxe1n6octkrzGnFR3k
 k0Rq65wq5ErJ9jW70r8Hn0Hs5QBsahI=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-134-W8uFAakqOiCzhyeTuDka-Q-1; Mon, 23 Dec 2019 01:55:13 -0500
Received: by mail-qk1-f198.google.com with SMTP id w64so10740001qka.3
 for <kexec@lists.infradead.org>; Sun, 22 Dec 2019 22:55:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M/nJx04TJpkzAkZXZa0xvgMzeSLzNXw5/nSo7oRMEXo=;
 b=telW3NxYeTOVYpFvtUz1Ne0SgLAqshxKQgu+Tjgh5EjVkGtlbUp9Yu4W3L9H2vSry8
 CfmB086FRRstKsAG8JT6p8X4TDCaJNiLrkph5yl16vRtWtILKWqlD9sC/NCXKlqMSK2o
 SOvPpAy77i/XprqrhucbPv2jA+ZPJZOgBkYn3CH7j6UcGpne06G2hSpEqxRYfOIBiM7U
 +O7JtHq32JGFwgYPq5aqFpfHGfF7gg95dlIjKdBTTHuFEyCS6l5wztBXJC9QqFuPmX2w
 e/Mh2I+FEWY0PT0V3pn5ATinUPpJhK0pl6+CSgJvjL406PIOo9bqLeuY3u19XdNgwyxM
 FEIw==
X-Gm-Message-State: APjAAAVotYi0EoikGrZRyvau7UXgY1I7/Kc7KNvJSTbmj/hEXbY0TyJm
 SAB1T2YxKF2Kjby1dmpc76wDm7DIJfBrwk+A2yw5lOf/VPGnDC2SqCPk4GWPDFtxwuXe7JKSnyp
 4eOPIw3lwF2wUr2niyEcYhi3HaJYl/G24xsPy
X-Received: by 2002:ac8:124a:: with SMTP id g10mr8076713qtj.303.1577084112007; 
 Sun, 22 Dec 2019 22:55:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqwsvmD4cgckAsrNoB/kS/ZtjOYrmsRj3Q54xWMIY9dD11Khnm+aFhkOT4ZZrcYWYK1Yjp1xjp9NpYHE571dU6E=
X-Received: by 2002:ac8:124a:: with SMTP id g10mr8076703qtj.303.1577084111803; 
 Sun, 22 Dec 2019 22:55:11 -0800 (PST)
MIME-Version: 1.0
References: <20191218164232.6086-1-msys.mizuma@gmail.com>
In-Reply-To: <20191218164232.6086-1-msys.mizuma@gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 23 Dec 2019 12:25:00 +0530
Message-ID: <CACi5LpMwSvqBOBuKAbjv5DRwAuQ8OJ-s71Yv0rLPp2X+1WHkeg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] arm64: handle "reserved" entries in /proc/iomem
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
X-MC-Unique: W8uFAakqOiCzhyeTuDka-Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_225517_417636_D44B74C1 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: James Morse <james.morse@arm.com>, Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Thanks for the patches Masa,

On Wed, Dec 18, 2019 at 10:13 PM Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
>
> In recent arm64 kernels, /proc/iomem has an extended file format like:
>
>  40000000-5871ffff : System RAM
>    41800000-426affff : Kernel code
>    426b0000-42aaffff : reserved
>    42ab0000-42c64fff : Kernel data
>    54400000-583fffff : Crash kernel
>    58590000-585effff : reserved
>    58700000-5871ffff : reserved
>  58720000-58b5ffff : reserved
>  58b60000-5be3ffff : System RAM
>    58b61000-58b61fff : reserved
>
> where "reserved" entries can be an ACPI table, UEFI related code or
> data. They can be corrupted and result in early failure in booting
> a new kernel. As an actual example, LPI pending table and LPI property
> table, which are pointed by a UEFI data, are sometimes destroyed.
>
> They are expected to be preserved across kexec'ing.
>
> Changelog:
>     v3: - Re-based to the latest commit (bd07796).
>         - Added Tested-by tag from Bhupesh and Masayoshi
>         - Added an error handling in case
>           mem_regions_alloc_and_exclude() fails (0002 patch).
>
> AKASHI Takahiro (3):
>   kexec: add variant helper functions for handling memory regions
>   arm64: kexec: allocate memory space avoiding reserved regions
>   arm64: kdump: deal with a lot of resource entries in /proc/iomem
>
>  kexec/arch/arm64/crashdump-arm64.c |  25 ++---
>  kexec/arch/arm64/kexec-arm64.c     | 153 ++++++++++++++++++-----------
>  kexec/mem_regions.c                |  42 ++++++++
>  kexec/mem_regions.h                |   7 ++
>  4 files changed, 153 insertions(+), 74 deletions(-)

The changes look fine to me (the patches already have my Tested-by).

Hi Simon,

Can you please help pick these changes for upstream kexec-tools and
arm64 kexec is broken on few machines in the absence of these changes.
The corresponding linux change (see [0]) has already been accepted in
linux-next tree.

[0]. ab0eb16205b4 ("efi/memreserve: Register reservations as
'reserved' in /proc/iomem")

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
