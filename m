Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D35AF583
	for <lists+kexec@lfdr.de>; Wed, 11 Sep 2019 07:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLhF0P+RKt6uxsPuPmTIqE+5vpqIGWsCKpE7Fm4GoOY=; b=nYNA9eYO4mogSm
	ZtEYCsod6+aif/BvdiEXcCAy3vV79FPQAVuUbGawAIJWv+vyy8srJFSwF62qP7e0LEVQsvupmEWDM
	voNl15DxptCsYh/tScu+BNzwlRVC0cfX5xJ0nFNlgHrzhoyQU0sqSwAK5uG2MX2Q3yspetMGvu++P
	7SNssc7OyitxHza6xOEULHNzdQGUktOKebQQBOTs5qKEEORExDfxSkIsRHzP27HAq6x1eMeI63/T9
	9kfixSg3cPm4HrUw5HL4Krt5xRSGCUDHvfFWZwMztsiCbwveL1OXKzzSRYFlA56tqbP235/0WMmsN
	Dlcu7XcEPTA8gHJjlydg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7vcG-0002v1-CV; Wed, 11 Sep 2019 05:56:32 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7vc9-0002mq-2E
 for kexec@lists.infradead.org; Wed, 11 Sep 2019 05:56:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id t9so1911421wmi.5
 for <kexec@lists.infradead.org>; Tue, 10 Sep 2019 22:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pEyEdgeX1g5OenAFJnbC/h1ZHD2LucUgJ4uwQyK8UPw=;
 b=RspCF2eZdIRZpGJb/Bb3U2nZ5Ykiwaq2u4fT5bs7TQ7hkf+PKsjtqNIkTJcpAlIT6p
 aJjv9DbYXB9Qat6ucRicUiuuqVjXw/+c31TokSwaLqr0unfX5ND+WEKg2oHyhYha3JVz
 jeKC+46n3CDxWLxvrmYPvOwDPWvNLnjpEEjM/aNzQGt8f0kN1qT5pr1mweK+LPfiMdcq
 ub20opiPTjmretlmD2o1n6Z4wEH0bzadmXlH6FEwBK932/sVynBtSdjVcqZYehoVPg+8
 nI6A1CpkDyOIzfG6kblGsh/Ze5I0dnMfZN2s3ErsorXYPxtRgCwX6hO8hueYcDNTDts6
 KDvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=pEyEdgeX1g5OenAFJnbC/h1ZHD2LucUgJ4uwQyK8UPw=;
 b=gkqLnLM/9sekT0yhJ79mUerPOCAHZkoh5/Ps0pjgmlV7KK/iNhijOH7pX0P2isedkK
 8Q6QHq4DraEpcnIwUtCiVQKk7XzNkQ7A0fsEYYItCqurhthhWwygHNua0mA+FtzZMbur
 CVo5mUMUTHBbjmRrp3QnicwcwGrkdSNBhs97KTHkd47t0mQ7sP/sZNbjYgl/du5WASYp
 INT86MfCUpPY4KWUztYXw9wYoS4bPCN7JSDRfXXpSGLt5e1XqQ3lFqFHmvV3d1VGiKeE
 lP69WuMARFyefpUhgMI0mUcZsYFAtztSQ1Timyf2OI+u3M673xCcaMvu3YVyraWLXf/S
 zIqw==
X-Gm-Message-State: APjAAAWMHULvTjOSWuaqEZB5P3KTQQ1q1beNaRoWx+tJXNU0AWBTgJ8q
 loH+ObNEUcCJTsa64cr6pSU=
X-Google-Smtp-Source: APXvYqyHfdI1gU9t8o5JD3NxLVx8gGCgl1pXGWlT794Dw5LYSyatOO1rdsBjVPwbkdtZ9z6jBAn/Cg==
X-Received: by 2002:a7b:c8c6:: with SMTP id f6mr2294977wml.75.1568181380702;
 Tue, 10 Sep 2019 22:56:20 -0700 (PDT)
Received: from gmail.com (2E8B0CD5.catv.pool.telekom.hu. [46.139.12.213])
 by smtp.gmail.com with ESMTPSA id t25sm1917508wmj.29.2019.09.10.22.56.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 22:56:20 -0700 (PDT)
Date: Wed, 11 Sep 2019 07:56:18 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v3 2/2] x86/kdump: Reserve extra memory when SME or SEV
 is active
Message-ID: <20190911055618.GA104115@gmail.com>
References: <20190910151341.14986-1-kasong@redhat.com>
 <20190910151341.14986-3-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190910151341.14986-3-kasong@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_225625_118003_1EBF2DAB 
X-CRM114-Status: GOOD (  23.59  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


* Kairui Song <kasong@redhat.com> wrote:

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
> ---
>  arch/x86/kernel/setup.c | 20 +++++++++++++++++---
>  1 file changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index 71f20bb18cb0..ee6a2f1e2226 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -530,7 +530,7 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
>  					  unsigned long long *crash_size,
>  					  bool high)
>  {
> -	unsigned long long base, size;
> +	unsigned long long base, size, mem_enc_req = 0;
>  
>  	base = *crash_base;
>  	size = *crash_size;
> @@ -561,11 +561,25 @@ static int __init crashkernel_find_region(unsigned long long *crash_base,
>  	if (high)
>  		goto high_reserve;
>  
> +	/*
> +	 * When SME/SEV is active and not using high reserve,
> +	 * it will always required an extra SWIOTLB region.
> +	 */
> +	if (mem_encrypt_active())
> +		mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> +
>  	base = memblock_find_in_range(CRASH_ALIGN,
> -				      CRASH_ADDR_LOW_MAX, size,
> +				      CRASH_ADDR_LOW_MAX,
> +				      size + mem_enc_req,
>  				      CRASH_ALIGN);

What sizes are we talking about here?

- What is the possible size range of swiotlb_size_or_default()

- What is the size of CRASH_ADDR_LOW_MAX (the old limit)?

- Why do we replace one fixed limit with another fixed limit instead of 
  accurately sizing the area, with each required feature adding its own 
  requirement to the reservation size?

I.e. please engineer this into a proper solution instead of just 
modifying it around the edges.

For example have you considered adding some sort of 
kdump_memory_reserve(size) facility, which increases the reservation size 
as something like SWIOTLB gets activated? That would avoid the ugly 
mem_encrypt_active() flag, it would just automagically work.

Thanks,

	Ingo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
