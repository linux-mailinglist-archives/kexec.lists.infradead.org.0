Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BB416A9CA
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 16:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fUZ/OSbjejn6dBym6hjyhTAQjQwIBBbD1NQTgUwCI5s=; b=TX1EQy0wq/LuRe7eYiSi90NlpL
	+24+h80Oh8F5c0daGdW6LLXXNnwtvfBMMiPStv85fi3P6lnXahbRNgk+JJsZyqdpAt7GggRt0uC8o
	Tn4XDsOlVeXySIU0Ry/jtHqKnsnwb4AmoDuanLoh9Ocoz+rcelLGu7YAdClhl435YSPgUm45ViL0e
	olG5jRme5JsleDfaD19X4sTBjwYtdTNqnh8rEl2+DP6C9nJR5GZsuBeoT6WW0Y4r0BVrVC/PXd5ps
	vrPwAZJjuKy35ak/LEUjSIk34oo2VW/Rjozbab4siBgeHQWIOHt74gseLb19Rv47gWXVKWh3Y/tj8
	eHAvEXTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6FVs-0004e0-H5; Mon, 24 Feb 2020 15:19:16 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6FVp-0004c1-2r
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 15:19:14 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01OFI2E5034195;
 Mon, 24 Feb 2020 15:18:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=IZBlZqW/RTIQGv1FMd6NnbDpL+mTPRKQpYdPDi5jwus=;
 b=r6ksCCt2e4/RgzmgGoAcRpkSgLDZXQXUKG2kQWz3v9wQVSYbOP8YIzNLL8FMj+Q3h9SO
 RYu8sYQnS+gJNnVVWzPh0LLZIUsp8wjj+Bg9iKwwatCvXhNlitWpWRhAWjd3M8nEzLUL
 EhPgp8xTK4SrO5H+/QVRTYlchvWuF2IsQqOIiX8+yQi4a3Sma7mOmPMwlcLCZ3v6guaI
 bA/EatcXahT7rsk1IQe511iwYmyiCwpdadA8g1eyGjKfqbKn8rI97HYBlOKr6dDlLJpH
 11nVSGWAbWFUcr3/VnSfQqpMfBQnqNzWC76wfvITuS/ew26+Vi+hrcTjzBPP5TmULmwz 9Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2ybvr4m8cs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 15:18:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01OFIZN9096434;
 Mon, 24 Feb 2020 15:18:39 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2yby5cdxtr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Feb 2020 15:18:39 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 01OFIbDD019108;
 Mon, 24 Feb 2020 15:18:37 GMT
Received: from [10.39.217.189] (/10.39.217.189)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Feb 2020 07:18:37 -0800
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <52102118-9b61-5978-3213-062e9c758dcf@Oracle.com>
Date: Mon, 24 Feb 2020 09:18:27 -0600
Message-Id: <BF198E9B-2A9B-4325-A2CA-BB164729704B@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <52102118-9b61-5978-3213-062e9c758dcf@Oracle.com>
To: kexec mailing list <kexec@lists.infradead.org>,
 linux-kernel@vger.kernel.org
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9541
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 bulkscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 adultscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002240125
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9541
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 suspectscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002240125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_071913_214239_844D440E 
X-CRM114-Status: GOOD (  22.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On Feb 12, 2020, at 7:20 AM, John Donnelly <John.P.Donnelly@Oracle.com> wrote:
> 
> On 12/23/19 9:23 AM, Chen Zhou wrote:
>> This patch series enable reserving crashkernel above 4G in arm64.
>> There are following issues in arm64 kdump:
>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
>> when there is no enough low memory.
>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
>> will boot failure because there is no low memory available for allocation.
>> To solve these issues, introduce crashkernel=X,low to reserve specified
>> size low memory.
>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
>> size low memory for crash kdump kernel devices firstly and then reserve
>> memory above 4G.
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
> Reserving 250MB of low memory at 3618MB for crashkernel (System low RAM: 2029MB)
> crashkernel reserved: 0x00000008c0000000 - 0x0000000940000000 (2048 MB)
> 
> # cat /proc/iomem  | grep -i cras
>  e2200000-f1bfffff : Crash kernel (low)
>  8c0000000-93fffffff : Crash kernel
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
> mpt3sas_cm0: reply_post_free pool: dma_pool_alloc failed
> mpt3sas_cm0: failure at ../drivers/scsi/mpt3sas/mpt3sas_scsih.c:10626/_scsih_probe()!

 Hi Chen,


I was able to unit test these series of kernel  patches  applied to a 5.4.17 test kernel  along with the kexec CLI  change :

0001-arm64-kdump-add-another-DT-property-to-crash-dump-ke.patch

 Applied to :

kexec-tools-2.0.19-12.0.4.el8.src.rpm

And obtained a vmcore using this cmdline :

BOOT_IMAGE=(hd6,gpt2)/vmlinuz-5.4.17-4-uek6m_ol8-jpdonnel+ root=/dev/mapper/ol01-root ro crashkernel=2048M@35G crashkernel=250M,low rd.lvm.lv=ol01/root rd.lvm.lv=ol01/swap console=ttyS4 loglevel=7

Can you add :

Tested-by: John Donnelly <John.p.donnelly@oracle.com>


How can we  get these changes included into an rc kernel release  ?

Thanks,

John.






> 
> 
> 
> 
>> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
>> is specified simultaneously, kernel should reserve specified size low memory
>> for crash dump kernel devices. So there may be two crash kernel regions, one
>> is below 4G, the other is above 4G.
>> In order to distinct from the high region and make no effect to the use of
>> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
>> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
>> Besides, we need to modify kexec-tools:
>> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
> 
> 
> Can you explain what needs done to kexec tools  in more detail ?
> 
> I'd like to understand why the Arm kdump boot images are so large ( 1024M+ ) as compared to x86 that can take a vmcore using a 512M kdump image .
> 
> 
> 
> ======= <clipped>=======


   I was able to unit test these series of patches along with the kexec CLI  change :

0001-arm64-kdump-add-another-DT-property-to-crash-dump-ke.patch

 Applied to :

kexec-tools-2.0.19-12.0.4.el8.src.rpm


And was able to get a vmcore dump 

> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/kexec__;!!GqivPVa7Brio!PTJ8J3z7crIzNbPXZr99_vgRkany0mRuHvQqzUIK_4QoWqLEcdWLXfjsdyw3vIntYsG7$ 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
