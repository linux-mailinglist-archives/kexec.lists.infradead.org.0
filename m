Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83939A34FD
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 12:33:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e+7cjybXuRE4OOKKzeSJRJxP/kfAJ3wDvbSGrz7MtkI=; b=TrFy3L/LkT7nODoqnQhXjv74p
	P2rDUeCRYS382lV+MaMuct6lQDXMxC4y386js4SeOrKy/OQvLUmSAKh4HKhhnfxfy5IqpMJiKciP7
	g50zvjuBKEY3jrS0GjgzQj6AwirJIWVMnVrDUaQmHTTtw8i+BK5weXEsKsxFzgi9GgbrynO5XvOeI
	NDqXMLpXDLpx3gKhbx/UAXraGSLsUd8rS3mhfK4KV3JFX7AFaX1MKP7I5UJgwOCu1R1B5suLVM/j9
	4nvmE5yioVMuxIu6HNbMIgSDIIMddsT0C/TBZUXys/fB+focZRV8C4NTx0MjFOX8hJPBqKf/BnoHs
	+eEuubuBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3eDG-0006Vm-LK; Fri, 30 Aug 2019 10:33:02 +0000
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3eDD-0006VE-1a
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 10:33:01 +0000
Received: from theinternet.molgen.mpg.de (theinternet.molgen.mpg.de
 [141.14.31.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: buczek)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7DD382022572E;
 Fri, 30 Aug 2019 12:32:52 +0200 (CEST)
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
To: Bhupesh Sharma <bhsharma@redhat.com>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190830092351.GE12242@MiWiFi-R3L-srv>
 <99faeaab-a4ea-e204-f4e8-9b74f86e5e43@molgen.mpg.de>
 <CACi5LpOBQCXv1v=aGjLZ0tE_qUDgcR8DtcC_uA5nC-tmm4UnZw@mail.gmail.com>
From: Donald Buczek <buczek@molgen.mpg.de>
Message-ID: <d6f90723-4253-641c-77e4-08c406c69f0b@molgen.mpg.de>
Date: Fri, 30 Aug 2019 12:32:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CACi5LpOBQCXv1v=aGjLZ0tE_qUDgcR8DtcC_uA5nC-tmm4UnZw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_033259_402721_FB0811A2 
X-CRM114-Status: GOOD (  26.89  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.14.17.11 listed in list.dnswl.org]
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
Cc: Simon Horman <horms@verge.net.au>,
 kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Dear Baoquan,

On 8/30/19 12:05 PM, Bhupesh Sharma wrote:
> On Fri, Aug 30, 2019 at 3:04 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
>>
>> Dear Baoquan,
>>
>> On 8/30/19 11:23 AM, Baoquan He wrote:
>>> On 08/30/19 at 11:12am, Donald Buczek wrote:
>>>> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
>>>> region on 5-level paging") changed the base of the direct mapping
>>>> from 0xffff880000000000 to 0xffff888000000000. This was merged
>>>> into v4.20-rc2.
>>>
>>> A good catch and necessary fix, thanks.
>>>
>>> Does it have issue in makedumpfile?
>>
>> We don't use makedumpfile. We use `cp /proc/vmcore /mnt/crash.vmcore` in the panic kernel.
> 
> That shouldn't be a problem in makedumpfile as we have a generic way
> to calculate the PAGE_OFFSET value there from the PT_LOADs in the
> '/proc/kcore' file (which I mentioned in the other email conversation,
> see [0]):
> 
> static int
> get_page_offset_x86_64(void)
> {
> <..snip..>
>      if (get_num_pt_loads()) {
>          /*
>           * Linux 4.19 (only) adds KCORE_REMAP PT_LOADs, which have
>           * virt_start < __START_KERNEL_map, to /proc/kcore. In order
>           * not to select them, we select the last valid PT_LOAD.
>           */
>          for (i = 0;
>              get_pt_load(i, &phys_start, NULL, &virt_start, NULL);
>              i++) {
>              if (virt_start != NOT_KV_ADDR
>                      && virt_start < __START_KERNEL_map
>                      && phys_start != NOT_PADDR) {
>                  page_offset = virt_start - phys_start;
>              }
>          }
>          if (page_offset) {
>              info->page_offset = page_offset;
>              DEBUG_MSG("page_offset  : %lx (pt_load)\n",
>                  info->page_offset);
>              return TRUE;
>          }
>      }
> <..snip..>
> 
> Also as I mentioned in the other thread, I don't think adding
> different MACRO value for a kernel version is a long-term maintainable
> approach. Instead I am working on adding a similar functionality as
> present in makedumpfile to make the PAGE_OFFSET calculation generic.
> Only if we fail to calculate PAGE_OFFSET through a generic method
> should we fall back on MACRO values for backward compatibility.

Very good,.

> I will try to post the patch for reviews by tomorrow.

I'll be happy to test that.

Best
   Donald

> 
> [0]. https://lkml.org/lkml/2019/8/28/1060
> 
> Thanks,
> Bhupesh
> 
>> Without this patch, the file /mnt/crash.vmcore has the wrong vaddr in the elf headers and can't be processed by gdb or crash.
>>
>> With this patch, the file has the correct vaddr an can be processed by gdb and crash.
>>
>> Btw:  I've got four strange error replies for my mail.
>>
>>       Date: 30 Aug 2019 05:13:31 EDT
>>       From: MAILER_DAEMON@email.uscc.net
>>       To: buczek@molgen.mpg.de
>>           Message to 7867650283@email.uscc.net failed.
>>
>> I hope, my patch reaches the right people anyway.
>>
>> Best
>>     Donald
>>
>>
>>>
>>> #ifdef __x86_64__
>>> #define __PAGE_OFFSET_ORIG      (0xffff810000000000) /* 2.6.26, or former */
>>> #define __PAGE_OFFSET_2_6_27    (0xffff880000000000) /* 2.6.27, or later  */
>>> #define __PAGE_OFFSET_5LEVEL    (0xff10000000000000) /* 5-level page table */
>>> ...
>>> #endif
>>>
>>> Thanks
>>> Baoquan
>>>
>>>>
>>>> Update to new address accordingly.
>>>> ---
>>>>    kexec/arch/i386/crashdump-x86.c | 2 ++
>>>>    kexec/arch/i386/crashdump-x86.h | 3 ++-
>>>>    2 files changed, 4 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
>>>> index a2aea31..c79791f 100644
>>>> --- a/kexec/arch/i386/crashdump-x86.c
>>>> +++ b/kexec/arch/i386/crashdump-x86.c
>>>> @@ -61,6 +61,8 @@ static int get_kernel_page_offset(struct kexec_info *UNUSED(info),
>>>>
>>>>               if (kv < KERNEL_VERSION(2, 6, 27))
>>>>                       elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
>>>> +            else if (kv < KERNEL_VERSION(4, 20, 0))
>>>> +                    elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_4_20_0;
>>>>               else
>>>>                       elf_info->page_offset = X86_64_PAGE_OFFSET;
>>>>       }
>>>> diff --git a/kexec/arch/i386/crashdump-x86.h b/kexec/arch/i386/crashdump-x86.h
>>>> index ddee19f..e4fdc82 100644
>>>> --- a/kexec/arch/i386/crashdump-x86.h
>>>> +++ b/kexec/arch/i386/crashdump-x86.h
>>>> @@ -13,7 +13,8 @@ int load_crashdump_segments(struct kexec_info *info, char *mod_cmdline,
>>>>
>>>>    #define X86_64__START_KERNEL_map   0xffffffff80000000ULL
>>>>    #define X86_64_PAGE_OFFSET_PRE_2_6_27      0xffff810000000000ULL
>>>> -#define X86_64_PAGE_OFFSET          0xffff880000000000ULL
>>>> +#define X86_64_PAGE_OFFSET_PRE_4_20_0       0xffff880000000000ULL
>>>> +#define X86_64_PAGE_OFFSET  0xffff888000000000ULL
>>>>
>>>>    #define X86_64_MAXMEM                      0x3fffffffffffUL
>>>>
>>>> --
>>>> 2.22.0
>>>>
>>>>
>>>> _______________________________________________
>>>> kexec mailing list
>>>> kexec@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/kexec
>>
>>
>> --
>> Donald Buczek
>> buczek@molgen.mpg.de
>> Tel: +49 30 8413 1433


-- 
Donald Buczek
buczek@molgen.mpg.de
Tel: +49 30 8413 1433

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
