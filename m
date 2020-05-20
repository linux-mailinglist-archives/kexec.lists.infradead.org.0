Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A431DA898
	for <lists+kexec@lfdr.de>; Wed, 20 May 2020 05:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TRLofnNNv7PD/zME1i+Qm59E5sKP22wNRj/u+e20do=; b=MQPnOMWCfYjhis
	2XCjYL5o2V6OvTdO2Z2FAZXuqPGCgj9pJGm0JqztkBCRu7wMAjLI5/Zt7HfJhUZI0Yq068FTL+eCq
	NJuQ7Q0hl4gihIQBTMfrY1pOmrGqBV93wan1QMyfrabCJfPAhmujnYDjcKnOYXX6JEuQ/JK5C7NQg
	wcrP8g2Uux0tw6mF1nshlB3rlzEb/6xiXLMbSTulDkgpVzr27gnCOVi1Z3qRrhcLkL+4ut0LkuyzC
	2x5KZrFKFngSI4AQPHwSiKSIcLNxZ8cJENi16LruFI8xRTZWUfvBd0clY2+VcIHT3hTUEHeZMmUN/
	HSey64odrV0v27w2WdfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbFRf-0002hJ-Fz; Wed, 20 May 2020 03:31:03 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbFRb-0002cy-Fq; Wed, 20 May 2020 03:31:01 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BF96A762C7016041C142;
 Wed, 20 May 2020 11:30:48 +0800 (CST)
Received: from [127.0.0.1] (10.166.213.90) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Wed, 20 May 2020
 11:30:45 +0800
Subject: Re: [PATCH v7 0/4] support reserving crashkernel above 4G on arm64
 kdump
To: Arnd Bergmann <arnd@arndb.de>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
 <a57d46bc-881e-3526-91ca-558bf64e2aa8@huawei.com>
 <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
From: chenzhou <chenzhou10@huawei.com>
Message-ID: <e35e37f2-bcb3-cc19-d506-18f576dcbfb9@huawei.com>
Date: Wed, 20 May 2020 11:30:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2VrAqefPYF2JqRjwdhgTDtORUgWgVuYxRYWqKxE3+5pA@mail.gmail.com>
X-Originating-IP: [10.166.213.90]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_203059_693386_30821B94 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Simon Horman <horms@verge.net.au>, john.p.donnelly@oracle.com,
 Will Deacon <will@kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Bhupesh
 Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, pkushwaha@marvell.com,
 Dave Young <dyoung@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Arnd,

On 2020/5/19 18:21, Arnd Bergmann wrote:
> On Thu, Mar 26, 2020 at 4:10 AM Chen Zhou <chenzhou10@huawei.com> wrote:
>> Hi all,
>>
>> Friendly ping...
> I was asked about this patch series, and see that you last posted it in
> December. I think you should rebase it to linux-5.7-rc6 and post the
> entire series again to make progress, as it's unlikely that any maintainer
> would pick up the patches from last year.
>
> For the contents, everything seems reasonable to me, but I noticed that
> you are adding a property to the /chosen node without adding the
> corresponding documentation to
> Documentation/devicetree/bindings/chosen.txt
>
> Please add that, and Cc the devicetree maintainers on the updated
> patch.
>
>          Arnd

Thanks for your review and comments, i will rebase it to linux-5.7-rc6 and add the
corresponding documentation.

Thanks,
Chen Zhou

>> On 2019/12/23 23:23, Chen Zhou wrote:
>>> This patch series enable reserving crashkernel above 4G in arm64.
>>>
>>> There are following issues in arm64 kdump:
>>> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
>>> when there is no enough low memory.
>>> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
>>> in this case, if swiotlb or DMA buffers are required, crash dump kernel
>>> will boot failure because there is no low memory available for allocation.
>>>
>>> The previous changes and discussions can be retrieved from:
>>>
>>> Changes since [v6]
>>> - Fix build errors reported by kbuild test robot.
> ...
>
> .
>



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
