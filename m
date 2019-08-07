Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC430842BC
	for <lists+kexec@lfdr.de>; Wed,  7 Aug 2019 05:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naimfcvkRa4yy7WGPOF5yHjBLepY5tPLrUx8ZC6frBw=; b=JAVbLShYLdKDzd
	fJrfB452KXmtQe6RButMZIUcEVwPivVpQ1p8Vu4RS8Zbc9ieL0e4RxpM74fMziCnPk3C7e33m7XOs
	nFqOqKcK3Lg4d0IwTNim3v6uN4fXUAy3pizDaXAfOBwsONpyASaGUDgs/BFS5xnuNgbG8U8XVV4nm
	MbtgV4dwXy6NDxVTak2t/YXkwiyC2hypcjyPTn4zpbMeuYJO8o17VW17tjdYJvFcDLfu3ICxahG6N
	ehTHwUIboG+lTs6/j0hTY8LYA90ZiHEGwrH2c0ikxks02HK1EEs0D6n/wV8JwpeK63FbZVfjIIIeC
	4NztZpsDwRKaFVGIdVjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvCCA-0002va-Hm; Wed, 07 Aug 2019 03:00:58 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvCC6-0002uj-Eh
 for kexec@lists.infradead.org; Wed, 07 Aug 2019 03:00:56 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 533A72F3677;
 Wed,  7 Aug 2019 03:00:52 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-17.pek2.redhat.com
 [10.72.12.17])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4CE575D6D0;
 Wed,  7 Aug 2019 03:00:45 +0000 (UTC)
Date: Wed, 7 Aug 2019 11:00:41 +0800
From: Dave Young <dyoung@redhat.com>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCH 0/4] x86/mce: protect nr_cpus from rebooting by broadcast
 mce
Message-ID: <20190807025843.GA4776@dhcp-128-65.nay.redhat.com>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.29]); Wed, 07 Aug 2019 03:00:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_200054_540013_62354A74 
X-CRM114-Status: GOOD (  23.36  )
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, Baoquan He <bhe@redhat.com>,
 tony.luck@intel.com, Peter Zijlstra <peterz@infradead.org>,
 kexec@lists.infradead.org, Jacob Pan <jacob.jun.pan@linux.intel.com>,
 x86@kernel.org, Michal Hocko <mhocko@suse.com>, linux-kernel@vger.kernel.org,
 Daniel Drake <drake@endlessm.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Qian Cai <cai@lca.pw>, Thomas Gleixner <tglx@linutronix.de>,
 Xunlei Pang <xlpang@linux.alibaba.com>, Vlastimil Babka <vbabka@suse.cz>,
 Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add Tony and Xunlei in cc.
On 08/05/19 at 04:58pm, Pingfan Liu wrote:
> This series include two related groups:
> [1-3/4]: protect nr_cpus from rebooting by broadcast mce
> [4/4]: improve "kexec -l" robustness against broadcast mce
> 
> When I tried to fix [1], Thomas raised concern about the nr_cpus' vulnerability
> to unexpected rebooting by broadcast mce. After analysis, I think only the
> following first case suffers from the rebooting by broadcast mce. [1-3/4] aims
> to fix that issue.

I did not understand and read the MCE details, but we previously had a
MCE problem, Xunlei fixed in below commit:
commit 5bc329503e8191c91c4c40836f062ef771d8ba83
Author: Xunlei Pang <xlpang@redhat.com>
Date:   Mon Mar 13 10:50:19 2017 +0100

    x86/mce: Handle broadcasted MCE gracefully with kexec

I wonder if this is same issue or not. Also the old discussion is in
below thread:
https://lore.kernel.org/patchwork/patch/753530/

Tony raised similar questions, but I'm not sure if it is still a problem
or it has been fixed.

> 
> *** Back ground ***
> 
> On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.
> 
> The option 'nosmt' has already complied with the above rule by Thomas's patch.
> For detail, refer to 506a66f3748 (Revert "x86/apic: Ignore secondary threads if
> nosmt=force")
> 
> But for nr_cpus option, the exposure to broadcast MCE is a little complicated,
> and can be categorized into three cases.
> 
> -1. boot up by BIOS. Since no one set CR4.MCE=1, nr_cpus risks rebooting by
> broadcast MCE.
> 
> -2. boot up by "kexec -p nr_cpus=".  Since the 1st kernel has all cpus'
> CR4.MCE=1 set before kexec -p, nr_cpus is free of rebooting by broadcast MCE.
> Furthermore, the crashed kernel's wreckage, including page table and text, is
> not touched by capture kernel. Hence if MCE event happens on capped cpu,
> do_machine_check->__mc_check_crashing_cpu() runs smoothly and returns
> immediately, the capped cpu is still pinned on "halt".
> 
> -3. boot up by "kexec -l nr_cpus=". As "kexec -p", it is free of rebooting by
> broadcast MCE. But the 1st kernel's wreckage is discarded and changed.  when
> capped cpus execute do_machine_check(), they may crack the new kernel.  But
> this is not related with broadcast MCE, and need an extra fix.
> 
> *** Solution ***
> "nr_cpus" can not follow the same way as "nosmt".  Because nr_cpus limits the
> allocation of percpu area and some other kthread memory, which is critical to
> cpu hotplug framework.  Instead, developing a dedicated SIPI callback
> make_capped_cpu_stable() for capped cpu, which does not lean on percpu area to
> work.
> 
> [1]: https://lkml.org/lkml/2019/7/5/3
> 
> To: Gleixner <tglx@linutronix.de>
> To: Andy Lutomirski <luto@kernel.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Dave Hansen <dave.hansen@linux.intel.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> To: x86@kernel.org
> Cc: Masami Hiramatsu <mhiramat@kernel.org>
> Cc: Qian Cai <cai@lca.pw>
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Daniel Drake <drake@endlessm.com>
> Cc: Jacob Pan <jacob.jun.pan@linux.intel.com>
> Cc: Michal Hocko <mhocko@suse.com>
> Cc: Eric Biederman <ebiederm@xmission.com>
> Cc: linux-kernel@vger.kernel.org
> Cc: Dave Young <dyoung@redhat.com>
> Cc: Baoquan He <bhe@redhat.com>
> Cc: kexec@lists.infradead.org
> 
> ---
> Pingfan Liu (4):
>   x86/apic: correct the ENO in generic_processor_info()
>   x86/apic: record capped cpu in generic_processor_info()
>   x86/smp: send capped cpus to a stable state when smp_init()
>   x86/smp: disallow MCE handler on rebooting AP
> 
>  arch/x86/include/asm/apic.h  |  1 +
>  arch/x86/include/asm/smp.h   |  3 ++
>  arch/x86/kernel/apic/apic.c  | 23 ++++++++----
>  arch/x86/kernel/cpu/common.c |  7 ++++
>  arch/x86/kernel/smp.c        |  8 +++++
>  arch/x86/kernel/smpboot.c    | 83 ++++++++++++++++++++++++++++++++++++++++++++
>  kernel/smp.c                 |  6 ++++
>  7 files changed, 124 insertions(+), 7 deletions(-)
> 
> -- 
> 2.7.5
> 

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
