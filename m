Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FBA1390E7
	for <lists+kexec@lfdr.de>; Mon, 13 Jan 2020 13:14:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+90KVB6GXBBg14YFfiUcmBOfkMIETjJc1a57IiE/Y1c=; b=sJLQckAAw3YCzhhdq9/NF6Rep
	Chx+WRNYtrjgjr1uIL7vPGJ3I3lwCrteh7ekI5R3djO6uMFO//1uZawAP3FkngWP7BCILkLnvro6e
	ppLJnwPVUVEeNG07PvTIP2DJKKv3Cphks8BkNEGRLg4sX3JGOJ4AvS4qEYvItcSstHyhS7dvfLGfB
	88zuI722rVj5y0s+V7evUx3bRi/1MoB2f7SQ8bjrfHdLajdheW/oDqo0VVlLwDbVg4B7DUIO0LopR
	wmqYsdq6h+w5t7FPL8dyhGUdK/9PyVjLAqTXKPKXywGpjq8vaUhoGnH/WC1nJT1PC6jJKRsvQHJco
	cBbPB5dcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqycO-0006Xa-Lb; Mon, 13 Jan 2020 12:14:52 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqycD-0006OG-Um
 for kexec@lists.infradead.org; Mon, 13 Jan 2020 12:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578917679;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=quQDksyPyFcIuCqVPGqUPwx5B1xPgTdkurY5s4DtTQ8=;
 b=YWcda+iE5mpOeDuU+OosQbjLSGiv7bPfeAOhucKrCzwBDhVs0OVAfJHCvAknGwIPWcxwWq
 YneA4GUNgSCeYfr3j3ntamHWNmWK0LjPCDUeyprvkwiSrMQ+uNGivdUik/I4GAFmS0jowe
 P8R2nMCObuVK5hLpXqvtc5AmqdASwo4=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-CQ6qs5wXOW6JZl6Zwr2Uzw-1; Mon, 13 Jan 2020 07:14:36 -0500
Received: by mail-pg1-f198.google.com with SMTP id a4so6296974pgq.23
 for <kexec@lists.infradead.org>; Mon, 13 Jan 2020 04:14:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=quQDksyPyFcIuCqVPGqUPwx5B1xPgTdkurY5s4DtTQ8=;
 b=gm6iJrSEHxg65ljXTRKbT8gRoD8ePW42LVpElkwGGL2KiJXFuECwA8YjQtfpjcPETO
 dKznIobeji9Eo8dSoGUsDMOySiUoSn4jwUB8Km/DU+AEZL/uiqBQKAU4im7DfMRK0iFt
 QkgimIamjh+EiaUazey7O0UjqVbMxiFRAW5z/xutbeikoQzsToTm7v+yvYs6Td+wqBRa
 OzDkWnDLfUnD3gV5VSNlhL+87IqBV7DhktBL3CAL/ENvTJ6AFy7ftLR+isHQ/EEGmB15
 VPgEwEbUaduwdg/ArdRYM0BWJI7124svq6ApaWqGAt+2MkwQwVmH66abaGYGTrcJKltQ
 mbSQ==
X-Gm-Message-State: APjAAAWRZMio6IxffF7IuWSQMN0OW49/RwlCWRTrASRCgUnYnGdUVipq
 tHiBZiBnCKKNQArYhm9F2Dk5YTUA1PIfoeG+lLCi0o6j/MTGytMZ2wIXy+U0k6RmpvJ/HLsRH8n
 5I9l+0i+o+SQfFuZ85tv0
X-Received: by 2002:a17:90a:fa88:: with SMTP id
 cu8mr20913876pjb.141.1578917675075; 
 Mon, 13 Jan 2020 04:14:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxALQgnDcQJ9NkcfjZ+inUPcVHYoZsvLYAu6/sEEIOSdSjVJI/LaGA1hgTl2PAA71Zt8AwepA==
X-Received: by 2002:a17:90a:fa88:: with SMTP id
 cu8mr20913845pjb.141.1578917674799; 
 Mon, 13 Jan 2020 04:14:34 -0800 (PST)
Received: from localhost.localdomain ([122.177.255.46])
 by smtp.gmail.com with ESMTPSA id j20sm13806331pfe.168.2020.01.13.04.14.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Jan 2020 04:14:34 -0800 (PST)
Subject: Re: [RESEND PATCH v5 2/5] arm64/crash_core: Export TCR_EL1.T1SZ in
 vmcoreinfo
To: Dave Anderson <anderson@redhat.com>, James Morse <james.morse@arm.com>
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-3-git-send-email-bhsharma@redhat.com>
 <63d6e63c-7218-d2dd-8767-4464be83603f@arm.com>
 <af0fd2b0-99db-9d58-bc8d-0dd9d640b1eb@redhat.com>
 <f791e777-781c-86ce-7619-1de3fe3e7b90@arm.com>
 <351975548.1986001.1578682810951.JavaMail.zimbra@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <04287d60-e99e-631b-c134-d6dc39e6a193@redhat.com>
Date: Mon, 13 Jan 2020 17:44:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <351975548.1986001.1578682810951.JavaMail.zimbra@redhat.com>
Content-Language: en-US
X-MC-Unique: CQ6qs5wXOW6JZl6Zwr2Uzw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_041442_065494_19B7643D 
X-CRM114-Status: GOOD (  24.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 bhupesh linux <bhupesh.linux@gmail.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James,

On 01/11/2020 12:30 AM, Dave Anderson wrote:
> 
> ----- Original Message -----
>> Hi Bhupesh,
>>
>> On 25/12/2019 19:01, Bhupesh Sharma wrote:
>>> On 12/12/2019 04:02 PM, James Morse wrote:
>>>> On 29/11/2019 19:59, Bhupesh Sharma wrote:
>>>>> vabits_actual variable on arm64 indicates the actual VA space size,
>>>>> and allows a single binary to support both 48-bit and 52-bit VA
>>>>> spaces.
>>>>>
>>>>> If the ARMv8.2-LVA optional feature is present, and we are running
>>>>> with a 64KB page size; then it is possible to use 52-bits of address
>>>>> space for both userspace and kernel addresses. However, any kernel
>>>>> binary that supports 52-bit must also be able to fall back to 48-bit
>>>>> at early boot time if the hardware feature is not present.
>>>>>
>>>>> Since TCR_EL1.T1SZ indicates the size offset of the memory region
>>>>> addressed by TTBR1_EL1 (and hence can be used for determining the
>>>>> vabits_actual value) it makes more sense to export the same in
>>>>> vmcoreinfo rather than vabits_actual variable, as the name of the
>>>>> variable can change in future kernel versions, but the architectural
>>>>> constructs like TCR_EL1.T1SZ can be used better to indicate intended
>>>>> specific fields to user-space.
>>>>>
>>>>> User-space utilities like makedumpfile and crash-utility, need to
>>>>> read/write this value from/to vmcoreinfo
>>>>
>>>> (write?)
>>>
>>> Yes, also write so that the vmcoreinfo from an (crashing) arm64 system can
>>> be used for
>>> analysis of the root-cause of panic/crash on say an x86_64 host using
>>> utilities like
>>> crash-utility/gdb.
>>
>> I read this as as "User-space [...] needs to write to vmcoreinfo".

That's correct. But for writing to vmcore dump in the kdump kernel, we 
need to read the symbols from the vmcoreinfo in the primary kernel.

>>>>> for determining if a virtual address lies in the linear map range.
>>>>
>>>> I think this is a fragile example. The debugger shouldn't need to know
>>>> this.
>>>
>>> Well that the current user-space utility design, so I am not sure we can
>>> tweak that too much.
>>>
>>>>> The user-space computation for determining whether an address lies in
>>>>> the linear map range is the same as we have in kernel-space:
>>>>>
>>>>>     #define __is_lm_address(addr)    (!(((u64)addr) & BIT(vabits_actual -
>>>>>     1)))
>>>>
>>>> This was changed with 14c127c957c1 ("arm64: mm: Flip kernel VA space"). If
>>>> user-space
>>>> tools rely on 'knowing' the kernel memory layout, they must have to
>>>> constantly be fixed
>>>> and updated. This is a poor argument for adding this to something that
>>>> ends up as ABI.
>>>
>>> See above. The user-space has to rely on some ABI/guaranteed
>>> hardware-symbols which can be
>>> used for 'determining' the kernel memory layout.
>>
>> I disagree. Everything and anything in the kernel will change. The ABI rules apply to
>> stuff exposed via syscalls and kernel filesystems. It does not apply to kernel internals,
>> like the memory layout we used yesterday. 14c127c957c1 is a case in point.
>>
>> A debugger trying to rely on this sort of thing would have to play catchup whenever it
>> changes.
> 
> Exactly.  That's the whole point.
> 
> The crash utility and makedumpfile are not in the same league as other user-space tools.
> They have always had to "play catchup" precisely because they depend upon kernel internals,
> which constantly change.

I agree with you and DaveA here. Software user-space debuggers are 
dependent on kernel internals (which can change from time-to-time) and 
will have to play catch-up (which has been the case since the very start).

Unfortunately we don't have any clear ABI for software debugging tools - 
may be something to look for in future.

A case in point is gdb/kgdb, which still needs to run with KASLR 
turned-off (nokaslr) for debugging, as it confuses gdb which resolve 
kernel symbol address from symbol table of vmlinux. But we can 
work-around the same in makedumpfile/crash by reading the 'kaslr_offset' 
value. And I have several users telling me now they cannot use gdb on 
KASLR enabled kernel to debug panics, but can makedumpfile + crash 
combination to achieve the same.

So, we should be looking to fix these utilities which are broken since 
the 52-bit changes for arm64. Accordingly, I will try to send the v6
soon while incorporating the comments posted on the v5.

Thanks,
Bhupesh





_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
