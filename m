Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A606A1ED77A
	for <lists+kexec@lfdr.de>; Wed,  3 Jun 2020 22:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HvVM6BOvAKqowbGFEopRq4RY78FJh8KfqTnilISniGE=; b=rx7/oBr3+jci95
	EykjDPeXP1de5sEFIE+9aofNbway9Yoqape/4LaUT0oz2uAV6CpxE+21psPk45BAngJSxiVrVVA6g
	EtxawT2rHB/kywOFuYTuThSCjuie5bIK/hyucconUaawMhtrL5n0kpfTaQCr7wuCoJTnw+dm4LhWK
	NXccR3eavuBnstzeDTDKBs7siigwY/Rjehsu6LoBoEWe1juJH/lJFRo4DQG1SCYrJaT4RM9KkUqED
	M0ATsSPYY19VqhHegsWjXElc3j+aBlW4/iPIJEUC+xKzFdCw3ZtNXgpo8xCVvlKtRc0/P5Pa13QL7
	RBqJFkts+p2xqqgO0fSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jga6f-0006Gs-Oz; Wed, 03 Jun 2020 20:35:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jga6U-00068g-SZ
 for kexec@lists.infradead.org; Wed, 03 Jun 2020 20:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591216513;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=da+uaaQmuZ7e/4soUWoowJDZEqIwAXKMwKVX1l5cQ3s=;
 b=RvtB0921qs2cI1OmTM5ULIScvpbrQfGQkilvRI9beVEfvOoLjGwG9dKPqgfzF6viAoiMEz
 xR8O0pki5I681fI0Bu2oi6Ya+NGKVi7Fd5Z/SVUWgwmkRa2mDMVTO7rZ0a34T3ts2XhcnH
 YGM2Yg4n7fr+eksB9HUVPVF8iukZHPM=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-THtFRVSFO4G84LtQfGeinA-1; Wed, 03 Jun 2020 16:35:12 -0400
X-MC-Unique: THtFRVSFO4G84LtQfGeinA-1
Received: by mail-qk1-f197.google.com with SMTP id d145so2633563qkg.22
 for <kexec@lists.infradead.org>; Wed, 03 Jun 2020 13:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=da+uaaQmuZ7e/4soUWoowJDZEqIwAXKMwKVX1l5cQ3s=;
 b=FImYcBKbmufLlUR3ZTat7dTFDe4lFejKJFn8vkbLUreP+MdC6ZegE6seftJKK3WqHj
 jjEGzg2ZpLnxfuf6fIWbPtSsOw5K9fBoEwE6uSF2WsdFKl97b4qPwpxrNFXDbptKhXfp
 0wwrMUyxW0pcSm+unnKZFCS0Amuhb3Z3Bc2TnoUFOFxmT+TqtQL/4S6i71ANR5bJIZs+
 juceB/IzIkFayYCag5BAaw91xifER3yGtyPrVPMbv8fBWAInPxZTqVrbJHzVGIKjsHPf
 xHjIwXV/DbWhathv1mlIvX4zpytCGngrByJ9wz/6YpFV36N+tAm9bhMsYdnbUJ9elLB7
 oOlw==
X-Gm-Message-State: AOAM533R56bbnwultCJp2L5EeL4CWXGKjPrdj+2IrMa9rOr4EPxx4S3z
 CbM+bnduocUm2lIDjJSlKgeHfDZ3LZtzU/nUT6pmXuImqntZhhqYsgy0fqARIEAiMmFPyBDh9HT
 tTf66AR9ZNSUjsqoYZh51Yw0E738veRy6263C
X-Received: by 2002:a0c:b258:: with SMTP id k24mr1642725qve.198.1591216510300; 
 Wed, 03 Jun 2020 13:35:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzTqAdGZZcbxApjD0CbKiH72/UbZdCmG/JC1TXY4DawbQjYpP22SBs9+HPPHQJpkwQVZxS+RuBcv2xN9rd60Lw=
X-Received: by 2002:a0c:b258:: with SMTP id k24mr1642706qve.198.1591216509942; 
 Wed, 03 Jun 2020 13:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
 <1589395957-24628-3-git-send-email-bhsharma@redhat.com>
 <DM6PR18MB24258C2F2B91E4BF407421CDD2880@DM6PR18MB2425.namprd18.prod.outlook.com>
In-Reply-To: <DM6PR18MB24258C2F2B91E4BF407421CDD2880@DM6PR18MB2425.namprd18.prod.outlook.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 4 Jun 2020 02:04:58 +0530
Message-ID: <CACi5LpOyQ+MAg9rh=cgLprBGTZ3kvtVP1ShNKG-2AV1Tu14EgQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
To: Kamlakant Patel <kamlakantp@marvell.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_133515_004464_8B9B9B4D 
X-CRM114-Status: GOOD (  31.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, James Morse <james.morse@arm.com>,
 Dave Anderson <anderson@redhat.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 Will Deacon <will@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kamlakant,

Many thanks for having a look at the patchset.

On Wed, Jun 3, 2020 at 4:50 PM Kamlakant Patel <kamlakantp@marvell.com> wrote:
>
> Hi Bhupesh,
>
> > -----Original Message-----
> > From: kexec <kexec-bounces@lists.infradead.org> On Behalf Of Bhupesh
> > Sharma
> > Sent: Thursday, May 14, 2020 12:23 AM
> > To: linux-arm-kernel@lists.infradead.org; x86@kernel.org
> > Cc: Mark Rutland <mark.rutland@arm.com>; Kazuhito Hagio <k-
> > hagio@ab.jp.nec.com>; Steve Capper <steve.capper@arm.com>; Catalin
> > Marinas <catalin.marinas@arm.com>; bhsharma@redhat.com; Ard Biesheuvel
> > <ard.biesheuvel@linaro.org>; kexec@lists.infradead.org; linux-
> > kernel@vger.kernel.org; James Morse <james.morse@arm.com>; Dave
> > Anderson <anderson@redhat.com>; bhupesh.linux@gmail.com; Will Deacon
> > <will@kernel.org>
> > Subject: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> >
> > vabits_actual variable on arm64 indicates the actual VA space size, and allows a
> > single binary to support both 48-bit and 52-bit VA spaces.
> >
> > If the ARMv8.2-LVA optional feature is present, and we are running with a 64KB
> > page size; then it is possible to use 52-bits of address space for both userspace
> > and kernel addresses. However, any kernel binary that supports 52-bit must also
> > be able to fall back to 48-bit at early boot time if the hardware feature is not
> > present.
> >
> > Since TCR_EL1.T1SZ indicates the size offset of the memory region addressed by
> > TTBR1_EL1 (and hence can be used for determining the vabits_actual value) it
> > makes more sense to export the same in vmcoreinfo rather than vabits_actual
> > variable, as the name of the variable can change in future kernel versions, but
> > the architectural constructs like TCR_EL1.T1SZ can be used better to indicate
> > intended specific fields to user-space.
> >
> > User-space utilities like makedumpfile and crash-utility, need to read this value
> > from vmcoreinfo for determining if a virtual address lies in the linear map range.
> >
> > While at it also add documentation for TCR_EL1.T1SZ variable being added to
> > vmcoreinfo.
> >
> > It indicates the size offset of the memory region addressed by TTBR1_EL1
> >
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Dave Anderson <anderson@redhat.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: kexec@lists.infradead.org
> > Tested-by: John Donnelly <john.p.donnelly@oracle.com>
> > Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  Documentation/admin-guide/kdump/vmcoreinfo.rst | 11 +++++++++++
> >  arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
> >  arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
> >  3 files changed, 22 insertions(+)
> >
> > diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > index 2a632020f809..2baad0bfb09d 100644
> > --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
> > @@ -404,6 +404,17 @@ KERNELPACMASK
> >  The mask to extract the Pointer Authentication Code from a kernel virtual
> > address.
> >
> > +TCR_EL1.T1SZ
> > +------------
> > +
> > +Indicates the size offset of the memory region addressed by TTBR1_EL1.
> > +The region size is 2^(64-T1SZ) bytes.
> > +
> > +TTBR1_EL1 is the table base address register specified by ARMv8-A
> > +architecture which is used to lookup the page-tables for the Virtual
> > +addresses in the higher VA range (refer to ARMv8 ARM document for more
> > +details).
> > +
> >  arm
> >  ===
> >
> > diff --git a/arch/arm64/include/asm/pgtable-hwdef.h
> > b/arch/arm64/include/asm/pgtable-hwdef.h
> > index 6bf5e650da78..a1861af97ac9 100644
> > --- a/arch/arm64/include/asm/pgtable-hwdef.h
> > +++ b/arch/arm64/include/asm/pgtable-hwdef.h
> > @@ -216,6 +216,7 @@
> >  #define TCR_TxSZ(x)          (TCR_T0SZ(x) | TCR_T1SZ(x))
> >  #define TCR_TxSZ_WIDTH               6
> >  #define TCR_T0SZ_MASK                (((UL(1) << TCR_TxSZ_WIDTH) - 1) <<
> > TCR_T0SZ_OFFSET)
> > +#define TCR_T1SZ_MASK                (((UL(1) << TCR_TxSZ_WIDTH) - 1) <<
> > TCR_T1SZ_OFFSET)
> >
> >  #define TCR_EPD0_SHIFT               7
> >  #define TCR_EPD0_MASK                (UL(1) << TCR_EPD0_SHIFT)
> > diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
> > index 1f646b07e3e9..314391a156ee 100644
> > --- a/arch/arm64/kernel/crash_core.c
> > +++ b/arch/arm64/kernel/crash_core.c
> > @@ -7,6 +7,14 @@
> >  #include <linux/crash_core.h>
> >  #include <asm/cpufeature.h>
> >  #include <asm/memory.h>
> > +#include <asm/pgtable-hwdef.h>
> > +
> > +static inline u64 get_tcr_el1_t1sz(void);
> > +
> > +static inline u64 get_tcr_el1_t1sz(void) {
> > +     return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET; }
> >
> >  void arch_crash_save_vmcoreinfo(void)
> >  {
> > @@ -16,6 +24,8 @@ void arch_crash_save_vmcoreinfo(void)
> >                                               kimage_voffset);
> >       vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
> >                                               PHYS_OFFSET);
> > +     vmcoreinfo_append_str("NUMBER(TCR_EL1_T1SZ)=0x%llx\n",
> > +                                             get_tcr_el1_t1sz());
> I tested this patch on top of upstream kernel v5.7 and I am getting "crash: cannot determine VA_BITS_ACTUAL" error with crash tool.
> I looked into crash-utility source and it is expecting tcr_el1_t1sz not TCR_EL1_T1SZ.
> Could you please check.

Indeed. As per James comments on the v5 (see [1]) where he suggested
converting ttcr_el1_t1sz into TCR_EL1_T1SZ, I made the change in v6
accordingly.

This time I haven't sent out the v6 userspace changes
(makedumpfile/crash-utility) upstream first, since we are waiting for
kernel changes to be accepted first, as we have seen in the past that
while the userspace patches have been accepted, the kernel patches
required a respin cycle, thus leading to inconsistencies, as you also
pointed out with crash-utility.

If you want, for your local testing, I can share my github branch
where I have kept the crash-utility v6 patchset ready. Please let me
know.

[1]. https://lore.kernel.org/linuxppc-dev/63d6e63c-7218-d2dd-8767-4464be83603f@arm.com/

Thanks,
Bhupesh


>
> Thanks,
> Kamlakant Patel
> >       vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
> >       vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
> >
> >       system_supports_address_auth() ?
> > --
> > 2.7.4
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > https://urldefense.proofpoint.com/v2/url?u=http-
> > 3A__lists.infradead.org_mailman_listinfo_kexec&d=DwICAg&c=nKjWec2b6R0m
> > OyPaz7xtfQ&r=XecQZQJWhG6-
> > mN8sWxffFOgUXg4irGP3Sjuy6RxdacQ&m=oeLdIVaWScimdfEc4dNhRI0tT24IgzG
> > 7LkpAE5P11JQ&s=LLjHpz349DuDtORX4xywCxzbGUOagoq4JXosStycqI4&e=
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
