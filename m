Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0537917E2F0
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 15:59:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9L6jNUOs58N2EPP/IMn9vzyKh7K8h7q0aerpbNlDdgI=; b=Ql7I4rF14VoLk3sx5I45M8KNz
	MZHIlwoa7mKxr19s9teBB5rQ6+4NndbEQ5R2SfnCQrXJJc9S3CTqIl1sEZo59Q8V6/260sUMewJYz
	b7S8aU3/hpRLkCDYk5pe2KgvMcpGlWpbmbqS87a7dH9F6BZF7w3E0IY/hD6YSYOZ0yvwPewH33C8B
	p1X7JeanA6cuuX8wpQK20zwTqLHloN8m//NWX7oa78ug0lgE8imgFIBN8naP/5BEzdCu5Quq9WMax
	BGu2w57zEglc5OWa5a8cyMeG8iZ5WnGhx0RSOqNvX9ok0TOkqTvF75TKQaZW/vB2BvNk/fvo7HunU
	ELQRZnLJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJsj-0002MP-GC; Mon, 09 Mar 2020 14:59:49 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJsf-0002Lz-Dh
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 14:59:47 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029EsIoZ085168
 for <kexec@lists.infradead.org>; Mon, 9 Mar 2020 14:59:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : to :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=5CsryUluKqQqKvRpytr6H52nq7KhGcdkzk8Ckl6qYZA=;
 b=s3NIgxXGdh24zfWTZYRnXAi+wJ/KIV6MXaQn1Oap46VRd/ydUj1l2GVXfb7hy3F60253
 wHQMCInTyCB7P/y5LVwXa5opGTiTNhvQvnrEvLCQKgGnYGBpeGA88HMWy5D77d/qRbBr
 s9LaAA9x6pJXdL6mp4zGSqrnFkk5wOOcjq78dgnmGCLEByRrPEm0khAAVrs9I+Ik187d
 liwZGK4OY/qqoKizHET0ssbGQxlAROr8875fLpnzSpPc1NQHYKx9lFG20Xxvt0DHe2po
 dYGaq9OC0kIs5SHom36a9NH545QY3AxmaTBgKYWKjqaJm8gdRLHkkucbSXWPaZS9/0La /w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2ym31u7jpj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 14:59:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029EqrHo010306
 for <kexec@lists.infradead.org>; Mon, 9 Mar 2020 14:59:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ymnb04440-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 14:59:37 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 029Exb7P025473
 for <kexec@lists.infradead.org>; Mon, 9 Mar 2020 14:59:37 GMT
Received: from [192.168.1.126] (/47.220.71.223)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 09 Mar 2020 07:59:36 -0700
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
To: kexec@lists.infradead.org
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
 <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
 <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
 <B6820665-123F-422A-8E49-BB2A48D02CA7@oracle.com>
 <CAJ2QiJ+x5ne1r4h4V=Ng6wVo0ro+4E_RKAXUuzyc=y-+4aL1WQ@mail.gmail.com>
From: John Donnelly <John.P.Donnelly@Oracle.com>
Message-ID: <687c6163-3995-36c1-5b65-49a7faf8a8c4@Oracle.com>
Date: Mon, 9 Mar 2020 09:59:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAJ2QiJ+x5ne1r4h4V=Ng6wVo0ro+4E_RKAXUuzyc=y-+4aL1WQ@mail.gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9554
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 mlxlogscore=999
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9554
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_075945_552848_0BA8CDFF 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 3/8/20 11:59 PM, Prabhakar Kushwaha wrote:
> . Hi John,
> 
> On Sun, Mar 8, 2020 at 12:13 AM John Donnelly
> <john.p.donnelly@oracle.com> wrote:
>>
>>
>>
>>> On Mar 7, 2020, at 5:06 AM, Chen Zhou <chenzhou10@huawei.com> wrote:
>>>
>>>
>>>
>>> On 2020/3/5 18:13, Prabhakar Kushwaha wrote:
>>>> On Mon, Dec 23, 2019 at 8:57 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>>>>>
>>>>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>>>>> 4G. If crashkernel=X,low is specified simultaneously, reserve spcified
>>>>> size low memory for crash kdump kernel devices firstly and then reserve
>>>>> memory above 4G.
>>>>>
>>>>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>>>>> ---
>>>>> arch/arm64/kernel/setup.c |  8 +++++++-
>>>>> arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
>>>>> 2 files changed, 36 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>>>>> index 56f6645..04d1c87 100644
>>>>> --- a/arch/arm64/kernel/setup.c
>>>>> +++ b/arch/arm64/kernel/setup.c
>>>>> @@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
>>>>>                     kernel_data.end <= res->end)
>>>>>                         request_resource(res, &kernel_data);
>>>>> #ifdef CONFIG_KEXEC_CORE
>>>>> -               /* Userspace will find "Crash kernel" region in /proc/iomem. */
>>>>> +               /*
>>>>> +                * Userspace will find "Crash kernel" region in /proc/iomem.
>>>>> +                * Note: the low region is renamed as Crash kernel (low).
>>>>> +                */
>>>>> +               if (crashk_low_res.end && crashk_low_res.start >= res->start &&
>>>>> +                               crashk_low_res.end <= res->end)
>>>>> +                       request_resource(res, &crashk_low_res);
>>>>>                 if (crashk_res.end && crashk_res.start >= res->start &&
>>>>>                     crashk_res.end <= res->end)
>>>>>                         request_resource(res, &crashk_res);
>>>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>>>> index b65dffd..0d7afd5 100644
>>>>> --- a/arch/arm64/mm/init.c
>>>>> +++ b/arch/arm64/mm/init.c
>>>>> @@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
>>>>> {
>>>>>         unsigned long long crash_base, crash_size;
>>>>>         int ret;
>>>>> +       phys_addr_t crash_max = arm64_dma32_phys_limit;
>>>>>
>>>>>         ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
>>>>>                                 &crash_size, &crash_base);
>>>>> @@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
>>>>>         if (ret || !crash_size)
>>>>>                 return;
>>>>>
>>>>> +       ret = reserve_crashkernel_low();
>>>>> +       if (!ret && crashk_low_res.end) {
>>>>> +               /*
>>>>> +                * If crashkernel=X,low specified, there may be two regions,
>>>>> +                * we need to make some changes as follows:
>>>>> +                *
>>>>> +                * 1. rename the low region as "Crash kernel (low)"
>>>>> +                * In order to distinct from the high region and make no effect
>>>>> +                * to the use of existing kexec-tools, rename the low region as
>>>>> +                * "Crash kernel (low)".
>>>>> +                *
>>>>> +                * 2. change the upper bound for crash memory
>>>>> +                * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
>>>>> +                *
>>>>> +                * 3. mark the low region as "nomap"
>>>>> +                * The low region is intended to be used for crash dump kernel
>>>>> +                * devices, just mark the low region as "nomap" simply.
>>>>> +                */
>>>>> +               const char *rename = "Crash kernel (low)";
>>>>> +
>>>>> +               crashk_low_res.name = rename;
>>>>> +               crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
>>>>> +               memblock_mark_nomap(crashk_low_res.start,
>>>>> +                                   resource_size(&crashk_low_res));
>>>>> +       }
>>>>> +
>>>>>         crash_size = PAGE_ALIGN(crash_size);
>>>>>
>>>>>         if (crash_base == 0) {
>>>>>                 /* Current arm64 boot protocol requires 2MB alignment */
>>>>> -               crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
>>>>> -                               crash_size, SZ_2M);
>>>>> +               crash_base = memblock_find_in_range(0, crash_max, crash_size,
>>>>> +                               SZ_2M);
>>>>>                 if (crash_base == 0) {
>>>>>                         pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
>>>>>                                 crash_size);
>>>>> --
>>>>
>>>> I tested this patch series on ARM64-ThunderX2 with no issue with
>>>> bootargs crashkenel=X@Y crashkernel=250M,low
>>>>
>>>> $ dmesg | grep crash
>>>> [    0.000000] crashkernel reserved: 0x0000000b81200000 -
>>>> 0x0000000c81200000 (4096 MB)
>>>> [    0.000000] Kernel command line:
>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro
>>>> crashkernel=4G@0xb81200000 crashkernel=250M,low nowatchdog earlycon
>>>> [   29.310209]     crashkernel=250M,low
>>>>
>>>> $  kexec -p -i /boot/vmlinuz-`uname -r`
>>>> --initrd=/boot/initrd.img-`uname -r` --reuse-cmdline
>>>> $ echo 1 > /proc/sys/kernel/sysrq ; echo c > /proc/sysrq-trigger
>>>>
>>>> But when i tried with crashkernel=4G crashkernel=250M,low as bootargs.
>>>> Kernel is not able to allocate memory.
>>>> [    0.000000] cannot allocate crashkernel (size:0x100000000)
>>>> [    0.000000] Kernel command line:
>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
>>>> crashkernel=250M,low nowatchdog
>>>> [   29.332081]     crashkernel=250M,low
>>>>
>>>> does crashkernel=X@Y mandatory to get allocated beyond 4G?
>>>> am I missing something?
>>>
>>
>>     crashkernel=4G
>>
>>     You need to look at the memory map on node 0  from dmesg     ( or /proc/iomem ) to determine if there is any memory in that range  - 0x100000000 == 1st byte above 4G .
>>
> 
> i believe i have enough free memory. Please find log below
> 
> $ dmesg | grep "node 0"
> [    0.000000] Initmem setup node 0 [mem 0x00000000802f0000-0x0000009ffcffffff]
> [    0.000000] On node 0 totalpages: 33537296
> [   12.335714] pci_bus 0000:00: on NUMA node 0
> $
> 
> I am passing 4G@0xb81200000 in working scenario, here 0xb81200000 is
> well within node 0 range.
> 
> Logs of iomem is below:
> 
> $ cat /proc/iomem
> 00000000-00000000 : PCI ECAM
> 00000000-00000000 : PCI ECAM
> 00000000-00000000 : PCI Bus 0000:00
>    00000000-00000000 : PCI Bus 0000:0f
>      00000000-00000000 : PCI Bus 0000:10
>        00000000-00000000 : 0000:10:00.0
>        00000000-00000000 : 0000:10:00.0
>    00000000-00000000 : PCI Bus 0000:01
>      00000000-00000000 : 0000:01:00.0
>      00000000-00000000 : 0000:01:00.1
>    00000000-00000000 : PCI Bus 0000:05
>      00000000-00000000 : 0000:05:00.0
>      00000000-00000000 : 0000:05:00.1
>    00000000-00000000 : PCI Bus 0000:09
>      00000000-00000000 : 0000:09:00.0
>      00000000-00000000 : 0000:09:00.1
>    00000000-00000000 : 0000:00:10.0
>      00000000-00000000 : ahci
>    00000000-00000000 : 0000:00:10.1
>      00000000-00000000 : ahci
> 00000000-00000000 : PCI Bus 0000:80
>    00000000-00000000 : PCI Bus 0000:83
>      00000000-00000000 : 0000:83:00.0
>      00000000-00000000 : 0000:83:00.0
>        00000000-00000000 : nvme
>    00000000-00000000 : PCI Bus 0000:89
>      00000000-00000000 : 0000:89:00.0
>        00000000-00000000 : e1000e
>      00000000-00000000 : 0000:89:00.0
>      00000000-00000000 : 0000:89:00.0
>        00000000-00000000 : e1000e
>      00000000-00000000 : 0000:89:00.0
>        00000000-00000000 : e1000e
>    00000000-00000000 : PCI Bus 0000:8d
>      00000000-00000000 : 0000:8d:00.0
>      00000000-00000000 : 0000:8d:00.0
>        00000000-00000000 : mpt3sas
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : Kernel code
>    00000000-00000000 : reserved
>    00000000-00000000 : Kernel data
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
> 00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
> 00000000-00000000 : CAV901C:00
> 00000000-00000000 : CAV901D:00
>    00000000-00000000 : CAV901C:00
> 00000000-00000000 : CAV901E:00
>    00000000-00000000 : CAV901C:00
> 00000000-00000000 : CAV901F:00
>    00000000-00000000 : CAV901C:00
> 00000000-00000000 : CAV9006:00
>    00000000-00000000 : CAV9006:00
> 00000000-00000000 : ARMH0011:00
>    00000000-00000000 : ARMH0011:00
> 00000000-00000000 : arm-smmu-v3.0.auto
>    00000000-00000000 : arm-smmu-v3.0.auto
> 00000000-00000000 : arm-smmu-v3.1.auto
>    00000000-00000000 : arm-smmu-v3.1.auto
> 00000000-00000000 : arm-smmu-v3.2.auto
>    00000000-00000000 : arm-smmu-v3.2.auto
> 00000000-00000000 : CAV901C:01
> 00000000-00000000 : CAV901D:01
>    00000000-00000000 : CAV901C:01
> 00000000-00000000 : CAV901E:01
>    00000000-00000000 : CAV901C:01
> 00000000-00000000 : CAV901F:01
>    00000000-00000000 : CAV901C:01
> 00000000-00000000 : CAV9007:06
>    00000000-00000000 : CAV9007:06
> 00000000-00000000 : arm-smmu-v3.3.auto
>    00000000-00000000 : arm-smmu-v3.3.auto
> 00000000-00000000 : arm-smmu-v3.4.auto
>    00000000-00000000 : arm-smmu-v3.4.auto
> 00000000-00000000 : arm-smmu-v3.5.auto
>    00000000-00000000 : arm-smmu-v3.5.auto
> 00000000-00000000 : System RAM
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
> 00000000-00000000 : System RAM
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
>    00000000-00000000 : reserved
> 00000000-00000000 : PCI Bus 0000:00
>    00000000-00000000 : PCI Bus 0000:01
>      00000000-00000000 : 0000:01:00.0
>      00000000-00000000 : 0000:01:00.1
>      00000000-00000000 : 0000:01:00.0
>      00000000-00000000 : 0000:01:00.1
>      00000000-00000000 : 0000:01:00.0
>      00000000-00000000 : 0000:01:00.1
>    00000000-00000000 : PCI Bus 0000:05
>      00000000-00000000 : 0000:05:00.0
>        00000000-00000000 : bnx2x
>      00000000-00000000 : 0000:05:00.1
>        00000000-00000000 : bnx2x
>      00000000-00000000 : 0000:05:00.0
>        00000000-00000000 : bnx2x
>      00000000-00000000 : 0000:05:00.0
>        00000000-00000000 : bnx2x
>      00000000-00000000 : 0000:05:00.1
>        00000000-00000000 : bnx2x
>      00000000-00000000 : 0000:05:00.1
>        00000000-00000000 : bnx2x
>    00000000-00000000 : PCI Bus 0000:09
>      00000000-00000000 : 0000:09:00.0
>        00000000-00000000 : i40e
>      00000000-00000000 : 0000:09:00.1
>        00000000-00000000 : i40e
>      00000000-00000000 : 0000:09:00.0
>      00000000-00000000 : 0000:09:00.1
>      00000000-00000000 : 0000:09:00.0
>        00000000-00000000 : i40e
>      00000000-00000000 : 0000:09:00.1
>        00000000-00000000 : i40e
>      00000000-00000000 : 0000:09:00.0
>      00000000-00000000 : 0000:09:00.1
>    00000000-00000000 : 0000:00:0f.0
>      00000000-00000000 : xhci-hcd
>    00000000-00000000 : 0000:00:0f.0
>    00000000-00000000 : 0000:00:0f.1
>      00000000-00000000 : xhci-hcd
>    00000000-00000000 : 0000:00:0f.1
>    00000000-00000000 : 0000:00:10.0
>      00000000-00000000 : ahci
>    00000000-00000000 : 0000:00:10.1
>      00000000-00000000 : ahci
> 00000000-00000000 : PCI Bus 0000:80

   These appear all zero to me  !

  here is 1 flavor I have :

  [root@ca-dev-arm19 ~]# cat /proc/iomem
12600000-12600fff : ARMH0011:00
   12600000-12600fff : ARMH0011:00
12610000-12610fff : ARMH0011:01
   12610000-12610fff : ARMH0011:01
126b0000-126b0fff : APMC0D0F:00
   126b0000-126b0fff : APMC0D0F:00
126f0000-126f0fff : APMC0D81:00
   126f0000-126f0fff : APMC0D81:00
12730000-12730fff : arch_mem_timer
127c0000-127c0fff : sbsa-gwdt.0
   127c0000-127c0fff : sbsa-gwdt.0
127d0000-127d0fff : sbsa-gwdt.0
   127d0000-127d0fff : sbsa-gwdt.0
13800000-138fffff : 808622B7:00
   13800000-138fffff : 808622B7:00
13900000-139fffff : 808622B7:01
   13900000-139fffff : 808622B7:01
14000000-140fffff : arm-smmu.0.auto
   14000000-140fffff : arm-smmu.0.auto
15000000-150fffff : arm-smmu.1.auto
   15000000-150fffff : arm-smmu.1.auto
1c000000-1c000fff : APMC0D33:00
   1c000000-1c000fff : APMC0D33:00
1c100000-1c100fff : APMC0D33:01
   1c100000-1c100fff : APMC0D33:01
78810000-78810fff : APMC0D83:00
   78810000-78810fff : APMC0D83:00
7e200000-7e200fff : APMC0D83:00
   7e200000-7e200fff : APMC0D83:00
7e810000-7e810fff : APMC0D84:00
   7e810000-7e810fff :
7e830000-7e830fff : APMC0D84:01
   7e830000-7e830fff :
7e850000-7e850fff : APMC0D84:02
   7e850000-7e850fff :
7e870000-7e870fff : APMC0D84:03
   7e870000-7e870fff :
7e890000-7e890fff : APMC0D84:04
   7e890000-7e890fff :
7e8b0000-7e8b0fff : APMC0D84:05
   7e8b0000-7e8b0fff :
7e8d0000-7e8d0fff : APMC0D84:06
   7e8d0000-7e8d0fff :
7e8f0000-7e8f0fff : APMC0D84:07
   7e8f0000-7e8f0fff :
7e910000-7e910fff : APMC0D87:00
   7e910000-7e910fff :
7e930000-7e930fff : APMC0D87:01
   7e930000-7e930fff :
7ea50000-7ea50fff : APMC0D88:00
   7ea50000-7ea50fff :
7ead0000-7ead0fff : APMC0D88:01
   7ead0000-7ead0fff :
7eb50000-7eb50fff : APMC0D88:02
   7eb50000-7eb50fff :
7ebd0000-7ebd0fff : APMC0D88:03
   7ebd0000-7ebd0fff :
7ec50000-7ec50fff : APMC0D88:04
   7ec50000-7ec50fff :
7ecd0000-7ecd0fff : APMC0D88:05
   7ecd0000-7ecd0fff :
7ed50000-7ed50fff : APMC0D88:06
   7ed50000-7ed50fff :
7edd0000-7edd0fff : APMC0D88:07
   7edd0000-7edd0fff :
90000000-91ffffff : System RAM
92000000-928bffff : reserved
928c0000-fff7ffff : System RAM
   92a80000-93b6ffff : Kernel code
   942c0000-94f0ffff : Kernel data
   eee00000-ffdfffff : Crash kernel
fff80000-ffffffff : reserved
400000000-40fffffff : PCI ECAM
430000000-4efffffff : PCI Bus 0007:00
   430000000-4317fffff : PCI Bus 0007:01
     430000000-4317fffff : PCI Bus 0007:02
       430000000-430ffffff : 0007:02:00.0
       431000000-43103ffff : 0007:02:00.0
       431040000-43105ffff : 0007:02:00.0
500000000-5ffffffff : PCI Bus 0007:00
600000000-60fffffff : PCI ECAM
630000000-6efffffff : PCI Bus 0006:00
   630000000-6302fffff : PCI Bus 0006:01
     630000000-6300fffff : 0006:01:00.0
       630000000-6300fffff : igb
     630100000-6301fffff : 0006:01:00.0
     630200000-630203fff : 0006:01:00.0
       630200000-630203fff : igb
700000000-7ffffffff : PCI Bus 0006:00
880000000-fffffffff : System RAM
1000000000-100fffffff : PCI ECAM
1030000000-10efffffff : PCI Bus 0002:00
1100000000-57ffffffff : PCI Bus 0002:00
5800000000-580fffffff : PCI ECAM
5830000000-58efffffff : PCI Bus 0003:00
5900000000-5fffffffff : PCI Bus 0003:00
6000000000-600fffffff : PCI ECAM
6030000000-60efffffff : PCI Bus 0004:00
6100000000-6fffffffff : PCI Bus 0004:00
7000000000-700fffffff : PCI ECAM
7030000000-70efffffff : PCI Bus 0005:00
7100000000-77ffffffff : PCI Bus 0005:00
7800000000-780fffffff : PCI ECAM
7830000000-78efffffff : PCI Bus 0001:00
7900000000-7fffffffff : PCI Bus 0001:00
8800000000-bff12dffff : System RAM
bff12e0000-bff13dffff : reserved
bff13e0000-bff17fffff : System RAM
bff1800000-bff180ffff : reserved
bff1810000-bff23cffff : System RAM
bff23d0000-bff23dffff : reserved
bff23e0000-bff68fffff : System RAM
bff6900000-bff690ffff : reserved
bff6910000-bff801ffff : System RAM
bff8020000-bff849ffff : reserved
bff84a0000-bff856ffff : System RAM
bff8570000-bff85bffff : reserved
bff85c0000-bff8b4ffff : System RAM
bff8b50000-bff8b6ffff : reserved
bff8b70000-bff8b8ffff : System RAM
bff8b90000-bff8baffff : reserved
bff8bb0000-bff8bcffff : System RAM
bff8bd0000-bff8bdffff : reserved
bff8be0000-bffad8ffff : System RAM
bffad90000-bffe19ffff : reserved
bffe1a0000-bfffc9ffff : System RAM
bfffca0000-bfffccffff : reserved
bfffcd0000-bfffd2ffff : System RAM
bfffd30000-bfffd8ffff : reserved
bfffd90000-bfffffffff : System RAM
10000000000-1000fffffff : PCI ECAM
10030000000-100efffffff : PCI Bus 0000:00
   10030000000-100301fffff : PCI Bus 0000:01
     10030000000-100300fffff : 0000:01:00.0
     10030100000-1003013ffff : 0000:01:00.0
     10030140000-1003014ffff : 0000:01:00.0
       10030140000-1003014ffff : megasas: LSI






   Here is my memory map from dmesg from 1 type of machine :

[    0.000000] NUMA: NODE_DATA [mem 0xbfffffe180-0xbfffffffff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000090000000-0x00000000ffffffff]
[    0.000000]   Normal   [mem 0x0000000100000000-0x000000bfffffffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000090000000-0x0000000091ffffff]
[    0.000000]   node   0: [mem 0x0000000092000000-0x00000000928bffff]
[    0.000000]   node   0: [mem 0x00000000928c0000-0x00000000fff7ffff]
[    0.000000]   node   0: [mem 0x00000000fff80000-0x00000000ffffffff]
[    0.000000]   node   0: [mem 0x0000000880000000-0x0000000ffffffffff]


The maps vary on different flavors of server class equipment. It is 
vendor specific.




> 
> --pk
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/kexec__;!!GqivPVa7Brio!PWa-7CQ5Hx7dC_Aih8VYL9Fi6RZFuoTN9wYtbBCiUoStUuwwhNeaaXaGe5BfV3FbqPg4$
> 


-- 
Thank You,
John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
