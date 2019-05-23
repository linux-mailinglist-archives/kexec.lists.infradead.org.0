Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4AA274B9
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 05:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEl82AAm86xH+hLT2CFBbjGYdPSY7i9bUuPQYMi2cSs=; b=p/Y0yGR3WhQDpt
	dVvvrDax6d2pojyYC9AaxEcg0FKIWJBFc7vz5WK/tn4AXA4Ghh1S1e2ZQcYrKVIyqQng3T58XdngV
	iL6bqVftUiVtH4HsWFrdUF5HOpA4xPfIZ1CtBsnFqLGrvH6KXMqtG7jin3nbPHC21sIh96y10cIY6
	LN+YH1EdDMvQ662kdW/Ali00LQXJ89sUpMvvI14R3aPYQB1vXgU/uLffnGzatJgOCw3wYUXdvKWNu
	fsmQ3vUGW1CcK0BZZAECsVRVmiXfCEArUwqytcggmAi+wmCtx7QkDV3F6G9cy+cqJjT7uIE2tynV+
	pp7hTXKsBNlx+z4Hk5nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTeEt-0001GQ-At; Thu, 23 May 2019 03:17:55 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTeEp-0001G6-HU
 for kexec@lists.infradead.org; Thu, 23 May 2019 03:17:52 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2C1E43082137;
 Thu, 23 May 2019 03:17:51 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-185.pek2.redhat.com
 [10.72.12.185])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C63132FC41;
 Thu, 23 May 2019 03:17:48 +0000 (UTC)
Date: Thu, 23 May 2019 11:17:45 +0800
From: Dave Young <dyoung@redhat.com>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v2 3/4] x86: Always try to fill acpi_rsdp_addr in boot
 params
Message-ID: <20190523031745.GC8174@dhcp-128-65.nay.redhat.com>
References: <20190514050959.21093-1-kasong@redhat.com>
 <20190514050959.21093-4-kasong@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514050959.21093-4-kasong@redhat.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 23 May 2019 03:17:51 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_201751_601059_F22BE711 
X-CRM114-Status: GOOD (  19.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/14/19 at 01:09pm, Kairui Song wrote:
> Since kernel commit e6e094e053af75 ("x86/acpi, x86/boot: Take RSDP address
> from boot params if available"), kernel accept an acpi_rsdp_addr param in
> boot_params. So fill in this parameter unconditionally, ensure second
> kernel always get the right RSDP address consistently, and boot well on
> EFI system even with EFI service disabled. User no longer need to change
> the kernel cmdline to workaround the missing RSDP issue.
> 
> For older version of kernels (Before 5.0), there won't be any change of
> behavior.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>  kexec/arch/i386/x86-linux-setup.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/kexec/arch/i386/x86-linux-setup.c b/kexec/arch/i386/x86-linux-setup.c
> index 5ca7c25..5b00b42 100644
> --- a/kexec/arch/i386/x86-linux-setup.c
> +++ b/kexec/arch/i386/x86-linux-setup.c
> @@ -901,4 +901,7 @@ void setup_linux_system_parameters(struct kexec_info *info,
>  
>  	/* fill the EDD information */
>  	setup_edd_info(real_mode);
> +
> +	/* Always try to fill acpi_rsdp_addr */
> +	real_mode->acpi_rsdp_addr = get_acpi_rsdp();
>  }
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

Seems no better way to check old kernel, then go with this way looks
acceptable.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
