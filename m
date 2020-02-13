Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916D515B702
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 03:10:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GoynQb1urSDuVsAToc+b1oPBSsPnUaVd2lC9Vq60s10=; b=VIJjSDupcyUbgMXCaTCeOGPTF3
	+4uwY6J8BIjk+3E3uIumV1WpmomN+uX8KyNk4uSRN3a+4mBivEJWngYqILsz6sCGs3U6yfojsMyJm
	FF0o4gXPp+5yUwKaW457EEjqI3n/lLS+FO7hPKglXFwpVRSm0IhIg0bbK2lJ9frc8Ux6dWt78MxON
	Kz+JQ+wxwMf8s7U4ure4bRQ6xBvV+rT/XUqBirmx7Au82nnza815RQGK5Idf/k5/OfQ/QamwjQExj
	MUJwTYGb86oy6kBzKsMdjcbvhNCcF8HpiQAYLTf4Dt4NvMCfwF2Dy9HaWLZN1Pgt1Cs/zYG3e6J8i
	jedU5CQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j23xj-00018u-Ro; Thu, 13 Feb 2020 02:10:43 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j23xf-000189-6s
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 02:10:41 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 33940D0F86BB2BA8A627;
 Thu, 13 Feb 2020 10:10:24 +0800 (CST)
Received: from [127.0.0.1] (10.177.131.64) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Feb 2020
 10:10:19 +0800
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: John Donnelly <John.P.Donnelly@Oracle.com>, <kexec@lists.infradead.org>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <52102118-9b61-5978-3213-062e9c758dcf@Oracle.com>
From: Chen Zhou <chenzhou10@huawei.com>
Message-ID: <acf438a0-5de7-b94e-516f-10cfdc25406d@huawei.com>
Date: Thu, 13 Feb 2020 10:10:18 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <52102118-9b61-5978-3213-062e9c758dcf@Oracle.com>
X-Originating-IP: [10.177.131.64]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_181039_428650_92A7485B 
X-CRM114-Status: GOOD (  19.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi John,

On 2020/2/12 21:20, John Donnelly wrote:
> On 12/23/19 9:23 AM, Chen Zhou wrote:
>> This patch series enable reserving crashkernel above 4G in arm64.
>>
>> There are following issues in arm64 kdump:
>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
>> when there is no enough low memory.
>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
>> will boot failure because there is no low memory available for allocation.
>>
>> To solve these issues, introduce crashkernel=X,low to reserve specified
>> size low memory.
>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
>> size low memory for crash kdump kernel devices firstly and then reserve
>> memory above 4G.
>>
> 
> 
> Hi Chen,
> 
> 
> I've applied your V7 patches to 5.4.17 test kernel and I am still seeing
> failures when I use a kdump kernel .
> 
> 
> On the kernel boot I see:
> 
>  Reserving 250MB of low memory at 3618MB for crashkernel (System low RAM: 2029MB)
>  crashkernel reserved: 0x00000008c0000000 - 0x0000000940000000 (2048 MB)
> 
> # cat /proc/iomem  | grep -i cras
>   e2200000-f1bfffff : Crash kernel (low)
>   8c0000000-93fffffff : Crash kernel
> 
> 
> When kdump kernel is started I see what appears to be DMA initialized :
> 
> NUMA: NODE_DATA(1) on node 0
> Zone ranges:
> DMA32    [mem 0x00000000802f0000-0x00000000ffffffff]
> Normal   [mem 0x0000000100000000-0x000000093fffffff]
> 
> But the sas driver still fails :
> 
> 
> [   12.092769] CPU: 0 PID: 149 Comm: kworker/0:13 Not tainted 5.4.17-4-uek6m_ol8-jpdonnel+ #2
> [   12.101019] Hardware name: To be filled by O.E.M. Saber/Saber, BIOS 0ACKL028 09/09/2019
> [   12.109019] Workqueue: events work_for_cpu_fn
> [   12.113363] Call trace:
> [   12.115803]  dump_backtrace+0x0/0x19c
> [   12.119453]  show_stack+0x24/0x2c
> [   12.122769]  dump_stack+0xcc/0xf8
> [   12.126078]  warn_alloc+0x108/0x11c
> [   12.129554]  __alloc_pages_slowpath+0x8fc/0xa10
> [   12.134071]  __alloc_pages_nodemask+0x2ec/0x334
> [   12.138597]  __dma_direct_alloc_pages+0x19c/0x238
> [   12.143288]  dma_direct_alloc_pages+0x48/0xf8
> [   12.147632]  dma_direct_alloc+0x4c/0x6c
> [   12.151455]  dma_alloc_attrs+0x88/0xf4
> [   12.155196]  dma_pool_alloc+0x11c/0x2ec
> [   12.159053]  _base_allocate_memory_pools+0x2ec/0x1078 [mpt3sas]
> [   12.164978]  mpt3sas_base_attach+0x444/0x748 [mpt3sas]
> [   12.170121]  _scsih_probe+0x554/0x848 [mpt3sas]
> [   12.174648]  local_pci_probe+0x4c/0x98
> 
> And the kdump fails to find local storage:
> 
> 
>  mpt3sas_cm0: reply_post_free pool: dma_pool_alloc failed
>  mpt3sas_cm0: failure at ../drivers/scsi/mpt3sas/mpt3sas_scsih.c:10626/_scsih_probe()!
> 
> 
> 
> 
>> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
>> is specified simultaneously, kernel should reserve specified size low memory
>> for crash dump kernel devices. So there may be two crash kernel regions, one
>> is below 4G, the other is above 4G.
> 
>   Can we consider a different name for "low" -  Like "dma" .. That is what it is intended for :
> 
> Ie: So it shows up as ;
> 
> # cat /proc/iomem  | grep -i cras
>   e2200000-f1bfffff : Crash kernel (dma)
>   8c0000000-93fffffff : Crash kernel
> 
> 
> 
>> In order to distinct from the high region and make no effect to the use of
>> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
>> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
>>
>> Besides, we need to modify kexec-tools:
>> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
> 
> 
> Can you explain what needs done to kexec tools  in more detail ?
> 
> I'd like to understand why the Arm kdump boot images are so large ( 1024M+ ) as compared to x86 that can take a vmcore using a 512M kdump image .

As i said above, we also need to modify kexec-tools,
arm64: kdump: add another DT property to crash dump kernel's dtb(see [1]) is the patch.


Firstly, usable memory of crash dump kernel is passed via DT property, which is done by kexec-tools.

Currently, there is only one crash kernel region on arm64, which is passed by DT property "linux,usable-memory-range",
We need to add another region "crash kernel low" used for crash dump kernel devices, so kexec-tools need to add
another DT property "linux,low-memory-range" and then load crash kernel high.

More details can be retrieved from http://lists.infradead.org/pipermail/kexec/2019-August/023569.html.

Thanks,
Chen Zhou

> 
> 
> 
> ======= <clipped>=======
> 
> 
> .
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
