Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE561FA004
	for <lists+kexec@lfdr.de>; Mon, 15 Jun 2020 21:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cn1Ihd+BuHqkpVBJARd0SS+vPJ13Bx9ACDX2MEigdX4=; b=N7NaZQGXVZCnJP
	XCApOw/XH+Mfaro/RhHzcPzEdgeX6OhgZFSoC33ghpjtu1yr2Bg1pbRhHcJ8VacCHFM5VbP+QP9d3
	51gYiQee9mBCTWvUkUZnwiHiyibx4A66FVWPTB4NqhyRiaF+t2LAHbR+zwDwj6hoUgHjIarQOfBAd
	tzak4n12qwyKYo6TntVswVrM6AGoOKzrlPX9WOo/JiB4JbIJGfs3o/DgiXLZbZmGSYITiXWDOyTKA
	5Kungj0fNRlvGAxwq0/m/9hS7qtzae5SFeLgX6GlbddNybo8IHXXtdII1nIhnISS3R6Dcyy/jRXbh
	fRfIaqsehFAimd6+MSGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkuWy-0006fb-1p; Mon, 15 Jun 2020 19:12:28 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkuWo-0006VS-L7
 for kexec@lists.infradead.org; Mon, 15 Jun 2020 19:12:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592248331;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=gBDypd72AayeylkkdmJfk3R+s+aCIKax33JorcXAteU=;
 b=iSQo2hhfB4zG54+JojC0qxwn7Dai+uBQcF+ofx21SQOIRLS0/PuJsx/3JGRCgSVP/zJ3bU
 ewXmvzLuwUTxMoeSizCKEtqLm403wxSJvMCLTxpeO2ZKHnl/mVUM5/jGR+CUVMgi7NSkXT
 uH6NVQwOqFMiC48koaHTV5ZjKzKshpk=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-89-5zguwzSeOSuX-HBpjmOWrA-1; Mon, 15 Jun 2020 15:11:51 -0400
X-MC-Unique: 5zguwzSeOSuX-HBpjmOWrA-1
Received: by mail-qv1-f69.google.com with SMTP id q5so13747485qvp.23
 for <kexec@lists.infradead.org>; Mon, 15 Jun 2020 12:11:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gBDypd72AayeylkkdmJfk3R+s+aCIKax33JorcXAteU=;
 b=paSGy0VqRYUS0kMmRwB5byphdiuFX/F6wHCfZDaaHKKVajgyiCzJ+kmXbY8X5/70Y+
 6/plL7Jk3Gf+azwRM2YezaXaElamD/T1ZM4UGLxOlRuEf/8WohsJb1FVdIjMvqxN2+6E
 wEfR4F6n2gm0Lx17goeGntAZBLS8xocy9N9agWVqK+yQK7A2Y5isZakttMDDPM4Xeij6
 /k8VeJfS6E231crYzLz0Q1D2kJuV6JMvOgdQ12R9kJ6dUSWqjshUt7AunV02b6Z0jiqZ
 9/E6CTEsG08JXsHFAzONA3kIssipmmZrhOhtdo0l2GznTaSsfe1lIMIbUMrGx+xgxHNw
 XVAA==
X-Gm-Message-State: AOAM533Z3xaf+vlhj5fnqu0GHn1c5Cz5ZRkIOAkpujPVrmE6QjKwR+Gb
 aL6XWHSChxEwm6/qFCySpsMj81nvQO2sxEkj8Ol7iMInxlX91JBo9LPc1On/ijRsPSg4Pg0Dwbv
 cPsErbJ/LibKKe8GLh/i7IvBn9QMUNOQHWd4g
X-Received: by 2002:a0c:e254:: with SMTP id x20mr25376403qvl.153.1592248310803; 
 Mon, 15 Jun 2020 12:11:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwj+hvBQAKPt+byrNt/W/RfLxG8oA1B0DgJCFqfYRYBqVFrGbuH2lT9c3kQXLnUlruGJeek3QiU4rpm8VmJsTc=
X-Received: by 2002:a0c:e254:: with SMTP id x20mr25376377qvl.153.1592248310457; 
 Mon, 15 Jun 2020 12:11:50 -0700 (PDT)
MIME-Version: 1.0
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
 <CACi5LpMKSNz=_OQWmEQ2kaswbjAONjn2pXQiu=jCA=wMt3wGCQ@mail.gmail.com>
In-Reply-To: <CACi5LpMKSNz=_OQWmEQ2kaswbjAONjn2pXQiu=jCA=wMt3wGCQ@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 16 Jun 2020 00:41:37 +0530
Message-ID: <CACi5LpNYtAFq6PYjsYArViz+gzuh5-_CKZLBqo826oWhERrx8A@mail.gmail.com>
Subject: Re: [PATCH v6 0/2] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, x86@kernel.org, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_121218_791195_61FF2DCF 
X-CRM114-Status: GOOD (  29.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 John Donnelly <john.p.donnelly@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, Steve Capper <steve.capper@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linuxppc-dev@lists.ozlabs.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Scott Branden <scott.branden@broadcom.com>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, James Morse <james.morse@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Amit Kachhap <amit.kachhap@arm.com>, Boris Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 Dave Anderson <anderson@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 Paul Mackerras <paulus@samba.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Catalin, Will,

On Tue, Jun 2, 2020 at 10:54 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hello,
>
> On Thu, May 14, 2020 at 12:22 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > Apologies for the delayed update. Its been quite some time since I
> > posted the last version (v5), but I have been really caught up in some
> > other critical issues.
> >
> > Changes since v5:
> > ----------------
> > - v5 can be viewed here:
> >   http://lists.infradead.org/pipermail/kexec/2019-November/024055.html
> > - Addressed review comments from James Morse and Boris.
> > - Added Tested-by received from John on v5 patchset.
> > - Rebased against arm64 (for-next/ptr-auth) branch which has Amit's
> >   patchset for ARMv8.3-A Pointer Authentication feature vmcoreinfo
> >   applied.
> >
> > Changes since v4:
> > ----------------
> > - v4 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
> > - Addressed comments from Dave and added patches for documenting
> >   new variables appended to vmcoreinfo documentation.
> > - Added testing report shared by Akashi for PATCH 2/5.
> >
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
> > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > Cc: scott.branden@broadcom.com
> > Cc: Amit Kachhap <amit.kachhap@arm.com>
> > Cc: x86@kernel.org
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Cc: linux-kernel@vger.kernel.org
> > Cc: linux-doc@vger.kernel.org
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (2):
> >   crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
> >   arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
> >
> >  Documentation/admin-guide/kdump/vmcoreinfo.rst | 16 ++++++++++++++++
> >  arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
> >  arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
> >  kernel/crash_core.c                            |  1 +
> >  4 files changed, 28 insertions(+)
>
> Ping. @James Morse , Others
>
> Please share if you have some comments regarding this patchset.

Ping. I think we have two Tested-by available from Oracle and Marvell
folks on this patchset and no further review-comments.
Can you please help review/pick this patchset via the arm64 tree?

User-space utilities like makedumpfile and crash have been broken
since 52-bit VA addressing was enabled on arm64 kernel, so distros are
obliged to carry downstream-only fixes for these user-space utilities
to make them work with the kernel which support 52-bit VA addressing
on arm64.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
