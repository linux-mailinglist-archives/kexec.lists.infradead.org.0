Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E2511EB79
	for <lists+kexec@lfdr.de>; Fri, 13 Dec 2019 21:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zt3/XEjNVx+78Y7gfOw147S2qousuBIKU/1sXPeEhfw=; b=uRgxSRfC2hICWj
	v4szc1KjVtjl+TwHHIO8QuSgYfYW/F4859LcFQY+YwTtHuyRNjPnB742jv2xxWe3GqViy1BrrVsL7
	HIbeh2KFU8jElZStFiQNzHvB+GbEfmSBTp1Usm+9gXQD3SPqiy5leW1iBV5ej52Er1qF7rYPsi1SD
	UQq9zWK7i2XeOa/xSoAvH3yeLS4FxXd8eelfynqso97Z5Y/WV15068+jKZhRT6Y27FNMNOcbFfCKp
	WGiJ04h9tlVjjcI55Wb8UZD1DOPQ7A0vAKaGu7POHJ3eXj61UWdPjo3INfl+QXlwhEYfvS9BaBZ95
	q4pf8avxahQhz2WLmN2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifrB3-0007DU-CW; Fri, 13 Dec 2019 20:04:41 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrB0-0007Cx-5c
 for kexec@lists.infradead.org; Fri, 13 Dec 2019 20:04:40 +0000
Received: by mail-qk1-x742.google.com with SMTP id x1so193450qkl.12
 for <kexec@lists.infradead.org>; Fri, 13 Dec 2019 12:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ohZuM+qOTYyyV5BP4uWR1e8ZZvKdPZXj20GJxQEVVF0=;
 b=RuMeaMvbR5MRpGECBSroGWzccKos2JFvg3ViV+ixLRzTgYXaqXU+liGJDNr6o9fAwk
 BN3GEIipjACDps8uP48JM4KjgVNSIjWgrMqyF/pXoBD4W/9piCeeSiKJ+guXBbULR6Qh
 A69NT09aTRGB7FsLspq3d7khOFKshtXRU/rnEn/EhjXkFEhO4WCK5E0PwO61n+II5VZ+
 GQspmTvgLMPp1hbbuN26/Juurk+8ChpX4SkiAcL0bCkKEr4n2UAGM8XUWfjPjb0xZB/C
 PjUcHFAeO9wSgqwYsZCVIT8OGSQ/z4Z5vqzDwqnIZOex4LdNyDs4jY6G3qo7h1UGWF19
 UjUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ohZuM+qOTYyyV5BP4uWR1e8ZZvKdPZXj20GJxQEVVF0=;
 b=APXEmVzAj7THOds8mD83Czwfo0VeuwG916lFI0dc4YZOjhu/ezTHAKnFzF4xBDPIF/
 ROE4aYIwuB2LYvjHo/qyeq2R/tbhcwl72QfrTd+AIkKMjBKWPxG1xf1QXof2gW3g4IlV
 Al+QaD3WD1wzdT1HD9M59QxNj9u+e/rUjCr2JdLbsx2Lez44zfQuoOE63QOi0FnoHJa0
 O0f44qnuIB4IofUsLSSSIuOjeee5XfYBNsLJE+jaUh3Lpwm6LSdsusTLeddY5YUUeW8j
 DWyVolaoDe2DPhEcYd5a1xhIA7BxP5cnUHLZZMIga5+uxXgTLDg9BcvOQt+HuUBmm1F0
 fXxQ==
X-Gm-Message-State: APjAAAUXQiVoJoVHjRpDxD1I8JJvuddL0XTBaQjyWYX+pQRMN0EeR9JE
 xlLQh1oWuMbEmhfdbbaNmg==
X-Google-Smtp-Source: APXvYqySMJCEpGBivXRUL2p+mqUWy6VsVI2XDrHC5hLm8C0E1pVXayS0NFK77Cqm3LI7D9mgsibTcA==
X-Received: by 2002:a37:5d1:: with SMTP id 200mr15061918qkf.492.1576267477009; 
 Fri, 13 Dec 2019 12:04:37 -0800 (PST)
Received: from gabell (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id l62sm3163699qke.12.2019.12.13.12.04.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Dec 2019 12:04:36 -0800 (PST)
Date: Fri, 13 Dec 2019 15:04:30 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: AKASHI Takahiro <takahiro.akashi@linaro.org>
Subject: Re: [PATCH v2 2/3] arm64: kexec: allocate memory space avoiding
 reserved regions
Message-ID: <20191213200430.uxuebdavpq64scfh@gabell>
References: <20190111095946.28070-1-takahiro.akashi@linaro.org>
 <20190111095946.28070-3-takahiro.akashi@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190111095946.28070-3-takahiro.akashi@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_120438_212634_AC8E6712 
X-CRM114-Status: GOOD (  25.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org, Bhupesh Sharma <bhsharma@redhat.com>,
 Simon Horman <horms@verge.net.au>, James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

some nits as below:

On Fri, Jan 11, 2019 at 06:59:45PM +0900, AKASHI Takahiro wrote:
> On UEFI/ACPI-only system, some memory regions, including but not limited
> to UEFI memory map and ACPI tables, must be preserved across kexec'ing.
> Otherwise, they can be corrupted and result in early failure in booting
> a new kernel.
> 
> In recent kernels, /proc/iomem now has an extended file format like:
> 	40000000-5871ffff : System RAM
> 	  41800000-426affff : Kernel code
> 	  426b0000-42aaffff : reserved
> 	  42ab0000-42c64fff : Kernel data
> 	  54400000-583fffff : Crash kernel
> 	  58590000-585effff : reserved
> 	  58700000-5871ffff : reserved
> 	58720000-58b5ffff : reserved
> 	58b60000-5be3ffff : System RAM
> 	  58b61000-58b61fff : reserved
> 	  59a77000-59a77fff : reserved
> 	5be40000-5becffff : reserved
> 	5bed0000-5bedffff : System RAM
> 	5bee0000-5bffffff : reserved
> 	5c000000-5fffffff : System RAM
> 	  5da00000-5e9fffff : reserved
> 	  5ec00000-5edfffff : reserved
> 	  5ef6a000-5ef6afff : reserved
> 	  5ef6b000-5efcafff : reserved
> 	  5efcd000-5efcffff : reserved
> 	  5efd0000-5effffff : reserved
> 	  5f000000-5fffffff : reserved
> 
> where the "reserved" entries at the top level or under System RAM (and
> its descendant resources) are ones of such kind and should not be regarded
> as usable memory ranges where several free spaces for loading kexec data
> will be allocated.
> 
> With this patch, get_memory_ranges() will handle this format of file
> correctly. Note that, for safety, unknown regions, in addition to
> "reserved" ones, will also be excluded.
> 
> Signed-off-by: AKASHI Takahiro <takahiro.akashi at linaro.org>
> ---
>  kexec/arch/arm64/kexec-arm64.c | 146 ++++++++++++++++++++-------------
>  1 file changed, 87 insertions(+), 59 deletions(-)
> 
> diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
> index 1cde75d1a771..2e923b54f5b1 100644
> --- a/kexec/arch/arm64/kexec-arm64.c
> +++ b/kexec/arch/arm64/kexec-arm64.c
> @@ -10,7 +10,9 @@
>  #include <inttypes.h>
>  #include <libfdt.h>
>  #include <limits.h>
> +#include <stdio.h>
>  #include <stdlib.h>
> +#include <string.h>
>  #include <sys/stat.h>
>  #include <linux/elf-em.h>
>  #include <elf.h>
> @@ -29,6 +31,7 @@
>  #include "fs2dt.h"
>  #include "iomem.h"
>  #include "kexec-syscall.h"
> +#include "mem_regions.h"
>  #include "arch/options.h"
>  
>  #define ROOT_NODE_ADDR_CELLS_DEFAULT 1
> @@ -899,19 +902,33 @@ int get_phys_base_from_pt_load(unsigned long *phys_offset)
>  	return 0;
>  }
>  
> +static bool to_be_excluded(char *str)
> +{
> +	if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)) ||
> +	    !strncmp(str, KERNEL_CODE, strlen(KERNEL_CODE)) ||
> +	    !strncmp(str, KERNEL_DATA, strlen(KERNEL_DATA)) ||
> +	    !strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)))
> +		return false;
> +	else
> +		return true;
> +}
> +
>  /**
> - * get_memory_ranges_iomem_cb - Helper for get_memory_ranges_iomem.
> + * get_memory_ranges - Try to get the memory ranges from
> + * /proc/iomem.
>   */
> -
> -static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
> -	unsigned long long base, unsigned long long length)
> +int get_memory_ranges(struct memory_range **range, int *ranges,
> +	unsigned long kexec_flags)
>  {
> -	int ret;
>  	unsigned long phys_offset = UINT64_MAX;
> -	struct memory_range *r;
> -
> -	if (nr >= KEXEC_SEGMENT_MAX)
> -		return -1;
> +	FILE *fp;
> +	const char *iomem = proc_iomem();
> +	char line[MAX_LINE], *str;
> +	unsigned long long start, end;
> +	int n, consumed;
> +	struct memory_ranges memranges;
> +	struct memory_range *last, excl_range;
> +	int ret;
>  
>  	if (!try_read_phys_offset_from_kcore) {
>  		/* Since kernel version 4.19, 'kcore' contains
> @@ -945,17 +962,65 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
>  		try_read_phys_offset_from_kcore = true;
>  	}
>  
> -	r = (struct memory_range *)data + nr;
> +	fp = fopen(iomem, "r");
> +	if (!fp)
> +		die("Cannot open %s\n", iomem);
> +
> +	memranges.ranges = NULL;
> +	memranges.size = memranges.max_size  = 0;
> +
> +	while (fgets(line, sizeof(line), fp) != 0) {
> +		n = sscanf(line, "%llx-%llx : %n", &start, &end, &consumed);
> +		if (n != 2)
> +			continue;
> +		str = line + consumed;
> +
> +		if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM))) {
> +			ret = mem_regions_alloc_and_add(&memranges,
> +					start, end - start + 1, RANGE_RAM);
> +			if (ret) {
> +				fprintf(stderr,
> +					"Cannot allocate memory for ranges\n");

				fclose(fp);

> +				return -ENOMEM;
> +			}
>  
> -	if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)))
> -		r->type = RANGE_RAM;
> -	else if (!strncmp(str, IOMEM_RESERVED, strlen(IOMEM_RESERVED)))
> -		r->type = RANGE_RESERVED;
> -	else
> -		return 1;
> +			dbgprintf("%s:+[%d] %016llx - %016llx\n", __func__,
> +				memranges.size - 1,
> +				memranges.ranges[memranges.size - 1].start,
> +				memranges.ranges[memranges.size - 1].end);
> +		} else if (to_be_excluded(str)) {
> +			if (!memranges.size)
> +				continue;
> +
> +			/*
> +			 * Note: mem_regions_exclude() doesn't guarantee
> +			 * that the ranges are sorted out, but as long as
> +			 * we cope with /proc/iomem, we only operate on
> +			 * the last entry and so it is safe.
> +			 */
>  
> -	r->start = base;
> -	r->end = base + length - 1;
> +			/* The last System RAM range */
> +			last = &memranges.ranges[memranges.size - 1];
> +
> +			if (last->end < start)
> +				/* New resource outside of System RAM */
> +				continue;
> +			if (end < last->start)
> +				/* Already excluded by parent resource */
> +				continue;
> +
> +			excl_range.start = start;
> +			excl_range.end = end;

> +			mem_regions_alloc_and_exclude(&memranges, &excl_range);
			ret = mem_regions_alloc_and_exclude(&memranges, &excl_range);
			if (ret) {
				fprintf(stderr,
					"Cannot allocate memory for ranges (exclude)\n");
				fclose(fp);
				return -ENOMEM;
			}

Thanks,
Masa

> +			dbgprintf("%s:-      %016llx - %016llx\n",
> +					__func__, start, end);
> +		}
> +	}
> +
> +	fclose(fp);
> +
> +	*range = memranges.ranges;
> +	*ranges = memranges.size;
>  
>  	/* As a fallback option, we can try determining the PHYS_OFFSET
>  	 * value from the '/proc/iomem' entries as well.
> @@ -976,52 +1041,15 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
>  	 * between the user-space and kernel space 'PHYS_OFFSET'
>  	 * value.
>  	 */
> -	set_phys_offset(r->start, "iomem");
> +	if (memranges.size)
> +		set_phys_offset(memranges.ranges[0].start, "iomem");
>  
> -	dbgprintf("%s: %016llx - %016llx : %s", __func__, r->start,
> -		r->end, str);
> +	dbgprint_mem_range("System RAM ranges;",
> +				memranges.ranges, memranges.size);
>  
>  	return 0;
>  }
>  
> -/**
> - * get_memory_ranges_iomem - Try to get the memory ranges from
> - * /proc/iomem.
> - */
> -
> -static int get_memory_ranges_iomem(struct memory_range *array,
> -	unsigned int *count)
> -{
> -	*count = kexec_iomem_for_each_line(NULL,
> -		get_memory_ranges_iomem_cb, array);
> -
> -	if (!*count) {
> -		dbgprintf("%s: failed: No RAM found.\n", __func__);
> -		return EFAILED;
> -	}
> -
> -	return 0;
> -}
> -
> -/**
> - * get_memory_ranges - Try to get the memory ranges some how.
> - */
> -
> -int get_memory_ranges(struct memory_range **range, int *ranges,
> -	unsigned long kexec_flags)
> -{
> -	static struct memory_range array[KEXEC_SEGMENT_MAX];
> -	unsigned int count;
> -	int result;
> -
> -	result = get_memory_ranges_iomem(array, &count);
> -
> -	*range = result ? NULL : array;
> -	*ranges = result ? 0 : count;
> -
> -	return result;
> -}
> -
>  int arch_compat_trampoline(struct kexec_info *info)
>  {
>  	return 0;
> -- 
> 2.19.1
> 
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
