Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F5BE6B6A
	for <lists+kexec@lfdr.de>; Mon, 28 Oct 2019 04:19:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygJp7iZl6YvydCKoSF1cVdmPIPtE+eX4/CweGdsMbcI=; b=jwQxHXDc64KNsx
	Fy/WU1LUb/FIrsMjWmv2kER/eQOT4cyfaM3JFGTKB7tAxRRkLIgyn5SEaalH4YRofL27R0cKdZ8Nx
	nzB/FzwBEdaXCztDIfjcx+pbJslzgiF7TvS7BEvlwW2OiWMWcwAmouLA2yVUUMMIhAoy3+Q4bjrkl
	O9QPMe7WS9nkqtZTMzFFV8EdBRhuW/k9n1NgxPWDZOJJsm+XX9Y32hwrdb9DHd903rqLYxgVkOJvB
	JevsOyGz2a0oEHe1car1R8LbgDdDaZ88qAql3GgsDGi4mnwvLY8gfO0gsLrASjilIRZeLhzO9SstN
	wl5AhFsEw1FV0MmiUWDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOvZB-0000ay-Ie; Mon, 28 Oct 2019 03:19:37 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOvZ8-0000aH-FS
 for kexec@lists.infradead.org; Mon, 28 Oct 2019 03:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572232771;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k90o8iKeG9Rotjt3ZNWOXcJq1EFIBn5/Sc9CO8hbU5E=;
 b=GJh+pGAoWtskZ/QJWkUMw/2N7NGiHWEJMAvBmZw5BN4XMQnciH1olOKCOxkc+GnkTr7Qwb
 6mCH9ZBi/KXm11ouip0Kk1r4RrcXJ5H8KJXhPuGRh1Yi3o4VyIvT1f/cLXZpqXtNB3zQoD
 sfSDdlDSZTaaUQobo4Qq8MQJD1iQx9o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-xUQ0rmi3M_CHQtWZFgHwag-1; Sun, 27 Oct 2019 23:19:26 -0400
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 588491005509;
 Mon, 28 Oct 2019 03:19:25 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-152.pek2.redhat.com
 [10.72.12.152])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 91A4360166;
 Mon, 28 Oct 2019 03:19:19 +0000 (UTC)
Date: Mon, 28 Oct 2019 11:19:15 +0800
From: Dave Young <dyoung@redhat.com>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/2 v6] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Message-ID: <20191028031915.GA6945@dhcp-128-65.nay.redhat.com>
References: <20191028024551.4278-1-lijiang@redhat.com>
 <20191028024551.4278-2-lijiang@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20191028024551.4278-2-lijiang@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: xUQ0rmi3M_CHQtWZFgHwag-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_201934_594871_ED21AE00 
X-CRM114-Status: GOOD (  26.50  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 bp@alien8.de, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 10/28/19 at 10:45am, Lianbo Jiang wrote:
> Kdump kernel will reuse the first 640k region because the real mode
> trampoline has to work in this area. When the vmcore is dumped, the
> old memory in this area may be accessed, therefore, kernel has to
> copy the contents of the first 640k area to a backup region so that
> kdump kernel can read the old memory from the backup area of the
> first 640k area, which is done in the purgatory().
> 
> But, the current handling of copying the first 640k area runs into
> problems when SME is enabled, kernel does not properly copy these
> old memory to the backup area in the purgatory(), thereby, kdump
> kernel reads out the encrypted contents, because the kdump kernel
> must access the first kernel's memory with the encryption bit set
> when SME is enabled in the first kernel. Please refer to this link:
> 
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204793
> 
> Finally, it causes the following errors, and the crash tool gets
> invalid pointers when parsing the vmcore.
> 
> crash> kmem -s|grep -i invalid
> kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> crash>
> 
> To avoid the above errors, when the crashkernel option is specified,
> lets reserve the remaining low 1MiB memory(after reserving real mode
> memory) so that the allocated memory does not fall into the low 1MiB
> area, which makes us not to copy the first 640k content to a backup
> region in purgatory(). This indicates that it does not need to be
> included in crash dumps or used for anything except the processor
> trampolines that must live in the low 1MiB.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
> BTW:I also tried to fix the above problem in purgatory(), but there
> are too many restricts in purgatory() context, for example: i can't
> allocate new memory to create the identity mapping page table for
> SME situation.
> 
> Currently, there are two places where the first 640k area is needed,
> the first one is in the find_trampoline_placement(), another one is
> in the reserve_real_mode(), and their content doesn't matter.
> 
> In addition, also need to clean all the code related to the backup
> region later.
> 
>  arch/x86/kernel/machine_kexec_64.c | 15 +++++++++++++++
>  arch/x86/realmode/init.c           |  2 ++
>  include/linux/kexec.h              |  2 ++
>  kernel/kexec_core.c                |  3 +++
>  4 files changed, 22 insertions(+)
> 
> diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
> index 5dcd438ad8f2..42d7c15c45f1 100644
> --- a/arch/x86/kernel/machine_kexec_64.c
> +++ b/arch/x86/kernel/machine_kexec_64.c
> @@ -17,6 +17,7 @@
>  #include <linux/suspend.h>
>  #include <linux/vmalloc.h>
>  #include <linux/efi.h>
> +#include <linux/memblock.h>
>  
>  #include <asm/init.h>
>  #include <asm/pgtable.h>
> @@ -27,6 +28,7 @@
>  #include <asm/kexec-bzimage64.h>
>  #include <asm/setup.h>
>  #include <asm/set_memory.h>
> +#include <asm/cmdline.h>
>  
>  #ifdef CONFIG_ACPI
>  /*
> @@ -687,3 +689,16 @@ void arch_kexec_pre_free_pages(void *vaddr, unsigned int pages)
>  	 */
>  	set_memory_encrypted((unsigned long)vaddr, pages);
>  }
> +
> +/*
> + * When the crashkernel option is specified, only use the low
> + * 1MiB for the real mode trampoline.
> + */
> +void __init kexec_reserve_low_1MiB(void)
> +{
> +	if (cmdline_find_option(boot_command_line, "crashkernel",
> +				NULL, 0) > 0) {
> +		memblock_reserve(0, 1<<20);
> +		pr_info("Reserving the low 1MiB of memory for crashkernel\n");
> +	}
> +}
> diff --git a/arch/x86/realmode/init.c b/arch/x86/realmode/init.c
> index 7dce39c8c034..064cc79a015d 100644
> --- a/arch/x86/realmode/init.c
> +++ b/arch/x86/realmode/init.c
> @@ -3,6 +3,7 @@
>  #include <linux/slab.h>
>  #include <linux/memblock.h>
>  #include <linux/mem_encrypt.h>
> +#include <linux/kexec.h>
>  
>  #include <asm/set_memory.h>
>  #include <asm/pgtable.h>
> @@ -34,6 +35,7 @@ void __init reserve_real_mode(void)
>  
>  	memblock_reserve(mem, size);
>  	set_real_mode_mem(mem);
> +	kexec_reserve_low_1MiB();
>  }
>  
>  static void __init setup_real_mode(void)
> diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> index 1776eb2e43a4..988bf2de51a7 100644
> --- a/include/linux/kexec.h
> +++ b/include/linux/kexec.h
> @@ -306,6 +306,7 @@ extern void __crash_kexec(struct pt_regs *);
>  extern void crash_kexec(struct pt_regs *);
>  int kexec_should_crash(struct task_struct *);
>  int kexec_crash_loaded(void);
> +void __init kexec_reserve_low_1MiB(void);
>  void crash_save_cpu(struct pt_regs *regs, int cpu);
>  extern int kimage_crash_copy_vmcoreinfo(struct kimage *image);
>  
> @@ -397,6 +398,7 @@ static inline void __crash_kexec(struct pt_regs *regs) { }
>  static inline void crash_kexec(struct pt_regs *regs) { }
>  static inline int kexec_should_crash(struct task_struct *p) { return 0; }
>  static inline int kexec_crash_loaded(void) { return 0; }
> +static inline void __init kexec_reserve_low_1MiB(void) { }
>  #define kexec_in_progress false
>  #endif /* CONFIG_KEXEC_CORE */
>  
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index 15d70a90b50d..8856047bcdc8 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -1213,3 +1213,6 @@ void __weak arch_kexec_protect_crashkres(void)
>  
>  void __weak arch_kexec_unprotect_crashkres(void)
>  {}
> +
> +void __init __weak kexec_reserve_low_1MiB(void)
> +{}

Hi Lianbo,

Since this is x86 only, add a weak function sounds not necessary.
For example can just move it to  arch/x86/include/asm/kexec.h
Or maybe even better to limit it to kdump only, move it to 
arch/x86/include/asm/crash.h
and arch/x86/kernel/crash.c

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
