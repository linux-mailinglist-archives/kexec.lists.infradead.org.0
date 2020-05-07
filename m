Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 398A81C7E77
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:20:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XOQGiKauEUk+W98RpsOMZ30HHfusptzdM2m/FC7jTM=; b=ihpXGw0yM3BjaT
	8mx8EcCihW4caZlnTUjy7k4LkizDEzAbQEgE1J8vQRGjp30KCKQXsUOzTAjy9XRXumEofI11rrtsK
	+5fNy1DdrrKbOUiyP9pqqS5A4MZolHg3k7GurMV5oSzWbEJk598XGLxP7T8JycVeozVQ6axuvj/xj
	FwhOJH+Jll7duESiFTpIA1qOynYFxs2fWTbPr/PP+8x0tlmf4af6r9HbZ3lkJFwUOHnrodOQYznb3
	3UEzCfWSHIytJuc88rKN182MF45z5RkMgGYjejyQlRjUL04CGiMSfszrDPrfPfsLfv2e7DV1oTTwJ
	zQ0VI4c+/yqa1kbtGoag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUGy-0003Xn-JW; Thu, 07 May 2020 00:20:20 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUGw-0003XB-31; Thu, 07 May 2020 00:20:18 +0000
Subject: Re: [PATCH] kernel: add panic_on_taint
To: Rafael Aquini <aquini@redhat.com>, linux-kernel@vger.kernel.org
References: <20200506222815.274570-1-aquini@redhat.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <60e5c03f-ab34-8095-e2f3-e0ee6a1fb9c1@infradead.org>
Date: Wed, 6 May 2020 17:20:16 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200506222815.274570-1-aquini@redhat.com>
Content-Language: en-US
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
Cc: keescook@chromium.org, bhe@redhat.com, corbet@lwn.net,
 linux-doc@vger.kernel.org, kexec@lists.infradead.org, mcgrof@kernel.org,
 cai@lca.pw, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 5/6/20 3:28 PM, Rafael Aquini wrote:
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 7bc83f3d9bdf..75c02c1841b2 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -3404,6 +3404,9 @@
>  	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
>  			on a WARN().
>  
> +	panic_on_taint	panic() when the kernel gets tainted, if the taint
> +			flag being set matches with the assigned bitmask.
> +

Where is the bitmask assigned?

I.e., maybe this text should be more like:

	panic_on_taint=<bitmask>
and then the bits are explained.  See e.g. panic= and panic_print=
in this same file.


>  	crash_kexec_post_notifiers
>  			Run kdump after running panic-notifiers and dumping
>  			kmsg. This only for the users who doubt kdump always


-- 
~Randy


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
