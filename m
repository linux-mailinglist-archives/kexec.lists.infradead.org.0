Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC26A3C75
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 18:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JWHqv5Wzia1lSs9Wt+Rvl7cg3/mvPJBTyxf547PJO8=; b=iC8BLu8FJItShL
	UNopm+//PxcDYLDNnTFJILAyH+LzrBoqlG6BvEEjRL9pzK7nN/AmC8wGyHY0MFLgZ2O5/H6UtW5qn
	33hmW/RfTBQ2X/vf28fJ9UjppI/aOf48hOAoNT9bEjU8I+AL8pDB11mQ/20iLGRYSNvkhQBp8yEXU
	UZr5Lp4o1AJds3dEaS3lR/JyQL/zgPTbBGClpGtbNh7RyJi2xwkkemFW0WbGSLplhMMojBUYfjqAH
	vbhTI74mvFTGKYZ2rEdn+FlknGKxNau04Eeyui44C0bglRVIrSwqDtKby71OEZ86phEccu/hthT+Q
	1P5izsCTOCGhZ6xO7B1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3k36-0007Lw-FL; Fri, 30 Aug 2019 16:46:56 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3k1a-0005mY-Tr
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 16:45:24 +0000
Received: from zn.tnic (p200300EC2F0AAA00B4BCDAC90C3E20C3.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:aa00:b4bc:dac9:c3e:20c3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 85D001EC0959;
 Fri, 30 Aug 2019 18:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1567183517;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=WMl6FqrCGGFKUtU/ehcmIWhYaPXfT9KQz+RU6G4D4NY=;
 b=aeMzdkieaJDnTF8lR/wP6brKjs1KZi6UM7ZApCw+MKJbcZ0PcETlALV41pmWxotKuakI7u
 j5KbDsbFtoIEZnjksPMDwGnYt/BfJPlpo3a/bavonsMhcJVQtGPO09rgIDp5PPivxL7S45
 5Wjq13AwqXpZGikCRAhEAFKMRXnC2ig=
Date: Fri, 30 Aug 2019 18:45:13 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v2] x86/kdump: Reserve extra memory when SME or SEV is
 active
Message-ID: <20190830164513.GE30413@zn.tnic>
References: <20190826044535.9646-1-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826044535.9646-1-kasong@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_094523_304806_1B8B95EA 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Thomas Lendacky <Thomas.Lendacky@amd.com>,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>, x86@kernel.org,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 12:45:35PM +0800, Kairui Song wrote:
> Since commit c7753208a94c ("x86, swiotlb: Add memory encryption support"),
> SWIOTLB will be enabled even if there is less than 4G of memory when SME
> is active, to support DMA of devices that not support address with the
> encrypt bit.
> 
> And commit aba2d9a6385a ("iommu/amd: Do not disable SWIOTLB if SME is
> active") make the kernel keep SWIOTLB enabled even if there is an IOMMU.
> 
> Then commit d7b417fa08d1 ("x86/mm: Add DMA support for SEV memory
> encryption") will always force SWIOTLB to be enabled when SEV is active
> in all cases.
> 
> Now, when either SME or SEV is active, SWIOTLB will be force enabled,
> and this is also true for kdump kernel. As a result kdump kernel will
> run out of already scarce pre-reserved memory easily.
> 
> So when SME/SEV is active, reserve extra memory for SWIOTLB to ensure
> kdump kernel have enough memory, except when "crashkernel=size[KMG],high"
> is specified or any offset is used. As for the high reservation case, an
> extra low memory region will always be reserved and that is enough for
> SWIOTLB. Else if the offset format is used, user should be fully aware
> of any possible kdump kernel memory requirement and have to organize the
> memory usage carefully.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>
> 
> ---
> Update from V1:
> - Use mem_encrypt_active() instead of "sme_active() || sev_active()"
> - Don't reserve extra memory when ",high" or "@offset" is used, and
>   don't print redundant message.
> - Fix coding style problem
> 
>  arch/x86/kernel/setup.c | 31 ++++++++++++++++++++++++++++---
>  1 file changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index bbe35bf879f5..221beb10c55d 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -528,7 +528,7 @@ static int __init reserve_crashkernel_low(void)
>  
>  static void __init reserve_crashkernel(void)
>  {
> -	unsigned long long crash_size, crash_base, total_mem;
> +	unsigned long long crash_size, crash_base, total_mem, mem_enc_req;
>  	bool high = false;
>  	int ret;
>  
> @@ -550,6 +550,15 @@ static void __init reserve_crashkernel(void)
>  		return;
>  	}
>  
> +	/*
> +	 * When SME/SEV is active, it will always required an extra SWIOTLB
> +	 * region.
> +	 */
> +	if (mem_encrypt_active())
> +		mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> +	else
> +		mem_enc_req = 0;

Hmm, ugly.

You set mem_enc_reg here ...

> +
>  	/* 0 means: find the address automatically */
>  	if (!crash_base) {
>  		/*
> @@ -563,11 +572,19 @@ static void __init reserve_crashkernel(void)
>  		if (!high)
>  			crash_base = memblock_find_in_range(CRASH_ALIGN,
>  						CRASH_ADDR_LOW_MAX,
> -						crash_size, CRASH_ALIGN);
> -		if (!crash_base)
> +						crash_size + mem_enc_req,
> +						CRASH_ALIGN);
> +		/*
> +		 * For high reservation, an extra low memory for SWIOTLB will
> +		 * always be reserved later, so no need to reserve extra
> +		 * memory for memory encryption case here.
> +		 */
> +		if (!crash_base) {
> +			mem_enc_req = 0;

... but you clear it here...

>  			crash_base = memblock_find_in_range(CRASH_ALIGN,
>  						CRASH_ADDR_HIGH_MAX,
>  						crash_size, CRASH_ALIGN);
> +		}
>  		if (!crash_base) {
>  			pr_info("crashkernel reservation failed - No suitable area found.\n");
>  			return;
> @@ -575,6 +592,7 @@ static void __init reserve_crashkernel(void)
>  	} else {
>  		unsigned long long start;
>  
> +		mem_enc_req = 0;

... and here...

>  		start = memblock_find_in_range(crash_base,
>  					       crash_base + crash_size,
>  					       crash_size, 1 << 20);
> @@ -583,6 +601,13 @@ static void __init reserve_crashkernel(void)
>  			return;
>  		}
>  	}
> +
> +	if (mem_enc_req) {
> +		pr_info("Memory encryption is active, crashkernel needs %ldMB extra memory\n",
> +			(unsigned long)(mem_enc_req >> 20));
> +		crash_size += mem_enc_req;
> +	}

... and then you report only when it is still set.

How about you carve out that if (!crash_base) { ... } else { } piece
into a separate function without any further changes - only code
movement? That is your patch 1.

Your patch 2 is then adding the mem_encrypt_active() check in the if
(!crash_base && !high) case, i.e., only where you need it and issuing
the pr_info from there instead of stretching that logic throughout the
whole function and twisting my brain unnecessarily?

Thx.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
