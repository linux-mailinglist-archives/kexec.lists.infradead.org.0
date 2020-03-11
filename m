Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7D1181E3A
	for <lists+kexec@lfdr.de>; Wed, 11 Mar 2020 17:46:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRfdWafH5x8tYFiNPnGgosbzpvyvofYz5/air0WUELA=; b=X4w1boyMhZAthD
	jh09Pzj2ti6bQT7hNKAyoFZAmuViEjGflSGnKIz6VTDHU0rcUqNW49yG09f7sciL/BhVZzgErhtCp
	gCC/9hmarFUy5Q464tetWxTRLemJ4jDIaYCmU5HeZGVBv8uwtQGYpkzw5rMXHjuPdTMLWy6Xw1KZR
	MXoAx2fPj3w3wRu6aDhKgOoj/UVXKoHTx+C7GRKYCYyGHrnBt+ZR7B0jIglVyfZzkGmKGOZ+zYJYR
	TPqmFWViSRSzMD/9BIsluaIJ0vZfs4amGV+Y2wvJ1AflAdQSSSSW1YnRBZ0fhDk3eZBUxNr7d26DC
	Jfe5tG/sKvwKdAlzGyOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4VO-00024e-Mi; Wed, 11 Mar 2020 16:46:50 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4VG-0001yr-VA
 for kexec@lists.infradead.org; Wed, 11 Mar 2020 16:46:46 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02BGeUMn154538;
 Wed, 11 Mar 2020 16:46:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=V9EY4KDofWkwhjUEvJPP+GUrvr5a7Sdf/5Qkn729OGw=;
 b=bFJKyjE9WmTRXfFpb5GsFj5ZBlyELSAdatDtJq4ZKUtAwV2/e842JvF88Sfq8NQ2jzTW
 RGrMVnm9quVgBek7gpZfjvEKi4alJpJ4BHGKqx/0Ft/pf1BWvrowRmmvvz3OWDgsWuAd
 EUeUfFHBbFtSzdoUAtGzrxOmLQbVNHIPSM2XwMVH7ibJIvQYF5qWpA3altxotZNptP6c
 aXRM8b9DL5hbRHS9gPG5WHmn9s8bp3/Ee9zy7Ka850d0vI+1hA+Akck8zTxEc2zt7SOx
 KGU8cuS05I1Hc0U5//UO1DkIkBkMGpEZY4giIvyylpX3f8CEh8JWr3VTgCS5kX0hlLPe DQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2yp9v680pd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Mar 2020 16:46:35 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02BGcb3C104687;
 Wed, 11 Mar 2020 16:46:34 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2ypv9vpsm6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Mar 2020 16:46:33 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02BGkWjd012907;
 Wed, 11 Mar 2020 16:46:32 GMT
Received: from [10.39.222.44] (/10.39.222.44)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Mar 2020 09:46:32 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <CAJ2QiJJgG5_mvPn6jxhnn24EG7ByuLLsmO3sr5OSKNTKQ_jQSA@mail.gmail.com>
Date: Wed, 11 Mar 2020 11:46:29 -0500
Message-Id: <3FAE086D-E5F8-4FF1-B2E4-8637B6CFDC4A@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
 <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
 <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
 <CAJ2QiJL5Zj3Z=jrLVVn_n3vwNnTVtUZZMSkEaiVNLTA-ZmOe-Q@mail.gmail.com>
 <f95f2761-f4c9-58b6-485c-2da6c8cc6811@gmail.com>
 <8a4e3fca-ef77-eb1b-0ec6-a158b7fe5c0c@Oracle.com>
 <cf36f21a-6434-06ab-5b6c-e16cb526896d@gmail.com>
 <d0bc6ba2-74c8-c083-097f-e1e5765ddca0@Oracle.com>
 <E60A9E2C-AC74-49A6-9D3E-BDD4EF58287F@oracle.com>
 <CAJ2QiJJgG5_mvPn6jxhnn24EG7ByuLLsmO3sr5OSKNTKQ_jQSA@mail.gmail.com>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9556
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxlogscore=999
 spamscore=0 malwarescore=0 mlxscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003110100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9556
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 mlxlogscore=999
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003110100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_094643_154633_E9B9173D 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chen Zhou <chenzhou10@huawei.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi


> On Mar 10, 2020, at 9:42 PM, Prabhakar Kushwaha <prabhakar.pkin@gmail.com> wrote:
> 
> Dear John,
> 
> 
> On Tue, Mar 10, 2020 at 11:25 PM John Donnelly
> <john.p.donnelly@oracle.com> wrote:
>> 
>> 
>> 
>>> On Mar 10, 2020, at 12:34 PM, John Donnelly <John.P.Donnelly@Oracle.com> wrote:
>>> 
>>> On 3/10/20 12:04 PM, Prabhakar Kushwaha wrote:
>>>> On 3/9/2020 11:53 PM, John Donnelly wrote:
>>>>> On 3/9/20 10:51 AM, Prabhakar Kushwaha wrote:
>>>>>> On 3/9/2020 10:18 AM, Prabhakar Kushwaha wrote:
>>>>>>> Hi Chen,
>>>>>>> 
>>>>>>> On Sat, Mar 7, 2020 at 4:36 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>>>>>>>> 
>>>>>>>> 
>>>>>>>> 
>>>>>>>> On 2020/3/5 18:13, Prabhakar Kushwaha wrote:
>>>>>>>>> On Mon, Dec 23, 2019 at 8:57 PM Chen Zhou <chenzhou10@huawei.com>
>>>>>>>>> wrote:
>>>>>>>>>> 
>>>>>>>>>> Crashkernel=X tries to reserve memory for the crash dump kernel under
>>>>>>>>>> 4G. If crashkernel=X,low is specified simultaneously, reserve
>>>>>>>>>> spcified
>>>>>>>>>> size low memory for crash kdump kernel devices firstly and then
>>>>>>>>>> reserve
>>>>>>>>>> memory above 4G.
>>>>>>>>>> 
>>>>>>>>>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
>>>>>>>>>> ---
>>>>>>>>>>  arch/arm64/kernel/setup.c |  8 +++++++-
>>>>>>>>>>  arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
>>>>>>>>>>  2 files changed, 36 insertions(+), 3 deletions(-)
>>>>>>>>>> 
>>>>>>>>>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
>>>>>>>>>> index 56f6645..04d1c87 100644
>>>>>>>>>> --- a/arch/arm64/kernel/setup.c
>>>>>>>>>> +++ b/arch/arm64/kernel/setup.c
>>>>>>>>>> @@ -238,7 +238,13 @@ static void __init
>>>>>>>>>> request_standard_resources(void)
>>>>>>>>>>                     kernel_data.end <= res->end)
>>>>>>>>>>                         request_resource(res, &kernel_data);
>>>>>>>>>>  #ifdef CONFIG_KEXEC_CORE
>>>>>>>>>> -               /* Userspace will find "Crash kernel" region in
>>>>>>>>>> /proc/iomem. */
>>>>>>>>>> +               /*
>>>>>>>>>> +                * Userspace will find "Crash kernel" region in
>>>>>>>>>> /proc/iomem.
>>>>>>>>>> +                * Note: the low region is renamed as Crash kernel
>>>>>>>>>> (low).
>>>>>>>>>> +                */
>>>>>>>>>> +               if (crashk_low_res.end && crashk_low_res.start >=
>>>>>>>>>> res->start &&
>>>>>>>>>> +                               crashk_low_res.end <= res->end)
>>>>>>>>>> +                       request_resource(res, &crashk_low_res);
>>>>>>>>>>                 if (crashk_res.end && crashk_res.start >=
>>>>>>>>>> res->start &&
>>>>>>>>>>                     crashk_res.end <= res->end)
>>>>>>>>>>                         request_resource(res, &crashk_res);
>>>>>>>>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
>>>>>>>>>> index b65dffd..0d7afd5 100644
>>>>>>>>>> --- a/arch/arm64/mm/init.c
>>>>>>>>>> +++ b/arch/arm64/mm/init.c
>>>>>>>>>> @@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
>>>>>>>>>>  {
>>>>>>>>>>         unsigned long long crash_base, crash_size;
>>>>>>>>>>         int ret;
>>>>>>>>>> +       phys_addr_t crash_max = arm64_dma32_phys_limit;
>>>>>>>>>> 
>>>>>>>>>>         ret = parse_crashkernel(boot_command_line,
>>>>>>>>>> memblock_phys_mem_size(),
>>>>>>>>>>                                 &crash_size, &crash_base);
>>>>>>>>>> @@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
>>>>>>>>>>         if (ret || !crash_size)
>>>>>>>>>>                 return;
>>>>>>>>>> 
>>>>>>>>>> +       ret = reserve_crashkernel_low();
>>>>>>>>>> +       if (!ret && crashk_low_res.end) {
>>>>>>>>>> +               /*
>>>>>>>>>> +                * If crashkernel=X,low specified, there may be
>>>>>>>>>> two regions,
>>>>>>>>>> +                * we need to make some changes as follows:
>>>>>>>>>> +                *
>>>>>>>>>> +                * 1. rename the low region as "Crash kernel (low)"
>>>>>>>>>> +                * In order to distinct from the high region and
>>>>>>>>>> make no effect
>>>>>>>>>> +                * to the use of existing kexec-tools, rename the
>>>>>>>>>> low region as
>>>>>>>>>> +                * "Crash kernel (low)".
>>>>>>>>>> +                *
>>>>>>>>>> +                * 2. change the upper bound for crash memory
>>>>>>>>>> +                * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for
>>>>>>>>>> crash memory.
>>>>>>>>>> +                *
>>>>>>>>>> +                * 3. mark the low region as "nomap"
>>>>>>>>>> +                * The low region is intended to be used for crash
>>>>>>>>>> dump kernel
>>>>>>>>>> +                * devices, just mark the low region as "nomap"
>>>>>>>>>> simply.
>>>>>>>>>> +                */
>>>>>>>>>> +               const char *rename = "Crash kernel (low)";
>>>>>>>>>> +
>>>>>>>>>> +               crashk_low_res.name = rename;
>>>>>>>>>> +               crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
>>>>>>>>>> +               memblock_mark_nomap(crashk_low_res.start,
>>>>>>>>>> +                                   resource_size(&crashk_low_res));
>>>>>>>>>> +       }
>>>>>>>>>> +
>>>>>>>>>>         crash_size = PAGE_ALIGN(crash_size);
>>>>>>>>>> 
>>>>>>>>>>         if (crash_base == 0) {
>>>>>>>>>>                 /* Current arm64 boot protocol requires 2MB
>>>>>>>>>> alignment */
>>>>>>>>>> -               crash_base = memblock_find_in_range(0,
>>>>>>>>>> arm64_dma32_phys_limit,
>>>>>>>>>> -                               crash_size, SZ_2M);
>>>>>>>>>> +               crash_base = memblock_find_in_range(0, crash_max,
>>>>>>>>>> crash_size,
>>>>>>>>>> +                               SZ_2M);
>>>>>>>>>>                 if (crash_base == 0) {
>>>>>>>>>>                         pr_warn("cannot allocate crashkernel
>>>>>>>>>> (size:0x%llx)\n",
>>>>>>>>>>                                 crash_size);
>>>>>>>>>> --
>>>>>>>>> 
>>>>>>>>> I tested this patch series on ARM64-ThunderX2 with no issue with
>>>>>>>>> bootargs crashkenel=X@Y crashkernel=250M,low
>>>>>>>>> 
>>>>>>>>> $ dmesg | grep crash
>>>>>>>>> [    0.000000] crashkernel reserved: 0x0000000b81200000 -
>>>>>>>>> 0x0000000c81200000 (4096 MB)
>>>>>>>>> [    0.000000] Kernel command line:
>>>>>>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>>>>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro
>>>>>>>>> crashkernel=4G@0xb81200000 crashkernel=250M,low nowatchdog earlycon
>>>>>>>>> [   29.310209]     crashkernel=250M,low
>>>>>>>>> 
>>>>>>>>> $  kexec -p -i /boot/vmlinuz-`uname -r`
>>>>>>>>> --initrd=/boot/initrd.img-`uname -r` --reuse-cmdline
>>>>>>>>> $ echo 1 > /proc/sys/kernel/sysrq ; echo c > /proc/sysrq-trigger
>>>>>>>>> 
>>>>>>>>> But when i tried with crashkernel=4G crashkernel=250M,low as bootargs.
>>>>>>>>> Kernel is not able to allocate memory.
>>>>>>>>> [    0.000000] cannot allocate crashkernel (size:0x100000000)
>>>>>>>>> [    0.000000] Kernel command line:
>>>>>>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>>>>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
>>>>>>>>> crashkernel=250M,low nowatchdog
>>>>>>>>> [   29.332081]     crashkernel=250M,low
>>>>>>>>> 
>>>>>>>>> does crashkernel=X@Y mandatory to get allocated beyond 4G?
>>>>>>>>> am I missing something?
>>>>>>>> 
>>>>>>>> I can't reproduce the problem in my environment, can you test with
>>>>>>>> other size,
>>>>>>>> such as "crashkernel=1G crashkernel=250M,low", see if there is the
>>>>>>>> same issue.
>>>>>>>> 
>>>>>>> I tried 1G also. Same error, please find the logs
>>>>>>> 
>>>>>>> $ dmesg | grep crash
>>>>>>> [    0.000000] cannot allocate crashkernel (size:0x40000000)
>>>>>>> [    0.000000] Kernel command line:
>>>>>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro nowatchdog earlycon
>>>>>>> crashkernel=1G crashkernel=250M,low
>>>>>>> [   29.326916]     crashkernel=250M,low
>>>>>>> 
>>>>>>> 
>>>>>>>> Besides, crashkernel=X@Y isn't mandatory to get allocated beyond 4G,
>>>>>>> 
>>>>>>> this was my understanding also.
>>>>>>> 
>>>>>>>> can you show the whole file /proc/iomem.
>>>>>>>> 
>>>>>>> 
>>>>>>> $ cat /proc/iomem
>>>>>>> 00000000-00000000 : PCI ECAM
>>>>>>> 00000000-00000000 : PCI ECAM
>>>>>>> 00000000-00000000 : PCI Bus 0000:00
>>>>>>>   00000000-00000000 : PCI Bus 0000:0f
>>>>>>>     00000000-00000000 : PCI Bus 0000:10
>>>>>>>       00000000-00000000 : 0000:10:00.0
>>>>>>>       00000000-00000000 : 0000:10:00.0
>>>>>>>   00000000-00000000 : PCI Bus 0000:01
>>>>>>>     00000000-00000000 : 0000:01:00.0
>>>>>>>     00000000-00000000 : 0000:01:00.1
>>>>>>>   00000000-00000000 : PCI Bus 0000:05
>>>>>>>     00000000-00000000 : 0000:05:00.0
>>>>>>>     00000000-00000000 : 0000:05:00.1
>>>>>>>   00000000-00000000 : PCI Bus 0000:09
>>>>>>>     00000000-00000000 : 0000:09:00.0
>>>>>>>     00000000-00000000 : 0000:09:00.1
>>>>>>>   00000000-00000000 : 0000:00:10.0
>>>>>>>     00000000-00000000 : ahci
>>>>>>>   00000000-00000000 : 0000:00:10.1
>>>>>>>     00000000-00000000 : ahci
>>>>>>> 00000000-00000000 : PCI Bus 0000:80
>>>>>>>   00000000-00000000 : PCI Bus 0000:83
>>>>>>>     00000000-00000000 : 0000:83:00.0
>>>>>>>     00000000-00000000 : 0000:83:00.0
>>>>>>>       00000000-00000000 : nvme
>>>>>>>   00000000-00000000 : PCI Bus 0000:89
>>>>>>>     00000000-00000000 : 0000:89:00.0
>>>>>>>       00000000-00000000 : e1000e
>>>>>>>     00000000-00000000 : 0000:89:00.0
>>>>>>>     00000000-00000000 : 0000:89:00.0
>>>>>>>       00000000-00000000 : e1000e
>>>>>>>     00000000-00000000 : 0000:89:00.0
>>>>>>>       00000000-00000000 : e1000e
>>>>>>>   00000000-00000000 : PCI Bus 0000:8d
>>>>>>>     00000000-00000000 : 0000:8d:00.0
>>>>>>>     00000000-00000000 : 0000:8d:00.0
>>>>>>>       00000000-00000000 : mpt3sas
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : Kernel code
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : Kernel data
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : CAV901C:00
>>>>>>> 00000000-00000000 : CAV901D:00
>>>>>>>   00000000-00000000 : CAV901C:00
>>>>>>> 00000000-00000000 : CAV901E:00
>>>>>>>   00000000-00000000 : CAV901C:00
>>>>>>> 00000000-00000000 : CAV901F:00
>>>>>>>   00000000-00000000 : CAV901C:00
>>>>>>> 00000000-00000000 : CAV9006:00
>>>>>>>   00000000-00000000 : CAV9006:00
>>>>>>> 00000000-00000000 : ARMH0011:00
>>>>>>>   00000000-00000000 : ARMH0011:00
>>>>>>> 00000000-00000000 : arm-smmu-v3.0.auto
>>>>>>>   00000000-00000000 : arm-smmu-v3.0.auto
>>>>>>> 00000000-00000000 : arm-smmu-v3.1.auto
>>>>>>>   00000000-00000000 : arm-smmu-v3.1.auto
>>>>>>> 00000000-00000000 : arm-smmu-v3.2.auto
>>>>>>>   00000000-00000000 : arm-smmu-v3.2.auto
>>>>>>> 00000000-00000000 : CAV901C:01
>>>>>>> 00000000-00000000 : CAV901D:01
>>>>>>>   00000000-00000000 : CAV901C:01
>>>>>>> 00000000-00000000 : CAV901E:01
>>>>>>>   00000000-00000000 : CAV901C:01
>>>>>>> 00000000-00000000 : CAV901F:01
>>>>>>>   00000000-00000000 : CAV901C:01
>>>>>>> 00000000-00000000 : CAV9007:06
>>>>>>>   00000000-00000000 : CAV9007:06
>>>>>>> 00000000-00000000 : arm-smmu-v3.3.auto
>>>>>>>   00000000-00000000 : arm-smmu-v3.3.auto
>>>>>>> 00000000-00000000 : arm-smmu-v3.4.auto
>>>>>>>   00000000-00000000 : arm-smmu-v3.4.auto
>>>>>>> 00000000-00000000 : arm-smmu-v3.5.auto
>>>>>>>   00000000-00000000 : arm-smmu-v3.5.auto
>>>>>>> 00000000-00000000 : System RAM
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : System RAM
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>>   00000000-00000000 : reserved
>>>>>>> 00000000-00000000 : PCI Bus 0000:00
>>>>>>>   00000000-00000000 : PCI Bus 0000:01
>>>>>>>     00000000-00000000 : 0000:01:00.0
>>>>>>>     00000000-00000000 : 0000:01:00.1
>>>>>>>     00000000-00000000 : 0000:01:00.0
>>>>>>>     00000000-00000000 : 0000:01:00.1
>>>>>>>     00000000-00000000 : 0000:01:00.0
>>>>>>>     00000000-00000000 : 0000:01:00.1
>>>>>>>   00000000-00000000 : PCI Bus 0000:05
>>>>>>>     00000000-00000000 : 0000:05:00.0
>>>>>>>       00000000-00000000 : bnx2x
>>>>>>>     00000000-00000000 : 0000:05:00.1
>>>>>>>       00000000-00000000 : bnx2x
>>>>>>>     00000000-00000000 : 0000:05:00.0
>>>>>>>       00000000-00000000 : bnx2x
>>>>>>>     00000000-00000000 : 0000:05:00.0
>>>>>>>       00000000-00000000 : bnx2x
>>>>>>>     00000000-00000000 : 0000:05:00.1
>>>>>>>       00000000-00000000 : bnx2x
>>>>>>>     00000000-00000000 : 0000:05:00.1
>>>>>>>       00000000-00000000 : bnx2x
>>>>>>>   00000000-00000000 : PCI Bus 0000:09
>>>>>>>     00000000-00000000 : 0000:09:00.0
>>>>>>>       00000000-00000000 : i40e
>>>>>>>     00000000-00000000 : 0000:09:00.1
>>>>>>>       00000000-00000000 : i40e
>>>>>>>     00000000-00000000 : 0000:09:00.0
>>>>>>>     00000000-00000000 : 0000:09:00.1
>>>>>>>     00000000-00000000 : 0000:09:00.0
>>>>>>>       00000000-00000000 : i40e
>>>>>>>     00000000-00000000 : 0000:09:00.1
>>>>>>>       00000000-00000000 : i40e
>>>>>>>     00000000-00000000 : 0000:09:00.0
>>>>>>>     00000000-00000000 : 0000:09:00.1
>>>>>>>   00000000-00000000 : 0000:00:0f.0
>>>>>>>     00000000-00000000 : xhci-hcd
>>>>>>>   00000000-00000000 : 0000:00:0f.0
>>>>>>>   00000000-00000000 : 0000:00:0f.1
>>>>>>>     00000000-00000000 : xhci-hcd
>>>>>>>   00000000-00000000 : 0000:00:0f.1
>>>>>>>   00000000-00000000 : 0000:00:10.0
>>>>>>>     00000000-00000000 : ahci
>>>>>>>   00000000-00000000 : 0000:00:10.1
>>>>>>>     00000000-00000000 : ahci
>>>>>>> 00000000-00000000 : PCI Bus 0000:80
>>>>>>> 
>>>>>> 
>>>>>> resending with correct logs (after login as root)
>>>>>> 
>>>>>> $ cat /proc/iomem
>>>>>> 30000000-37ffffff : PCI ECAM
>>>>>> 38000000-3fffffff : PCI ECAM
>>>>>> 40000000-5fffffff : PCI Bus 0000:00
>>>>>>   40000000-417fffff : PCI Bus 0000:0f
>>>>>>     40000000-417fffff : PCI Bus 0000:10
>>>>>>       40000000-40ffffff : 0000:10:00.0
>>>>>>       41000000-4101ffff : 0000:10:00.0
>>>>>>   41800000-418fffff : PCI Bus 0000:01
>>>>>>     41800000-4183ffff : 0000:01:00.0
>>>>>>     41840000-4187ffff : 0000:01:00.1
>>>>>>   41900000-419fffff : PCI Bus 0000:05
>>>>>>     41900000-4197ffff : 0000:05:00.0
>>>>>>     41980000-419fffff : 0000:05:00.1
>>>>>>   41a00000-41afffff : PCI Bus 0000:09
>>>>>>     41a00000-41a7ffff : 0000:09:00.0
>>>>>>     41a80000-41afffff : 0000:09:00.1
>>>>>>   41b00000-41b0ffff : 0000:00:10.0
>>>>>>     41b00000-41b0ffff : ahci
>>>>>>   41b10000-41b1ffff : 0000:00:10.1
>>>>>>     41b10000-41b1ffff : ahci
>>>>>> 60000000-7fffffff : PCI Bus 0000:80
>>>>>>   60000000-600fffff : PCI Bus 0000:83
>>>>>>     60000000-6001ffff : 0000:83:00.0
>>>>>>     60020000-60023fff : 0000:83:00.0
>>>>>>       60020000-60023fff : nvme
>>>>>>   60100000-601fffff : PCI Bus 0000:89
>>>>>>     60100000-6017ffff : 0000:89:00.0
>>>>>>       60100000-6017ffff : e1000e
>>>>>>     60180000-601bffff : 0000:89:00.0
>>>>>>     601c0000-601dffff : 0000:89:00.0
>>>>>>       601c0000-601dffff : e1000e
>>>>>>     601e0000-601e3fff : 0000:89:00.0
>>>>>>       601e0000-601e3fff : e1000e
>>>>>>   60200000-603fffff : PCI Bus 0000:8d
>>>>>>     60200000-602fffff : 0000:8d:00.0
>>>>>>     60300000-6030ffff : 0000:8d:00.0
>>>>>>       60300000-6030ffff : mpt3sas
>>>>>> 802f0000-8030ffff : reserved
>>>>>> e6247000-e6247fff : reserved
>>>>>> e6720000-e690ffff : reserved
>>>>>> e6a90000-e6a9ffff : reserved
>>>>>> e6ab0000-e721ffff : reserved
>>>>>> e7240000-e7240fff : reserved
>>>>>> fac00000-fafdffff : reserved
>>>>>> 400040400-40004041f : CAV901C:00
>>>>>> 400040480-400040567 : CAV901D:00
>>>>>>   400040480-400040567 : CAV901C:00
>>>>>> 400040600-40004073b : CAV901E:00
>>>>>>   400040600-40004073b : CAV901C:00
>>>>>> 400041400-40004177f : CAV901F:00
>>>>>>   400041400-40004177f : CAV901C:00
>>>>>> 402000100-402000fff : CAV9006:00
>>>>>>   402000100-402000fff : CAV9006:00
>>>>>> 402020000-40202ffff : ARMH0011:00
>>>>>>   402020000-40202ffff : ARMH0011:00
>>>>>> 402300000-40230ffff : arm-smmu-v3.0.auto
>>>>>>   402300000-40230ffff : arm-smmu-v3.0.auto
>>>>>> 402320000-40232ffff : arm-smmu-v3.1.auto
>>>>>>   402320000-40232ffff : arm-smmu-v3.1.auto
>>>>>> 402340000-40234ffff : arm-smmu-v3.2.auto
>>>>>>   402340000-40234ffff : arm-smmu-v3.2.auto
>>>>>> 440040400-44004041f : CAV901C:01
>>>>>> 440040480-440040567 : CAV901D:01
>>>>>>   440040480-440040567 : CAV901C:01
>>>>>> 440040600-44004073b : CAV901E:01
>>>>>>   440040600-44004073b : CAV901C:01
>>>>>> 440041400-44004177f : CAV901F:01
>>>>>>   440041400-44004177f : CAV901C:01
>>>>>> 4421a0000-4421affff : CAV9007:06
>>>>>>   4421a0000-4421affff : CAV9007:06
>>>>>> 442300000-44230ffff : arm-smmu-v3.3.auto
>>>>>>   442300000-44230ffff : arm-smmu-v3.3.auto
>>>>>> 442320000-44232ffff : arm-smmu-v3.4.auto
>>>>>>   442320000-44232ffff : arm-smmu-v3.4.auto
>>>>>> 442340000-44234ffff : arm-smmu-v3.5.auto
>>>>>>   442340000-44234ffff : arm-smmu-v3.5.auto
>>>>>> b81200000-c811fffff : System RAM
>>>>>>   b81280000-b8270ffff : Kernel code
>>>>>>   b82710000-b82dfffff : reserved
>>>>>>   b82e00000-b83168fff : Kernel data
>>>>>>   b83169000-baccd7fff : reserved
>>>>>>   c78a00000-c7fffffff : reserved
>>>>>>   c80129000-c801a9fff : reserved
>>>>>>   c801aa000-c809e9fff : reserved
>>>>>>   c809ec000-c809eefff : reserved
>>>>>>   c809ef000-c811fffff : reserved
>>>>>> 10000000000-13fffffffff : PCI Bus 0000:00
>>>>>>   10000000000-100013fffff : PCI Bus 0000:01
>>>>>>     10000000000-100007fffff : 0000:01:00.0
>>>>>>     10000800000-10000ffffff : 0000:01:00.1
>>>>>>     10001000000-1000101ffff : 0000:01:00.0
>>>>>>     10001020000-1000103ffff : 0000:01:00.1
>>>>>>     10001040000-1000104ffff : 0000:01:00.0
>>>>>>     10001050000-1000105ffff : 0000:01:00.1
>>>>>>   10001400000-100037fffff : PCI Bus 0000:05
>>>>>>     10001400000-1000140ffff : 0000:05:00.0
>>>>>>       10001400000-1000140ffff : bnx2x
>>>>>>     10001410000-1000141ffff : 0000:05:00.1
>>>>>>       10001410000-1000141ffff : bnx2x
>>>>>>     10001800000-10001ffffff : 0000:05:00.0
>>>>>>       10001800000-10001ffffff : bnx2x
>>>>>>     10002000000-100027fffff : 0000:05:00.0
>>>>>>       10002000000-100027fffff : bnx2x
>>>>>>     10002800000-10002ffffff : 0000:05:00.1
>>>>>>       10002800000-10002ffffff : bnx2x
>>>>>>     10003000000-100037fffff : 0000:05:00.1
>>>>>>       10003000000-100037fffff : bnx2x
>>>>>>   10003800000-100053fffff : PCI Bus 0000:09
>>>>>>     10003800000-10003ffffff : 0000:09:00.0
>>>>>>       10003800000-10003ffffff : i40e
>>>>>>     10004000000-100047fffff : 0000:09:00.1
>>>>>>       10004000000-100047fffff : i40e
>>>>>>     10004800000-10004bfffff : 0000:09:00.0
>>>>>>     10004c00000-10004ffffff : 0000:09:00.1
>>>>>>     10005000000-10005007fff : 0000:09:00.0
>>>>>>       10005000000-10005007fff : i40e
>>>>>>     10005008000-1000500ffff : 0000:09:00.1
>>>>>>       10005008000-1000500ffff : i40e
>>>>>>     10005010000-1000510ffff : 0000:09:00.0
>>>>>>     10005110000-1000520ffff : 0000:09:00.1
>>>>>>   10005400000-1000540ffff : 0000:00:0f.0
>>>>>>     10005400000-1000540ffff : xhci-hcd
>>>>>>   10005410000-1000541ffff : 0000:00:0f.0
>>>>>>   10005420000-1000542ffff : 0000:00:0f.1
>>>>>>     10005420000-1000542ffff : xhci-hcd
>>>>>>   10005430000-1000543ffff : 0000:00:0f.1
>>>>>>   10005440000-1000544ffff : 0000:00:10.0
>>>>>>     10005440000-1000544ffff : ahci
>>>>>>   10005450000-1000545ffff : 0000:00:10.1
>>>>>>     10005450000-1000545ffff : ahci
>>>>>> 14000000000-17fffffffff : PCI Bus 0000:80
>>>>>> 
>>>>>> 
>>>>>> failure with crashkernel=1G
>>>>>> 
>>>>>> :~$ dmesg | grep crash
>>>>>> [    0.000000] cannot allocate crashkernel (size:0x40000000)
>>>>>> [    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
>>>>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro nowatchdog earlycon
>>>>>> crashkernel=1G crashkernel=250M,low
>>>>>> [   29.326916]     crashkernel=250M,low
>>>>> 
>>>>> Hi,
>>>>> 
>>>>>  My mistake . I thought you were trying to allocate crashkernel  AT 4G.
>>>>> 
>>>>>  That would be :
>>>>> 
>>>>>  crashkernel=1024M@4G
>>>>> 
>>>>> 
>>>>>  But you are also allocating an additional 250M low too ?
>>>>> 
>>>>>  In your example
>>>>> 
>>>>>   crashkernel=1G - that is asking for 1024M in low memory.
>>>>> 
>>>>> That likely won't work  - from your own memory map there is no free
>>>>> segment that size :
>>>>> 
>>>>>> 802f0000-8030ffff : reserved
>>>>>> e6247000-e6247fff : reserved
>>>>>> e6720000-e690ffff : reserved
>>>>>> e6a90000-e6a9ffff : reserved
>>>>>> e6ab0000-e721ffff : reserved
>>>>>> e7240000-e7240fff : reserved
>>>>>> fac00000-fafdffff : reserved
>>>>> 
>>>>> The maximum size I've been able to use is 800M  in the low 4GB range
>>>>> using a 5.4.17 kernel.
>>>>> 
>>>> I am confused. I was following "[PATCH v7 4/4] kdump: update
>>>> Documentation about crashkernel on arm64"
>>>> +   On arm64, use "crashkernel=Y[@X]". Note that the start address of
>>>>    the kernel, X if explicitly specified, must be aligned to 2MiB
>>>> (0x200000).
>>>> +   If crashkernel=Z,low is specified simultaneously, reserve spcified size
>>>> +   low memory for crash kdump kernel devices firstly and then reserve
>>>> memory
>>>> +   above 4G.
>>>> here is my understanding, if i pass crashkernel=1G crashkernel=250M,low
>>>> in bootargs.
>>>> - Linux will allocate first 250M in low memory (< 4G mem range)
>>>> - Than rest 850M will be allocate from above 4G memory.
>>>> So, parameters passed by me is correct and memory should be allocated.
>>>> please help me if my understanding is wrong.
>>>> --pk
>>> 
>>> Hi
>>> 
>>> Have you built a 5.5 kernel with these v4 patches applied  ?
>>> 
>>> These changes are not in a release yet.
>>> 
>> 
>> 
>> I meant with v7 patches ;-).   You also need a corresponding kexec CLI with fixes in it .
>> 
> 
> Yes, I have applied v7 patches to 5.6-rc4.
> After using kexec-tools() patches[1] on kexec-tools 2.0.20.git, It is
> working now.  Logs are below. Thanks!!
> 
> 
> $ dmesg | grep crash
> [    0.000000] Reserving 500MB of low memory at 3182MB for crashkernel
> (System low RAM: 2029MB)
> [    0.000000] crashkernel reserved: 0x000000be98c00000 -
> 0x000000bf98c00000 (4096 MB)
> [    0.000000] Kernel command line: BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
> crashkernel=500M,low nowatchdog earlycon module_blacklist=qed,qede
> [   29.322393]     crashkernel=500M,low
> 
> 


  When you set crashkernel=4G ,  it automatically picked a range above 4GB ? 

 I was under the impression it attempts to use < 4GB .



> Tested-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> 
> you asked about built kernel version.. is this patch-set not valid for
> previous kernel version like 5.4.18.
> 
> 
> --pk
> 
> [1] https://urldefense.com/v3/__http://lists.infradead.org/pipermail/kexec/2019-August/023569.html__;!!GqivPVa7Brio!PIxiVWMSpcXDRnKwjE182qTrYb27B4lLL-f6hMvBL3ybcYF8KJ6C_73vETbA88m63CcU$ 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/kexec__;!!GqivPVa7Brio!PIxiVWMSpcXDRnKwjE182qTrYb27B4lLL-f6hMvBL3ybcYF8KJ6C_73vETbA83h74nFT$


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
