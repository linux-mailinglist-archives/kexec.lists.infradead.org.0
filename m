Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B45A17E3ED
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 16:50:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BICHuH/uS8QEAtGozeVclVGTdy24MmSvtMgXcsmOnjc=; b=JtogpQDUUg9lp2
	sd9i9/W08dkvizaagt2rm1fAUROGJ0JjScR3G4+pVqowhye8FzjQOCkNXwQB8cS2yg3JxheDFHWlt
	5VGqgl0VeCU1HoGkn9H7dfzDIWWQB94U1up0AXwQrUWIUVwEwKNJY06UEniSazd0Lf9rqAGZvD66h
	sJVTUOte2PL2TPLKvmihtkA48QFU23llFi1XNQDi4eAvLVrYAKqtYQUcIdcYUvSY7pwmWTR7OniVv
	W0Ojcxljz4ypL0uE7C5ocD6ZipUBvlDpX50YVaXxKs7R/K9ZNojg3ZeisENDtsOVktJJ6lwkqgzSp
	fHL5ZrwD1Qk+YQz5DSeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBKfS-0006iY-6R; Mon, 09 Mar 2020 15:50:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBKfO-0006AN-5X
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 15:50:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id l184so4980385pfl.7
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 08:50:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nDGLadviooGKzU5YMP9CT7p1R18tMf3BNJins+Phqcs=;
 b=Uh5QIJuDT54qY+vThcuB1NTDlXxf0S9e2pEIMfax9AIxRGv/3CPDalKx0A9i9a7qbt
 bcbJ5Fu2n6f4AE2Kk9Z0412mU3Yygh1Xzixznhnmad4LISk6GT6t6pHTe+L9V9zGUh8v
 j1YP70uVK+fVVSIKnaXE2AVMRHEdvZOk8zeYD4tOP/g9m2ea10fWxXyqrJm24zHMiLef
 JRJ3ebFvazHVI3EL9B4Qdv63n5IJkiFFr/GuTXWQI6tziMoZnEQpGwK0F3sycQ6FYb8+
 UKT0TVJXC2EfhNm3bBG4qbYAinvXlAiSQLRhjSom2cnG2L94CYcRsDRso++S8KnESIFU
 fPBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nDGLadviooGKzU5YMP9CT7p1R18tMf3BNJins+Phqcs=;
 b=FSnBPrdShPa584lQj65Pqr1ynzDPFUNks8e+ozzI/J5/nCDPDKEOj5BT9pPFzg4tsu
 nGNv0SFPQZBb2rvauSskdLT3a5N4LdV121u7E6+2eXpbpfw4HBXpRrZV5LUQ68TP30XD
 l6d4lZch7lvz98TBj1nwIOPuMxQ+mLcnDCYS4JgXK0+Og5CKL1zAd/oCkspIiPwd2Qwg
 gqnrXnYKCUwEX6rph3nLxp8jySG2MVbtzh1c+rUVMrhfi5fIiUwF812fskZ5CQY1AVTR
 lVVjU5TKctDVzSODrpaJmAuNePx9A5lOyhnBrA85THO0Sm+oq9yGvCnuGYmsVV7LSCAh
 itmg==
X-Gm-Message-State: ANhLgQ1iBi03ENsm7mhyVFU7g68n2n0aID2a7TG61wB02W3ry8LvY3NG
 C/kqCxD95WRAr/hkJ4WkDkKXaehA
X-Google-Smtp-Source: ADFU+vsO3EE+W+cMZL3de/VyZAjO3AAnhlz798e0WxGbVPNMFUtiQgDSyR+DKuQ9vhdxor+qj+fXJg==
X-Received: by 2002:a63:ad46:: with SMTP id y6mr17019807pgo.11.1583769004834; 
 Mon, 09 Mar 2020 08:50:04 -0700 (PDT)
Received: from [192.168.1.5] ([122.171.26.90])
 by smtp.gmail.com with ESMTPSA id k24sm43532933pgf.59.2020.03.09.08.50.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Mar 2020 08:50:04 -0700 (PDT)
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Subject: Re: [PATCH v7 2/4] arm64: kdump: reserve crashkenel above 4G for
 crash dump kernel
To: John Donnelly <John.P.Donnelly@oracle.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <20191223152349.180172-3-chenzhou10@huawei.com>
 <CAJ2QiJ+SQ1orriXJWyhKDcDL9s4Vh5+HQHhWFOKPVmijGpMGvw@mail.gmail.com>
 <0c00f14a-15ca-44db-7f82-00f15ddd3c88@huawei.com>
 <B6820665-123F-422A-8E49-BB2A48D02CA7@oracle.com>
 <CAJ2QiJ+x5ne1r4h4V=Ng6wVo0ro+4E_RKAXUuzyc=y-+4aL1WQ@mail.gmail.com>
 <687c6163-3995-36c1-5b65-49a7faf8a8c4@Oracle.com>
Message-ID: <986a228a-a84e-e482-70e7-2e2f3afe1c79@gmail.com>
Date: Mon, 9 Mar 2020 21:20:01 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <687c6163-3995-36c1-5b65-49a7faf8a8c4@Oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_085006_257934_A9799414 
X-CRM114-Status: GOOD (  24.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Dear John,

On Mon, Mar 9, 2020 at 8:29 PM John Donnelly
<John.P.Donnelly@oracle.com> wrote:
>
> On 3/8/20 11:59 PM, Prabhakar Kushwaha wrote:
> > . Hi John,
> >
> > On Sun, Mar 8, 2020 at 12:13 AM John Donnelly
> > <john.p.donnelly@oracle.com> wrote:
> >>
> >>
> >>
> >>> On Mar 7, 2020, at 5:06 AM, Chen Zhou <chenzhou10@huawei.com> wrote:
> >>>
> >>>
> >>>
> >>> On 2020/3/5 18:13, Prabhakar Kushwaha wrote:
> >>>> On Mon, Dec 23, 2019 at 8:57 PM Chen Zhou <chenzhou10@huawei.com> wrote:
> >>>>>
> >>>>> Crashkernel=X tries to reserve memory for the crash dump kernel under
> >>>>> 4G. If crashkernel=X,low is specified simultaneously, reserve spcified
> >>>>> size low memory for crash kdump kernel devices firstly and then reserve
> >>>>> memory above 4G.
> >>>>>
> >>>>> Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
> >>>>> ---
> >>>>> arch/arm64/kernel/setup.c |  8 +++++++-
> >>>>> arch/arm64/mm/init.c      | 31 +++++++++++++++++++++++++++++--
> >>>>> 2 files changed, 36 insertions(+), 3 deletions(-)
> >>>>>
> >>>>> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> >>>>> index 56f6645..04d1c87 100644
> >>>>> --- a/arch/arm64/kernel/setup.c
> >>>>> +++ b/arch/arm64/kernel/setup.c
> >>>>> @@ -238,7 +238,13 @@ static void __init request_standard_resources(void)
> >>>>>                     kernel_data.end <= res->end)
> >>>>>                         request_resource(res, &kernel_data);
> >>>>> #ifdef CONFIG_KEXEC_CORE
> >>>>> -               /* Userspace will find "Crash kernel" region in /proc/iomem. */
> >>>>> +               /*
> >>>>> +                * Userspace will find "Crash kernel" region in /proc/iomem.
> >>>>> +                * Note: the low region is renamed as Crash kernel (low).
> >>>>> +                */
> >>>>> +               if (crashk_low_res.end && crashk_low_res.start >= res->start &&
> >>>>> +                               crashk_low_res.end <= res->end)
> >>>>> +                       request_resource(res, &crashk_low_res);
> >>>>>                 if (crashk_res.end && crashk_res.start >= res->start &&
> >>>>>                     crashk_res.end <= res->end)
> >>>>>                         request_resource(res, &crashk_res);
> >>>>> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> >>>>> index b65dffd..0d7afd5 100644
> >>>>> --- a/arch/arm64/mm/init.c
> >>>>> +++ b/arch/arm64/mm/init.c
> >>>>> @@ -80,6 +80,7 @@ static void __init reserve_crashkernel(void)
> >>>>> {
> >>>>>         unsigned long long crash_base, crash_size;
> >>>>>         int ret;
> >>>>> +       phys_addr_t crash_max = arm64_dma32_phys_limit;
> >>>>>
> >>>>>         ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
> >>>>>                                 &crash_size, &crash_base);
> >>>>> @@ -87,12 +88,38 @@ static void __init reserve_crashkernel(void)
> >>>>>         if (ret || !crash_size)
> >>>>>                 return;
> >>>>>
> >>>>> +       ret = reserve_crashkernel_low();
> >>>>> +       if (!ret && crashk_low_res.end) {
> >>>>> +               /*
> >>>>> +                * If crashkernel=X,low specified, there may be two regions,
> >>>>> +                * we need to make some changes as follows:
> >>>>> +                *
> >>>>> +                * 1. rename the low region as "Crash kernel (low)"
> >>>>> +                * In order to distinct from the high region and make no effect
> >>>>> +                * to the use of existing kexec-tools, rename the low region as
> >>>>> +                * "Crash kernel (low)".
> >>>>> +                *
> >>>>> +                * 2. change the upper bound for crash memory
> >>>>> +                * Set MEMBLOCK_ALLOC_ACCESSIBLE upper bound for crash memory.
> >>>>> +                *
> >>>>> +                * 3. mark the low region as "nomap"
> >>>>> +                * The low region is intended to be used for crash dump kernel
> >>>>> +                * devices, just mark the low region as "nomap" simply.
> >>>>> +                */
> >>>>> +               const char *rename = "Crash kernel (low)";
> >>>>> +
> >>>>> +               crashk_low_res.name = rename;
> >>>>> +               crash_max = MEMBLOCK_ALLOC_ACCESSIBLE;
> >>>>> +               memblock_mark_nomap(crashk_low_res.start,
> >>>>> +                                   resource_size(&crashk_low_res));
> >>>>> +       }
> >>>>> +
> >>>>>         crash_size = PAGE_ALIGN(crash_size);
> >>>>>
> >>>>>         if (crash_base == 0) {
> >>>>>                 /* Current arm64 boot protocol requires 2MB alignment */
> >>>>> -               crash_base = memblock_find_in_range(0, arm64_dma32_phys_limit,
> >>>>> -                               crash_size, SZ_2M);
> >>>>> +               crash_base = memblock_find_in_range(0, crash_max, crash_size,
> >>>>> +                               SZ_2M);
> >>>>>                 if (crash_base == 0) {
> >>>>>                         pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
> >>>>>                                 crash_size);
> >>>>> --
> >>>>
> >>>> I tested this patch series on ARM64-ThunderX2 with no issue with
> >>>> bootargs crashkenel=X@Y crashkernel=250M,low
> >>>>
> >>>> $ dmesg | grep crash
> >>>> [    0.000000] crashkernel reserved: 0x0000000b81200000 -
> >>>> 0x0000000c81200000 (4096 MB)
> >>>> [    0.000000] Kernel command line:
> >>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
> >>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro
> >>>> crashkernel=4G@0xb81200000 crashkernel=250M,low nowatchdog earlycon
> >>>> [   29.310209]     crashkernel=250M,low
> >>>>
> >>>> $  kexec -p -i /boot/vmlinuz-`uname -r`
> >>>> --initrd=/boot/initrd.img-`uname -r` --reuse-cmdline
> >>>> $ echo 1 > /proc/sys/kernel/sysrq ; echo c > /proc/sysrq-trigger
> >>>>
> >>>> But when i tried with crashkernel=4G crashkernel=250M,low as bootargs.
> >>>> Kernel is not able to allocate memory.
> >>>> [    0.000000] cannot allocate crashkernel (size:0x100000000)
> >>>> [    0.000000] Kernel command line:
> >>>> BOOT_IMAGE=/boot/vmlinuz-5.6.0-rc4+
> >>>> root=UUID=866b8df3-14f4-4e11-95a1-74a90ee9b694 ro crashkernel=4G
> >>>> crashkernel=250M,low nowatchdog
> >>>> [   29.332081]     crashkernel=250M,low
> >>>>
> >>>> does crashkernel=X@Y mandatory to get allocated beyond 4G?
> >>>> am I missing something?
> >>>
> >>
> >>     crashkernel=4G
> >>
> >>     You need to look at the memory map on node 0  from dmesg     ( or /proc/iomem ) to determine if there is any memory in that range  - 0x100000000 == 1st byte above 4G .
> >>
> >
> > i believe i have enough free memory. Please find log below
> >
> > $ dmesg | grep "node 0"
> > [    0.000000] Initmem setup node 0 [mem 0x00000000802f0000-0x0000009ffcffffff]
> > [    0.000000] On node 0 totalpages: 33537296
> > [   12.335714] pci_bus 0000:00: on NUMA node 0
> > $
> >
> > I am passing 4G@0xb81200000 in working scenario, here 0xb81200000 is
> > well within node 0 range.
> >
> > Logs of iomem is below:
> >
> > $ cat /proc/iomem
> > 00000000-00000000 : PCI ECAM
> > 00000000-00000000 : PCI ECAM
> > 00000000-00000000 : PCI Bus 0000:00
> >    00000000-00000000 : PCI Bus 0000:0f
> >      00000000-00000000 : PCI Bus 0000:10
> >        00000000-00000000 : 0000:10:00.0
> >        00000000-00000000 : 0000:10:00.0
> >    00000000-00000000 : PCI Bus 0000:01
> >      00000000-00000000 : 0000:01:00.0
> >      00000000-00000000 : 0000:01:00.1
> >    00000000-00000000 : PCI Bus 0000:05
> >      00000000-00000000 : 0000:05:00.0
> >      00000000-00000000 : 0000:05:00.1
> >    00000000-00000000 : PCI Bus 0000:09
> >      00000000-00000000 : 0000:09:00.0
> >      00000000-00000000 : 0000:09:00.1
> >    00000000-00000000 : 0000:00:10.0
> >      00000000-00000000 : ahci
> >    00000000-00000000 : 0000:00:10.1
> >      00000000-00000000 : ahci
> > 00000000-00000000 : PCI Bus 0000:80
> >    00000000-00000000 : PCI Bus 0000:83
> >      00000000-00000000 : 0000:83:00.0
> >      00000000-00000000 : 0000:83:00.0
> >        00000000-00000000 : nvme
> >    00000000-00000000 : PCI Bus 0000:89
> >      00000000-00000000 : 0000:89:00.0
> >        00000000-00000000 : e1000e
> >      00000000-00000000 : 0000:89:00.0
> >      00000000-00000000 : 0000:89:00.0
> >        00000000-00000000 : e1000e
> >      00000000-00000000 : 0000:89:00.0
> >        00000000-00000000 : e1000e
> >    00000000-00000000 : PCI Bus 0000:8d
> >      00000000-00000000 : 0000:8d:00.0
> >      00000000-00000000 : 0000:8d:00.0
> >        00000000-00000000 : mpt3sas
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : Kernel code
> >    00000000-00000000 : reserved
> >    00000000-00000000 : Kernel data
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> > 00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> > 00000000-00000000 : CAV901C:00
> > 00000000-00000000 : CAV901D:00
> >    00000000-00000000 : CAV901C:00
> > 00000000-00000000 : CAV901E:00
> >    00000000-00000000 : CAV901C:00
> > 00000000-00000000 : CAV901F:00
> >    00000000-00000000 : CAV901C:00
> > 00000000-00000000 : CAV9006:00
> >    00000000-00000000 : CAV9006:00
> > 00000000-00000000 : ARMH0011:00
> >    00000000-00000000 : ARMH0011:00
> > 00000000-00000000 : arm-smmu-v3.0.auto
> >    00000000-00000000 : arm-smmu-v3.0.auto
> > 00000000-00000000 : arm-smmu-v3.1.auto
> >    00000000-00000000 : arm-smmu-v3.1.auto
> > 00000000-00000000 : arm-smmu-v3.2.auto
> >    00000000-00000000 : arm-smmu-v3.2.auto
> > 00000000-00000000 : CAV901C:01
> > 00000000-00000000 : CAV901D:01
> >    00000000-00000000 : CAV901C:01
> > 00000000-00000000 : CAV901E:01
> >    00000000-00000000 : CAV901C:01
> > 00000000-00000000 : CAV901F:01
> >    00000000-00000000 : CAV901C:01
> > 00000000-00000000 : CAV9007:06
> >    00000000-00000000 : CAV9007:06
> > 00000000-00000000 : arm-smmu-v3.3.auto
> >    00000000-00000000 : arm-smmu-v3.3.auto
> > 00000000-00000000 : arm-smmu-v3.4.auto
> >    00000000-00000000 : arm-smmu-v3.4.auto
> > 00000000-00000000 : arm-smmu-v3.5.auto
> >    00000000-00000000 : arm-smmu-v3.5.auto
> > 00000000-00000000 : System RAM
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> > 00000000-00000000 : System RAM
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> >    00000000-00000000 : reserved
> > 00000000-00000000 : PCI Bus 0000:00
> >    00000000-00000000 : PCI Bus 0000:01
> >      00000000-00000000 : 0000:01:00.0
> >      00000000-00000000 : 0000:01:00.1
> >      00000000-00000000 : 0000:01:00.0
> >      00000000-00000000 : 0000:01:00.1
> >      00000000-00000000 : 0000:01:00.0
> >      00000000-00000000 : 0000:01:00.1
> >    00000000-00000000 : PCI Bus 0000:05
> >      00000000-00000000 : 0000:05:00.0
> >        00000000-00000000 : bnx2x
> >      00000000-00000000 : 0000:05:00.1
> >        00000000-00000000 : bnx2x
> >      00000000-00000000 : 0000:05:00.0
> >        00000000-00000000 : bnx2x
> >      00000000-00000000 : 0000:05:00.0
> >        00000000-00000000 : bnx2x
> >      00000000-00000000 : 0000:05:00.1
> >        00000000-00000000 : bnx2x
> >      00000000-00000000 : 0000:05:00.1
> >        00000000-00000000 : bnx2x
> >    00000000-00000000 : PCI Bus 0000:09
> >      00000000-00000000 : 0000:09:00.0
> >        00000000-00000000 : i40e
> >      00000000-00000000 : 0000:09:00.1
> >        00000000-00000000 : i40e
> >      00000000-00000000 : 0000:09:00.0
> >      00000000-00000000 : 0000:09:00.1
> >      00000000-00000000 : 0000:09:00.0
> >        00000000-00000000 : i40e
> >      00000000-00000000 : 0000:09:00.1
> >        00000000-00000000 : i40e
> >      00000000-00000000 : 0000:09:00.0
> >      00000000-00000000 : 0000:09:00.1
> >    00000000-00000000 : 0000:00:0f.0
> >      00000000-00000000 : xhci-hcd
> >    00000000-00000000 : 0000:00:0f.0
> >    00000000-00000000 : 0000:00:0f.1
> >      00000000-00000000 : xhci-hcd
> >    00000000-00000000 : 0000:00:0f.1
> >    00000000-00000000 : 0000:00:10.0
> >      00000000-00000000 : ahci
> >    00000000-00000000 : 0000:00:10.1
> >      00000000-00000000 : ahci
> > 00000000-00000000 : PCI Bus 0000:80
>
>    These appear all zero to me  !
>
my mistake, i did not login as root.Please find correct logs

$ cat /proc/iomem
30000000-37ffffff : PCI ECAM
38000000-3fffffff : PCI ECAM
40000000-5fffffff : PCI Bus 0000:00
  40000000-417fffff : PCI Bus 0000:0f
    40000000-417fffff : PCI Bus 0000:10
      40000000-40ffffff : 0000:10:00.0
      41000000-4101ffff : 0000:10:00.0
  41800000-418fffff : PCI Bus 0000:01
    41800000-4183ffff : 0000:01:00.0
    41840000-4187ffff : 0000:01:00.1
  41900000-419fffff : PCI Bus 0000:05
    41900000-4197ffff : 0000:05:00.0
    41980000-419fffff : 0000:05:00.1
  41a00000-41afffff : PCI Bus 0000:09
    41a00000-41a7ffff : 0000:09:00.0
    41a80000-41afffff : 0000:09:00.1
  41b00000-41b0ffff : 0000:00:10.0
    41b00000-41b0ffff : ahci
  41b10000-41b1ffff : 0000:00:10.1
    41b10000-41b1ffff : ahci
60000000-7fffffff : PCI Bus 0000:80
  60000000-600fffff : PCI Bus 0000:83
    60000000-6001ffff : 0000:83:00.0
    60020000-60023fff : 0000:83:00.0
      60020000-60023fff : nvme
  60100000-601fffff : PCI Bus 0000:89
    60100000-6017ffff : 0000:89:00.0
      60100000-6017ffff : e1000e
    60180000-601bffff : 0000:89:00.0
    601c0000-601dffff : 0000:89:00.0
      601c0000-601dffff : e1000e
    601e0000-601e3fff : 0000:89:00.0
      601e0000-601e3fff : e1000e
  60200000-603fffff : PCI Bus 0000:8d
    60200000-602fffff : 0000:8d:00.0
    60300000-6030ffff : 0000:8d:00.0
      60300000-6030ffff : mpt3sas
802f0000-8030ffff : reserved
e6247000-e6247fff : reserved
e6720000-e690ffff : reserved
e6a90000-e6a9ffff : reserved
e6ab0000-e721ffff : reserved
e7240000-e7240fff : reserved
fac00000-fafdffff : reserved
400040400-40004041f : CAV901C:00
400040480-400040567 : CAV901D:00
  400040480-400040567 : CAV901C:00
400040600-40004073b : CAV901E:00
  400040600-40004073b : CAV901C:00
400041400-40004177f : CAV901F:00
  400041400-40004177f : CAV901C:00
402000100-402000fff : CAV9006:00
  402000100-402000fff : CAV9006:00
402020000-40202ffff : ARMH0011:00
  402020000-40202ffff : ARMH0011:00
402300000-40230ffff : arm-smmu-v3.0.auto
  402300000-40230ffff : arm-smmu-v3.0.auto
402320000-40232ffff : arm-smmu-v3.1.auto
  402320000-40232ffff : arm-smmu-v3.1.auto
402340000-40234ffff : arm-smmu-v3.2.auto
  402340000-40234ffff : arm-smmu-v3.2.auto
440040400-44004041f : CAV901C:01
440040480-440040567 : CAV901D:01
  440040480-440040567 : CAV901C:01
440040600-44004073b : CAV901E:01
  440040600-44004073b : CAV901C:01
440041400-44004177f : CAV901F:01
  440041400-44004177f : CAV901C:01
4421a0000-4421affff : CAV9007:06
  4421a0000-4421affff : CAV9007:06
442300000-44230ffff : arm-smmu-v3.3.auto
  442300000-44230ffff : arm-smmu-v3.3.auto
442320000-44232ffff : arm-smmu-v3.4.auto
  442320000-44232ffff : arm-smmu-v3.4.auto
442340000-44234ffff : arm-smmu-v3.5.auto
  442340000-44234ffff : arm-smmu-v3.5.auto
b81200000-c811fffff : System RAM
  b81280000-b8270ffff : Kernel code
  b82710000-b82dfffff : reserved
  b82e00000-b83168fff : Kernel data
  b83169000-baccd7fff : reserved
  c78a00000-c7fffffff : reserved
  c80129000-c801a9fff : reserved
  c801aa000-c809e9fff : reserved
  c809ec000-c809eefff : reserved
  c809ef000-c811fffff : reserved
10000000000-13fffffffff : PCI Bus 0000:00
  10000000000-100013fffff : PCI Bus 0000:01
    10000000000-100007fffff : 0000:01:00.0
    10000800000-10000ffffff : 0000:01:00.1
    10001000000-1000101ffff : 0000:01:00.0
    10001020000-1000103ffff : 0000:01:00.1
    10001040000-1000104ffff : 0000:01:00.0
    10001050000-1000105ffff : 0000:01:00.1
  10001400000-100037fffff : PCI Bus 0000:05
    10001400000-1000140ffff : 0000:05:00.0
      10001400000-1000140ffff : bnx2x
    10001410000-1000141ffff : 0000:05:00.1
      10001410000-1000141ffff : bnx2x
    10001800000-10001ffffff : 0000:05:00.0
      10001800000-10001ffffff : bnx2x
    10002000000-100027fffff : 0000:05:00.0
      10002000000-100027fffff : bnx2x
    10002800000-10002ffffff : 0000:05:00.1
      10002800000-10002ffffff : bnx2x
    10003000000-100037fffff : 0000:05:00.1
      10003000000-100037fffff : bnx2x
  10003800000-100053fffff : PCI Bus 0000:09
    10003800000-10003ffffff : 0000:09:00.0
      10003800000-10003ffffff : i40e
    10004000000-100047fffff : 0000:09:00.1
      10004000000-100047fffff : i40e
    10004800000-10004bfffff : 0000:09:00.0
    10004c00000-10004ffffff : 0000:09:00.1
    10005000000-10005007fff : 0000:09:00.0
      10005000000-10005007fff : i40e
    10005008000-1000500ffff : 0000:09:00.1
      10005008000-1000500ffff : i40e
    10005010000-1000510ffff : 0000:09:00.0
    10005110000-1000520ffff : 0000:09:00.1
  10005400000-1000540ffff : 0000:00:0f.0
    10005400000-1000540ffff : xhci-hcd
  10005410000-1000541ffff : 0000:00:0f.0
  10005420000-1000542ffff : 0000:00:0f.1
    10005420000-1000542ffff : xhci-hcd
  10005430000-1000543ffff : 0000:00:0f.1
  10005440000-1000544ffff : 0000:00:10.0
    10005440000-1000544ffff : ahci
  10005450000-1000545ffff : 0000:00:10.1
    10005450000-1000545ffff : ahci
14000000000-17fffffffff : PCI Bus 0000:80


--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
