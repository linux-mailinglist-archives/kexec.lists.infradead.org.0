Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADEB7C8F4
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 18:41:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQhudjeBF9ZwFU7Setspj9ejN6XFCAmz+WgmgCumjNw=; b=cCPjJqyBYzwdzO
	mWBEyNBNzaH+XCTyD/TiBQvG1tBpRcAdEbKU9qu5HzMHCAC7uJ6IQTUX9rZdcPKOwJgzdvDx5wigz
	ctYJpzDVjzF54BogqQvK1VMTuBkootBQbXXu527pej3H62puQfNbJ++skZYN/r1if+jekbJw9bU2C
	nqIcryuikEkD6GZ+UpeSD59D/xKVMmY0hsVPXfHDCFUW/z9uRGZuW09RN2IQJ8/56FFw2z5DmnLvx
	4iqQt8H7hhi2q+cgU4Voym7U92vP2JIK8Pn+9RiZA+iuStrFfdzafwem7E8u0zfUdBMTxJsiY/4sQ
	9+9EEXgqsaOip6N4kS0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsrf1-00060S-8F; Wed, 31 Jul 2019 16:41:07 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsrex-0005zj-JM
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 16:41:05 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so66259780eds.7
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 09:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9n08u3GJ3TkoLk8dAtSDxOBDU0rwKbPL2XSn71rR3Sw=;
 b=gyHso0psXZxIRwfoQB7/1x9EDd4ieIp7DfCBq0vQDlRLPKc83Ith5HUc27tIj39PbC
 Gx4ky8SttACB4JG6B7TQjhow6V22FEUz5uSXJP1/qvA6H3w4pmgNHe++Ase6vjR4ymUq
 d5TuYCkbYbkOjqQGaMvUxuarmKyyt1BNfIgWn7f3wMQEew7+sYqDbPlO3VZ4/v6QLcE8
 Rx5YvjwzS4nmQjfs+mg7tHD2+7INbG9VJnKRDWfnM/TGSHEKhpF1DW91yWc+2THEDai+
 2ocwzsL+0lxh3ZUjZKVTeeAw/Xqw5jHT6j2N3eZkRTvUtFbcxMeucRezrF/sa/pHfxUe
 gIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9n08u3GJ3TkoLk8dAtSDxOBDU0rwKbPL2XSn71rR3Sw=;
 b=R9XcUNcJYvuQp2D8jdxdn1poqRUDF5IlcAt75Ph7RATCzIxK3M+nDOk/cPLZHA76Wm
 cWQUTQ4ZCoVxAc0xsQnHLvnJKbTs2BiRM4j4TK5wlxMYkU8JtEwSMTtdtBggy982DEo7
 RQFsKIO6hRiTnxW92tNbnz65Z83SUp52QgGiyHqJCGbDrR7WZBwA0aBdG3HI9hQP0nxq
 FFS+FQIewhnordndMQ3665DbJdbrVfAd4NNYC9iE8Nw5anUfZs0U+oKRP5fFbsqOzDxO
 zfdpIo4MSsj62ifKd8HlOVKLvy3XGhc9yEdOuTOtktj6f6PX6ApNdLl35/Sncwk679OR
 qrOw==
X-Gm-Message-State: APjAAAWoLvbrlhTlfZQAO26Kykyq5ZotlO8Q2E2SE6eisjIXxliXuJjj
 o7QgeowRjaHjOXnPvEuLTltBIdCf1hjz2NbNM/Q=
X-Google-Smtp-Source: APXvYqxF+hy+jYmVua6SeP9iGGLWPE7SNYmJPpSCp47g0V8pOMefhRmMSdxqadCgF+tst3HOjgiapc7sIfKcI7O/FwM=
X-Received: by 2002:a17:906:b203:: with SMTP id
 p3mr94874464ejz.223.1564591261970; 
 Wed, 31 Jul 2019 09:41:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
 <20190731163258.GH39768@lakrids.cambridge.arm.com>
In-Reply-To: <20190731163258.GH39768@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 31 Jul 2019 12:40:51 -0400
Message-ID: <CA+CK2bAYUFBBGo-LHBK4UWRK1tpx3AZ4Z9NkDxiDK0UYEDozaQ@mail.gmail.com>
Subject: Re: [RFC v2 0/8] arm64: MMU enabled kexec relocation
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_094104_050822_7CA6A7AC 
X-CRM114-Status: GOOD (  23.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 12:33 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> Hi Pavel,
>
> Generally, the cover letter should state up-front what the goal is (or
> what problem you're trying to solve). It would be really helpful to have
> that so that we understand what you're trying to achieve, and why.
>
> Messing with the MMU is often fraught with danger (and very painful to
> debug, as you are now aware), and so far we've tried to minimize the
> number of places where we have to do so.

Hi Mark,

I understand, this is why I first went another route of solving this
problem: pre-reserving contiguous memory, and avoid relocation
entirely (the same as what happens during crash reboot). But, that
solution was not accepted because it introduces a change to the common
code to solve ARM specific problem. So, James Morse, and other
suggested that I take a look at the root of the problem, and enable
MMU during relocation by doing what is already done during hibernate
restore.

>
> On Wed, Jul 31, 2019 at 11:38:49AM -0400, Pavel Tatashin wrote:
> > Changelog from previous RFC:
> > - Added trans_table support for both hibernate and kexec.
> > - Fixed performance issue, where enabling MMU did not yield the
> >   actual performance improvement.
> >
> > Bug:
> > With the current state, this patch series works on kernels booted with EL1
> > mode, but for some reason, when elevated to EL2 mode reboot freezes in
> > both QEMU and on real hardware.
> >
> > The freeze happens in:
> >
> > arch/arm64/kernel/relocate_kernel.S
> >       turn_on_mmu()
> >
> > Right after sctlr_el2 is written (MMU on EL2 is enabled)
> >
> >       msr     sctlr_el2, \tmp1
> >
> > I've been studying all the relevant control registers for EL2, but do not
> > see what might be causing this hang:
> >
> > MAIR_EL2 is set to be exactly the same as MAIR_EL1 0xbbff440c0400
> >
> > TCR_EL2        0x80843510
> > Enabled bits:
> > PS      Physical Address Size. (0b100   44 bits, 16TB.)
> > SH0     Shareability    11 Inner Shareable
> > ORGN0   Normal memory, Outer Write-Back Read-Allocate Write-Allocate Cach.
> > IRGN0   Normal memory, Inner Write-Back Read-Allocate Write-Allocate Cach.
> > T0SZ    01 0000
> >
> > SCTLR_EL2     0x30e5183f
> > RES1    : Reserve ones
> > M       : MMU enabled
> > A       : Align check
> > C       : Cacheability control
> > SA      : SP Alignment check enable
> > IESB    : Implicit Error Synchronization event
> > I       : Instruction access Cacheability
> >
> > TTBR0_EL2      0x1b3069000 (address of trans_table)
> >
> > Any suggestion of what else might be missing that causes this freeze when
> > MMU is enabled in EL2?
> >
> > =====
>
> > Here is the current data from the real hardware:
> > (because of bug, I forced EL1 mode by setting el2_switch always to zero in
> > cpu_soft_restart()):
> >
> > For this experiment, the size of kernel plus initramfs is 25M. If initramfs
> > was larger, than the improvements would be even greater, as time spent in
> > relocation is proportional to the size of relocation.
> >
> > Previously:
> > kernel shutdown       0.022131328s
> > relocation    0.440510736s
> > kernel startup        0.294706768s
>
> In total this takes ~0.76s...
>
> >
> > Relocation was taking: 58.2% of reboot time
> >
> > Now:
> > kernel shutdown       0.032066576s
> > relocation    0.022158152s
> > kernel startup        0.296055880s
>
> ... and this takes ~0.35s
>
> So do we really need this complexity for a few blinks of an eye?

Yes, we have an extremely tight reboot budget, 0.35s is not an acceptable waste.

>
> Thanks,
> Mark.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
