Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B39113679
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 21:33:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NQSXa4VmK9rwDB0AKoCgiK75g16Dm+eD8CmT4OovYXQ=; b=QLCdL2VJCvP7xGcxf3AjTSqj9
	Z0iZAGGwnnjiM1zQf4sErha880f2qwRHGHXTim1G9YTh1hHXzBldIo+tuJajJ6qdryL4ONAXWF7Vy
	Gv1ZXNz5eNEp1wRYaeXe3SL5LFlStj3UKE6FhJTEgct1+xapI2TYHAhW/mSEg9k2HomeyRzeufwJE
	iXzRG0HoO9sREAwurfEQitrgHWW4+xvnMnFF7FDFycMekklFNa9LWx4jI0W/H/zgsqcP9IhDq1txN
	vREJ1JueU5eBuUP/gsiw6M5HbXxO/lpwSAP7DOu2TVXGLk6uBRIzilv0x9/+fpCn9V2YopZBxv1eV
	G4S/HPn/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbLC-00068v-JU; Wed, 04 Dec 2019 20:33:42 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbL9-000687-BE
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 20:33:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575491618;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VqWpHduLSdryiBD/wNg+ALzMYenu5uhkg+/MeSPFPhI=;
 b=U+M9TOvlnHDYvwD3oz2Y5nMNc6YRZ3RxnYuttChD8xboH0/gssMuED7ZcA0vzV+vb/a9jZ
 kZBgA/xdqg0xKFu6xbTh5GSaf+fdGcGufzo6yBe0tX33nZZq8tZJse9Y4+4+hIijSVVXTV
 PJKlY8XNC2kHpVkN5rV6Jb72uMncZt0=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-es9U28o1PH2dRgMUf3bz1w-1; Wed, 04 Dec 2019 15:33:34 -0500
Received: by mail-pl1-f197.google.com with SMTP id 66so262193plc.22
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 12:33:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VqWpHduLSdryiBD/wNg+ALzMYenu5uhkg+/MeSPFPhI=;
 b=X0ARA2VEijDWTl2swg3d9RUPcPFdFUJDn2GIhW8/g1kJTlACs6ppG3mbYGnj06G8hE
 RoXUiUQyBu9mnmNbAsj37x7IYLn7kDo2wuh6CLlpWJxx3Vk63HUQNEoeMGszsUtW+M3C
 k/noMJKXiINRREQ0xH3sp+AyDYvw4r0zOnTUStEnoAddZA/bxugNzGqQGVhJU7Ol++0h
 5Osfqbjw8tPE1RdakHBsuXx14jvJn85DoJ0Ntqx9DGnbyynFHYOFtsIX8CZftNLXvQ8Z
 vWXw09L3zFsQHEEqVpQNpsIsQ7CB2+qXS6RZqfxwVblnc+q86BmD6Kiqn6fzBXRUVUrG
 uLDA==
X-Gm-Message-State: APjAAAUj7CfM03NwfR6427EU4+sOAGcZaTOXCTz/Z/xbhBgJ7XseXVZk
 SWRQ93f5V1CiMsulqr9vk3tXnGb/wXbimzNZ0ml20T7y3tqZp6fGMu12u8CtDBtDLCDymfQDXhe
 LrPMzGURIc6JA1S6LBwaA
X-Received: by 2002:a63:a508:: with SMTP id n8mr5357177pgf.278.1575491613892; 
 Wed, 04 Dec 2019 12:33:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZ8ga+0nB8RcZ015GxrcjdELQpTQGHI2J3TBcNJcfd2TECtitej4fzrQmYOQ8647WmvK++NA==
X-Received: by 2002:a63:a508:: with SMTP id n8mr5357147pgf.278.1575491613580; 
 Wed, 04 Dec 2019 12:33:33 -0800 (PST)
Received: from localhost.localdomain ([122.177.160.143])
 by smtp.gmail.com with ESMTPSA id k4sm1789624pfk.11.2019.12.04.12.33.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 12:33:32 -0800 (PST)
Subject: Re: [PATCH v2 1/3] libfdt: define UINT32_MAX in libfdt_env.h
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, robh+dt@kernel.org, frowand.list@gmail.com
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
 <20191114051510.17037-2-takahiro.akashi@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <aa35893d-fadc-be2a-1295-a986ced017fe@redhat.com>
Date: Thu, 5 Dec 2019 02:03:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191114051510.17037-2-takahiro.akashi@linaro.org>
Content-Language: en-US
X-MC-Unique: es9U28o1PH2dRgMUf3bz1w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_123339_469319_D466EC41 
X-CRM114-Status: GOOD (  17.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: james.morse@arm.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Akashi,

On 11/14/2019 10:45 AM, AKASHI Takahiro wrote:
> In the implementation of kexec_file_load-based kdump for arm64,
> fdt_appendprop_addrrange() will be used, but fdt_addresses.c
> will fail to compile due to missing UINT32_MAX.
> 
> So just define it in libfdt_env.h.
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Frank Rowand <frowand.list@gmail.com>
> ---
>   include/linux/libfdt_env.h | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
> index edb0f0c30904..9ca00f11d9b1 100644
> --- a/include/linux/libfdt_env.h
> +++ b/include/linux/libfdt_env.h
> @@ -3,6 +3,7 @@
>   #define LIBFDT_ENV_H
>   
>   #include <linux/kernel.h>	/* For INT_MAX */
> +#include <linux/limits.h>	/* For UINT32_MAX */
>   #include <linux/string.h>
>   
>   #include <asm/byteorder.h>
> @@ -11,6 +12,8 @@ typedef __be16 fdt16_t;
>   typedef __be32 fdt32_t;
>   typedef __be64 fdt64_t;
>   
> +#define UINT32_MAX U32_MAX
> +
>   #define fdt32_to_cpu(x) be32_to_cpu(x)
>   #define cpu_to_fdt32(x) cpu_to_be32(x)
>   #define fdt64_to_cpu(x) be64_to_cpu(x)
> 

With following upstream patches accepted already in Linus's tree (see 
[0] and [1]), so we can drop this patch from the v3:

[0] 26ed19adbab1 ("libfdt: reduce the number of headers included from 
libfdt_env.h")
[1] a8de1304b7df ("libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h")

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
