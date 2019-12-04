Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947951136A3
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 21:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RsX1GM5br2MRBaicZmvDU401NdL5aCJaIth87DzgSyM=; b=NUmqYbm3DK/PKC37IOW1XYtWB
	l0v2+43AHgcHayYgvcin//NzkGfMmQaGNQA4CSNoxadHtqaOOrxQgGZWV23wJRJrBe+hdkNowAqUc
	9Y30jSJzB+VZFGzb3wVSRoWJSGwrSZFbgicSJhr8VmFaEqtg7gJL20Zq3Z8sVWkax1p60mOBfmO5Y
	UwjQaHlGP7gBB1wWp7RGoq2Z2Ee6ZCvfPbaMXdqUF/Ick09CPxEJYVXBcc3Ue1m8iN6+zkOCSInCr
	LKaQljZi5cdpz+CDVzLN4ieUwSTn8o8/3ghOkiVrxjtQY1n+MurVclG7HEFFbZuwVsR3En+cL6K5o
	PkfdBEAtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbVc-0002CN-T8; Wed, 04 Dec 2019 20:44:28 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbVY-0002BE-Ts
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 20:44:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575492263;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iGKzM/L1KdTMS1T02YArhRfBu3OmO5dNN7xPVcxWihg=;
 b=ZrG07GUj39U1pMA6lZXyGVeW8L9S2d5VzU41DRb5ULxYYHK4lYwFmfmgaGPwDdKn0wx3HK
 fxp7mRzPpKeEsyGAq1S2QqWy0YsLXdzcfKlej+r/qyrclY4Ncft8BS+m//jDlKQ5y/l3Qu
 YOsFYBwc0X79TapKfLQihIAneQ0pCOk=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-SyGb97CONiGcVIW6pTwsbg-1; Wed, 04 Dec 2019 15:44:21 -0500
Received: by mail-pj1-f71.google.com with SMTP id s3so504809pji.18
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 12:44:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iGKzM/L1KdTMS1T02YArhRfBu3OmO5dNN7xPVcxWihg=;
 b=Fyyvf6rsZWHK98MHgpkrLln3bnnENt41qkQcBsw/0dZpQrQJWX/mWYFNgvWtj1t2FF
 lOBoTUeLFVrkcDyQKUHLcyEzIG95YOI2khArX40hit6L16Tf29/QKZnrLdGbjNpq9R6m
 Ba6cyrNVXl+lFj+TAHevDAJE604uOMRawfBdl67wQRiJdpbYhPBCw9MhUDYZ2Q00xkIJ
 atWFOBsi8RpiGNTrphJLcD726E/A74cO6ZsVdc5cOXL9G8UochYNyUSub0x3hzqjTPko
 ZSlT0HTkTnTTjVOa1q2dzZc8IakC2ZWjC8VvKS88olJ9/lbJUfPlI2wJgfgJVEV9+iln
 GToA==
X-Gm-Message-State: APjAAAU+sMdESQ9AnkLSS3ar7tggrLuEKZABRwbpfJbs92W9moHN3QzI
 7FuvpAi7GgaHp0ecv/7SvulDP8a/dPigmPqUitIdngW8Jwz7gIzmpUIFflOzRsscq7W4BUQ8p/3
 ZeEggg5nqFGdhFLqayqr6
X-Received: by 2002:a65:654d:: with SMTP id a13mr5652893pgw.141.1575492260346; 
 Wed, 04 Dec 2019 12:44:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqw3rOvu9SsHFYYL6e8uTq4jA6Asl2mLRDqYHkAihg8vtLjHcoJOaa36R4HQLLLwWjYPmwUmHw==
X-Received: by 2002:a65:654d:: with SMTP id a13mr5652874pgw.141.1575492259934; 
 Wed, 04 Dec 2019 12:44:19 -0800 (PST)
Received: from localhost.localdomain ([122.177.160.143])
 by smtp.gmail.com with ESMTPSA id b11sm8979596pfd.83.2019.12.04.12.44.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 12:44:19 -0800 (PST)
Subject: Re: [PATCH v2 3/3] arm64: kexec_file: add crash dump support
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, catalin.marinas@arm.com,
 will.deacon@arm.com, robh+dt@kernel.org, frowand.list@gmail.com
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
 <20191114051510.17037-4-takahiro.akashi@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <679aba8b-c03d-8a15-46f1-3dc158c24fe9@redhat.com>
Date: Thu, 5 Dec 2019 02:14:14 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20191114051510.17037-4-takahiro.akashi@linaro.org>
Content-Language: en-US
X-MC-Unique: SyGb97CONiGcVIW6pTwsbg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_124425_048493_AD491942 
X-CRM114-Status: GOOD (  25.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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

On 11/14/2019 10:45 AM, AKASHI Takahiro wrote:
> Enabling crash dump (kdump) includes
> * prepare contents of ELF header of a core dump file, /proc/vmcore,
>    using crash_prepare_elf64_headers(), and
> * add two device tree properties, "linux,usable-memory-range" and
>    "linux,elfcorehdr", which represent respectively a memory range
>    to be used by crash dump kernel and the header's location
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Reviewed-by: James Morse <james.morse@arm.com>
> ---
>   arch/arm64/include/asm/kexec.h         |   4 +
>   arch/arm64/kernel/kexec_image.c        |   4 -
>   arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
>   3 files changed, 106 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> index 12a561a54128..d24b527e8c00 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
>   struct kimage_arch {
>   	void *dtb;
>   	unsigned long dtb_mem;
> +	/* Core ELF header buffer */
> +	void *elf_headers;
> +	unsigned long elf_headers_mem;
> +	unsigned long elf_headers_sz;
>   };
>   
>   extern const struct kexec_file_ops kexec_image_ops;
> diff --git a/arch/arm64/kernel/kexec_image.c b/arch/arm64/kernel/kexec_image.c
> index 29a9428486a5..af9987c154ca 100644
> --- a/arch/arm64/kernel/kexec_image.c
> +++ b/arch/arm64/kernel/kexec_image.c
> @@ -47,10 +47,6 @@ static void *image_load(struct kimage *image,
>   	struct kexec_segment *kernel_segment;
>   	int ret;
>   
> -	/* We don't support crash kernels yet. */
> -	if (image->type == KEXEC_TYPE_CRASH)
> -		return ERR_PTR(-EOPNOTSUPP);
> -
>   	/*
>   	 * We require a kernel with an unambiguous Image header. Per
>   	 * Documentation/arm64/booting.rst, this is the case when image_size
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index 7b08bf9499b6..f1d1bb895fd2 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -17,12 +17,15 @@
>   #include <linux/memblock.h>
>   #include <linux/of_fdt.h>
>   #include <linux/random.h>
> +#include <linux/slab.h>
>   #include <linux/string.h>
>   #include <linux/types.h>
>   #include <linux/vmalloc.h>
>   #include <asm/byteorder.h>
>   
>   /* relevant device tree properties */
> +#define FDT_PROP_KEXEC_ELFHDR	"linux,elfcorehdr"
> +#define FDT_PROP_MEM_RANGE	"linux,usable-memory-range"
>   #define FDT_PROP_INITRD_START	"linux,initrd-start"
>   #define FDT_PROP_INITRD_END	"linux,initrd-end"
>   #define FDT_PROP_BOOTARGS	"bootargs"
> @@ -40,6 +43,10 @@ int arch_kimage_file_post_load_cleanup(struct kimage *image)
>   	vfree(image->arch.dtb);
>   	image->arch.dtb = NULL;
>   
> +	vfree(image->arch.elf_headers);
> +	image->arch.elf_headers = NULL;
> +	image->arch.elf_headers_sz = 0;
> +
>   	return kexec_image_post_load_cleanup_default(image);
>   }
>   
> @@ -55,6 +62,31 @@ static int setup_dtb(struct kimage *image,
>   
>   	off = ret;
>   
> +	ret = fdt_delprop(dtb, off, FDT_PROP_KEXEC_ELFHDR);
> +	if (ret && ret != -FDT_ERR_NOTFOUND)
> +		goto out;
> +	ret = fdt_delprop(dtb, off, FDT_PROP_MEM_RANGE);
> +	if (ret && ret != -FDT_ERR_NOTFOUND)
> +		goto out;
> +
> +	if (image->type == KEXEC_TYPE_CRASH) {
> +		/* add linux,elfcorehdr */
> +		ret = fdt_appendprop_addrrange(dtb, 0, off,
> +				FDT_PROP_KEXEC_ELFHDR,
> +				image->arch.elf_headers_mem,
> +				image->arch.elf_headers_sz);
> +		if (ret)
> +			return (ret == -FDT_ERR_NOSPACE ? -ENOMEM : -EINVAL);
> +
> +		/* add linux,usable-memory-range */
> +		ret = fdt_appendprop_addrrange(dtb, 0, off,
> +				FDT_PROP_MEM_RANGE,
> +				crashk_res.start,
> +				crashk_res.end - crashk_res.start + 1);
> +		if (ret)
> +			return (ret == -FDT_ERR_NOSPACE ? -ENOMEM : -EINVAL);
> +	}
> +
>   	/* add bootargs */
>   	if (cmdline) {
>   		ret = fdt_setprop_string(dtb, off, FDT_PROP_BOOTARGS, cmdline);
> @@ -125,8 +157,8 @@ static int setup_dtb(struct kimage *image,
>   }
>   
>   /*
> - * More space needed so that we can add initrd, bootargs, kaslr-seed, and
> - * rng-seed.
> + * More space needed so that we can add initrd, bootargs, kaslr-seed,
> + * rng-seed, userable-memory-range and elfcorehdr.

nitpick:
s/userable-memory-range/usable-memory-range

>    */
>   #define DTB_EXTRA_SPACE 0x1000
>   
> @@ -174,6 +206,43 @@ static int create_dtb(struct kimage *image,
>   	}
>   }
>   
> +static int prepare_elf_headers(void **addr, unsigned long *sz)
> +{
> +	struct crash_mem *cmem;
> +	unsigned int nr_ranges;
> +	int ret;
> +	u64 i;
> +	phys_addr_t start, end;
> +
> +	nr_ranges = 1; /* for exclusion of crashkernel region */
> +	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
> +					MEMBLOCK_NONE, &start, &end, NULL)
> +		nr_ranges++;
> +
> +	cmem = kmalloc(sizeof(struct crash_mem) +
> +			sizeof(struct crash_mem_range) * nr_ranges, GFP_KERNEL);
> +	if (!cmem)
> +		return -ENOMEM;
> +
> +	cmem->max_nr_ranges = nr_ranges;
> +	cmem->nr_ranges = 0;
> +	for_each_mem_range(i, &memblock.memory, NULL, NUMA_NO_NODE,
> +					MEMBLOCK_NONE, &start, &end, NULL) {
> +		cmem->ranges[cmem->nr_ranges].start = start;
> +		cmem->ranges[cmem->nr_ranges].end = end - 1;
> +		cmem->nr_ranges++;
> +	}
> +
> +	/* Exclude crashkernel region */
> +	ret = crash_exclude_mem_range(cmem, crashk_res.start, crashk_res.end);
> +
> +	if (!ret)
> +		ret =  crash_prepare_elf64_headers(cmem, true, addr, sz);
> +
> +	kfree(cmem);
> +	return ret;
> +}
> +
>   int load_other_segments(struct kimage *image,
>   			unsigned long kernel_load_addr,
>   			unsigned long kernel_size,
> @@ -181,14 +250,43 @@ int load_other_segments(struct kimage *image,
>   			char *cmdline)
>   {
>   	struct kexec_buf kbuf;
> -	void *dtb = NULL;
> -	unsigned long initrd_load_addr = 0, dtb_len;
> +	void *headers, *dtb = NULL;
> +	unsigned long headers_sz, initrd_load_addr = 0, dtb_len;
>   	int ret = 0;
>   
>   	kbuf.image = image;
>   	/* not allocate anything below the kernel */
>   	kbuf.buf_min = kernel_load_addr + kernel_size;
>   
> +	/* load elf core header */
> +	if (image->type == KEXEC_TYPE_CRASH) {
> +		ret = prepare_elf_headers(&headers, &headers_sz);
> +		if (ret) {
> +			pr_err("Preparing elf core header failed\n");
> +			goto out_err;
> +		}
> +
> +		kbuf.buffer = headers;
> +		kbuf.bufsz = headers_sz;
> +		kbuf.mem = 0;

With commit c19d050f8088 ("arm64/kexec: Use consistent convention of 
initializing 'kxec_buf.mem' with KEXEC_BUF_MEM_UNKNOWN"), we are trying 
to standardize the way of setting up initial value of 'kbuf.mem'. So we 
can use the following notion (in v3?) instead:
		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;

> +		kbuf.memsz = headers_sz;
> +		kbuf.buf_align = SZ_64K; /* largest supported page size */
> +		kbuf.buf_max = ULONG_MAX;
> +		kbuf.top_down = true;
> +
> +		ret = kexec_add_buffer(&kbuf);
> +		if (ret) {
> +			vfree(headers);
> +			goto out_err;
> +		}
> +		image->arch.elf_headers = headers;
> +		image->arch.elf_headers_mem = kbuf.mem;
> +		image->arch.elf_headers_sz = headers_sz;
> +
> +		pr_debug("Loaded elf core header at 0x%lx bufsz=0x%lx memsz=0x%lx\n",
> +			 image->arch.elf_headers_mem, headers_sz, headers_sz);
> +	}
> +
>   	/* load initrd */
>   	if (initrd) {
>   		kbuf.buffer = initrd;
> 

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
