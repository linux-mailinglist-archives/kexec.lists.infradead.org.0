Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63B81DDDD5
	for <lists+kexec@lfdr.de>; Fri, 22 May 2020 05:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8GfyplqSrbCmDzKm2kO8vT8JG1o4CWYzePSqUxCUR/8=; b=E7pvLpC1mTkIvE
	8axoIySaeD2KulOdObDXzzNIiBwqXsmerAPDK3BwdeaVOVlzUwOTV+3Cv+2h5BysQ7w+/KHzMd5Uz
	4IR/yA2fbzw+L+LcfRZGtqUZ/uawRPbeJCO0W2o6fGLc4mpI9qAWljqHwUuwmReNSZuw1d2ZQOgS2
	AVgMkKi9j9E8CE3xdQGICQOYUy/YDcEH2Z4CtUIE9D4DSdgAbJBBYZo68KKLqdIaPDe/8rUaXx9WP
	vJWGdTu/66vv2SlozzjexjswtGmt+SIGBvoynxzM0CewUcBWMkYJuU8emWgyg/jL8HjlQgdGECmrV
	HfZk2pee1CrivgitxxaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbyIU-0007OR-MO; Fri, 22 May 2020 03:24:34 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbyIR-0007Nc-6p; Fri, 22 May 2020 03:24:33 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 51717A9057906BA0EFA3;
 Fri, 22 May 2020 11:24:22 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.90) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.487.0; Fri, 22 May 2020
 11:24:12 +0800
Subject: Re: [PATCH v8 5/5] dt-bindings: chosen: Document
 linux,low-memory-range for arm64 kdump
To: Rob Herring <robh+dt@kernel.org>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
 <20200521093805.64398-6-chenzhou10@huawei.com>
 <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
From: chenzhou <chenzhou10@huawei.com>
Message-ID: <a419602e-6a85-ca35-39de-b3c26d433199@huawei.com>
Date: Fri, 22 May 2020 11:24:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAL_Jsq+EV02YBqEGoJrsJW8Y+g_GkB_LkTwWCxNCb3F+8MSdyw@mail.gmail.com>
X-Originating-IP: [10.166.213.90]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_202431_414675_FEE819FB 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.191 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, Linux
 Doc Mailing List <linux-doc@vger.kernel.org>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Hanjun Guo <guohanjun@huawei.com>, Thomas Gleixner <tglx@linutronix.de>,
 pkushwaha@marvell.com, dyoung@redhat.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Rob,

On 2020/5/21 21:29, Rob Herring wrote:
> On Thu, May 21, 2020 at 3:35 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>> Add documentation for DT property used by arm64 kdump:
>> linux,low-memory-range.
>> "linux,low-memory-range" is an another memory region used for crash
>> dump kernel devices.
>>
>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>> ---
>>  Documentation/devicetree/bindings/chosen.txt | 25 ++++++++++++++++++++
>>  1 file changed, 25 insertions(+)
> chosen is now a schema documented here[1].
Ok, that is, i don't need to modify the doc in kernel, just create a pull request in github [1]?

>
>> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
>> index 45e79172a646..bfe6fb6976e6 100644
>> --- a/Documentation/devicetree/bindings/chosen.txt
>> +++ b/Documentation/devicetree/bindings/chosen.txt
>> @@ -103,6 +103,31 @@ While this property does not represent a real hardware, the address
>>  and the size are expressed in #address-cells and #size-cells,
>>  respectively, of the root node.
>>
>> +linux,low-memory-range
>> +----------------------
>> +This property (arm64 only) holds a base address and size, describing a
>> +limited region below 4G. Similar to "linux,usable-memory-range", it is
>> +an another memory range which may be considered available for use by the
>> +kernel.
> Why can't you just add a range to "linux,usable-memory-range"? It
> shouldn't be hard to figure out which part is below 4G.
I did like this in my previous version, such as v5. After discussed with James, i modified it to the current way.

We think the existing behavior should be unchanged, which helps with keeping compatibility with existing
user-space and older kdump kernels.

The comments from James:
> linux,usable-memory-range = <BASE1 SIZE1 [BASE2 SIZE2]>.
Won't this break if your kdump kernel doesn't know what the extra parameters are?
Or if it expects two ranges, but only gets one? These DT properties should be treated as
ABI between kernel versions, we can't really change it like this.

I think the 'low' region is an optional-extra, that is never mapped by the first kernel. I
think the simplest thing to do is to add an 'linux,low-memory-range' that we
memblock_add() after memblock_cap_memory_range() has been called.
If its missing, or the new kernel doesn't know what its for, everything keeps working.

previous discusses:
https://lkml.org/lkml/2019/6/5/674
https://lkml.org/lkml/2019/6/13/229

Thanks,
Chen Zhou

>
> Rob
>
> [1] https://github.com/devicetree-org/dt-schema/blob/master/schemas/chosen.yaml
>
> .
>



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
