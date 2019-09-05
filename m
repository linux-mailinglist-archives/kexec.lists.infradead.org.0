Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21938AA8FC
	for <lists+kexec@lfdr.de>; Thu,  5 Sep 2019 18:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9wzdNsiC3h5kqh6ovre1cNam1IqnanbN8YciuRT6+c=; b=mcq4bBR5QLhz5R
	/JEEFwPbu3SU6TPbKNpx/kmwLX48S0CdeiHGXJHpOkwtKG4CJSvWmoV8lGqnJPRhZNfZ0P9LvBp2m
	NBBiJbI5uXZBsmsWmFeVzTXAx+mWwx+kkH1z4Q0CuS+INXk0pf6HHa/b3oF56LpaaPrEVGleiNl70
	tsvS3SAca/uOpNGi7R2Iajs4AfjQJ7EqdCRO1MwL8bmyre0q1Hcg6vpba/f500hVUmEPy5yZ0fEqj
	6eCXVayDdXxFwYymnRWzgmJ2EU/eu3i4Qh4aXO97xrNKYJCFW3+iD4ZjZFZaFUSgUUADJiF5w23ep
	9n6JiwFJIDk4lMUahUgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5udU-0000Uc-U8; Thu, 05 Sep 2019 16:29:29 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5udN-0000Tf-JJ
 for kexec@lists.infradead.org; Thu, 05 Sep 2019 16:29:23 +0000
Received: from zn.tnic (p200300EC2F0A5F00ED1F85EF3FFCFB3D.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:5f00:ed1f:85ef:3ffc:fb3d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1517D1EC067D;
 Thu,  5 Sep 2019 18:29:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1567700955;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=5hqS2Tnt+MhJww+3RsaYT7pTPBcPNPDApzxd3gjYDLs=;
 b=Hp+EWvzEZWT9JITB7Z/lfDdAVLd/50JNp503vSkUFtg2WY8MtGXFtG3AKBFQbMRP8AF1dZ
 mGZM7TUdwlPWIpyWuovoYTlGhQlGvm+ja+hsjJ+y00qheLbDDpS8lb1VbmaoN+J7wBvZw3
 IkAg7GEBXtT+GLwzYLjPfxPm3Deb1QY=
Date: Thu, 5 Sep 2019 18:29:09 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v2] x86/kdump: Reserve extra memory when SME or SEV is
 active
Message-ID: <20190905162909.GF19246@zn.tnic>
References: <20190826044535.9646-1-kasong@redhat.com>
 <20190830164513.GE30413@zn.tnic>
 <e70f1e99-f696-51e2-f50c-148bcda5dfb6@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e70f1e99-f696-51e2-f50c-148bcda5dfb6@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_092921_790696_CC0DE972 
X-CRM114-Status: GOOD (  19.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Sep 02, 2019 at 03:38:22PM +0800, Kairui Song wrote:
> Will it be good if the final code looks like this?
> 
> diff --git a/arch/x86/kernel/setup.c b/arch/x86/kernel/setup.c
> index 48115cf11e0f..754b25d6e785 100644
> --- a/arch/x86/kernel/setup.c
> +++ b/arch/x86/kernel/setup.c
> @@ -526,6 +526,69 @@ static int __init reserve_crashkernel_low(void)
>  	return 0;
>  }
> +static int __init crashkernel_find_region(
> +		unsigned long long *base,
> +		unsigned long long *size,
> +		bool high)

Those should be aligned at the opening brace.

> +{
> +	unsigned long long start, mem_enc_req = 0;

Declare that mem_enc_req in the if (!high) branch below, where you need it only.

> +
> +	/*
> +	 * *base == 0 means: find the address automatically, else just
> +	 * verify the region is useable
> +	 */
> +	if (*base) {
> +		start = memblock_find_in_range(*base, *base + *size,
> +					       *size, 1 << 20);
> +		if (start != *base) {
> +			pr_info("crashkernel reservation failed - memory is in use.\n");
> +			return -EBUSY;

I don't like functions which change external variables passed as
pointers but then in the error case, change those unnecessarily. Write
into *base and *size only in the success case pls and use local vars for
the intermediate results.

Also, those retvals are not visible to userspace - just return negative for
error and 0 for success.

> +		}
> +		return 0;
> +	}
> +
> +	/*
> +	 * Set CRASH_ADDR_LOW_MAX upper bound for crash memory,
> +	 * crashkernel=x,high reserves memory over 4G, also allocates
> +	 * 256M extra low memory for DMA buffers and swiotlb.
> +	 * But the extra memory is not required for all machines.
> +	 * So try low memory first and fall back to high memory
> +	 * unless "crashkernel=size[KMG],high" is specified.
> +	 */
> +	if (!high) {

	if (high)
		goto high_reserve;

	< now save an indentation level >

> +		/*
> +		 * When SME/SEV is active and not using high reserve,
> +		 * it will always required an extra SWIOTLB region.
> +		 */
> +		if (mem_encrypt_active())
> +			mem_enc_req = ALIGN(swiotlb_size_or_default(), SZ_1M);
> +
> +		*base = memblock_find_in_range(CRASH_ALIGN,
> +					       CRASH_ADDR_LOW_MAX,
> +					       *size + mem_enc_req,
> +					       CRASH_ALIGN);
> +		if (*base) {
> +			if (mem_enc_req) {
> +				pr_info("Memory encryption is active, crashkernel needs %ldMB extra memory\n",
> +					(unsigned long)(mem_enc_req >> 20));
> +				*size += mem_enc_req;
> +			}
> +			return 0;
> +		}
> +	}
> +

high_reserve:

> +	/* Try high reserve */
> +	*base = memblock_find_in_range(CRASH_ALIGN,
> +				       CRASH_ADDR_HIGH_MAX,
> +				       *size, CRASH_ALIGN);
> +	if (!*base) {
> +		pr_info("crashkernel reservation failed - No suitable area found.\n");
> +		return -ENOMEM;
> +	}
> +
> +	return 0;
> +}

...

> If you are OK with this, I will split it into two patch and send V3.

With that, yes, this looks a bit better.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
