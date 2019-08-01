Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF177DC7A
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 15:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=twhmHd2HAMu/N6lk6wjRTyW85qy4PZ13CAiexCtRnXc=; b=CR1xi+WrscwLyW7oN9AmWnXNYe
	IKB/mPUdvmbrRXKP1v9k43f1jvfy8k5OIzpGPFK86u/KQcZHpgWy+UlZ9AHv4vQtpQRTbTHbTOPxI
	h7wZak8WKH78ksxR//XQ2tQgIq5qVdUyiop1gkylQM1xyBcpCupKizdKOU37crhH1R2rVnBiPCbQ4
	SuzG4FW0ABsF3ESion+L/zcoSKjuobjU992mSR+DYubirpUeoY1Hv/F2szKQ0bRRyK+JNYOkVG0Jz
	IVmsa+hX0vhKgQRikiJVPBZ+zTBW8WnSwEJpLJ7vZ+oSaiapbqSczANZ0xfgNO1Au3OAcfgDISZVD
	XLyOOkwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htB4l-0005Iu-0o; Thu, 01 Aug 2019 13:24:59 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htB4c-0005I8-5c
 for kexec@lists.infradead.org; Thu, 01 Aug 2019 13:24:52 +0000
Received: by mail-ed1-x543.google.com with SMTP id k8so69118128edr.11
 for <kexec@lists.infradead.org>; Thu, 01 Aug 2019 06:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=oRhWWHTTWAXjDtJAWmN6dRP46bz3/nitxwY0Vh4QWL8=;
 b=nPRpJopYE4tNaMnqZge6egyB0YrEeLdK4PCzRIU2RwlfARMnqPyF82311Oy9pqi/3k
 0ArhmxcRjZjQ0tYE3RdMosZcnuCUW+XxYmGnFp0pCiiDG1vE7nmbGRehsgse9k8EkWRR
 Ei18k9N1dGn12cAB4uri2mxedwKCIBAa4O1ztgsvUtEHrUBm8KpDMTH3tzMdgIk1UznU
 q1Xy0DiyhS3uV+UuggDmbP00BfXSUBr5DAGUJREUuiGcYl5enPkIFxvhlaWknaAeKaXt
 nWhAWQ94wd8miYxbEUUEDxtuvzfjnrqXO4gnAiKEe3pEKKfiM1OKrzcyP0QjcwzwfnFY
 0Veg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=oRhWWHTTWAXjDtJAWmN6dRP46bz3/nitxwY0Vh4QWL8=;
 b=X5OtfRHaKpgqoK0WRejagX+VN+pfFTcU+Od4VTKfqbtiMXW3YfnDpbr0dUmMCvVq7k
 1rLK23E8rfn7wLTO72e1H0khXpzbFQGLIiPSybQmBcOZ7htUINt9NB7YeZb2W8AdoSQV
 ZBsW5cZS3KXx1voKrJKUF3pJfDVLmA7RzjQZfcNnGhRhPPD0HSEzse4Y6S662KiWhibU
 UDxgSWhXMjW7Gi6xStEudVHxaxK3qkjbD5Qr3yk5oZINUE6fHdzrN5aRRCPgk6/bmmbC
 PYzIYVMEowHA67c58G+sgvH69Vi2pgTeUl4+RW/yW0XY58Ky5p0q+mtCwo5BKG3wgVZq
 d7sA==
X-Gm-Message-State: APjAAAWMRsNQ8favi01gUMrKPuM078Myx35/WYx+HnLi8KdT8Fl8Ir3q
 RDwpnI37eXUO8dKU7lmcRRUc091wHcyiJTWs1g8=
X-Google-Smtp-Source: APXvYqy2/ZgGf2sBP6haXVbAhJHBKZtN/9NXbuW5KNpgIJ6trcfevVCbVzIkgyp0iij4A8romsBvvltgRqFg/r3/jS0=
X-Received: by 2002:a50:9116:: with SMTP id
 e22mr114258222eda.161.1564665887525; 
 Thu, 01 Aug 2019 06:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 1 Aug 2019 09:24:36 -0400
Message-ID: <CA+CK2bBVsU1hhgPB4cO8ZcjL_Y+v59W+-m4rLZPEKfpgvvvEpg@mail.gmail.com>
Subject: Re: [RFC v2 0/8] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 will@kernel.org, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_062450_391443_B3D3B16A 
X-CRM114-Status: GOOD (  23.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

I will send a new version soon, so please do not spend time reviewing
this work.  In the new version I will fix MMU at EL2 issue by doing
what we are doing in hibernation: reduce to EL1 to do the copying, and
escalate back to to EL2 to branch to new kernel. Also, this will
simplify copying function by actually doing the linear copy as ttbr1
and ttbr0 are always available this way.

Thank you,
Pasha

On Wed, Jul 31, 2019 at 11:38 AM Pavel Tatashin
<pasha.tatashin@soleen.com> wrote:
>
> Changelog from previous RFC:
> - Added trans_table support for both hibernate and kexec.
> - Fixed performance issue, where enabling MMU did not yield the
>   actual performance improvement.
>
> Bug:
> With the current state, this patch series works on kernels booted with EL1
> mode, but for some reason, when elevated to EL2 mode reboot freezes in
> both QEMU and on real hardware.
>
> The freeze happens in:
>
> arch/arm64/kernel/relocate_kernel.S
>         turn_on_mmu()
>
> Right after sctlr_el2 is written (MMU on EL2 is enabled)
>
>         msr     sctlr_el2, \tmp1
>
> I've been studying all the relevant control registers for EL2, but do not
> see what might be causing this hang:
>
> MAIR_EL2 is set to be exactly the same as MAIR_EL1 0xbbff440c0400
>
> TCR_EL2        0x80843510
> Enabled bits:
> PS      Physical Address Size. (0b100   44 bits, 16TB.)
> SH0     Shareability    11 Inner Shareable
> ORGN0   Normal memory, Outer Write-Back Read-Allocate Write-Allocate Cach.
> IRGN0   Normal memory, Inner Write-Back Read-Allocate Write-Allocate Cach.
> T0SZ    01 0000
>
> SCTLR_EL2       0x30e5183f
> RES1    : Reserve ones
> M       : MMU enabled
> A       : Align check
> C       : Cacheability control
> SA      : SP Alignment check enable
> IESB    : Implicit Error Synchronization event
> I       : Instruction access Cacheability
>
> TTBR0_EL2      0x1b3069000 (address of trans_table)
>
> Any suggestion of what else might be missing that causes this freeze when
> MMU is enabled in EL2?
>
> =====
> Here is the current data from the real hardware:
> (because of bug, I forced EL1 mode by setting el2_switch always to zero in
> cpu_soft_restart()):
>
> For this experiment, the size of kernel plus initramfs is 25M. If initramfs
> was larger, than the improvements would be even greater, as time spent in
> relocation is proportional to the size of relocation.
>
> Previously:
> kernel shutdown 0.022131328s
> relocation      0.440510736s
> kernel startup  0.294706768s
>
> Relocation was taking: 58.2% of reboot time
>
> Now:
> kernel shutdown 0.032066576s
> relocation      0.022158152s
> kernel startup  0.296055880s
>
> Now: Relocation takes 6.3% of reboot time
>
> Total reboot is x2.16 times faster.
>
> Previous approaches and discussions
> -----------------------------------
> https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
> reserve space for kexec to avoid relocation, involves changes to generic code
> to optimize a problem that exists on arm64 only:
>
> https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
> The first attempt to enable MMU, some bugs that prevented performance
> improvement. The page tables unnecessary configured idmap for the whole
> physical space.
>
> Pavel Tatashin (8):
>   kexec: quiet down kexec reboot
>   arm64, mm: transitional tables
>   arm64: hibernate: switch to transtional page tables.
>   kexec: add machine_kexec_post_load()
>   arm64, kexec: move relocation function setup and clean up
>   arm64, kexec: add expandable argument to relocation function
>   arm64, kexec: configure transitional page table for kexec
>   arm64, kexec: enable MMU during kexec relocation
>
>  arch/arm64/Kconfig                     |   4 +
>  arch/arm64/include/asm/kexec.h         |  24 ++-
>  arch/arm64/include/asm/pgtable-hwdef.h |   1 +
>  arch/arm64/include/asm/trans_table.h   |  66 ++++++
>  arch/arm64/kernel/asm-offsets.c        |  10 +
>  arch/arm64/kernel/cpu-reset.S          |   4 +-
>  arch/arm64/kernel/cpu-reset.h          |   8 +-
>  arch/arm64/kernel/hibernate.c          | 261 ++++++------------------
>  arch/arm64/kernel/machine_kexec.c      | 168 ++++++++++++---
>  arch/arm64/kernel/relocate_kernel.S    | 238 +++++++++++++++-------
>  arch/arm64/mm/Makefile                 |   1 +
>  arch/arm64/mm/trans_table.c            | 272 +++++++++++++++++++++++++
>  kernel/kexec.c                         |   4 +
>  kernel/kexec_core.c                    |   8 +-
>  kernel/kexec_file.c                    |   4 +
>  kernel/kexec_internal.h                |   2 +
>  16 files changed, 756 insertions(+), 319 deletions(-)
>  create mode 100644 arch/arm64/include/asm/trans_table.h
>  create mode 100644 arch/arm64/mm/trans_table.c
>
> --
> 2.22.0
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
