Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 050E91BE4AC
	for <lists+kexec@lfdr.de>; Wed, 29 Apr 2020 19:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4gOrB60EyWYYg+yVZEadn6YEF95juw0ebz4LbrYQkM=; b=F4u6X27WWpYU02
	EfoQXeWUFwVB2KYs9pOkLTnJjkEozAOoIiFqZyrHNUfyc4g2WFUoDldJMOACLjySy73GP8K1e6Dhp
	LpIeiKLLZMVugjRh1DDJV/foLW1fxJ7KOzFb/I3GkYZ+IqXZO7IlZq3mBgkKKRSKqEPhJ2R2XveuH
	oX07ASZz7kHvXwzkeRsDxYrzbSIY4SoJ0jDN48X/GPPhg4wlD4qdNIxqSVCdyjo5Zh0SgV75gsE6F
	8e1z/XvS6Vwqm++RSzm6RaRehBZTZLmL6yPubynWI5ZteUSyw7c9MIWr1s04Cd7mW5eUiKsCcrtZy
	trH3iuuP7MTPJDfCB+lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTq7b-0004UW-Aw; Wed, 29 Apr 2020 17:03:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTq5g-0002dU-IV; Wed, 29 Apr 2020 17:01:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D8D1106F;
 Wed, 29 Apr 2020 10:01:43 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AE7A3F73D;
 Wed, 29 Apr 2020 10:01:40 -0700 (PDT)
Subject: Re: [PATCH v9 10/18] arm64: kexec: cpu_soft_restart change argument
 types
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-11-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e6faa23d-27a8-838a-33ef-2a6ad8a5c746@arm.com>
Date: Wed, 29 Apr 2020 18:01:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-11-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_100144_727943_3E8D9382 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> Change argument types from unsigned long to a more descriptive
> phys_addr_t.

For 'entry', which is a physical addresses, sure...

> diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
> index ed50e9587ad8..38cbd4068019 100644
> --- a/arch/arm64/kernel/cpu-reset.h
> +++ b/arch/arm64/kernel/cpu-reset.h
> @@ -10,17 +10,17 @@
>  
>  #include <asm/virt.h>
>  
> -void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
> -	unsigned long arg0, unsigned long arg1, unsigned long arg2);

> +void __cpu_soft_restart(phys_addr_t el2_switch, phys_addr_t entry,
> +			phys_addr_t arg0, phys_addr_t arg1, phys_addr_t arg2);

This looks weird because its re-using the hyp-stub API, because it might call the hyp-stub
from the idmap. entry is passed in, so this isn't tied to kexec. Without tying it to
kexec, how do you know arg2 is a physical address?
I think it tried to be re-usable because 32bit has more users for this.

arg0-2 are unsigned long because the hyp-stub is just moving general purpose registers around.

This is to avoid casting?
Sure, its only got one caller. This thing evolved because the platform-has-EL2 and
kdump-while-KVM-was-running code was bolted on as they were discovered.


> -static inline void __noreturn cpu_soft_restart(unsigned long entry,
> -					       unsigned long arg0,
> -					       unsigned long arg1,
> -					       unsigned long arg2)
> +static inline void __noreturn cpu_soft_restart(phys_addr_t entry,
> +					       phys_addr_t arg0,
> +					       phys_addr_t arg1,
> +					       phys_addr_t arg2)
>  {
>  	typeof(__cpu_soft_restart) *restart;
>  
> -	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
> +	phys_addr_t el2_switch = !is_kernel_in_hyp_mode() &&
>  		is_hyp_mode_available();

What on earth happened here!?


>  	restart = (void *)__pa_symbol(__cpu_soft_restart);


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
