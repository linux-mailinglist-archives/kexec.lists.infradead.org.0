Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F4419BB89
	for <lists+kexec@lfdr.de>; Thu,  2 Apr 2020 08:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBEc5kE1+eMNboRYAp5h78cZjfi6d4dsuHlND/eTYoA=; b=UdDcv17SSziIat
	w4oeOi3w1AhVGH6GwGekpxoL2392wcRH3PYZ8jte+vTldld3d4R2zGY4Ai1jybudF3WewWWllpGd8
	Ew2fN/OitzedKgLDF5s64RRCNNH+RSoSuQV/f1f/hNSpKWHVQ+4ervdPitXE0j3iBA0GlnAmiqE32
	qHfmkOYEV90hHyvO/oQkfoGhHPjHwaIzYN2NLQlFLANjuDikRvsSOGNUdyVq5TA9QpO4PbpLNaTa0
	M/WN+7FRdORl+grKhl36njoQ7Z4d5GIlp5aJn7YTJjvPCQgGu63ZEo8r+2Wcj+MIQwMCXNDr4VMYX
	ekN5peejEUbUI1wF3tJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJt8H-0000kn-Sr; Thu, 02 Apr 2020 06:15:17 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJt85-00074j-Qv
 for kexec@lists.infradead.org; Thu, 02 Apr 2020 06:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585808103;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x6Gi9bGYalknJS+AupiAxMnXVddmoL5l4UamHoetl7M=;
 b=FQP86bwSF9h1tv+dD1ef2eFwQTGFySQfcwf+3osiMDi57slEm4bBU6P2JaY+hr/VT+Heu+
 X4Vh/VbCYCPLwzvhcGxmakZfEf+ascMezopuMjBvuw2IvKKUITyw958gBcCR70UVrHVBPs
 EKq7L7xrnHccOgqyxkMnegpu/geAlNo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-bf-r7in0M06c7jk76TEC-w-1; Thu, 02 Apr 2020 02:12:53 -0400
X-MC-Unique: bf-r7in0M06c7jk76TEC-w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46FC7107ACCD;
 Thu,  2 Apr 2020 06:12:51 +0000 (UTC)
Received: from [10.72.8.19] (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 88FB989F0A;
 Thu,  2 Apr 2020 06:12:43 +0000 (UTC)
Subject: Re: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot
 memory resource names
To: Dave Young <dyoung@redhat.com>, James Morse <james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-3-james.morse@arm.com>
 <20200402054946.GA97238@dhcp-128-65.nay.redhat.com>
From: piliu <piliu@redhat.com>
Message-ID: <9725d779-e0de-2d8d-8716-22df3e791820@redhat.com>
Date: Thu, 2 Apr 2020 14:12:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200402054946.GA97238@dhcp-128-65.nay.redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_231505_955044_7E804C99 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Hari Bathini <hbathini@linux.ibm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 04/02/2020 01:49 PM, Dave Young wrote:
> On 03/26/20 at 06:07pm, James Morse wrote:
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
> 
> Could arm64 use similar way to update DT, or a cooked UEFI maps?
> 
> Add pingfan in cc, he said ppc64 update the DT after a memremove thus it
> would be good to just redo a kexec load.
> 
Yes, the memory changes will be observed through device-node under
/proc/device-tree/ (which is for powerpc).

Later if running kexec -l/-p , it can build new dtb with the latest info
from /proc/device-tree
> Added Pingfan and Hari for comments and corrections.
> 
>>
>> Allow an architecture to specify a different name for these hotplug
>> regions.
>>
>> Signed-off-by: James Morse <james.morse@arm.com>
>> ---
>>  mm/memory_hotplug.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
>> index 0a54ffac8c68..69b03dd7fc74 100644
>> --- a/mm/memory_hotplug.c
>> +++ b/mm/memory_hotplug.c
>> @@ -42,6 +42,10 @@
>>  #include "internal.h"
>>  #include "shuffle.h"
>>  
>> +#ifndef MEMORY_HOTPLUG_RES_NAME
>> +#define MEMORY_HOTPLUG_RES_NAME "System RAM"
>> +#endif
>> +
>>  /*
>>   * online_page_callback contains pointer to current page onlining function.
>>   * Initially it is generic_online_page(). If it is required it could be
>> @@ -103,7 +107,7 @@ static struct resource *register_memory_resource(u64 start, u64 size)
>>  {
>>  	struct resource *res;
>>  	unsigned long flags =  IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
>> -	char *resource_name = "System RAM";
>> +	char *resource_name = MEMORY_HOTPLUG_RES_NAME;
>>  
>>  	if (start + size > max_mem_size)
>>  		return ERR_PTR(-E2BIG);
>> -- 
>> 2.25.1
>>
>>
>> _______________________________________________
>> kexec mailing list
>> kexec@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/kexec
>>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
