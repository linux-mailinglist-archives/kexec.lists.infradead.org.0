Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E15B6113664
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 21:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hz1cQ68vqquWq2cRFpSrmjOQdA10HT4NzGYA7VPUV1o=; b=XXtVrRsDP/u/o6uHPSS8haJ2W
	ij8Y0+ZlqFrheEZCGvbIjdhfQAJEpf0i/wpIgT9Avv2zRGL5rrOKmTaBhtYBbPiK9TnlD5hmvYX93
	ulxLQSyc2CO0L3Q+T1Pknc593YmZekaa0TONJmHa5Oj35EP66OIWFKnZBEKCc9M2jSms3Ylxxj229
	ighJZR2Pi7uUQM5Wa3QHUj+mC9V1cB4p2dTG50kXYK4Oh86na6L4UxHLlXV/FaSb4rWQTeSuH+GFZ
	7eyOYWiMaaFP3Mgs94muUUBaF2Qzw6FvYhp2IvWpHA/va9pvIOmsy7Iyah2lfcdUa0blLf0bFr7XG
	aXA2lFS+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbEs-00048N-JL; Wed, 04 Dec 2019 20:27:10 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbEj-000413-SU
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 20:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575491218;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YfQKeXnNoYxsQBvNeoTQ/YZry60QJ/3YXLUrpnggw2I=;
 b=WfrLkUO4aZWm+LqczUAOMpv9IijihYPyxiBtEjcSY5diE4AO0E1ss3g7klS8mQOS7vQTP4
 Sr5TulmMAYHE4ESwkQgn4DMOcFAw4gLs3DtTdcjqQGUS3Qt85RrqxWNjuE+2P80CcE/hpy
 HSzwMBOc+PWNpJ2/FN+iKxWF10fbnjE=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-rWsLU1tyP8GbQFfzb0b2iA-1; Wed, 04 Dec 2019 15:26:56 -0500
Received: by mail-pf1-f200.google.com with SMTP id d127so311250pfa.7
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 12:26:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YfQKeXnNoYxsQBvNeoTQ/YZry60QJ/3YXLUrpnggw2I=;
 b=jm61mfc7Xs1LRqdxaR0kfTzn9VJuhmmbUmdVRXIDVvNpmKGs8GtD0RWMJii6ldhMFg
 7xRiLE2x6zybWnAUQZjybkKwKll+y4il5kcbk8hgMKIQ2hLAsG5WU53nR+N02cGP00bZ
 P7eXZxpC9dUoil4mBf/Qw3+yOLdxWxBMatkyW+GLAL+uJDuGPSt4zj5rq3WhzZ/MW6JQ
 6cW0U1QG4+uHUL1z+mjn+g3JpmNDHBJyWyT4dUHeustUPjSa9agtvwR5vf15fLwAYm30
 LBY5wvW4EVXRgzGLrtgZE70Al1ahlEEJxwoPxnlzirPZdpah573lqUlg4Mp5Zm6UsZOc
 AFjg==
X-Gm-Message-State: APjAAAUJGJ033aRkOMcTqLru4z7yzgbFD7gICD1hG8NXp7pWw+5bu0q8
 C/83mVkQoUiOD9/wr4+ArFtKq9OekJ0PDazUKBgHC7bSlB3VGJzhLdZ7oQtGq/pbYjzcokoPPpH
 PRREmAX4c/0ViXNpjuaTE
X-Received: by 2002:a17:90a:be11:: with SMTP id
 a17mr5095400pjs.26.1575491215432; 
 Wed, 04 Dec 2019 12:26:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqyTX+qKz/Awrxl/ThBCNJPWIQMObcavP5XlWM7RVd2DLBDfFutgms5AXLhrvCBKU/i0mHVd1w==
X-Received: by 2002:a17:90a:be11:: with SMTP id
 a17mr5095373pjs.26.1575491215147; 
 Wed, 04 Dec 2019 12:26:55 -0800 (PST)
Received: from localhost.localdomain ([122.177.160.143])
 by smtp.gmail.com with ESMTPSA id s2sm9483979pfb.109.2019.12.04.12.26.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 12:26:54 -0800 (PST)
Subject: Re: [PATCH v2 0/3] arm64: kexec_file: add kdump
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, robh+dt@kernel.org, frowand.list@gmail.com
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <da0113d3-24b8-6263-b06e-0e58037f292f@redhat.com>
Date: Thu, 5 Dec 2019 01:56:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191114051510.17037-1-takahiro.akashi@linaro.org>
Content-Language: en-US
X-MC-Unique: rWsLU1tyP8GbQFfzb0b2iA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_122702_000448_4B5ABFF5 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: james.morse@arm.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Akashi,

Thanks for the patchset.

On 11/14/2019 10:45 AM, AKASHI Takahiro wrote:
> This is the last piece of my kexec_file_load implementation for arm64.
> It is now ready for being merged as some relevant patch to dtc/libfdt[1]
> has finally been integrated in v5.3-rc1.
> (Nothing changed since kexec_file v16[2] except adding Patch#1 and #2.)
> 
> Patch#1 and #2 are preliminary patches for libfdt component.
> Patch#3 is to add kdump support.
> 
> Bhepesh's patch[3] will be required for 52-bit VA support.
> Once this patch is applied, whether or not CONFIG_ARM64_VA_BITS_52 is
> enabled or not, a matching fix on user space side, crash utility,
> will also be needed.
> 
> Anyway, I tested my patch, at least, with the following configuration:
> 1) CONFIG_ARM64_BITS_48=y
> 2) CONFIG_ARM64_BITS_52=y, but vabits_actual=48
> 
> (I don't have any platform to use for
> 3) CONFIG_ARM64_BITS_52=y, and vabits_actual=52)
> 
> [1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
>      v1.5.0-23-g87963ee20693"), in particular
> 	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html
> [3] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/693411.html
> 
> Changes in v2 (Nov 14, 2019)
> * rebased to v5.4-rc7
> * no functional changes

This looks like a step in the right direction. I have some minor 
nitpicks which I have mentioned in the individual patch reviews.

With those addressed (v2?):

Tested-and-Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh

> AKASHI Takahiro (3):
>    libfdt: define UINT32_MAX in libfdt_env.h
>    libfdt: include fdt_addresses.c
>    arm64: kexec_file: add crash dump support
> 
>   arch/arm64/include/asm/kexec.h         |   4 +
>   arch/arm64/kernel/kexec_image.c        |   4 -
>   arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
>   include/linux/libfdt_env.h             |   3 +
>   lib/Makefile                           |   2 +-
>   lib/fdt_addresses.c                    |   2 +
>   6 files changed, 112 insertions(+), 9 deletions(-)
>   create mode 100644 lib/fdt_addresses.c
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
