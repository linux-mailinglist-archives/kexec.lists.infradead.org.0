Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BD7C999C
	for <lists+kexec@lfdr.de>; Thu,  3 Oct 2019 10:14:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiwdIyDVqUlYPAzDLwB5HRGlCCMAync9BTbB6L/5zG0=; b=MnUaylK4xvtIzn
	nVkyewwNh1oWMhjkY53ttM9d7ef6Z2t4su4K0C0SALFZS9s1BoGqwDv6IfbOHD5RQaWIY/THnSfyw
	pbjL5smd92wHk/GmKwQdr7lSvoOpwHLoLW3OozG7tPjLIWUh/bH0XDGG9hMwbKJkzDjxzma0SRsVs
	Zaw21xozWfllwJbuPLSM67LgSXDbrAya4u7sSUXqBIyqtPmQ3Bs7pp/2qUB8GGypmRmeUCeuy65Yl
	BdrPrmalTeKISZMsmuLrPt1TyTzftZj95a+p/dmTl/Goc9ts1+o66ztjy+jNHXGBqIzozCxOtXbpB
	wmGoveamCFS4y/ize/OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFwFf-0005cL-Gg; Thu, 03 Oct 2019 08:14:19 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFwFZ-0005bu-BN
 for kexec@lists.infradead.org; Thu, 03 Oct 2019 08:14:14 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id BEBAC25AED2;
 Thu,  3 Oct 2019 18:14:08 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B8075940852; Thu,  3 Oct 2019 10:14:06 +0200 (CEST)
Date: Thu, 3 Oct 2019 10:14:06 +0200
From: Simon Horman <horms@verge.net.au>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
Message-ID: <20191003081406.5qmzlmlpwobydfok@verge.net.au>
References: <20191001151416.GA25667@ls3530.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001151416.GA25667@ls3530.fritz.box>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_011413_537078_70D21361 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 05:14:16PM +0200, Helge Deller wrote:
> When compiling kexec-tools on a 32-bit platform, assigning an
> (unsigned long long) value to an (unsigned long) variable creates
> this warning:
> 
> elf_info.c: In function 'read_phys_offset_elf_kcore':
> elf_info.c:805:14: warning: conversion from 'long long unsigned int' to 'long unsigned int' changes value from '18446744073709551615' to '4294967295'
>   805 |  *phys_off = UINT64_MAX;
>       |              ^~~~~~~~~~
> 
> Fix it by casting UINT64_MAX to (unsigned long) before storing it to *phys_off.
> 
> Signed-off-by: Helge Deller <deller@gmx.de>
> 
> diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
> index 2bce5cb..4d16983 100644
> --- a/util_lib/elf_info.c
> +++ b/util_lib/elf_info.c
> @@ -802,7 +802,7 @@ int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
>  {
>  	int ret;
> 
> -	*phys_off = UINT64_MAX;
> +	*phys_off = (unsigned long) UINT64_MAX;

This seems to mask the problem that UINT64_MAX is not the right
initialiser for unsigned long values on 32-bit platforms.

Could we consider using UINT64_MAX from limits.h instead?

> 
>  	ret = read_elf(fd);
>  	if (!ret) {
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
