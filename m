Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2533EB3891
	for <lists+kexec@lfdr.de>; Mon, 16 Sep 2019 12:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7IMNjMkbuEhkjgQBLuCX2sAin6mrAprebpG9xFXmdSw=; b=qsutiJ/LNOeuZEtb1+yGkN68S
	a5QXr4duoFZ4pHycbD6U4f87qyIkb7sQkZ6Ww4+U31ZI5EbxOxXtctfxWLOMMYytlt+bIN37sOODq
	Z4Ctk9ojMj+7gKDacqSDqfi40VqzEVKDg0EQKWfNtPirdhjEJxXbQOGi7cu9FGdhAzdMZpZsTF75a
	3XfY8C58UcK4p2e5MSBQ46WTyvEGJTfpeva9H5DgjRbj/ecoCrerJNl1kLvfS0bX3IK7oBZynkPPb
	EuBdmw26JC9hEV1DdARlJflO9+TlcSn8v8EcRY+wtg7YZkRDOyAl2lhFH9UwIoj0KfT2i1E0KGZfH
	m9Sj5iH3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oXR-0002LZ-5F; Mon, 16 Sep 2019 10:47:21 +0000
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oXL-0002Kp-3R
 for kexec@lists.infradead.org; Mon, 16 Sep 2019 10:47:16 +0000
Received: from theinternet.molgen.mpg.de (theinternet.molgen.mpg.de
 [141.14.31.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: buczek)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id A25222064482D;
 Mon, 16 Sep 2019 12:47:00 +0200 (CEST)
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
To: Simon Horman <horms@verge.net.au>, Bhupesh Sharma <bhsharma@redhat.com>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190903144127.opmnw42pie6klghc@verge.net.au>
 <848555a3-5a1f-c0c0-ef50-e684cf70595a@molgen.mpg.de>
 <CACi5LpPe5ueNMdCObWvCLg+k_kDrvd-SkOvc8ACa1V9UfSD77g@mail.gmail.com>
 <20190916072333.7xma2kgjzucfes44@verge.net.au>
From: Donald Buczek <buczek@molgen.mpg.de>
Message-ID: <1d8f474a-4ed1-4b83-7e70-36504dfa6f69@molgen.mpg.de>
Date: Mon, 16 Sep 2019 12:47:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <20190916072333.7xma2kgjzucfes44@verge.net.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_034715_300918_F79991BB 
X-CRM114-Status: GOOD (  21.71  )
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
Cc: kexec mailing list <kexec@lists.infradead.org>, Baoquan He <bhe@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 9/16/19 9:23 AM, Simon Horman wrote:
> On Mon, Sep 09, 2019 at 10:33:11AM +0530, Bhupesh Sharma wrote:
>> Sorry Guys,
>>
>> On Tue, Sep 3, 2019 at 11:36 PM Donald Buczek <buczek@molgen.mpg.de> wrote:
>>>
>>> Dear Simon,
>>>
>>> On 03.09.19 16:41, Simon Horman wrote:
>>>> On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
>>>>> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
>>>>> region on 5-level paging") changed the base of the direct mapping
>>>>> from 0xffff880000000000 to 0xffff888000000000. This was merged
>>>>> into v4.20-rc2.
>>>>>
>>>>> Update to new address accordingly.
>>>>
>>>> Thanks, applied for inclusion in v2.0.20.
>>>
>>> I must admit, that I overlooked that d52888aa2753 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging").
>>>
>>> Bhupesh Sharma wanted to look into a a dynamic solution, which, of course, would be better. But if you still want to include this (e.g. as the fallback for the dynamic solution), you might want to replace the patch with the following one, which selects the new PAGE_OFFSET starting from kernel version 4.19.5 instead of 4.20.0.
>>
>> I was in a conference last week and was not able to connect to my test
>> machine(s) to develop and test a more generic fix, as I suggested in
>> my earlier message.
>>
>> I will try to work on and send a generic fix in a couple of days.
> 
> Thanks,
> 
> I think it would be best if this patch,
> 23b67f048dde ("x86: Fix PAGE_OFFSET for kernels since 4.20"),
> was reverted.
> 
> Donald, Bhupesh, what do you think?

The original patch is technically correct and fixes the problem for 4.20 kernels, so I don't know, why it should be reverted.

My replacement patch was to address 4.19 kernels as well. But if the original patch has already been comitted and published, it should not be replaced of course. 4.20 kernels should be addressed by a separate patch on top of it instead.

As I'm not subscribed to the kexec list, I may have missed the latest news, however.

Best
   Donald
-- 
Donald Buczek
buczek@molgen.mpg.de
Tel: +49 30 8413 1433

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
