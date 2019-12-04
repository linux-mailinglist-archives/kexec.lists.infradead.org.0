Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8B61130A3
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 18:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzQLECvhRtfnTZpAK33sQnLOIgisFUhlMeaFPV2DROQ=; b=FZFqHfHflKs6E0
	AlHj8UVoQFeu31cTFpMNTe+2I/vLoflSUZ+5k5fL9dtOnliwJrP7dLG+KURSRAlKe4WUIkYIuF705
	srnAzRT5eTAkQt9kvM/nbPTc2RfneOzeAxg9J53DH84t9fBRCXQxlGuY9U1jrGJOUJc7q/V7+JBf/
	vE4dZy7Bft2S/ccS+iQFJqFUmRpp/AEGNb1lb/INSVCdGdcHtAzY6dUbJyakVi3/uqqKHzRB5BvMr
	UjzVK7lKHkoPM+8VTH6lTowkYx26MKKZU2eh3T5WqCSRBcUripyWUDK7UE5rnqLa5Tu5soVWMDTf9
	LKricCsyAAIcRqs3X97A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icYHn-0003qa-Jw; Wed, 04 Dec 2019 17:17:59 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icYHg-0003q5-Q5
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 17:17:54 +0000
Received: by mail-qt1-x844.google.com with SMTP id z22so501758qto.7
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 09:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uJmxSM90BwOzzfnCIuJaV9fTmYo4GaP5ZVkBe3GqlAQ=;
 b=p62RXt/9TccQo8gUT6RUoVqezJF5HJZYGPQFcY/Q0vOTplwkif/Dflq4JNR96iE9Dc
 zd4GIMWIminNeEcO9hrDw9lRTenDYwN/x7MFE9HYNLLq/nT/yEtYDt0La+Lua+/XIhBG
 yLrADh2/j6IEvT5G9vjns0Vb4PPjYg6sP+GTuS3y4xvCmC56h5GuW35lvQFT6Rn0AWP/
 hEzdigz1bErHRa7F7bPstEZEP3kSIK3X/F4AR4OMWWcFdxQzjKrVSlcgi9x5VLmpDS6T
 c/FpvAKgHio3G6Q6LXsz1UfnbO9U+dGxYMfMYboZYFLKLj7O/ExjCp3xSz9nK+JPAtp8
 zKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uJmxSM90BwOzzfnCIuJaV9fTmYo4GaP5ZVkBe3GqlAQ=;
 b=lKnBWmGAfgVBSwKQ62wdfqY9ReujI12ooyh6WuHEP+pPiEo0qPmXvjhJlZb90u9Zbx
 Y0UlwQR6HrONIR78vjzxTxeNhzVqy4+trH1sJuqs0n6gE/pFeEawM7pbwqECndtNGSCm
 WGCm59gV9hEiKbAHc9Wv/NAMRO2kuEbnqfAb/QaVQmqgEYFyRds0qqHZZDgi6uoaN8x1
 r1fxjfyz3ReHMGEdzf18SuMZogR8ulxgpxGp41majbDvlslqLklNVleFdUtI/aGQ/4Bq
 +LmiQ/2bLfd5XV7KhbYA7hWsiCAUbbYr1sN9RVu3V5hJthY+FwB52H9Mn/qCYApA9voN
 PmNg==
X-Gm-Message-State: APjAAAVWIMDkhNBPADJmBxGFQi2yEijzA8T/v17EuSZi2F88IwHF7lhW
 kd1KRXz7qtXJZRQnSM2W/Q==
X-Google-Smtp-Source: APXvYqyFjloF4HHs2p8CJyaWpYiWdOKbFhcP8ySf1aoAj3Li0WFsP5nOT3NwG6pJkCbokqe5UPb+HQ==
X-Received: by 2002:ac8:4509:: with SMTP id q9mr3619553qtn.214.1575479871519; 
 Wed, 04 Dec 2019 09:17:51 -0800 (PST)
Received: from gabell
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id y184sm3950517qkd.128.2019.12.04.09.17.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Dec 2019 09:17:50 -0800 (PST)
Date: Wed, 4 Dec 2019 12:17:44 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] efi/memreserve: register reservations as 'reserved' in
 /proc/iomem
Message-ID: <20191204171744.o3ijdspnelqn5fgd@gabell>
References: <20191204145233.11962-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204145233.11962-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_091752_846155_237EA05D 
X-CRM114-Status: GOOD (  24.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-efi@vger.kernel.org, kexec@lists.infradead.org, james.morse@arm.com,
 d.hatayama@fujitsu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Ard,

Thank you for sending the patch, but unfortunately it doesn't work for the issue...

After applied your patch, the LPI tables are marked as reserved in
/proc/iomem like as:

80300000-a1fdffff : System RAM
  80480000-8134ffff : Kernel code
  81350000-817bffff : reserved
  817c0000-82acffff : Kernel data
  830f0000-830fffff : reserved # Property table
  83480000-83480fff : reserved # Pending table
  83490000-8349ffff : reserved # Pending table

However, kexec tries to allocate memory from System RAM, it doesn't care
the reserved in System RAM.

Following example, kexec allocates memory 0x82ad0000-0x86640000 to locate
the initrd, and LPI tables are also in the memory region, so LPI tables
will be destroyed by kexec reboot.

# kexec -d -l /boot/vmlinuz-5.4.1+ --initrd=/boot/initramfs-5.4.1+.img
...
initrd: base 82ad0000, size 3b67c6fh (62291055)
...
segment[1].mem   = 0x82ad0000
segment[1].memsz = 0x3b70000   # 0x86640000 (== 0x82ad0000 + 0x3b70000)
...

I'm not sure why kexec doesn't care the reserved in System RAM, however,
if the kexec behaivor is right, the LPI tables should not belong to
System RAM.
Like as:

80300000-830effff : System RAM
  80480000-8134ffff : Kernel code
  81350000-817bffff : reserved
  817c0000-82acffff : Kernel data
830f0000-830fffff : reserved # Property table
83480000-83480fff : reserved # Pending table
83490000-8349ffff : reserved # Pending table
834a0000-a1fdffff : System RAM

I don't have ideas to separete LPI tables from System RAM... so I tried
to add a new file to inform the LPI tables to userspace.

Thanks,
Masa

On Wed, Dec 04, 2019 at 02:52:33PM +0000, Ard Biesheuvel wrote:
> Memory regions that are reserved using efi_mem_reserve_persistent()
> are recorded in a special EFI config table which survives kexec,
> allowing the incoming kernel to honour them as well. However,
> such reservations are not visible in /proc/iomem, and so the kexec
> tools that load the incoming kernel and its initrd into memory may
> overwrite these reserved regions before the incoming kernel has a
> chance to reserve them from further use.
> 
> So add these reservations to /proc/iomem as they are created. Note
> that reservations that are inherited from a previous kernel are
> memblock_reserve()'d early on, so they are already visible in
> /proc/iomem.
> 
> Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
> Cc: d.hatayama@fujitsu.com
> Cc: kexec@lists.infradead.org
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  drivers/firmware/efi/efi.c | 29 ++++++++++++++++++--
>  1 file changed, 26 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/efi/efi.c b/drivers/firmware/efi/efi.c
> index d101f072c8f8..fcd82dde23c8 100644
> --- a/drivers/firmware/efi/efi.c
> +++ b/drivers/firmware/efi/efi.c
> @@ -979,6 +979,24 @@ static int __init efi_memreserve_map_root(void)
>  	return 0;
>  }
>  
> +static int efi_mem_reserve_iomem(phys_addr_t addr, u64 size)
> +{
> +	struct resource *res, *parent;
> +
> +	res = kzalloc(sizeof(struct resource), GFP_ATOMIC);
> +	if (!res)
> +		return -ENOMEM;
> +
> +	res->name	= "reserved";
> +	res->flags	= IORESOURCE_MEM;
> +	res->start	= addr;
> +	res->end	= addr + size - 1;
> +
> +	/* we expect a conflict with a 'System RAM' region */
> +	parent = request_resource_conflict(&iomem_resource, res);
> +	return parent ? request_resource(parent, res) : 0;
> +}
> +
>  int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
>  {
>  	struct linux_efi_memreserve *rsv;
> @@ -1001,9 +1019,8 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
>  		if (index < rsv->size) {
>  			rsv->entry[index].base = addr;
>  			rsv->entry[index].size = size;
> -
>  			memunmap(rsv);
> -			return 0;
> +			return efi_mem_reserve_iomem(addr, size);
>  		}
>  		memunmap(rsv);
>  	}
> @@ -1013,6 +1030,12 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
>  	if (!rsv)
>  		return -ENOMEM;
>  
> +	rc = efi_mem_reserve_iomem(__pa(rsv), SZ_4K);
> +	if (rc) {
> +		free_page(rsv);
> +		return rc;
> +	}
> +
>  	/*
>  	 * The memremap() call above assumes that a linux_efi_memreserve entry
>  	 * never crosses a page boundary, so let's ensure that this remains true
> @@ -1029,7 +1052,7 @@ int __ref efi_mem_reserve_persistent(phys_addr_t addr, u64 size)
>  	efi_memreserve_root->next = __pa(rsv);
>  	spin_unlock(&efi_mem_reserve_persistent_lock);
>  
> -	return 0;
> +	return efi_mem_reserve_iomem(addr, size);
>  }
>  
>  static int __init efi_memreserve_root_init(void)
> -- 
> 2.17.1
> 
> 
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
