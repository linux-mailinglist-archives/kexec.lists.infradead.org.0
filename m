Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191C543606
	for <lists+kexec@lfdr.de>; Thu, 13 Jun 2019 14:45:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFSpKw9OqFTB00L3dZ9GaU/otS8tdM71Y/X5sQfAZ3Q=; b=Of5+ELjPM+aXFy
	eM6sQ/D0N7aFXb+DqVvKUFlD70jZkv7xMR/QRnQEGI9MEIivovlF6xSlJspmudcneh72vJEgB3h0O
	SbVK7n9HTTR8wjkyI1EPgVIkiXbgXVwWat7Oq96WsvyNLVGLillf3/ZOvwHTw8SP5Ya0m6TW1AMwE
	Eu4gIb6u36Unw7lvwxU9+/UsaoXGYmgZq6V4WHVsepRVocI6QAfTTTfVRDwwgVbxdjQ5tofbaxt26
	39PK5mcgocYeAD+lk8I5wVQHbD0pDVhPYBdjPXWUaZMXPZ//bWz+NpsVdX7IqRPsHrqv2TXifpg1Z
	jS0j8D/DslcOw9aqTZmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbP6o-00029w-LB; Thu, 13 Jun 2019 12:45:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbP5k-0000Cf-OF; Thu, 13 Jun 2019 12:44:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36E163EF;
 Thu, 13 Jun 2019 05:44:32 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F5113F694;
 Thu, 13 Jun 2019 05:44:29 -0700 (PDT)
Subject: Re: [PATCH 2/4] arm64: kdump: support reserving crashkernel above 4G
To: Chen Zhou <chenzhou10@huawei.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-3-chenzhou10@huawei.com>
 <df2b659d-7406-fbfd-597d-be3a3f69abcb@arm.com>
 <d15f334c-90cd-7c09-5e54-6501e822e7f1@huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <b04f5578-4422-319c-da1f-62f7b465c9f6@arm.com>
Date: Thu, 13 Jun 2019 13:44:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d15f334c-90cd-7c09-5e54-6501e822e7f1@huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_054433_336446_8F6D0B96 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: wangkefeng.wang@huawei.com, horms@verge.net.au, ard.biesheuvel@linaro.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, linux-mm@kvack.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com,
 kexec@lists.infradead.org, akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Chen Zhou,

On 13/06/2019 12:27, Chen Zhou wrote:
> On 2019/6/6 0:29, James Morse wrote:
>> On 07/05/2019 04:50, Chen Zhou wrote:
>>> When crashkernel is reserved above 4G in memory, kernel should
>>> reserve some amount of low memory for swiotlb and some DMA buffers.
>>
>>> Meanwhile, support crashkernel=X,[high,low] in arm64. When use
>>> crashkernel=X parameter, try low memory first and fall back to high
>>> memory unless "crashkernel=X,high" is specified.
>>
>> What is the 'unless crashkernel=...,high' for? I think it would be simpler to relax the
>> ARCH_LOW_ADDRESS_LIMIT if reserve_crashkernel_low() allocated something.
>>
>> This way "crashkernel=1G" tries to allocate 1G below 4G, but fails if there isn't enough
>> memory. "crashkernel=1G crashkernel=16M,low" allocates 16M below 4G, which is more likely
>> to succeed, if it does it can then place the 1G block anywhere.
>>
> Yeah, this is much simpler.

>>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>>> index 413d566..82cd9a0 100644
>>> --- a/arch/arm64/kernel/setup.c
>>> +++ b/arch/arm64/kernel/setup.c
>>> @@ -243,6 +243,9 @@ static void __init request_standard_resources(void)
>>>  			request_resource(res, &kernel_data);
>>>  #ifdef CONFIG_KEXEC_CORE
>>>  		/* Userspace will find "Crash kernel" region in /proc/iomem. */
>>> +		if (crashk_low_res.end && crashk_low_res.start >= res->start &&
>>> +		    crashk_low_res.end <= res->end)
>>> +			request_resource(res, &crashk_low_res);
>>>  		if (crashk_res.end && crashk_res.start >= res->start &&
>>>  		    crashk_res.end <= res->end)
>>>  			request_resource(res, &crashk_res);
>>
>> With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
>> "Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
>> find "Crash kernel", you are always going to get the kernel placed in the lower portion.
>>
>> I suspect this isn't what you want, can we rename crashk_low_res for arm64 so that
>> existing kexec-tools doesn't use it?

> In my patchset, in addition to the kernel patches, i also modify the kexec-tools.
>   arm64: support more than one crash kernel regions(http://lists.infradead.org/pipermail/kexec/2019-April/022792.html).
> In kexec-tools patch, we read all the "Crash kernel" entry and load crash kernel high.

But we can't rely on people updating user-space when they update the kernel!

[...]


>> I'm afraid you've missed the ugly bit of the crashkernel reservation...
>>
>> arch/arm64/mm/mmu.c::map_mem() marks the crashkernel as 'nomap' during the first pass of
>> page-table generation. This means it isn't mapped in the linear map. It then maps it with
>> page-size mappings, and removes the nomap flag.
>>
>> This is done so that arch_kexec_protect_crashkres() and
>> arch_kexec_unprotect_crashkres() can remove the valid bits of the crashkernel mapping.
>> This way the old-kernel can't accidentally overwrite the crashkernel. It also saves us if
>> the old-kernel and the crashkernel use different memory attributes for the mapping.
>>
>> As your low-memory reservation is intended to be used for devices, having it mapped by the
>> old-kernel as cacheable memory is going to cause problems if those CPUs aren't taken
>> offline and go corrupting this memory. (we did crash for a reason after all)
>>
>>
>> I think the simplest thing to do is mark the low region as 'nomap' in
>> reserve_crashkernel() and always leave it unmapped. We can then describe it via a
>> different string in /proc/iomem, something like "Crash kernel (low)". Older kexec-tools
>> shouldn't use it, (I assume its not using strncmp() in a way that would do this by
>> accident), and newer kexec-tools can know to describe it in the DT, but it can't write to it.

> I did miss the bit of the crashkernel reservation.
> I will fix this in next version.

I think all that is needed is to make the low-region nmap, and describe it via /proc/iomem
with a name where nothing will try and use it by accident.


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
