Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB61C11EB52
	for <lists+kexec@lfdr.de>; Fri, 13 Dec 2019 20:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v0jQK6+lu5opWDMGVqNXMu2pujB29SAH39JWJxrqFkw=; b=DmsrhDT/WaAs5w
	6j/zX3wiuHU31/w3Dpb+5KGg/ETZOznvt/0wyTiGIOGd2bFTHEOrAqKbNitGAOb5lno3MBIoIe30s
	7skD0uqvyKsJkb2iU3z9eCz9bDUhp+nyMW1DJtvwnlnEQAiKTCldOJLg5tBRH/DDpRQKRL8e3Zfdz
	W3dDGSObXN1GryIrnedzI7XPZwR+64T7yHUZqTFgQNhJaVZuy/5guWK3nz9vmBRhVOqfDv4ZM/YHd
	YPISFMWLHFw+h6kS2oI9U8flw1G8S0tgHdNDxPlyyCLc+P3ePdzklBGsn2vOK+3MidgTfgds7iKSA
	AEJF7r3ruQmLrivkz2qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifr0v-0003CU-Ck; Fri, 13 Dec 2019 19:54:13 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifr0o-0003Bt-0B
 for kexec@lists.infradead.org; Fri, 13 Dec 2019 19:54:07 +0000
Received: by mail-qv1-xf42.google.com with SMTP id t7so239055qve.4
 for <kexec@lists.infradead.org>; Fri, 13 Dec 2019 11:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=brxxWfHj4r0xzdE3Vx8Vbx8NcdSoLt+ivJ6wiixCsoU=;
 b=AsaLqBSoYLdQG0bbWwnI3FieeFLlM5n+IYNvHW8zxBu2DESHR9Mqmo877V+QYLfw1F
 Rb2oqOD3y3u4OOknEm+G40tnBS/ee2y4dE7oKidqOakGcCVQOLj1PKWDToTxLvOUvqjn
 aEXHapXBNqkcm/W/NME3rY4Ktrapcj6cyhooa7Cl59+hSZgjbTJfjfXYUHhLU2qouvU1
 bzd558aQDcMffHXpdOkYErsq9BzhzKnCbP9hPslfa8W8FsjNYfdY/mRYdpfIZlzlws1h
 SswwR71o7XIKMlsY0OqD7VKoYS0QSyily0nBOAO4hD/GEnAua2dHnzPfhDL9RZJFwfy5
 lJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=brxxWfHj4r0xzdE3Vx8Vbx8NcdSoLt+ivJ6wiixCsoU=;
 b=ZqTjP/AB6KvQDDy/4X5Cwwhfo//2zcgeE4Zkbsid9sZV09beyz+d82PdF5rgaAI7US
 5QDy4Bu4bGKQTpkAyhiDnvqJlYeCZDoZJ/dNE+ciFK3sg/GDQ88h0lz7NuA3+V2+vYN5
 2WLmWeSRjsM282JqbdFWl5S9npRSL7nSZvNmmV/ZDl3d/CbBq5YxHDuZQfL66WscwJlm
 YQPanbJ/A3B4zQk7x+DOTXex0tUR+xk9oywxAqBr8K7/3D8wRGSGsKYwW/Fd2pK0q29u
 5OkBhTvlZ0nMsVePWSy8cqFNm9wUeOVHN/S5nzz/XjvL2hfBNzaSY8vNuVXEFmShAHkv
 uNTQ==
X-Gm-Message-State: APjAAAVmyM1MncIrgAuZ3qtmFQgGRQMzIgw3OfF+8btv17+Vrh0EyKlI
 9t3mOZmao/UklKsgSsNZ1Q==
X-Google-Smtp-Source: APXvYqzIkHf4/Fw35Qt23Pn2cKTF53IkyDNihGPVqT5J2Zc7GfPBu8YX5sg6oDMbYzxxGJe1vXE6Xg==
X-Received: by 2002:ad4:580b:: with SMTP id
 dd11mr14895911qvb.242.1576266844499; 
 Fri, 13 Dec 2019 11:54:04 -0800 (PST)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id n190sm3161517qke.90.2019.12.13.11.54.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Dec 2019 11:54:03 -0800 (PST)
Date: Fri, 13 Dec 2019 14:53:55 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: Re: [PATCH v2 0/3] arm64: handle "reserved" entries in /proc/iomem
Message-ID: <20191213195355.kt7gbncsx65wuwpa@gabell>
References: <20190111095946.28070-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190111095946.28070-1-takahiro.akashi@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_115406_039949_99068920 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org, Bhupesh Sharma <bhsharma@redhat.com>,
 Simon Horman <horms@verge.net.au>, James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello,

(I'm sorry if I break the mail thread...)

As Bhupesh said at:
http://lists.infradead.org/pipermail/kexec/2019-December/024142.html

Please feel free to add:

	Tested-by: Bhupesh Sharma <bhsharma@redhat.com>
	Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

Thanks!
Masa

On Fri, Jan 11, 2019 at 06:59:43PM +0900, AKASHI Takahiro wrote:
> # @James, @Bhupesh
> # Could you kindly test this patch, please?
> # I'm not quite confident that I correctly merged my patch with,
> # particularly, Bhupesh's recent change.
> 
> In recent arm64 kernels, /proc/iomem has an extended file format like:
>         40000000-5871ffff : System RAM
>           41800000-426affff : Kernel code
>           426b0000-42aaffff : reserved
>           42ab0000-42c64fff : Kernel data
>           54400000-583fffff : Crash kernel
>           58590000-585effff : reserved
>           58700000-5871ffff : reserved
>         58720000-58b5ffff : reserved
>         58b60000-5be3ffff : System RAM
>           58b61000-58b61fff : reserved
>           59a77000-59a77fff : reserved
>         5be40000-5becffff : reserved
>         5bed0000-5bedffff : System RAM
>         5bee0000-5bffffff : reserved
>         5c000000-5fffffff : System RAM
>           5da00000-5e9fffff : reserved
>           5ec00000-5edfffff : reserved
>           5ef6a000-5ef6afff : reserved
>           5ef6b000-5efcafff : reserved
>           5efcd000-5efcffff : reserved
>           5efd0000-5effffff : reserved
>           5f000000-5fffffff : reserved
> 
> where "reserved" entries can be an APCI table, UEFI related code or data,
> and they are expected to be preserved across kexec'ing.
> With this patch[1], kexec/kdump will be allowed to handle them properly.
> 
> [1] https://git.linaro.org/people/takahiro.akashi/kexec-tools.git arm64/resv_mem
> 
> AKASHI Takahiro (3):
>   kexec: add variant helper functions for handling memory regions
>   arm64: kexec: allocate memory space avoiding reserved regions
>   arm64: kdump: deal with a lot of resource entries in /proc/iomem
> 
>  kexec/arch/arm64/crashdump-arm64.c |  25 ++---
>  kexec/arch/arm64/kexec-arm64.c     | 146 +++++++++++++++++------------
>  kexec/mem_regions.c                |  42 +++++++++
>  kexec/mem_regions.h                |   7 ++
>  4 files changed, 146 insertions(+), 74 deletions(-)
> 
> -- 
> 2.19.1
> 
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
