Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04AD324B7E
	for <lists+kexec@lfdr.de>; Tue, 21 May 2019 11:28:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8oX4DE4eoJinYLcxJo3Xajo4g81Blnag1G+py2ow1A=; b=XDhMa8siw3gzkN
	O+Id4txTFbGFTT4WQBQwomfEdPcd82uDtVMERi8SM5DUyTXcYy2DO4iWyjS39EsMIX9VXdfYZauGe
	ILUl/MRPVW84ZvQxEVLAzR8h6+czoCc2ne1Jdu4p0uVh5OV45IbeA5MORMwahtVTB7PosV/6LQj/C
	vmMxLBWggbaDaBDLbqDcvHZIv0onxvFnEft98Qv4rCz9Fcr6TxCBP5l04ht2Zg089jMJxDGiVrkEp
	c7/p7zYOqlQGvHCVY8HWE6IT9koxms8lzlbydURJLHxRPneppsPgVRCP7uVXd+KTVTV/jVgKPWBw4
	ZlXZRaXX3ZC2xcESxesA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT14F-0003MS-Jl; Tue, 21 May 2019 09:28:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT14C-0003Lk-5A
 for kexec@lists.infradead.org; Tue, 21 May 2019 09:28:17 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id EC9C685A04;
 Tue, 21 May 2019 09:28:13 +0000 (UTC)
Received: from localhost (ovpn-12-42.pek2.redhat.com [10.72.12.42])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A355100200D;
 Tue, 21 May 2019 09:28:11 +0000 (UTC)
Date: Tue, 21 May 2019 17:28:08 +0800
From: Baoquan He <bhe@redhat.com>
To: Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] x86/boot: Call get_rsdp_addr() after console_init()
Message-ID: <20190521092808.GA3805@MiWiFi-R3L-srv>
References: <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190517134159.GA13482@zn.tnic> <20190517135030.GB13482@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517135030.GB13482@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Tue, 21 May 2019 09:28:14 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_022816_217372_D97FB4E9 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, hpa@zytor.com,
 j-nomura@ce.jp.nec.com, tglx@linutronix.de, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/17/19 at 03:50pm, Borislav Petkov wrote:
> And now as a proper patch:
> 
> ---
> From: Borislav Petkov <bp@suse.de>
> 
> ... so that early debugging output from the RSDP parsing code can be
> visible and collected.
> 
> Suggested-by: Dave Young <dyoung@redhat.com>
> Signed-off-by: Borislav Petkov <bp@suse.de>
> Cc: Baoquan He <bhe@redhat.com>
> Cc: Chao Fan <fanc.fnst@cn.fujitsu.com>
> Cc: Jun'ichi Nomura <j-nomura@ce.jp.nec.com>
> Cc: Kairui Song <kasong@redhat.com>
> Cc: kexec@lists.infradead.org
> Cc: x86@kernel.org
> ---
>  arch/x86/boot/compressed/misc.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
> index c0d6c560df69..24e65a0f756d 100644
> --- a/arch/x86/boot/compressed/misc.c
> +++ b/arch/x86/boot/compressed/misc.c
> @@ -351,9 +351,6 @@ asmlinkage __visible void *extract_kernel(void *rmode, memptr heap,
>  	/* Clear flags intended for solely in-kernel use. */
>  	boot_params->hdr.loadflags &= ~KASLR_FLAG;
>  
> -	/* Save RSDP address for later use. */
> -	boot_params->acpi_rsdp_addr = get_rsdp_addr();
> -
>  	sanitize_boot_params(boot_params);
>  
>  	if (boot_params->screen_info.orig_video_mode == 7) {
> @@ -368,6 +365,14 @@ asmlinkage __visible void *extract_kernel(void *rmode, memptr heap,
>  	cols = boot_params->screen_info.orig_video_cols;
>  
>  	console_init();
> +
> +	/*
> +	 * Save RSDP address for later use. Have this after console_init()
> +	 * so that early debugging output from the RSDP parsing code can be
> +	 * collected.
> +	 */
> +	boot_params->acpi_rsdp_addr = get_rsdp_addr();
> +
>  	debug_putstr("early console in extract_kernel\n");

Thanks for making this. FWIW,

Reviewed-by: Baoquan He <bhe@redhat.com>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
