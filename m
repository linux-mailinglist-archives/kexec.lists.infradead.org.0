Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A7F11335A
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 19:18:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OC5XzSmhRmadP6NGZErr3U7ickn/sEZV7ndbajzPhr0=; b=BIYAEveyv972dR
	39z35EIH46DPueZ1VEBnUZiJvefsQ/ZP6Q46Aq8+EgXB6xCtwdtAnyaS5VA1F/JJR8lmMUg67tLRY
	CEweowoGS/ISl0iOHQC4bd1VJnUCLgCBmb5mRA6qIkWHbqQcMjKLu8b57YDwh+MVK6ZdiNuOWWuNG
	fi/dorcmitCmFvH2qgOSYLuHIns5broNWALVI7gtjVtF05QNoXGLjehb4RUc4pWoAcE2TILRKdXa9
	uQmA4y70qV/kevpPowvPKEUdISqhYmCh6dxFkE6t403Y1jOpZ9SAsCcTXEZ3h5uUY0FjPg2gyETkg
	KXyJsw3J7pm+rxEW9ZpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZE2-0003bv-NU; Wed, 04 Dec 2019 18:18:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZDw-0003Uk-Ng
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 18:18:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0220731B;
 Wed,  4 Dec 2019 10:18:02 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0D5083F718;
 Wed,  4 Dec 2019 10:18:00 -0800 (PST)
Subject: Re: [PATCH] efi/memreserve: register reservations as 'reserved' in
 /proc/iomem
To: Masayoshi Mizuma <msys.mizuma@gmail.com>, Ard Biesheuvel <ardb@kernel.org>
References: <20191204145233.11962-1-ardb@kernel.org>
 <20191204171744.o3ijdspnelqn5fgd@gabell>
From: James Morse <james.morse@arm.com>
Message-ID: <08f05b18-12b2-0ba4-b819-b95ba27d1862@arm.com>
Date: Wed, 4 Dec 2019 18:17:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191204171744.o3ijdspnelqn5fgd@gabell>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_101804_859009_F0BAC1C1 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 linux-efi@vger.kernel.org, kexec@lists.infradead.org, d.hatayama@fujitsu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Masa,

On 04/12/2019 17:17, Masayoshi Mizuma wrote:
> Thank you for sending the patch, but unfortunately it doesn't work for the issue...
> 
> After applied your patch, the LPI tables are marked as reserved in
> /proc/iomem like as:
> 
> 80300000-a1fdffff : System RAM
>   80480000-8134ffff : Kernel code
>   81350000-817bffff : reserved
>   817c0000-82acffff : Kernel data
>   830f0000-830fffff : reserved # Property table
>   83480000-83480fff : reserved # Pending table
>   83490000-8349ffff : reserved # Pending table
> 
> However, kexec tries to allocate memory from System RAM, it doesn't care
> the reserved in System RAM.

> I'm not sure why kexec doesn't care the reserved in System RAM, however,

Hmm, we added these to fix a problem with the UEFI memory map, and more recently ACPI
tables being overwritten by kexec.

Which version of kexec-tools are you using? Could you try:
https://git.linaro.org/people/takahiro.akashi/kexec-tools.git/commit/?h=arm64/resv_mem


> if the kexec behaivor is right, the LPI tables should not belong to
> System RAM.

> Like as:
> 
> 80300000-830effff : System RAM
>   80480000-8134ffff : Kernel code
>   81350000-817bffff : reserved
>   817c0000-82acffff : Kernel data
> 830f0000-830fffff : reserved # Property table
> 83480000-83480fff : reserved # Pending table
> 83490000-8349ffff : reserved # Pending table
> 834a0000-a1fdffff : System RAM
> 
> I don't have ideas to separete LPI tables from System RAM... so I tried
> to add a new file to inform the LPI tables to userspace.

This is how 'nomap' memory appears, we carve it out of System RAM. A side effect of this
is kdump can't touch it, as you've told it this isn't memory.

As these tables are memory, mapped by the linear map, I think Ard's patch is the right
thing to do ... I suspect your kexec-tools doesn't have those patches from Akashi to make
it honour all second level entries.


Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
