Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A791FE18
	for <lists+kexec@lfdr.de>; Thu, 16 May 2019 05:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bjbUuBA5CS6qp84twWcF4xunnlKTxxaom17cHLJS4Y=; b=cjzk8+Zwx8c6Pp
	4Z3vGZNUrXVeUWhlw2znr/cdsIxHZ7FyBLPWo2bHnKEqL4s+1DJT+OiI5aMkg9hk5WYH3Jlw+gE3U
	QWTNd1n9SqchEfe1EwLCe8gDmmRvB/XWmlLtIw+g4dxl0KOA0v8vDuYStSSi/iI8AOYPjqK7edr42
	wWPG383scs3qZHcelAESwBCpQrHjG8h3CEhy+uMUncgrpgcQl5wo0hOLH9hud5b8Ph9TaHyCS6FYU
	uFCx9A0R2Yj16KWtX2kYCnYxB/h7Wditk4eFifSOTcjwdGfb1uGYm0pHyIOn3wD9MIMBD2M3qqWUo
	q0rxJdmFqR5e2aEAaDtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR70e-0007V9-E2; Thu, 16 May 2019 03:24:44 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR708-0006mi-Em; Thu, 16 May 2019 03:24:19 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D09F6FAB343E446E4313;
 Thu, 16 May 2019 11:24:07 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 16 May 2019
 11:24:00 +0800
Subject: Re: [PATCH 4/4] kdump: update Documentation about crashkernel on arm64
To: Bhupesh Sharma <bhsharma@redhat.com>, <catalin.marinas@arm.com>,
 <will.deacon@arm.com>, <akpm@linux-foundation.org>,
 <ard.biesheuvel@linaro.org>, <rppt@linux.ibm.com>, <tglx@linutronix.de>,
 <mingo@redhat.com>, <bp@alien8.de>, <ebiederm@xmission.com>
References: <20190507035058.63992-1-chenzhou10@huawei.com>
 <20190507035058.63992-5-chenzhou10@huawei.com>
 <de5b827f-5db2-2280-b848-c5c887b9bb58@redhat.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <168b5c80-9a8b-ee94-9cfb-56e4955958c1@huawei.com>
Date: Thu, 16 May 2019 11:23:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <de5b827f-5db2-2280-b848-c5c887b9bb58@redhat.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202412_888975_B5057785 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: wangkefeng.wang@huawei.com, takahiro.akashi@linaro.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 horms@verge.net.au, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2019/5/15 13:16, Bhupesh Sharma wrote:
> On 05/07/2019 09:20 AM, Chen Zhou wrote:
>> Now we support crashkernel=X,[high,low] on arm64, update the
>> Documentation.
>>
>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>> ---
>>   Documentation/admin-guide/kernel-parameters.txt | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
>> index 268b10a..03a08aa 100644
>> --- a/Documentation/admin-guide/kernel-parameters.txt
>> +++ b/Documentation/admin-guide/kernel-parameters.txt
>> @@ -705,7 +705,7 @@
>>               memory region [offset, offset + size] for that kernel
>>               image. If '@offset' is omitted, then a suitable offset
>>               is selected automatically.
>> -            [KNL, x86_64] select a region under 4G first, and
>> +            [KNL, x86_64, arm64] select a region under 4G first, and
>>               fall back to reserve region above 4G when '@offset'
>>               hasn't been specified.
>>               See Documentation/kdump/kdump.txt for further details.
>> @@ -718,14 +718,14 @@
>>               Documentation/kdump/kdump.txt for an example.
>>         crashkernel=size[KMG],high
>> -            [KNL, x86_64] range could be above 4G. Allow kernel
>> +            [KNL, x86_64, arm64] range could be above 4G. Allow kernel
>>               to allocate physical memory region from top, so could
>>               be above 4G if system have more than 4G ram installed.
>>               Otherwise memory region will be allocated below 4G, if
>>               available.
>>               It will be ignored if crashkernel=X is specified.
>>       crashkernel=size[KMG],low
>> -            [KNL, x86_64] range under 4G. When crashkernel=X,high
>> +            [KNL, x86_64, arm64] range under 4G. When crashkernel=X,high
>>               is passed, kernel could allocate physical memory region
>>               above 4G, that cause second kernel crash on system
>>               that require some amount of low memory, e.g. swiotlb
>>
> 
> IMO, it is a good time to update 'Documentation/kdump/kdump.txt' with this patchset itself for both x86_64 and arm64, where we still specify only the old format for 'crashkernel' boot-argument:
> 
> Section: Boot into System Kernel
>          =======================
> 
> On arm64, use "crashkernel=Y[@X]".  Note that the start address of
> the kernel, X if explicitly specified, must be aligned to 2MiB (0x200000).
> ...
> 
> We can update this to add the new crashkernel=size[KMG],low or crashkernel=size[KMG],high format as well.
> 
> Thanks,
> Bhupesh
> 
> .

Sure, we can also update here.

Thanks,
Chen Zhou




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
