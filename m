Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E5A1E8D1E
	for <lists+kexec@lfdr.de>; Sat, 30 May 2020 04:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/J+CmMzlDuzJXtwSbgAPT9Vy9vPN46HmvYcUueKyhKc=; b=azySW5tzf7WoNz
	SboxTDmDnN/uCY+ONlDeONY8AX8InKj33EYJx6yzF95HREQfL8uDta0i/rbYmKl54hkWhbiBjnWoS
	3AhPL9Vtg96ojhlmLqr2tm3nMIGCju+UqLRJjzjTKGJGlNRWasQQW3dGcY28t3Xzp23pMJewDXpY6
	jjWF2O5bY/XQ1XMf4Q1VrfvP/iM3iJgWINbiQNfL2KCwUc9DLeMGGVRMnVvBpb0h8JF/QlhFOZ3XF
	mD00nPhOPZXmWKPSSaW83Wv/s3ZsFOBDcnjhTo4NwED/8/O/hl6dlja7j6/G5OWXs50v1rp+SNNfy
	s3iQTWTDRewVa9y3Mm0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeqwa-0008Ho-Ks; Sat, 30 May 2020 02:09:52 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeqw9-0008Gb-Gi
 for kexec@lists.infradead.org; Sat, 30 May 2020 02:09:26 +0000
Received: by mail-io1-xd42.google.com with SMTP id q8so1376879iow.7
 for <kexec@lists.infradead.org>; Fri, 29 May 2020 19:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vlmSewL3rq3vD4y0RTkQmFf9htc9A96X+yTO0F7WLjE=;
 b=isTrnDd6kt7rm5ECL401fWijK/6lx0gVqAFyVUKJo/uV23abX2Z0K1fk/cwDrS3LjU
 RP3GQV6TWoeNcldkpIUpK+Ug2hdZsm1VUCI/SCWqeKISrOiPkp9IPKX4KpBKFnlXtp3u
 eXY9zt2QSE2Ziv2pjSzD1dxELecq4TrFViSEoCbmfaspdO1El5fuOv68gsceWXOwSAqi
 M8fpgEz2qiV0qzyOQERvwj3JxJiB66471yHyV5kDzrz0KLPMXjoGGWhk83OUneXpCrEs
 5oLVrBYi/ykFkHhvsb5tR9SZ42qvBrHDknTr6AMta0COcmzEDzmRVejmOPJGZqtJDLIA
 8y7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vlmSewL3rq3vD4y0RTkQmFf9htc9A96X+yTO0F7WLjE=;
 b=GOMOdpdarGsKfV+wN+oQThlm/CmqbIGZbVHOmKqheZbNXVHUAVk2pJTzMCUghnl7Yi
 4tB31cQslO2eRGRadfFLNpZfTQ3bhi9KnbhXpljW0fkC9c9irj94QgyueU6MMdEmLNiR
 GgiKbuvPKCq5hn1smSA1C5lBZQSg7lBdqwym2wQPi2mHfz5v+bKbepMu5Iq8SiKAgqDW
 FQ4WMqotpviWHrEbm9iyMlr3/pzGqgj1ln2MAAMS93k1HUueV4OrQETj1hy75cBvLggB
 x1rVh9/W23HrepaC5U8B+I/UCvdY2CteiJXXadOqeAleFX0Qe/FgeFsHtP874OhdmqrE
 B6lw==
X-Gm-Message-State: AOAM533diJbeIEMoVZaKSVlHC8qmmwHnxqqpYgAh4Vv5Djw5raE5Ncek
 ArDRUGCEC+hZl4Salfi/s2lZnChzgmC5fEJgxYD+4w==
X-Google-Smtp-Source: ABdhPJwxyhVZZ6K090XgKszEc+Edh5Q1DVb8WYzIHOnOuxY0ttP1YXWJ03SqjDgHaOqU+6ID5UtSkwJDg/LAkJX9XE0=
X-Received: by 2002:a02:c802:: with SMTP id p2mr10244705jao.111.1590804556143; 
 Fri, 29 May 2020 19:09:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1588711355.git.ashish.kalra@amd.com>
 <697cbb9301acf18296b65bb63686b6c0d422e382.1588711355.git.ashish.kalra@amd.com>
In-Reply-To: <697cbb9301acf18296b65bb63686b6c0d422e382.1588711355.git.ashish.kalra@amd.com>
From: Steve Rutherford <srutherford@google.com>
Date: Fri, 29 May 2020 19:08:40 -0700
Message-ID: <CABayD+fxrRVR2An2wKA4uf99NtScWvAAvv4UdoE_vsSFpe8KxQ@mail.gmail.com>
Subject: Re: [PATCH v8 17/18] KVM: x86: Add kexec support for SEV Live
 Migration.
To: Ashish Kalra <Ashish.Kalra@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_190925_554249_758849F4 
X-CRM114-Status: GOOD (  22.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Tom Lendacky <Thomas.Lendacky@amd.com>,
 David Rientjes <rientjes@google.com>, Brijesh Singh <brijesh.singh@amd.com>,
 KVM list <kvm@vger.kernel.org>, Joerg Roedel <joro@8bytes.org>,
 X86 ML <x86@kernel.org>, kexec@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
 Venu Busireddy <venu.busireddy@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 2:21 PM Ashish Kalra <Ashish.Kalra@amd.com> wrote:
>
> From: Ashish Kalra <ashish.kalra@amd.com>
>
> Reset the host's page encryption bitmap related to kernel
> specific page encryption status settings before we load a
> new kernel by kexec. We cannot reset the complete
> page encryption bitmap here as we need to retain the
> UEFI/OVMF firmware specific settings.
>
> The host's page encryption bitmap is maintained for the
> guest to keep the encrypted/decrypted state of the guest pages,
> therefore we need to explicitly mark all shared pages as
> encrypted again before rebooting into the new guest kernel.
>
> Signed-off-by: Ashish Kalra <ashish.kalra@amd.com>
> ---
>  arch/x86/kernel/kvm.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
>
> diff --git a/arch/x86/kernel/kvm.c b/arch/x86/kernel/kvm.c
> index 4b29815de873..a8bc30d5b15b 100644
> --- a/arch/x86/kernel/kvm.c
> +++ b/arch/x86/kernel/kvm.c
> @@ -35,6 +35,7 @@
>  #include <asm/hypervisor.h>
>  #include <asm/tlb.h>
>  #include <asm/cpuidle_haltpoll.h>
> +#include <asm/e820/api.h>
>
>  static int kvmapf = 1;
>
> @@ -358,6 +359,33 @@ static void kvm_pv_guest_cpu_reboot(void *unused)
>          */
>         if (kvm_para_has_feature(KVM_FEATURE_PV_EOI))
>                 wrmsrl(MSR_KVM_PV_EOI_EN, 0);
> +       /*
> +        * Reset the host's page encryption bitmap related to kernel
> +        * specific page encryption status settings before we load a
> +        * new kernel by kexec. NOTE: We cannot reset the complete
> +        * page encryption bitmap here as we need to retain the
> +        * UEFI/OVMF firmware specific settings.
> +        */
> +       if (sev_live_migration_enabled() & (smp_processor_id() == 0)) {
> +               int i;
> +               unsigned long nr_pages;
> +
> +               for (i = 0; i < e820_table->nr_entries; i++) {
> +                       struct e820_entry *entry = &e820_table->entries[i];
> +                       unsigned long start_pfn;
> +                       unsigned long end_pfn;
> +
> +                       if (entry->type != E820_TYPE_RAM)
> +                               continue;
What should the behavior be for other memory types that are not
expected to be mucked with by firmware? Should we avoid resetting the
enc status of pmem/pram pages?

My intuition here is that we should only preserve the enc status of
those bits that are set by the firmware.

> +
> +                       start_pfn = entry->addr >> PAGE_SHIFT;
> +                       end_pfn = (entry->addr + entry->size) >> PAGE_SHIFT;
> +                       nr_pages = DIV_ROUND_UP(entry->size, PAGE_SIZE);
> +
> +                       kvm_sev_hypercall3(KVM_HC_PAGE_ENC_STATUS,
> +                                          entry->addr, nr_pages, 1);
> +               }
> +       }
>         kvm_pv_disable_apf();
>         kvm_disable_steal_time();
>  }
> --
> 2.17.1
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
