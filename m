Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD3D4357F
	for <lists+kexec@lfdr.de>; Thu, 13 Jun 2019 13:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1agBCx2LSnLsD/Zy5Cx8LkLU3WiSzgnQB5fqBqGWv8c=; b=oVO6d56xM8Evtf
	OATbqRKSM5hzJKFyKsjeB6QnRyGpQlA0OBIp9VJeuI1kyXEBFi5f207Av3vRcH8d+AiQhV5rz8awj
	9IT+8/gBr+lJ4y5zdhVstdfFruXr8CoKroGlhxBvxhOypihStmOaKt4a6bBmv6KOiYZZwd//gDhOi
	SudUByVhyjTE82l3tkdoT3DYvw86kZtuEJdBsmf+YALq5GZEQrVyMLH7U1+Fgp05Igqx7eKz+WeZG
	wdPOqQcz2WWQYMqyhM3ALtUxiYpndFcbL5tbwQV4W2/UHrcv/br7e+GwXKzofcssk/qLRIoOK3oAK
	uWfm8pcx72cnWLtyKoWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbNu7-0000w1-UP; Thu, 13 Jun 2019 11:28:28 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbNt8-0000cR-GY; Thu, 13 Jun 2019 11:27:28 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DE7C49F1C69DB44C0B5B;
 Thu, 13 Jun 2019 19:27:22 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Jun 2019
 19:27:15 +0800
Subject: Re: [PATCH 2/4] arm64: kdump: support reserving crashkernel above 4G
To: James Morse <james.morse@arm.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-3-chenzhou10@huawei.com>
 <df2b659d-7406-fbfd-597d-be3a3f69abcb@arm.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <d15f334c-90cd-7c09-5e54-6501e822e7f1@huawei.com>
Date: Thu, 13 Jun 2019 19:27:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <df2b659d-7406-fbfd-597d-be3a3f69abcb@arm.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_042726_826447_A3B268B9 
X-CRM114-Status: GOOD (  27.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Hi James,

On 2019/6/6 0:29, James Morse wrote:
> Hello,
> 
> On 07/05/2019 04:50, Chen Zhou wrote:
>> When crashkernel is reserved above 4G in memory, kernel should
>> reserve some amount of low memory for swiotlb and some DMA buffers.
> 
>> Meanwhile, support crashkernel=X,[high,low] in arm64. When use
>> crashkernel=X parameter, try low memory first and fall back to high
>> memory unless "crashkernel=X,high" is specified.
> 
> What is the 'unless crashkernel=...,high' for? I think it would be simpler to relax the
> ARCH_LOW_ADDRESS_LIMIT if reserve_crashkernel_low() allocated something.
> 
> This way "crashkernel=1G" tries to allocate 1G below 4G, but fails if there isn't enough
> memory. "crashkernel=1G crashkernel=16M,low" allocates 16M below 4G, which is more likely
> to succeed, if it does it can then place the 1G block anywhere.
> 
Yeah, this is much simpler.

> 
>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>> index 413d566..82cd9a0 100644
>> --- a/arch/arm64/kernel/setup.c
>> +++ b/arch/arm64/kernel/setup.c
>> @@ -243,6 +243,9 @@ static void __init request_standard_resources(void)
>>  			request_resource(res, &kernel_data);
>>  #ifdef CONFIG_KEXEC_CORE
>>  		/* Userspace will find "Crash kernel" region in /proc/iomem. */
>> +		if (crashk_low_res.end && crashk_low_res.start >= res->start &&
>> +		    crashk_low_res.end <= res->end)
>> +			request_resource(res, &crashk_low_res);
>>  		if (crashk_res.end && crashk_res.start >= res->start &&
>>  		    crashk_res.end <= res->end)
>>  			request_resource(res, &crashk_res);
> 
> With both crashk_low_res and crashk_res, we end up with two entries in /proc/iomem called
> "Crash kernel". Because its sorted by address, and kexec-tools stops searching when it
> find "Crash kernel", you are always going to get the kernel placed in the lower portion.
> 
> I suspect this isn't what you want, can we rename crashk_low_res for arm64 so that
> existing kexec-tools doesn't use it?
>

In my patchset, in addition to the kernel patches, i also modify the kexec-tools.
  arm64: support more than one crash kernel regions(http://lists.infradead.org/pipermail/kexec/2019-April/022792.html).
In kexec-tools patch, we read all the "Crash kernel" entry and load crash kernel high.

> 
>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>> index d2adffb..3fcd739 100644
>> --- a/arch/arm64/mm/init.c
>> +++ b/arch/arm64/mm/init.c
>> @@ -74,20 +74,37 @@ phys_addr_t arm64_dma_phys_limit __ro_after_init;
>>  static void __init reserve_crashkernel(void)
>>  {
>>  	unsigned long long crash_base, crash_size;
>> +	bool high = false;
>>  	int ret;
>>  
>>  	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>>  				&crash_size, &crash_base);
>>  	/* no crashkernel= or invalid value specified */
>> -	if (ret || !crash_size)
>> -		return;
>> +	if (ret || !crash_size) {
>> +		/* crashkernel=X,high */
>> +		ret = parse_crashkernel_high(boot_command_line,
>> +				memblock_phys_mem_size(),
>> +				&crash_size, &crash_base);
>> +		if (ret || !crash_size)
>> +			return;
>> +		high = true;
>> +	}
>>  
>>  	crash_size = PAGE_ALIGN(crash_size);
>>  
>>  	if (crash_base == 0) {
>> -		/* Current arm64 boot protocol requires 2MB alignment */
>> -		crash_base = memblock_find_in_range(0, ARCH_LOW_ADDRESS_LIMIT,
>> -				crash_size, SZ_2M);
>> +		/*
>> +		 * Try low memory first and fall back to high memory
>> +		 * unless "crashkernel=size[KMG],high" is specified.
>> +		 */
>> +		if (!high)
>> +			crash_base = memblock_find_in_range(0,
>> +					ARCH_LOW_ADDRESS_LIMIT,
>> +					crash_size, CRASH_ALIGN);
>> +		if (!crash_base)
>> +			crash_base = memblock_find_in_range(0,
>> +					memblock_end_of_DRAM(),
>> +					crash_size, CRASH_ALIGN);
>>  		if (crash_base == 0) {
>>  			pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>>  				crash_size);
>> @@ -105,13 +122,18 @@ static void __init reserve_crashkernel(void)
>>  			return;
>>  		}
>>  
>> -		if (!IS_ALIGNED(crash_base, SZ_2M)) {
>> +		if (!IS_ALIGNED(crash_base, CRASH_ALIGN)) {
>>  			pr_warn("cannot reserve crashkernel: base address is not 2MB aligned\n");
>>  			return;
>>  		}
>>  	}
>>  	memblock_reserve(crash_base, crash_size);
>>  
>> +	if (crash_base >= SZ_4G && reserve_crashkernel_low()) {
>> +		memblock_free(crash_base, crash_size);
>> +		return;
> 
> This is going to be annoying on platforms that don't have, and don't need memory below 4G.
> A "crashkernel=...,low" on these system will break crashdump. I don't think we should
> expect users to know the memory layout. (I'm assuming distro's are going to add a low
> reservation everywhere, just in case)
> 
> I think the 'low' region should be a small optional/best-effort extra, that kexec-tools
> can't touch.
> 
> 
> I'm afraid you've missed the ugly bit of the crashkernel reservation...
> 
> arch/arm64/mm/mmu.c::map_mem() marks the crashkernel as 'nomap' during the first pass of
> page-table generation. This means it isn't mapped in the linear map. It then maps it with
> page-size mappings, and removes the nomap flag.
> 
> This is done so that arch_kexec_protect_crashkres() and
> arch_kexec_unprotect_crashkres() can remove the valid bits of the crashkernel mapping.
> This way the old-kernel can't accidentally overwrite the crashkernel. It also saves us if
> the old-kernel and the crashkernel use different memory attributes for the mapping.
> 
> As your low-memory reservation is intended to be used for devices, having it mapped by the
> old-kernel as cacheable memory is going to cause problems if those CPUs aren't taken
> offline and go corrupting this memory. (we did crash for a reason after all)
> 
> 
> I think the simplest thing to do is mark the low region as 'nomap' in
> reserve_crashkernel() and always leave it unmapped. We can then describe it via a
> different string in /proc/iomem, something like "Crash kernel (low)". Older kexec-tools
> shouldn't use it, (I assume its not using strncmp() in a way that would do this by
> accident), and newer kexec-tools can know to describe it in the DT, but it can't write to it.
> 

I did miss the bit of the crashkernel reservation. I will fix this in next version.

> 
> Thanks,
> 
> James
> 
> .
> 

Thanks,
Chen Zhou


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
