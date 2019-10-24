Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFDAE2E22
	for <lists+kexec@lfdr.de>; Thu, 24 Oct 2019 12:07:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqVJuHRErx97NuVfnmc38Pw1zl4QF3vKUsosY7MEGQ4=; b=hQgY+AO3q0NndG
	0HpcIO4NVr7g/iYq4PalgHyc4TAWg5ob03MxQg+INv+ALOSyXKvV7D9zaVmusLlBYq1KQR+rIYZqF
	NZ6DDRTjRLOWz9p1iztbp+YcptoCohxBLiosUIALLICUN2Ag0I4kxNezyJtPYjM4XwkniJFnZSjd9
	r0reZUT/FZHUOd7vXAHCbIt5BcE6DMC9pJ8dZLYt36PSqb1dPXDqQfjd209Dij90p68WLBBq0JESF
	upR1MRoRvMwMFyKc7hxFu5VFnQFDCXUl+D4d8cPTUN/rcg0qGgb++L7wNE9XJL+gzMY2HkRELUhT8
	TU9H+koWTsb4wcDGMckQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNa1o-00024O-NN; Thu, 24 Oct 2019 10:07:36 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNa1h-00023R-OC
 for kexec@lists.infradead.org; Thu, 24 Oct 2019 10:07:31 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 32F3F25B768;
 Thu, 24 Oct 2019 21:07:23 +1100 (AEDT)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 8C36236BD; Thu, 24 Oct 2019 12:07:20 +0200 (CEST)
Date: Thu, 24 Oct 2019 12:07:20 +0200
From: Simon Horman <horms@verge.net.au>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/2 v5] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Message-ID: <20191024100719.GC11441@verge.net.au>
References: <20191023141912.29110-1-lijiang@redhat.com>
 <20191023141912.29110-2-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023141912.29110-2-lijiang@redhat.com>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_030730_097113_A18E4394 
X-CRM114-Status: GOOD (  28.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, bp@alien8.de, ebiederm@xmission.com, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, d.hatayama@fujitsu.com,
 vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Linbo,

thanks for your patch.

On Wed, Oct 23, 2019 at 10:19:11PM +0800, Lianbo Jiang wrote:
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
>  arch/x86/realmode/init.c |  2 ++
>  include/linux/kexec.h    |  2 ++
>  kernel/kexec_core.c      | 13 +++++++++++++
>  3 files changed, 17 insertions(+)
> 
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
> index 1776eb2e43a4..30acf1d738bc 100644
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
> index 15d70a90b50d..5bd89f1fee42 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -37,6 +37,7 @@
>  #include <linux/compiler.h>
>  #include <linux/hugetlb.h>
>  #include <linux/frame.h>
> +#include <linux/memblock.h>
>  
>  #include <asm/page.h>
>  #include <asm/sections.h>
> @@ -70,6 +71,18 @@ struct resource crashk_low_res = {
>  	.desc  = IORES_DESC_CRASH_KERNEL
>  };
>  
> +/*
> + * When the crashkernel option is specified, only use the low
> + * 1MiB for the real mode trampoline.
> + */
> +void __init kexec_reserve_low_1MiB(void)
> +{
> +	if (strstr(boot_command_line, "crashkernel=")) {

Could you comment on the issue of using strstr which
was raised by Hatayama-san in response to an earlier revision
of this patch?

Thanks in advance!

> +		memblock_reserve(0, 1<<20);
> +		pr_info("Reserving the low 1MiB of memory for crashkernel\n");
> +	}
> +}
> +
>  int kexec_should_crash(struct task_struct *p)
>  {
>  	/*
> -- 
> 2.17.1
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
