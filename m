Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2622B1A1F1C
	for <lists+kexec@lfdr.de>; Wed,  8 Apr 2020 12:47:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5U+bwP8IuUI/WpacjPrWeVFz70NX0jjHwKiq4sBl6aM=; b=nsOYJATv6Z8C5j
	sXugnunhdXG4I9CgFmPCx88OBJdUqlPbfKH8E1lps/ni9nc3AsPjL2VbqDCmv9lFFNtnRByhCMmNl
	9caxeTFRXt1h4bWrpV1uaVLjm6eLFziPJmnbHPZfzZ76r5ApbrqnsTYThJK30JybSVz37apmzayf+
	OM/jK55yInOcymriUzJa97ZhnQ9o78611cE4J5voAMxMJUk/zWsTcNK2u+NZ+4jk6u4LiTxghhg6B
	2z5maYXk8108OvYtOm23uf/Ghdi9/inZZvAAMoYO0MIDPbQt08fdJ63EBiI9mV+oijKUyUUsRu422
	M5OijvrWBOdn4CHZeBuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8Ey-0006De-L5; Wed, 08 Apr 2020 10:47:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8Ev-0006Cw-49; Wed, 08 Apr 2020 10:47:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 67CE531B;
 Wed,  8 Apr 2020 03:47:22 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.21.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B2CB3F73D;
 Wed,  8 Apr 2020 03:47:20 -0700 (PDT)
Date: Wed, 8 Apr 2020 11:46:55 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
Message-ID: <20200408104655.GA92698@C02TD0UTHF1T.local>
References: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_034725_208437_262B8BD9 
X-CRM114-Status: GOOD (  15.92  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, kexec@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Apr 07, 2020 at 04:01:40AM +0530, Bhupesh Sharma wrote:
> kexec_file_load() syscall interface is now supported for
> arm64 architecture as well via commits:
> 3751e728cef2 ("arm64: kexec_file: add crash dump support") and
> 3ddd9992a590 ("arm64: enable KEXEC_FILE config")].
> 
> This patch enables config KEXEC_FILE by default in the
> arm64 defconfig, so that user-space tools like kexec-tools
> can use the same as the default interface for kexec/kdump
> on arm64.
> 
> Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: kexec@lists.infradead.org
> 
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>

FWIW:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 24e534d85045..fa122f4341a2 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
>  CONFIG_NUMA=y
>  CONFIG_SECCOMP=y
>  CONFIG_KEXEC=y
> +CONFIG_KEXEC_FILE=y
>  CONFIG_CRASH_DUMP=y
>  CONFIG_XEN=y
>  CONFIG_COMPAT=y
> -- 
> 2.7.4
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
