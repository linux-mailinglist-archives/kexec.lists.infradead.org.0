Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D88CDA7C
	for <lists+kexec@lfdr.de>; Mon,  7 Oct 2019 05:00:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZIF36aTEmKOwTWqRBAoMQ+hhD6X0BW7SlzcTWTPS00=; b=nDce2fft0irjl2
	GWuf9+3gKcp1r9wilGmpiK3usj8oDfQ8WhjDSHScrsXBQtlX1Y82RRzAPxZZo3xAtb2wxA7zSJG76
	BdTUhtGA3sUZ896jzMv2C0xzJcRpGtUKdB2EjLUJohHVHCB9uJ3k6aILrVyQCGvR0occsSPdogi0K
	klAVJnh9c4cgbmQuM7IUC44nhC7Zyj8FQgvemyPdXqPuf7Q8GTCS6OHn6zvzF66I26a50GHjd6/LH
	kobj/1iAWvfhT4Z5AT1eniCb5usE7vJ9WTybNvvyEi1NeLvTme2LU73bxLT1B1Oo94gnN+uMZdC5O
	XhdiyAXzrT7NonUh0Xmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHJGX-0004wg-LW; Mon, 07 Oct 2019 03:00:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHJGM-0004sK-Th
 for kexec@lists.infradead.org; Mon, 07 Oct 2019 03:00:44 +0000
Received: by mail-pf1-x444.google.com with SMTP id q12so7679073pff.9
 for <kexec@lists.infradead.org>; Sun, 06 Oct 2019 20:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vTvh0FQZ/KhCJ68up9YEl9SX+BeG73ASVfHO5zvMDJM=;
 b=pnBW4+yNeJiOvFev/FBahaxuA/+IKA/Rf8nRcxzB4pKZONAC2XLm/hnyyDBsGjehcg
 wm8TGc/FQXnVFemowR75iS6+8TAVudcc/tBCLYGtCXx0I1phqvpnwlxx9bhiQ/VBNyDZ
 6MWPBECh8S8kw6mPxsNixJ8AblZckIusrtc3cmIfxg98IubDa+fy0ldWi3aulLmVn7eF
 GJ82B37gvl+J/1leoRKWvb0nnUSMCyyYRD9H1bCgrmtNCKMKyTljCRAoia6v2BdX0ReQ
 vO6yfijhIUUPCY2Dk/tRMTrIVZBp5+LUv+qtEd07neyox/ANflXgDb7m9wQf1nKId045
 OKsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=vTvh0FQZ/KhCJ68up9YEl9SX+BeG73ASVfHO5zvMDJM=;
 b=oPxWISrBF0SDgTR114vEyqvDAAlm6LGoshQ44TIJJtYJbQnWQvI+i9UvYco28iZrM7
 VWQAh5zirXv+jL3hY4TzWPwOQ+DynIjY+D9Mr6v16vu2Anps8p90SfgbNnrB4Xon+U5b
 HGyz5D1uERYo6esOOR42i3wCcoO2SOrb4cKOXsDcOCQKLjwBQOxgrQ7y6hTX7K14JF7z
 uuB0Q4q2y7PbEXM7W3JOjjyugoOmSzRkBre1hsYDg/4p8MmHq7YTCRuv8s+0fis+R5x+
 miA1Q/T7xvYclMEOHy+Yif6IWa+X0mQ9iUITar0iI7AF8g5jw2zH5gOOikNqeQ4hagLs
 SbvA==
X-Gm-Message-State: APjAAAVnAxHLiJYyn6ilAaDKUHg1shEcHSXzJf522zkah8VEpECWfj6k
 ZeI+3xnlhyC1fAfMpI6x9Q+aUA==
X-Google-Smtp-Source: APXvYqw1T1sFm6H6Vjb3uGu/gG/MP1nBY1c5P92A6GhL0ICys7/bELhWv37NMbR6VjUTvd442kiViQ==
X-Received: by 2002:a17:90a:17cb:: with SMTP id
 q69mr30314340pja.135.1570417241029; 
 Sun, 06 Oct 2019 20:00:41 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id u9sm11554379pjb.4.2019.10.06.20.00.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 06 Oct 2019 20:00:40 -0700 (PDT)
Date: Mon, 7 Oct 2019 12:04:38 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: Re: [PATCH 0/3] arm64: kexec_file: add kdump
Message-ID: <20191007030436.GW18778@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com, james.morse@arm.com,
 kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190912060150.10818-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912060150.10818-1-takahiro.akashi@linaro.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_200042_961008_26F304D5 
X-CRM114-Status: GOOD (  16.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Reminder.
This patch set is still applicable to v5.4-rc although there is one minor
conflict in a comment; It is trivial and can easily be fixed.

While this patch works on v5.4, we cannot read a generated core dump
file with crash command, even, of the latest v7.2.7. This is due to
a newly added 52-bit address support (and related changes in mm).
The issue, as a nature of kdump, does exist with *legacy*
(non-kexec_file_load-based) kdump, too.
(We will need a kernel patch as well as patches on crash to fix the issue
and some guys have already been working.)

So I'd like to request you to keep reviewing my patch.

Thanks,
-Takahiro Akashi


On Thu, Sep 12, 2019 at 03:01:47PM +0900, AKASHI Takahiro wrote:
> This is the last piece of my kexec_file_load implementation for arm64.
> It is now ready for being merged as some relevant patch to dtc/libfdt[1]
> has finally been integrated in v5.3-rc1.
> (Nothing changed since kexec_file v16[2] except adding Patch#1 and #2.)
> 
> Patch#1 and #2 are preliminary patches for libfdt component.
> Patch#3 is to add kdump support.
> 
> [1] commit 9bb9c6a110ea ("scripts/dtc: Update to upstream version
>     v1.5.0-23-g87963ee20693"), in particular
> 	7fcf8208b8a9 libfdt: add fdt_append_addrrange()
> [2] http://lists.infradead.org/pipermail/linux-arm-kernel/2018-November/612641.html
> 
> AKASHI Takahiro (3):
>   libfdt: define UINT32_MAX in libfdt_env.h
>   libfdt: include fdt_addresses.c
>   arm64: kexec_file: add crash dump support
> 
>  arch/arm64/include/asm/kexec.h         |   4 +
>  arch/arm64/kernel/kexec_image.c        |   4 -
>  arch/arm64/kernel/machine_kexec_file.c | 105 ++++++++++++++++++++++++-
>  include/linux/libfdt_env.h             |   3 +
>  lib/Makefile                           |   2 +-
>  lib/fdt_addresses.c                    |   2 +
>  6 files changed, 112 insertions(+), 8 deletions(-)
>  create mode 100644 lib/fdt_addresses.c
> 
> -- 
> 2.21.0
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
