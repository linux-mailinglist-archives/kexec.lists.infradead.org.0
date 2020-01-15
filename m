Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B21B13CEB3
	for <lists+kexec@lfdr.de>; Wed, 15 Jan 2020 22:17:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzQVU7Rvc4PlY3jyU9OynUfrP+3un/0QBt/HVaoXZAM=; b=AVWpAL9tgeTVho
	2vNdIjwF5Eaoy5gZM4GrHOyeA52N+A3mqXYXYXUZkRJOKqeidaXe/vYhljPVRPrAVzVaM6wYzDvOS
	Thf6W7+bapcwlQ7DhKJ4MboSVxeNP3swYv+K2HXjfgv2lZgyMA+Y9AeOb7+QV6vUtqVg103GwYPe2
	2UQ/XSbthM09HwVBAU+W/i+34zRaaHMDtdjrEFMed/Apgamxmx+c06lpz0py5w2VV467zG/6ka6xa
	Cq2Uao1k0YV2hJAkudapWda2F6ZVLrk+t86X4gBE4EXT3kY9KZEwT1GkRcCLHGZGMSg3rt86o5JZs
	YWnsyKuwIvwb8gKb+4yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irq2n-0004aX-IR; Wed, 15 Jan 2020 21:17:41 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irq2j-0004Zh-Uf
 for kexec@lists.infradead.org; Wed, 15 Jan 2020 21:17:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 92CCE216B5;
 Wed, 15 Jan 2020 21:17:36 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo06-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo06-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vmTFjbDXoM85; Wed, 15 Jan 2020 21:17:36 +0000 (UTC)
Received: from mail.gonehiking.org (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 by mailout.easymail.ca (Postfix) with ESMTPA id 9993E20F8C;
 Wed, 15 Jan 2020 21:17:24 +0000 (UTC)
Received: from [192.168.1.4] (rhapsody.internal [192.168.1.4])
 by mail.gonehiking.org (Postfix) with ESMTP id B6F003EFE9;
 Wed, 15 Jan 2020 14:17:23 -0700 (MST)
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Kairui Song <kasong@redhat.com>
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <d2715683-f171-a825-3c0b-678b6c5c1a79@gonehiking.org>
 <20200111005041.GB19291@MiWiFi-R3L-srv>
 <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
 <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
 <CABeXuvqquCU+1G=5onk9owASorhpcYWeWBge9U35BrorABcsuw@mail.gmail.com>
 <CACPcB9cQY9Vu3wG-QYZS6W6T_PZxnJ1ABNUUAF_qvk-VSxbpTA@mail.gmail.com>
 <b2360db7-66f5-421d-8fe0-150f08aa2f39@gonehiking.org>
 <CACPcB9epDPcowhnSJuEHQ8miCBX1oKjFx4Wdn4aYPe2_pueA5A@mail.gmail.com>
From: Khalid Aziz <khalid@gonehiking.org>
Autocrypt: addr=khalid@gonehiking.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <6b56ce15-5a5a-97b7-ded1-1fd88fec26eb@gonehiking.org>
Date: Wed, 15 Jan 2020 14:17:23 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CACPcB9epDPcowhnSJuEHQ8miCBX1oKjFx4Wdn4aYPe2_pueA5A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_131738_106955_0F091B06 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [64.68.200.34 listed in list.dnswl.org]
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
Cc: Baoquan He <bhe@redhat.com>, linux-pci@vger.kernel.org,
 kexec@lists.infradead.org, Jerry Hoemann <Jerry.Hoemann@hpe.com>,
 Randy Wright <rwright@hpe.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 1/15/20 11:05 AM, Kairui Song wrote:
> On Thu, Jan 16, 2020 at 1:31 AM Khalid Aziz <khalid@gonehiking.org> wrote:
>>
>> On 1/13/20 10:07 AM, Kairui Song wrote:
>>> On Sun, Jan 12, 2020 at 2:33 AM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
>>>>
>>>>> Hi, there are some previous works about this issue, reset PCI devices
>>>>> in kdump kernel to stop ongoing DMA:
>>>>>
>>>>> [v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
>>>>> https://lore.kernel.org/patchwork/cover/343767/
>>>>>
>>>>> [v2] PCI: Reset PCIe devices to stop ongoing DMA
>>>>> https://lore.kernel.org/patchwork/patch/379191/
>>>>>
>>>>> And didn't get merged, that patch are trying to fix some DMAR error
>>>>> problem, but resetting devices is a bit too destructive, and the
>>>>> problem is later fixed in IOMMU side. And in most case the DMA seems
>>>>> harmless, as they targets first kernel's memory and kdump kernel only
>>>>> live in crash memory.
>>>>
>>>> I was going to ask the same. If the kdump kernel had IOMMU on, would
>>>> that still be a problem?
>>>
>>> It will still fail, doing DMA is not a problem, it only go wrong when
>>> a device's upstream bridge is mistakenly shutdown before the device
>>> shutdown.
>>>
>>>>
>>>>> Also, by the time kdump kernel is able to scan and reset devices,
>>>>> there are already a very large time window where things could go
>>>>> wrong.
>>>>>
>>>>> The currently problem observed only happens upon kdump kernel
>>>>> shutdown, as the upper bridge is disabled before the device is
>>>>> disabledm so DMA will raise error. It's more like a problem of wrong
>>>>> device shutting down order.
>>>>
>>>> The way it was described earlier "During this time, the SUT sometimes
>>>> gets a PCI error that raises an NMI." suggests that it isn't really
>>>> restricted to kexec/kdump.
>>>> Any attached device without an active driver might attempt spurious or
>>>> malicious DMA and trigger the same during normal operation.
>>>> Do you have available some more reporting of what happens during the
>>>> PCIe error handling?
>>>
>>> Let me add more info about this:
>>>
>>> On the machine where I can reproduce this issue, the first kernel
>>> always runs fine, and kdump kernel works fine during dumping the
>>> vmcore, even if I keep the kdump kernel running for hours, nothing
>>> goes wrong. If there are DMA during normal operation that will cause
>>> problem, this should have exposed it.
>>>
>>
>> This is the part that is puzzling me. Error shows up only when kdump
>> kernel is being shut down. kdump kernel can run for hours without this
>> issue. What is the operation from downstream device that is resulting in
>> uncorrectable error - is it indeed a DMA request? Why does that
>> operation from downstream device not happen until shutdown?
>>
>> I just want to make sure we fix the right problem in the right way.
>>
> 
> Actually the device could keep sending request with no problem during
> kdump kernel running. Eg. keep sending DMA, and all DMA targets first
> kernel's system memory, so kdump runs fine as long as nothing touch
> the reserved crash memory. And the error is reported by the port, when
> shutdown it has bus master bit, and downstream request will cause
> error.
> 

Problem really is there are active devices while kdump kernel is
running. You did say earlier - "And in most case the DMA seems
harmless, as they targets first kernel's memory and kdump kernel only
live in crash memory.". Even if this holds today, it is going to break
one of these days. There is the "reset_devices" option but that does not
work if driver is not loaded by kdump kernel. Can we try to shut down
devices in machine_crash_shutdown() before we start kdump kernel?

--
Khalid

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
