Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EA384667
	for <lists+kexec@lfdr.de>; Wed,  7 Aug 2019 09:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPLWXC8ZBPhDcIORH42J+rYcam6ZvmJZrtCuVx+8gA4=; b=hv/7tE3Z7UN3Gm
	ay6agH3ekZmFj6YGKzRA1FiTB4/N/ajdrWQ3tWSPXjEVGolr5Xz/VTMsFEPyY/ULaZ8fckvevE1op
	AdtkD3YnPNAI7NxQQR0AXlVEgSA9M1zWrbpEISZpzsfgIpvrbwsc5r3yk6HZyCPFAXYzTXGuDMM6E
	fYaaTu2jTFeyhzzjz2/miXxm08ydw6TZlzmIim1ZLfwW+Hl1lsyIZGTFI+ZdpfKzWkZdIfJ9gA1Zc
	sBKO3iaCNeP5dDeAsSarO68ZoHx9kZQJg/IvSiW7aAYG1+ySW34l2Bh+yh29yJsDJETTGUD1po9Iz
	I1IuAmsa2VF1318Ez32w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGm7-00083L-0q; Wed, 07 Aug 2019 07:54:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGkT-00072j-P5
 for kexec@lists.infradead.org; Wed, 07 Aug 2019 07:52:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id k8so39528413plt.3
 for <kexec@lists.infradead.org>; Wed, 07 Aug 2019 00:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=raF/Gr3NmQwtZbDVxQyb2Plto7srHxl/3BURAaaT4K8=;
 b=aVkFxHfcKAx6oYT2t5Nf0i7Cb2DMbScL5DLoJlIJE/vQ/va0ExOkymjZSRsduXobJW
 +HxeBR4pidWnVBRaxINHAFo49nx2BVDvWUa1E7DBYutIhQpdDU3Gk6sTFDan6KCYnLSZ
 IRa4qpYOhzyavKRXmFfZSjGGgfxxI1PCr/G5QtTHNSFiquJF78/c7DoG91ze/f4/LwKs
 6sZcHnlIwMLCFZFfXWX2TPmdAuIQTIOe77E437ZEZe1bZnFweCoQ6AdYpIUBUcAMMwtt
 kD+21/Aa1GxBuARlgR2LCWmT6lGWc9AqsdtzwsZq8J5sGwPbOUa+GtyeCvBke0UEJmXc
 vvxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=raF/Gr3NmQwtZbDVxQyb2Plto7srHxl/3BURAaaT4K8=;
 b=ilAEwYss2FLE9wFJAK3/n291QzZ32rK/n5UCV1dXA6+G9Ds/eBnDQPU4MUCLl0omsC
 CttWmybG8jaaXJc0JX12CDzTkbKy2fiPDkyWu8zqoJP0XlUEGmAXhV3HPkffszRpPSZQ
 M7kfkETK0qxqva26rZTcEQJgMe/pOjcRYqdKHkizCht6THqPLqr/XXLMq3+7BrMM58hZ
 NTPag6thELhwumHOKstdX8T1wD3wu/CA9GVdf3yuLhFNRDclEQZKl+/99V+N5sHZFKJT
 K9pXnVMFbXcEozi1wv9DxjTX7DxQJW2ETEhfdY9nHi22o/8tcgFuuA4Dnbnd1RvmfZr7
 AF9Q==
X-Gm-Message-State: APjAAAUIvravof4mKhoKAJ52esZ3nypMKNmLcHSbNPQiklYyu4T6Y3Fq
 j+GfA6cISuYdDhgGwlUBFw==
X-Google-Smtp-Source: APXvYqxdhB04T4rZXxLUHun72aLTp35ttEb18yFqe9+qM60YtrPkUj4xXardBui+Z7JiCLnmu0lByQ==
X-Received: by 2002:a62:1515:: with SMTP id 21mr8210884pfv.100.1565164359864; 
 Wed, 07 Aug 2019 00:52:39 -0700 (PDT)
Received: from mypc ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id r6sm52948950pjb.22.2019.08.07.00.52.33
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 07 Aug 2019 00:52:38 -0700 (PDT)
Date: Wed, 7 Aug 2019 15:52:26 +0800
From: Pingfan Liu <kernelfans@gmail.com>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH 0/4] x86/mce: protect nr_cpus from rebooting by broadcast
 mce
Message-ID: <20190807075226.GA10392@mypc>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
 <20190807025843.GA4776@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807025843.GA4776@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_005242_829938_3BA30A05 
X-CRM114-Status: GOOD (  28.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Wed, Aug 07, 2019 at 11:00:41AM +0800, Dave Young wrote:
> Add Tony and Xunlei in cc.
> On 08/05/19 at 04:58pm, Pingfan Liu wrote:
> > This series include two related groups:
> > [1-3/4]: protect nr_cpus from rebooting by broadcast mce
> > [4/4]: improve "kexec -l" robustness against broadcast mce
> > 
> > When I tried to fix [1], Thomas raised concern about the nr_cpus' vulnerability
> > to unexpected rebooting by broadcast mce. After analysis, I think only the
> > following first case suffers from the rebooting by broadcast mce. [1-3/4] aims
> > to fix that issue.
> 
> I did not understand and read the MCE details, but we previously had a
> MCE problem, Xunlei fixed in below commit:
> commit 5bc329503e8191c91c4c40836f062ef771d8ba83
> Author: Xunlei Pang <xlpang@redhat.com>
> Date:   Mon Mar 13 10:50:19 2017 +0100
> 
>     x86/mce: Handle broadcasted MCE gracefully with kexec
> 
> I wonder if this is same issue or not. Also the old discussion is in
> below thread:
> https://lore.kernel.org/patchwork/patch/753530/
> 
> Tony raised similar questions, but I'm not sure if it is still a problem
> or it has been fixed.
> 
Xunlei's patch is the precondition of the stability for the case 2: boot up by "kexec -p nr_cpus="

For case1/3, extra effort is needed.

Thanks,
	Pingfan
> > 
> > *** Back ground ***
> > 
> > On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
> > broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.
> > 
> > The option 'nosmt' has already complied with the above rule by Thomas's patch.
> > For detail, refer to 506a66f3748 (Revert "x86/apic: Ignore secondary threads if
> > nosmt=force")
> > 
> > But for nr_cpus option, the exposure to broadcast MCE is a little complicated,
> > and can be categorized into three cases.
> > 
> > -1. boot up by BIOS. Since no one set CR4.MCE=1, nr_cpus risks rebooting by
> > broadcast MCE.
> > 
> > -2. boot up by "kexec -p nr_cpus=".  Since the 1st kernel has all cpus'
> > CR4.MCE=1 set before kexec -p, nr_cpus is free of rebooting by broadcast MCE.
> > Furthermore, the crashed kernel's wreckage, including page table and text, is
> > not touched by capture kernel. Hence if MCE event happens on capped cpu,
> > do_machine_check->__mc_check_crashing_cpu() runs smoothly and returns
> > immediately, the capped cpu is still pinned on "halt".
> > 
> > -3. boot up by "kexec -l nr_cpus=". As "kexec -p", it is free of rebooting by
> > broadcast MCE. But the 1st kernel's wreckage is discarded and changed.  when
> > capped cpus execute do_machine_check(), they may crack the new kernel.  But
> > this is not related with broadcast MCE, and need an extra fix.
> > 
> > *** Solution ***
> > "nr_cpus" can not follow the same way as "nosmt".  Because nr_cpus limits the
> > allocation of percpu area and some other kthread memory, which is critical to
> > cpu hotplug framework.  Instead, developing a dedicated SIPI callback
> > make_capped_cpu_stable() for capped cpu, which does not lean on percpu area to
> > work.
> > 
> > [1]: https://lkml.org/lkml/2019/7/5/3
> > 
> > To: Gleixner <tglx@linutronix.de>
> > To: Andy Lutomirski <luto@kernel.org>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Cc: Borislav Petkov <bp@alien8.de>
> > Cc: "H. Peter Anvin" <hpa@zytor.com>
> > Cc: Dave Hansen <dave.hansen@linux.intel.com>
> > Cc: Peter Zijlstra <peterz@infradead.org>
> > To: x86@kernel.org
> > Cc: Masami Hiramatsu <mhiramat@kernel.org>
> > Cc: Qian Cai <cai@lca.pw>
> > Cc: Vlastimil Babka <vbabka@suse.cz>
> > Cc: Daniel Drake <drake@endlessm.com>
> > Cc: Jacob Pan <jacob.jun.pan@linux.intel.com>
> > Cc: Michal Hocko <mhocko@suse.com>
> > Cc: Eric Biederman <ebiederm@xmission.com>
> > Cc: linux-kernel@vger.kernel.org
> > Cc: Dave Young <dyoung@redhat.com>
> > Cc: Baoquan He <bhe@redhat.com>
> > Cc: kexec@lists.infradead.org
> > 
> > ---
> > Pingfan Liu (4):
> >   x86/apic: correct the ENO in generic_processor_info()
> >   x86/apic: record capped cpu in generic_processor_info()
> >   x86/smp: send capped cpus to a stable state when smp_init()
> >   x86/smp: disallow MCE handler on rebooting AP
> > 
> >  arch/x86/include/asm/apic.h  |  1 +
> >  arch/x86/include/asm/smp.h   |  3 ++
> >  arch/x86/kernel/apic/apic.c  | 23 ++++++++----
> >  arch/x86/kernel/cpu/common.c |  7 ++++
> >  arch/x86/kernel/smp.c        |  8 +++++
> >  arch/x86/kernel/smpboot.c    | 83 ++++++++++++++++++++++++++++++++++++++++++++
> >  kernel/smp.c                 |  6 ++++
> >  7 files changed, 124 insertions(+), 7 deletions(-)
> > 
> > -- 
> > 2.7.5
> > 
> 
> Thanks
> Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
