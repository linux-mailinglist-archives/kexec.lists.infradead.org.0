Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 530E715B74A
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 03:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0JHgpjKtE//Pq8MeIIAWnDVd03oxyBdyxwMzimOTN18=; b=lYMKdcFBziEyJiuAO4/12q//8
	Ada2/B3ylPlCSdlzEHEEjchTtH8IcXq1FCNiqSRyf1PiG60HtzRQf42V97xILZs4jEMmebHoYhj0H
	eVKrDB8LruhLlmCCm9Putwz0QzMOUtuGYQ75he2odTD6ZNHKJofbbr0wNNV6ZNJY141B4TwtkS0Tc
	6SlPS9mfTGLJ7fl8yeD1dYcWogjIySetxhccjVgC7OWo2LSa2MD/bXnz7PIMIrjQvKWnj4hnwcy7e
	nRHy7hoUTlSdIiwvE578i3YGnmAuZQCmT251GENbli5sk7anVedaDbXzNQ5hRllj5ztAhZr8QO8HF
	1C5IDPyYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24YN-0005wX-TI; Thu, 13 Feb 2020 02:48:35 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24YK-0005w8-DU
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 02:48:34 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01D2mU7d131900
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 02:48:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=ckgHdWU1OnVsD5X16jS2omtaKCWr9tni5/+GaNnk83U=;
 b=axUm99basoKABYdtT3TIjnqXx5yQCjLk/3GjSkXDAogaBvkEURYt//AMVNKNe3hAGyJZ
 tP89UE7l/EWQ93rQwg6xQQOiajBFnn+oEyumbB2YBnNhJKuru5MZAQksrNPOnr2ft94j
 V5VXLQMuNOfL2/zAvWtJhZrZaM1jLpLiZlTTem2ljO86hDu3OvH1xawCVbI6me44JVHq
 c2sQlR+9TS7ZHDTZRslW/IZA0AHl9xuE/ohcpMfvVaL8aabZstsovaGc0rAsiv5bYQdT
 VF7YpJDytwwTwVc5W0Nc0zFd3SiQL49XFNtrKrW9aT8ZF2Fmz5Bpipjd6e8usCzTUOgp bQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2y2k88euqd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 02:48:30 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01D2lB5a169136
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 02:48:24 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2y4k9gwrxw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 02:48:24 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01D2mNO7004415
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 02:48:23 GMT
Received: from [192.168.1.140] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Feb 2020 18:48:23 -0800
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: kexec@lists.infradead.org
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <52102118-9b61-5978-3213-062e9c758dcf@Oracle.com>
 <acf438a0-5de7-b94e-516f-10cfdc25406d@huawei.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <47fa00ff-42bf-af02-be40-5818bfc7652f@Oracle.com>
Date: Wed, 12 Feb 2020 20:48:22 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <acf438a0-5de7-b94e-516f-10cfdc25406d@huawei.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9529
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 suspectscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002130022
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9529
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002130022
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_184832_541818_1E0894E8 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2/12/20 8:10 PM, Chen Zhou wrote:
> Hi John,
> 
> On 2020/2/12 21:20, John Donnelly wrote:
>> On 12/23/19 9:23 AM, Chen Zhou wrote:
>>> This patch series enable reserving crashkernel above 4G in arm64.
>>>
>>> There are following issues in arm64 kdump:
>>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
>>> when there is no enough low memory.
>>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
>>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
>>> will boot failure because there is no low memory available for allocation.
>>>
>>> To solve these issues, introduce crashkernel=X,low to reserve specified
>>> size low memory.
>>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>>> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
>>> size low memory for crash kdump kernel devices firstly and then reserve
>>> memory above 4G.
>>>
>>
>>
>> Hi Chen,
>>
>>
>> I've applied your V7 patches to 5.4.17 test kernel and I am still seeing
>> failures when I use a kdump kernel .
>>
>>
>> On the kernel boot I see:
>>
>>   Reserving 250MB of low memory at 3618MB for crashkernel (System low RAM: 2029MB)
>>   crashkernel reserved: 0x00000008c0000000 - 0x0000000940000000 (2048 MB)
>>
>> # cat /proc/iomem  | grep -i cras
>>    e2200000-f1bfffff : Crash kernel (low)
>>    8c0000000-93fffffff : Crash kernel
>>
>>
>> When kdump kernel is started I see what appears to be DMA initialized :
>>
>> NUMA: NODE_DATA(1) on node 0
>> Zone ranges:
>> DMA32    [mem 0x00000000802f0000-0x00000000ffffffff]
>> Normal   [mem 0x0000000100000000-0x000000093fffffff]
>>
>> But the sas driver still fails :
>>
>>
>> [   12.092769] CPU: 0 PID: 149 Comm: kworker/0:13 Not tainted 5.4.17-4-uek6m_ol8-jpdonnel+ #2
>> [   12.101019] Hardware name: To be filled by O.E.M. Saber/Saber, BIOS 0ACKL028 09/09/2019
>> [   12.109019] Workqueue: events work_for_cpu_fn
>> [   12.113363] Call trace:
>> [   12.115803]  dump_backtrace+0x0/0x19c
>> [   12.119453]  show_stack+0x24/0x2c
>> [   12.122769]  dump_stack+0xcc/0xf8
>> [   12.126078]  warn_alloc+0x108/0x11c
>> [   12.129554]  __alloc_pages_slowpath+0x8fc/0xa10
>> [   12.134071]  __alloc_pages_nodemask+0x2ec/0x334
>> [   12.138597]  __dma_direct_alloc_pages+0x19c/0x238
>> [   12.143288]  dma_direct_alloc_pages+0x48/0xf8
>> [   12.147632]  dma_direct_alloc+0x4c/0x6c
>> [   12.151455]  dma_alloc_attrs+0x88/0xf4
>> [   12.155196]  dma_pool_alloc+0x11c/0x2ec
>> [   12.159053]  _base_allocate_memory_pools+0x2ec/0x1078 [mpt3sas]
>> [   12.164978]  mpt3sas_base_attach+0x444/0x748 [mpt3sas]
>> [   12.170121]  _scsih_probe+0x554/0x848 [mpt3sas]
>> [   12.174648]  local_pci_probe+0x4c/0x98
>>
>> And the kdump fails to find local storage:
>>
>>
>>   mpt3sas_cm0: reply_post_free pool: dma_pool_alloc failed
>>   mpt3sas_cm0: failure at ../drivers/scsi/mpt3sas/mpt3sas_scsih.c:10626/_scsih_probe()!
>>
>>
>>
>>
>>> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
>>> is specified simultaneously, kernel should reserve specified size low memory
>>> for crash dump kernel devices. So there may be two crash kernel regions, one
>>> is below 4G, the other is above 4G.
>>
>>    Can we consider a different name for "low" -  Like "dma" .. That is what it is intended for :
>>
>> Ie: So it shows up as ;
>>
>> # cat /proc/iomem  | grep -i cras
>>    e2200000-f1bfffff : Crash kernel (dma)
>>    8c0000000-93fffffff : Crash kernel
>>
>>
>>
>>> In order to distinct from the high region and make no effect to the use of
>>> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
>>> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
>>>
>>> Besides, we need to modify kexec-tools:
>>> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
>>
>>
>> Can you explain what needs done to kexec tools  in more detail ?
>>
>> I'd like to understand why the Arm kdump boot images are so large ( 1024M+ ) as compared to x86 that can take a vmcore using a 512M kdump image .
> 
> As i said above, we also need to modify kexec-tools,
> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1]) is the patch.
> 
> 
> Firstly, usable memory of crash dump kernel is passed via DT property, which is done by kexec-tools.
> 
> Currently, there is only one crash kernel region on arm64, which is passed by DT property "linux,usable-memory-range",
> We need to add another region "crash kernel low" used for crash dump kernel devices, so kexec-tools need to add
> another DT property "linux,low-memory-range" and then load crash kernel high.
> 
> More details can be retrieved from https://urldefense.com/v3/__http://lists.infradead.org/pipermail/kexec/2019-August/023569.html__;!!GqivPVa7Brio!I8OZuGITkxJtV3rT-AhRHey6R1A8sKmoPof2Ss5p9RdVPCQldpTfg-a_3SXv6sSNdSJQ$ .
> 
> Thanks,
> Chen Zhou

Hi Chen,


I'll look at those changes.

Perhaps for Arm64 we hard code the dma range set up  for POC bring-up if 
the crash kdump is utilizing memory above 4G.  I don't see how an 
administrator is going to determine the value and  size, do you ?
What value did you use as " crashkernel=xx,low " ?




I did an experiment today ..If you configure an Arm server class machine 
using "  mem=896M maxcpus=1 " on the cmdline  that confines the address 
space to below 1G, the system won't boot ..it suffers the same OoM 
issues that  a kdump does as it boots to single user mode.
.




> 
>>
>>
>>
>> ======= <clipped>=======
>>
>>
>> .
>>
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/kexec__;!!GqivPVa7Brio!I8OZuGITkxJtV3rT-AhRHey6R1A8sKmoPof2Ss5p9RdVPCQldpTfg-a_3SXv6tPhWi2g$
> 


-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
