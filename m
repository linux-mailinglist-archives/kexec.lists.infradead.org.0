Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1B71B4413
	for <lists+kexec@lfdr.de>; Wed, 22 Apr 2020 14:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Bn7KnndrE0/AMwNeJiMxEXGmhEZEtFG8P8ZQZKzXq0=; b=kQUZFGFjCakwfy
	ewYY5PK1+GN3G6ulgiSqrp+EeVW6CjgzBUyu9lpUOHIicJJvXkzZtCvEY+6z058wBck1LGdDlUl46
	K/c5+lDJETj32KhRw2lEw3KbvLP2MJeen0z+cRqNrNhBYlMTkq+v785AlsXCtKMYxM4h04RlaYwH+
	BRWg63tks0oAQK23c8XtUyfajhPoyRShE3FteUi+1mgI0vt8yKGHxn2qIz2pdcWalJyQly3sK+4GE
	jSbstD+seDDI7fiLP/tyUupUmh+NgSR4NU8tTsV+5x2fN2RGoPtYhuyLhyf9ST6X/tzT5GJNDa43A
	iuG+8cnFfMWlR1y5jJzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jREH1-0006EX-1u; Wed, 22 Apr 2020 12:14:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jREGm-00062t-Vl; Wed, 22 Apr 2020 12:14:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 208CB1042;
 Wed, 22 Apr 2020 05:14:24 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E58AE3F6CF;
 Wed, 22 Apr 2020 05:14:22 -0700 (PDT)
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
To: "Eric W. Biederman" <ebiederm@xmission.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
 <873694h4g3.fsf@x220.int.ebiederm.org>
From: James Morse <james.morse@arm.com>
Message-ID: <f1678470-33a6-58c9-d7d3-16ac87d01714@arm.com>
Date: Wed, 22 Apr 2020 13:14:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <873694h4g3.fsf@x220.int.ebiederm.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_051425_096256_E9E6B809 
X-CRM114-Status: GOOD (  13.74  )
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

On 15/04/2020 21:36, Eric W. Biederman wrote:
> James Morse <james.morse@arm.com> writes:
> 
>> Memory added to the system by hotplug has a 'System RAM' resource created
>> for it. This is exposed to user-space via /proc/iomem.
>>
>> This poses problems for kexec on arm64. If kexec decides to place the
>> kernel in one of these newly onlined regions, the new kernel will find
>> itself booting from a region not described as memory in the firmware
>> tables.
>>
>> Arm64 doesn't have a structure like the e820 memory map that can be
>> re-written when memory is brought online. Instead arm64 uses the UEFI
>> memory map, or the memory node from the DT, sometimes both. We never
>> rewrite these.
>>
>> Allow an architecture to specify a different name for these hotplug
>> regions.
> 
> Gah.  No.
> 
> Please find a way to pass the current memory map to the loaded kexec'd
> kernel.

> Starting a kernel with no way for it to know what the current memory map
> is just plain scary.

We have one. Firmware tables are the source of all this information. We don't tamper with
them.

Firmware describes memory present at boot in the UEFI memory map or DT. On systems with
ACPI, regions that were added after booting are discovered by running AML methods. (for
which we need to allocate memory, so you can't describe boot memory like this)

This doesn't work if you kexec from a hot-added region. You've booted from memory that
wasn't present at boot.

I don't think this is fixable with the set of constraints.


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
