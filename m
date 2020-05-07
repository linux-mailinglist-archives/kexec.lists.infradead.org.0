Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AC11C9652
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 18:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVnmsBJSG/LIde0PEWqF+1dURBWKlxjiE43TpF/bFtA=; b=ZDwXirOhZeKtnc
	3M5x1GlER4JPOYjfQSVJw8a62PiBvaIlXoOpS+lyepG1zVrI4r/So5QHbto7NSrFAPzvLh7yTC2Rw
	GtqTROoOap57PWcbdtghwn+YrEvL9StZPKIYCKe3cHlHK655T8ScioHLLhXrDjWakDCQVhLL/J8Bs
	XfdCPHws7W2xhgCvozXCRePhJIdcg8Xbx71A6WoQNU8+XIwKdyFd/hnJ4KAqfb+mi4wcUMFZopiRP
	XuxRAIDFnzQmGJ70CaRlC8G858WR6PEN5icTkyPfRrvBz1IbkIldWM29al7S9CWcERr56WfOpgYhr
	eVv0Pub4ASlXuxSjmuNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjHp-0007QV-LG; Thu, 07 May 2020 16:22:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjHn-0007PN-6z; Thu, 07 May 2020 16:22:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 393D61FB;
 Thu,  7 May 2020 09:22:08 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0949C3F71F;
 Thu,  7 May 2020 09:22:04 -0700 (PDT)
Subject: Re: [PATCH v9 15/18] arm64: kexec: kexec EL2 vectors
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-16-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <c9b5897b-a4a3-0ec1-10d1-520c8b7c89cc@arm.com>
Date: Thu, 7 May 2020 17:21:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-16-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092211_296325_1C2714AA 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Pavel,

What happened to the subject?
(it really needs a verb to make any sense)

On 26/03/2020 03:24, Pavel Tatashin wrote:
> If we have a EL2 mode without VHE, the EL2 vectors are needed in order
> to switch to EL2 and jump to new world with hyperivsor privileges.

Yes, but the hyp-stub has an API to let you do this... but you need your own version.

Could you explain why in the commit message?

(spelling: hyperivsor)


> diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> index ab571fca9bd1..bd398def7627 100644
> --- a/arch/arm64/kernel/machine_kexec.c
> +++ b/arch/arm64/kernel/machine_kexec.c
> @@ -84,6 +84,11 @@ int machine_kexec_post_load(struct kimage *kimage)
>  	kern_reloc_arg->head = kimage->head;
>  	kern_reloc_arg->entry_addr = kimage->start;
>  	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;
> +	/* Setup vector table only when EL2 is available, but no VHE */
> +	if (is_hyp_mode_available() && !is_kernel_in_hyp_mode()) {
> +		kern_reloc_arg->el2_vector = __pa(reloc_code)
> +						+ kexec_el2_vectors_offset;
> +	}

Why does the asm relocation code need to know where the vector is? It must access it via HVC.




Thanks,

James

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
