Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74BFD1B4417
	for <lists+kexec@lfdr.de>; Wed, 22 Apr 2020 14:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ie56PC5nfcxgHW2f1NAQmbr6/SjD8hH+Hxc8zAhvBcU=; b=e1ZvVjAn9z84k4
	EnKRW9WqLK2zWt/ShVhE/chz4MCrBtzZ5Hi75/s3/qgzePb2XXSsbKvDDNvvxeZakXczot/cqZRcs
	H43Sq4fCZe6OojYocs2a4lrnQMMXuok+bFi+y92TDKzN9Efix1BqXCieYHp0oOM7mhmYWICKjwMmy
	9MDdqu4EzrtBCVY24403FrxvfREYM5Ew5LW/JjluxqWfh3vOGCJZ/JIuas8NsfPf9bprUFZG7c7+r
	FADAku/t6DEekUoX0eC/fROsCId54HZyShHBdFwiRupW6zPHsXMXHPjbNevkocEip30rx1D43JXGv
	lVPUUMsP+osCUUJOo52Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREHf-0008Tm-65; Wed, 22 Apr 2020 12:15:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREGy-0006Dg-1n; Wed, 22 Apr 2020 12:14:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B18471045;
 Wed, 22 Apr 2020 05:14:34 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 849D63F6CF;
 Wed, 22 Apr 2020 05:14:33 -0700 (PDT)
Subject: Re: [PATCH 3/3] arm64: memory: Give hotplug memory a different
 resource name
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-4-james.morse@arm.com>
 <87v9m0fptf.fsf@x220.int.ebiederm.org>
From: James Morse <james.morse@arm.com>
Message-ID: <56c17c4e-fab4-5941-2239-e2aa77c8733d@arm.com>
Date: Wed, 22 Apr 2020 13:14:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <87v9m0fptf.fsf@x220.int.ebiederm.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_051436_155392_FB3CD5AF 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Eric,

On 15/04/2020 21:37, Eric W. Biederman wrote:
> James Morse <james.morse@arm.com> writes:
> 
>> If kexec chooses to place the kernel in a memory region that was
>> added after boot, we fail to boot as the kernel is running from a
>> location that is not described as memory by the UEFI memory map or
>> the original DT.
>>
>> To prevent unaware user-space kexec from doing this accidentally,
>> give these regions a different name.
> 
> Please fix the problem and don't hack around it.

The problem is firmware didn't describe memory that wasn't present at boot.

arm64 relies on the firmware description of memory well before it can go poking around in
ACPI to find out where extra memory was added to the system.

We already need kexec to not overwrite in-memory structures left by firmware. (like, the
memory map). We do this by naming them reserved in /proc/iomem.

Doing the same for hotadded memory means existing kexec user-space can't do this
accidentally. The shape of /proc/iomem is the only trick in the book for arm64's kexec
userspace, as its the only thing it looks at.



Thanks,

James






_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
