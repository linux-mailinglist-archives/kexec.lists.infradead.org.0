Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7379BD4758
	for <lists+kexec@lfdr.de>; Fri, 11 Oct 2019 20:18:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUZG4l9N8DupRsrOqpG88B62eL9MOzv4LvSwBnTU0Qk=; b=YZShLq33S48T0i
	DLDKA3TkwQzNYRcvUFU7rjI/5YxYDmp1mtnpEBs9h3YPTTqnUxZqdNsZE7GjFg53nPP+bHjK2h49u
	+G6wMsgcw+Sj7siA1KQ199XF676e5Z037kQMoWEsR2XqNZVnmQKV3nEKmu7mes/VGhAxLfZB2zBON
	pIwrjmK6LOqvkE+9vQhtViM75Y9La1Kgle0yjMBV06tRkS+iR3S8uNIYhL4rfyOQUAUM3A7jyMk0t
	oq6Z9gl7YKAK8n/BD5sTgBCgZzR3xifn7EQc4KqzmOm2mpEJ9gM+Kn04B8OpGNQkVqMG5eIe1rIts
	bB2vdp8+l57txs6eN9gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzUJ-00060E-T1; Fri, 11 Oct 2019 18:18:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzUG-0005zH-AP; Fri, 11 Oct 2019 18:18:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3764F1570;
 Fri, 11 Oct 2019 11:17:59 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B3BD3F703;
 Fri, 11 Oct 2019 11:17:57 -0700 (PDT)
Subject: Re: [PATCH v6 03/17] arm64: hibernate: check pgd table allocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-4-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <b5f965b5-bbd6-9e53-c085-d1a0c0dceca7@arm.com>
Date: Fri, 11 Oct 2019 19:17:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004185234.31471-4-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_111800_399380_FC5832EB 
X-CRM114-Status: GOOD (  17.02  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

On 04/10/2019 19:52, Pavel Tatashin wrote:
> There is a bug in create_safe_exec_page(), when page table is allocated
> it is not checked that table is allocated successfully:
> 
> But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
> allocation was successful.


> Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")
> 
> Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>

Nit: Please remove the stray newline so all the tags appear together.


> diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
> index d52f69462c8f..ef46ce66d7e8 100644
> --- a/arch/arm64/kernel/hibernate.c
> +++ b/arch/arm64/kernel/hibernate.c
> @@ -217,6 +217,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
>  	__flush_icache_range(dst, dst + length);
>  
>  	trans_pgd = allocator(mask);
> +	if (!trans_pgd) {
> +		rc = -ENOMEM;
> +		goto out;
> +	}
> +
>  	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
>  	if (pgd_none(READ_ONCE(*pgdp))) {
>  		pudp = allocator(mask);
> 

Thanks for splitting [0] into two ... but this fix depends on the previous patch - which
isn't an issue that anyone can hit, and doesn't match Greg's 'stable-kernel-rules'.

Please separate out this patch - and post it on its own as a stand-alone fix that can be
sent to the stable trees.


Mixing fixes with other patches leads to problems like this. It isn't possible to pick
this fix independently of the cleanup in the previous patch.


Thanks,

James

[0] https://lore.kernel.org/linux-arm-kernel/ddd81093-89fc-5146-0b33-ad3bd9a1c10c@arm.com/

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
