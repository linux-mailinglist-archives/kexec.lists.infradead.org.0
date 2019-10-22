Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45139DFF71
	for <lists+kexec@lfdr.de>; Tue, 22 Oct 2019 10:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Al7faQkgLjsjf4HmMcNmL0+miWWCuosqVbXySHH05WY=; b=fOMydPmS+HlyLg
	PZBEpG8cbka7wCasxHfOEMCM6WJgcv0jdDoK36VCkduE+M5Fc5uDpOfiZIEANfbzcACtV+ijuen93
	wD0SZSYmP+gkzwgHDGh3g0984TZKJAe5zM9n1do1wAuBJvqM9WaI7oJfbnqbfZBiaWMriU1p6V9Ml
	z1S1PMMthaHWAc/6P4xHmvjeKQdrwhwXf7FzpE5dxZYd5QCagObamZMBYQPE8y4NGo1yHoRCe3wqL
	IJe+KAqvgmyvYYTUlvsaFM35SInHRY6ZXx52gJabsCI+sT8ltZHvdnXGBfBjgL7NZHfuGF5IT6d8G
	t+KRO+fxX52tf3Ts2WSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMpZL-0007ZV-GJ; Tue, 22 Oct 2019 08:31:07 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMpZH-0007Yc-N5
 for kexec@lists.infradead.org; Tue, 22 Oct 2019 08:31:06 +0000
Received: from zn.tnic (p4FED31B8.dip0.t-ipconnect.de [79.237.49.184])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 5C61E1EC0C49;
 Tue, 22 Oct 2019 10:30:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1571733054;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=yoOp/3AmPaYkCHnw73xWcOkhZqNgd7+waML2A51zTUM=;
 b=nSH4OnmTPxiqhhmSI5JjVsfehGsRDmvOj+9uAQCtz60cI47r2gOczJG9JwAbVXWTTa9DIY
 36PD1DLw4TYBBEpwxDGgYQ7W0RLhuQZOUTAsMpAxBjMeYtahgXdjuFhAioaSvpCqXEGtwJ
 C2uFjTTN5q468VrQbmJGT5UMUJJMjtg=
Date: Tue, 22 Oct 2019 10:30:15 +0200
From: Borislav Petkov <bp@alien8.de>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/3 v4] x86/kdump: always reserve the low 1MiB when the
 crashkernel option is specified
Message-ID: <20191022083015.GB31700@zn.tnic>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-2-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017094347.20327-2-lijiang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_013103_907317_006A8BDE 
X-CRM114-Status: GOOD (  27.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 05:43:45PM +0800, Lianbo Jiang wrote:
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204793

Put that as a Link: below.

> Kdump kernel will reuse the first 640k region because of some reasons,

s/ of some reasons//

> for example: the trampline and conventional PC system BIOS region may

spellcheck: s/trampline/trampoline/

I see two more typos in here and if you had a spellchecker enabled in
your editor where you write the commit message, you'll see them too.
Please use one.

> require to allocate memory in this area. Obviously, kdump kernel will
> also overwrite the first 640k region,

Well, it is not obvious to me. Please be more specific: why would the
kdump kernel do that?

> therefore, kernel has to copy
> the contents of the first 640k area to a backup area, which is done in
> purgatory(), because vmcore may need the old memory. When vmcore is
> dumped, kdump kernel will read the old memory from the backup area of
> the first 640k area.
> 
> Basically, the main reason should be clear, kernel does not correctly
> handle the first 640k region when SME is active,

If you mention the actual reason here, that sentence would be clearer:

"When SME is enabled in the first kernel, the kdump kernel must access
the first kernel's memory with the encryption bit set."

Something like that. 

> which causes that
> kernel does not properly copy these old memory to the backup area in
> purgatory(). Therefore, kdump kernel reads out the incorrect contents

s/incorrect/encrypted/

> from the backup area when dumping vmcore. Finally, the phenomenon is

phenomenon?

> as follow:
> 
> [root linux]$ crash vmlinux /var/crash/127.0.0.1-2019-09-19-08\:31\:27/vmcore
> WARNING: kernel relocated [240MB]: patching 97110 gdb minimal_symbol values
> 
>       KERNEL: /var/crash/127.0.0.1-2019-09-19-08:31:27/vmlinux
>     DUMPFILE: /var/crash/127.0.0.1-2019-09-19-08:31:27/vmcore  [PARTIAL DUMP]
>         CPUS: 128
>         DATE: Thu Sep 19 08:31:18 2019
>       UPTIME: 00:01:21
> LOAD AVERAGE: 0.16, 0.07, 0.02
>        TASKS: 1343
>     NODENAME: amd-ethanol
>      RELEASE: 5.3.0-rc7+
>      VERSION: #4 SMP Thu Sep 19 08:14:00 EDT 2019
>      MACHINE: x86_64  (2195 Mhz)
>       MEMORY: 127.9 GB
>        PANIC: "Kernel panic - not syncing: sysrq triggered crash"
>          PID: 9789
>      COMMAND: "bash"
>         TASK: "ffff89711894ae80  [THREAD_INFO: ffff89711894ae80]"
>          CPU: 83
>        STATE: TASK_RUNNING (PANIC)
> 
> crash> kmem -s|grep -i invalid
> kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> crash>

I fail to see what that's trying to tell me? You have invalid pointers?

> BTW: I also tried to fix the above problem in purgatory(), but there
> are too many restricts in purgatory() context, for example: i can't
> allocate new memory to create the identity mapping page table for SME
> situation.

This paragraph belongs under the "---" line below.

> Currently, there are two places where the first 640k area is needed,
> the first one is in the find_trampoline_placement(), another one is
> in the reserve_real_mode(), and their content doesn't matter.
> 
> To avoid the above error, when the crashkernel kernel command line
> option is specified, lets reserve the remaining low 1MiB memory(
> after reserving real mode memroy) so that the allocated memory does
> not fall into the low 1MiB area, which makes us not to copy the first
> 640k content to a backup region in purgatory(). This indicates that
> it does not need to be included in crash dumps or used for anything
> execept the processor trampolines that must live in the low 1MiB.
> 
> In addition, also need to clean all the code related to the backup
> region later.

Ditto.

> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
>  arch/x86/realmode/init.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/x86/realmode/init.c b/arch/x86/realmode/init.c
> index 7dce39c8c034..1f0492830f2c 100644
> --- a/arch/x86/realmode/init.c
> +++ b/arch/x86/realmode/init.c
> @@ -34,6 +34,17 @@ void __init reserve_real_mode(void)
>  
>  	memblock_reserve(mem, size);
>  	set_real_mode_mem(mem);
> +
> +#ifdef CONFIG_KEXEC_CORE
> +	/*
> +	 * When the crashkernel option is specified, only use the low
> +	 * 1MiB for the real mode trampoline.
> +	 */
> +	if (strstr(boot_command_line, "crashkernel=")) {
> +		memblock_reserve(0, 1<<20);
> +		pr_info("Reserving the low 1MiB of memory for crashkernel\n");
> +	}
> +#endif /* CONFIG_KEXEC_CORE */

This ifdeffery needs to be a function in kernel/kexec_core.c which is
called by reserve_real_mode(), instead.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
