Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F35F3CF0E4
	for <lists+kexec@lfdr.de>; Tue,  8 Oct 2019 04:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lM7eL0kqy2NJeYTvJWZrsSNZaXeTVj5Pp0lLyNf2by4=; b=Q4+P25gsd2qxJG
	JMdjZc6crIOjxGZ4Y2n6HMypAonvmCFkkTiQ0zSloRcUA5w9oU6yhaqkknHeDjUrbvy7AxvbHD2KQ
	jVw0cESMh5dTQTzC9s4K5XYQ+RJ5Q5G5/zsrcsAyXK/FXf7/X3PTEk5Eq0Y8518NPkk8nk2NeaYKN
	iEGEtcWZ32/6Jy4AiI3jIQPp0TtT+JnyxT2ywIq4pe6I2EfZLdPglHexGzYsHtYqFf4ZlY35w0Mqz
	vC2Hwn1GgK3sQ5/s5fDWPfkEMuGWT7OZsA3XDu3GA2Nk12bC3W2yt/EvUxrOfUVfupCUz77NkejWE
	qZ/AFQMvuTr35EfgeOLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHfUj-0002at-Ir; Tue, 08 Oct 2019 02:45:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHfUg-0002Zi-Cb
 for kexec@lists.infradead.org; Tue, 08 Oct 2019 02:45:00 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E755319CFF5;
 Tue,  8 Oct 2019 02:44:52 +0000 (UTC)
Received: from localhost (ovpn-12-34.pek2.redhat.com [10.72.12.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CEAE35D9CD;
 Tue,  8 Oct 2019 02:44:49 +0000 (UTC)
Date: Tue, 8 Oct 2019 10:44:47 +0800
From: Baoquan He <bhe@redhat.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] x86/kdump: Fix 'kmem -s' reported an invalid
 freepointer when SME was active
Message-ID: <20191008024447.GL31919@MiWiFi-R3L-srv>
References: <20191007070844.15935-1-lijiang@redhat.com>
 <20191007093338.GA4710@dhcp-128-65.nay.redhat.com>
 <e179c616-f427-769f-aa5b-058c63040015@redhat.com>
 <87bluseaz2.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87bluseaz2.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Tue, 08 Oct 2019 02:44:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_194458_469703_A9617C9F 
X-CRM114-Status: GOOD (  31.05  )
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, lijiang <lijiang@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 tglx@linutronix.de, Dave Young <dyoung@redhat.com>, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 10/07/19 at 12:12pm, Eric W. Biederman wrote:
> This has only been boot tested but I think this is about what we need.
> 
> I feel like I haven't found and deleted all of the backup region code.
> 
> I think it is important to have the reservation code in reseve_real_mode
> as the logic is fundamentally intertwined.
> 
> Eric
> 
> 
> From: "Eric W. Biederman" <ebiederm@xmission.com>
> Date: Mon, 7 Oct 2019 11:57:24 -0500
> Subject: [PATCH] x86/kexec: Always reserve the low 1MiB
> 
> When the crashkernel kernel command line option is specified always
> reserve the low 1MiB.    That way it does not need to be included
> in crash dumps or used for anything execept the processor trampolines
> that must live in the low 1MiB.
> 
> The current handling of copying the low 1MiB runs into problems when
> SME is active.  So just simplify everything and make it unnecessary
> to do anything with the low 1MiB.
> 
> This comes at a cost of 640KiB.  But when crash kernels need 32MiB or
> more to run this isn't much more, and it makes everything much more
> reliable.
> 
> Signed-off-by: "Eric W. Biederman" <ebiederm@xmission.com>
> ---
>  arch/x86/include/asm/kexec.h   |  4 ----
>  arch/x86/kernel/crash.c        | 19 -------------------
>  arch/x86/purgatory/purgatory.c | 15 ---------------
>  arch/x86/realmode/init.c       | 10 ++++++++++
>  4 files changed, 10 insertions(+), 38 deletions(-)
> 
> diff --git a/arch/x86/include/asm/kexec.h b/arch/x86/include/asm/kexec.h
> index 5e7d6b46de97..e36307ac324d 100644
> --- a/arch/x86/include/asm/kexec.h
> +++ b/arch/x86/include/asm/kexec.h
> @@ -66,10 +66,6 @@ struct kimage;
>  # define KEXEC_ARCH KEXEC_ARCH_X86_64
>  #endif
>  
> -/* Memory to backup during crash kdump */
> -#define KEXEC_BACKUP_SRC_START	(0UL)
> -#define KEXEC_BACKUP_SRC_END	(640 * 1024UL - 1)	/* 640K */
> -
>  /*
>   * This function is responsible for capturing register states if coming
>   * via panic otherwise just fix up the ss and sp if coming via kernel
> diff --git a/arch/x86/kernel/crash.c b/arch/x86/kernel/crash.c
> index eb651fbde92a..dc4773d2f4a6 100644
> --- a/arch/x86/kernel/crash.c
> +++ b/arch/x86/kernel/crash.c
> @@ -409,31 +409,12 @@ int crash_setup_memmap_entries(struct kimage *image, struct boot_params *params)
>  	return ret;
>  }
>  
> -static int determine_backup_region(struct resource *res, void *arg)
> -{
> -	struct kimage *image = arg;
> -
> -	image->arch.backup_src_start = res->start;
> -	image->arch.backup_src_sz = resource_size(res);
> -
> -	/* Expecting only one range for backup region */
> -	return 1;
> -}
> -
>  int crash_load_segments(struct kimage *image)
>  {
>  	int ret;
>  	struct kexec_buf kbuf = { .image = image, .buf_min = 0,
>  				  .buf_max = ULONG_MAX, .top_down = false };
>  
> -	/*
> -	 * Determine and load a segment for backup area. First 640K RAM
> -	 * region is backup source
> -	 */
> -
> -	ret = walk_system_ram_res(KEXEC_BACKUP_SRC_START, KEXEC_BACKUP_SRC_END,
> -				image, determine_backup_region);
> -
>  	/* Zero or postive return values are ok */
>  	if (ret < 0)
>  		return ret;
> diff --git a/arch/x86/purgatory/purgatory.c b/arch/x86/purgatory/purgatory.c
> index 3b95410ff0f8..448de04703ba 100644
> --- a/arch/x86/purgatory/purgatory.c
> +++ b/arch/x86/purgatory/purgatory.c
> @@ -22,20 +22,6 @@ u8 purgatory_sha256_digest[SHA256_DIGEST_SIZE] __section(.kexec-purgatory);
>  
>  struct kexec_sha_region purgatory_sha_regions[KEXEC_SEGMENT_MAX] __section(.kexec-purgatory);
>  
> -/*
> - * On x86, second kernel requries first 640K of memory to boot. Copy
> - * first 640K to a backup region in reserved memory range so that second
> - * kernel can use first 640K.
> - */
> -static int copy_backup_region(void)
> -{
> -	if (purgatory_backup_dest) {
> -		memcpy((void *)purgatory_backup_dest,
> -		       (void *)purgatory_backup_src, purgatory_backup_sz);
> -	}
> -	return 0;
> -}
> -
>  static int verify_sha256_digest(void)
>  {
>  	struct kexec_sha_region *ptr, *end;
> @@ -66,7 +52,6 @@ void purgatory(void)
>  		for (;;)
>  			;
>  	}
> -	copy_backup_region();
>  }
>  
>  /*
> diff --git a/arch/x86/realmode/init.c b/arch/x86/realmode/init.c
> index 7dce39c8c034..76c680ad23a1 100644
> --- a/arch/x86/realmode/init.c
> +++ b/arch/x86/realmode/init.c
> @@ -34,6 +34,16 @@ void __init reserve_real_mode(void)
>  
>  	memblock_reserve(mem, size);
>  	set_real_mode_mem(mem);
> +
> +#ifdef CONFIG_KEXEC_CORE
> +	/* When crashkernel is specified only use the low 1MiB for the
> +	 * real mode trampolines.
> +	 */
> +	if (strstr(boot_command_line, "crashkernel=")) {
> +		memblock_reserve(0, 1<<20);
> +		pr_info("Reserving low 1MiB of memory for crashkernel\n");
> +	}

Reserving low 1M looks good to me. The memblock reserved pages won't
enter into buddy allocator, unless they are freed explicitly with
memblock_free() later.
> +#endif /* CONFIG_KEXEC_CORE */

I doubt this patch can work in kdump kernel booting. Because the low 1MB
is not passed to kdump kernel as system RAM, please check below code.

/* Prepare memory map for crash dump kernel */
int crash_setup_memmap_entries(struct kimage *image, struct boot_params *params)
{
......

        /* Add first 640K segment */                                                                                                              
        ei.addr = image->arch.backup_src_start;
        ei.size = image->arch.backup_src_sz;
        ei.type = E820_TYPE_RAM;
        add_e820_entry(params, &ei);

......
}

You can see that image->arch.backup_src_start/backup_src_sz are zero.
Lianbo will take a test to check.

Thanks
Baoquan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
