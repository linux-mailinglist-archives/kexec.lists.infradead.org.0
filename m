Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2F1CDC48
	for <lists+kexec@lfdr.de>; Mon,  7 Oct 2019 09:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fZb1tEivXNqqCzeqe8XKuOjD2WZdhePtsnnUlD5HpI=; b=uQW3eGNGAU2pML
	o0Ktqkj2OQDJOINdvfex+ZK4hOxZSQhncl2YSrvUQ/xHsz018w8aMx+dTwEVJJ8YVN2ot6ykW6KLz
	DzBA4Zu6r934AJbhChHUDuPE4uhEUBFJfQWrCKMtYMf05Xj+yZn9+/lX5/zdyp1UN7fFjq/k7rvhb
	nbTqrb6hEZ0OCWay3br21lmQndvH38YL+yzgwIGqF0K6gl4RbWQoffM6kw2o2kCW8pMoZTHsz/G3j
	aQIeTTckWf+koCNxhxtRzd1UyLOOMTLm1Tu2JsDLiJDJ09FJkcUCcFwyf4sLyX6K9L+EcmYLKNAX6
	h5wwQE6G9XaCx0MkrUXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHNCg-0003xf-ST; Mon, 07 Oct 2019 07:13:10 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHNCc-0003wf-3Q
 for kexec@lists.infradead.org; Mon, 07 Oct 2019 07:13:09 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 6D01425B7B2;
 Mon,  7 Oct 2019 18:12:59 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 63715E2108E; Mon,  7 Oct 2019 09:12:57 +0200 (CEST)
Date: Mon, 7 Oct 2019 09:12:57 +0200
From: Simon Horman <horms@verge.net.au>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
Message-ID: <20191007071257.qs4dnqmyqk4difzy@verge.net.au>
References: <20191001151416.GA25667@ls3530.fritz.box>
 <20191003081406.5qmzlmlpwobydfok@verge.net.au>
 <2ac17dd1-99ef-3528-a05e-d51f8af01c95@gmx.de>
 <20191004093737.wftu7iat2gk3abq6@verge.net.au>
 <8157edc8-69cb-33b8-ae1c-7a0d80845c9d@gmx.de>
 <20191004101423.jqpakrotimjjyp3w@verge.net.au>
 <20191004110109.GA15439@ls3530.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004110109.GA15439@ls3530.fritz.box>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_001308_125654_5A29A8CA 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri, Oct 04, 2019 at 01:01:09PM +0200, Helge Deller wrote:
> When compiling kexec-tools on a 32-bit platform, assigning an
> (unsigned long long) value to an (unsigned long) variable creates
> this warning:
> 
> elf_info.c: In function 'read_phys_offset_elf_kcore':
> elf_info.c:805:14: warning: conversion from 'long long unsigned int' to
>      'long unsigned int' changes value from '18446744073709551615' to '4294967295'
>   805 |  *phys_off = UINT64_MAX;
> 
> Fix it by using ULONG_MAX instead of UINT64_MAX.
> 
> Signed-off-by: Helge Deller <deller@gmx.de>

Thanks, applied.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
