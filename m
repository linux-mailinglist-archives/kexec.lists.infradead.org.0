Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B750D202120
	for <lists+kexec@lfdr.de>; Sat, 20 Jun 2020 05:55:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrCNjr8ScrAPuY78UVQV0xm/pj0bjyhUOmEAm8dssnw=; b=oIFqwifqdrnJx5
	dIX/zqfMPEXihbE1JtiQGFFwTVJA8tjxYy4g4i82tVwnCqWElQ0Ud6+LG7KNt6IOPVpK14ZpfEmgY
	i0ksTiKOAr8q0jGiADxcPJTOFRg1m3t+AMq/QBXGBQr62vfW2CeHS/ZwUxexvvHSDOscpGM2WOU8r
	YlcyHPvrFRqSQFuX3bC4YCHIUztI9BQjmvR0woRLV08rb/wEIY1/jxUMmu+3kfJEo2v8heO4czg64
	/HJ1NaIBILA5b5Wr6i0e1a68xPum4Nnjkps/o67obrJfGPv+juEJLO88LrRqusYh0LF9E/+ZzxJjn
	V28Rfz679m/vdoy1lWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUb4-0001jz-98; Sat, 20 Jun 2020 03:55:14 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUaw-0007u3-N3; Sat, 20 Jun 2020 03:55:09 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1D6AD24E770376062A29;
 Sat, 20 Jun 2020 11:54:58 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.90) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Sat, 20 Jun 2020
 11:54:48 +0800
Subject: Re: [PATCH v8 5/5] dt-bindings: chosen: Document
 linux,low-memory-range for arm64 kdump
To: James Morse <james.morse@arm.com>, Rob Herring <robh@kernel.org>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200521093805.64398-6-chenzhou10@huawei.com>
 <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
 <a419602e-6a85-ca35-39de-b3c26d433199@huawei.com>
 <20200526211800.GA352001@bogus>
 <ff7c9f68-b578-3a1a-0815-e61c6f87bc4e@arm.com>
From: chenzhou <chenzhou10@huawei.com>
Message-ID: <5339140e-41ee-ab20-0a3b-fcf7da82796b@huawei.com>
Date: Sat, 20 Jun 2020 11:54:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <ff7c9f68-b578-3a1a-0815-e61c6f87bc4e@arm.com>
X-Originating-IP: [10.166.213.90]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_205506_937840_DDC46C7C 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Simon Horman <horms@verge.net.au>, John.p.donnelly@oracle.com,
 Baoquan He <bhe@redhat.com>, Will Deacon <will@kernel.org>,
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Linux
 Doc Mailing List <linux-doc@vger.kernel.org>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Nicolas Saenz
 Julienne <nsaenzjulienne@suse.de>, Hanjun Guo <guohanjun@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, pkushwaha@marvell.com, dyoung@redhat.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James, Rob,


On 2020/5/30 0:11, James Morse wrote:
> Hi guys,
>
> On 26/05/2020 22:18, Rob Herring wrote:
>> On Fri, May 22, 2020 at 11:24:11AM +0800, chenzhou wrote:
>>> On 2020/5/21 21:29, Rob Herring wrote:
>>>> On Thu, May 21, 2020 at 3:35 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>>>>> Add documentation for DT property used by arm64 kdump:
>>>>> linux,low-memory-range.
>>>>> "linux,low-memory-range" is an another memory region used for crash
>>>>> dump kernel devices.
>>>>> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
>>>>> index 45e79172a646..bfe6fb6976e6 100644
>>>>> --- a/Documentation/devicetree/bindings/chosen.txt
>>>>> +++ b/Documentation/devicetree/bindings/chosen.txt
>>>>> +linux,low-memory-range
>>>>> +----------------------
>>>>> +This property (arm64 only) holds a base address and size, describing a
>>>>> +limited region below 4G. Similar to "linux,usable-memory-range", it is
>>>>> +an another memory range which may be considered available for use by the
>>>>> +kernel.
>>>> Why can't you just add a range to "linux,usable-memory-range"? It
>>>> shouldn't be hard to figure out which part is below 4G.
>>> The comments from James:
>>> Won't this break if your kdump kernel doesn't know what the extra parameters are?
>>> Or if it expects two ranges, but only gets one? These DT properties should be treated as
>>> ABI between kernel versions, we can't really change it like this.
>>>
>>> I think the 'low' region is an optional-extra, that is never mapped by the first kernel. I
>>> think the simplest thing to do is to add an 'linux,low-memory-range' that we
>>> memblock_add() after memblock_cap_memory_range() has been called.
>>> If its missing, or the new kernel doesn't know what its for, everything keeps working.
>>
>> I don't think there's a compatibility issue here though. The current 
>> kernel doesn't care if the property is longer than 1 base+size. It only 
>> checks if the size is less than 1 base+size.
> Aha! I missed that.
>
>
>> And yes, we can rely on 
>> that implementation detail. It's only an ABI if an existing user 
>> notices.
>>
>> Now, if the low memory is listed first, then an older kdump kernel 
>> would get a different memory range. If that's a problem, then define 
>> that low memory goes last. 
> This first entry would need to be the 'crashkernel' range where the kdump kernel is
> placed, otherwise an older kernel won't boot. The rest can be optional extras, as long as
> we are tolerant of it being missing...
How about like this:

1. The low memory region remained as "Crash kernel (low)".
2. Userspace will find "Crash kernel" and "Crash kernel (low)" region in /proc/iomem,
and add "Crash kernel (low)" as the last range of property "linux,usable-memory-range".

Thanks,
Chen Zhou
>
> I'll try and look at the rest of this series on Monday,
>
>
> Thanks,
>
> James
>
> .
>



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
