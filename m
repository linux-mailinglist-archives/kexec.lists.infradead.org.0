Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B401EFCEFA
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 20:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zW5ASP8hgNNz0PGFxeV1eSzqmd7iRT/i64AIbS6v1KU=; b=qP6+wfMStcvEg4kxTC6ShCGUJf
	f4klR7IwGtUx+CrVe97/cdOoG+oABEr+4BvIaAHkyp0F9GmMiWJ62QKG8XRMICKQBwfH0vl/mcXuZ
	C1lBl2RaUDUREDovxZXH2GOgDvgoPsf+JTm/DaNi1wmLNMe/GDkga7m/KCRf0Dce7P+rQXKT5BotC
	T+TNWr94DMuvpz2FtrQDqlTnA0590T8hCNa8OEfN3qd5zJFjNQNlhj/CP//gXFZJVkn8XfUFF/TRF
	oifEAlZBYSTd4aKvvVG8mjjuPLUwGXahLX++OsksUugIDcCRuccDxnYFOIlTRwpv17MIYKeWYvWg1
	lsXZ/L3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLCk-0001fA-0f; Thu, 14 Nov 2019 19:54:58 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLCS-0001Pz-EU
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 19:54:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573761278;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ipOfIuZv4n7OMTuT05ttv+XiU0MiZdbWkcgUyU+rx/Q=;
 b=fmUXBPg8Zr1oKF8gZ7LEfuLnqor+S26BYNqNz7pjTDOis6EFk1AKX8IdNjiC5j9z8xnlJo
 Wy5FdQqXv5aVVufziVFBOEHIwYjD9yPvO6d2p82kelFIkENm+TlHLZCUVbh6sKEbvOhNBz
 pgrUVALA/hz/CP/42VXWpUi+Id2m9f4=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-175-CFe6_OYOOsqkmyvIvxTVyQ-1; Thu, 14 Nov 2019 14:54:37 -0500
Received: by mail-lf1-f70.google.com with SMTP id t6so2316050lfd.13
 for <kexec@lists.infradead.org>; Thu, 14 Nov 2019 11:54:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=MDqH19kOOKY+TUPNPG0CxeBoBcGPMQfXKESSJwySm9E=;
 b=kgY/HrWCTRWg4ShiwJ8ndOpT6af14pDcnxs3JQ9U9ezuTjwxWHa3awD2FhJ34C0voN
 X+2rd6fcaDyHrIwd84lvgeeEIaqcN+2DvQOiHf6TLSCs9c83W05QPE+5qw5R1cafNrOK
 JeT7y/4YAI3j2WCiKu9/VfwFF1Fk3Cx1Drb8EXEPfyY1wFB0FH8AHaJzfLnHqmCwHYqG
 mau1Ejeg2BuK2/9g/TswI0uDkbtwjTiY7n1DrasIWh11qLvn/533lIPy9tVsNnQs1mGx
 7SBLI1ocvwn2vcexpA/5cPisPXraAxUfG4wFhH9T0A1YHGZoSrU/pl7Fj6BtMXUH+Bov
 9TTA==
X-Gm-Message-State: APjAAAWVMobITqD/kJSD4rBpyS+e8F1kzdPKSfRJvdwcorOuSTdCnvoA
 vL2Ottv3XCwjCqRMphtmoIWdeynGvRU9bxCS2chld6XZo6VuMabAv5BNjnqaj0LN3t3VAGpvX4b
 bmBMGPn+1gNgtMKd4Fl106U2xV0GFElVtOEll
X-Received: by 2002:a2e:9695:: with SMTP id q21mr7771501lji.206.1573761275773; 
 Thu, 14 Nov 2019 11:54:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqyvZP1Wg9zN6nJYQIloLkjVhepGTmfmXrp4BqyWB295YviNhYt2NN6gtXuLQLlI9WPMoiGos+kqPi2No7ektKQ=
X-Received: by 2002:a2e:9695:: with SMTP id q21mr7771458lji.206.1573761275378; 
 Thu, 14 Nov 2019 11:54:35 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191113063858.GE22427@linaro.org>
In-Reply-To: <20191113063858.GE22427@linaro.org>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 15 Nov 2019 01:24:17 +0530
Message-ID: <CACi5LpP54d9DKW63G5W6X4euBjAm2NwkHOiM01dB7g8d60s=4w@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>, 
 Boris Petkov <bp@alien8.de>, Ingo Molnar <mingo@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, 
 Jonathan Corbet <corbet@lwn.net>, James Morse <james.morse@arm.com>, 
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>, 
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
 Dave Anderson <anderson@redhat.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 x86@kernel.org, linuxppc-dev@lists.ozlabs.org, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>
X-MC-Unique: CFe6_OYOOsqkmyvIvxTVyQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_115440_573282_2F35CE7C 
X-CRM114-Status: GOOD (  27.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Akashi,

On Wed, Nov 13, 2019 at 12:11 PM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:
>
> Hi Bhupesh,
>
> Do you have a corresponding patch for userspace tools,
> including crash util and/or makedumpfile?
> Otherwise, we can't verify that a generated core file is
> correctly handled.

Sure. I am still working on the crash-utility related changes, but you
can find the makedumpfile changes I posted a couple of days ago here
(see [0]) and the github link for the makedumpfile changes can be seen
via [1].

I will post the crash-util changes shortly as well.
Thanks for having a look at the same.

[0]. http://lists.infradead.org/pipermail/kexec/2019-November/023963.html
[1]. https://github.com/bhupesh-sharma/makedumpfile/tree/52-bit-va-support-via-vmcore-upstream-v4

Regards,
Bhupesh

>
> Thanks,
> -Takahiro Akashi
>
> On Mon, Nov 11, 2019 at 01:31:19PM +0530, Bhupesh Sharma wrote:
> > Changes since v3:
> > ----------------
> > - v3 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
> > - Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
> >   instead of PTRS_PER_PGD.
> > - Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
> >   'Documentation/arm64/memory.rst'
> >
> > Changes since v2:
> > ----------------
> > - v2 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
> > - Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
> >   ifdef sections, as suggested by Kazu.
> > - Updated vmcoreinfo documentation to add description about
> >   'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).
> >
> > Changes since v1:
> > ----------------
> > - v1 was sent out as a single patch which can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022411.html
> >
> > - v2 breaks the single patch into two independent patches:
> >   [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
> >   [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)
> >
> > This patchset primarily fixes the regression reported in user-space
> > utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
> > with the availability of 52-bit address space feature in underlying
> > kernel. These regressions have been reported both on CPUs which don't
> > support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
> > and also on prototype platforms (like ARMv8 FVP simulator model) which
> > support ARMv8.2 extensions and are running newer kernels.
> >
> > The reason for these regressions is that right now user-space tools
> > have no direct access to these values (since these are not exported
> > from the kernel) and hence need to rely on a best-guess method of
> > determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
> > by underlying kernel.
> >
> > Exporting these values via vmcoreinfo will help user-land in such cases.
> > In addition, as per suggestion from makedumpfile maintainer (Kazu),
> > it makes more sense to append 'MAX_PHYSMEM_BITS' to
> > vmcoreinfo in the core code itself rather than in arm64 arch-specific
> > code, so that the user-space code for other archs can also benefit from
> > this addition to the vmcoreinfo and use it as a standard way of
> > determining 'SECTIONS_SHIFT' value in user-land.
> >
> > Cc: Boris Petkov <bp@alien8.de>
> > Cc: Ingo Molnar <mingo@kernel.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Jonathan Corbet <corbet@lwn.net>
> > Cc: James Morse <james.morse@arm.com>
> > Cc: Mark Rutland <mark.rutland@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > Cc: Steve Capper <steve.capper@arm.com>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Dave Anderson <anderson@redhat.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: x86@kernel.org
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-doc@vger.kernel.org
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (3):
> >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> >   Documentation/arm64: Fix a simple typo in memory.rst
> >
> >  Documentation/arm64/memory.rst         | 2 +-
> >  arch/arm64/include/asm/pgtable-hwdef.h | 1 +
> >  arch/arm64/kernel/crash_core.c         | 9 +++++++++
> >  kernel/crash_core.c                    | 1 +
> >  4 files changed, 12 insertions(+), 1 deletion(-)
> >
> > --
> > 2.7.4
> >
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
