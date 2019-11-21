Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14632104989
	for <lists+kexec@lfdr.de>; Thu, 21 Nov 2019 05:06:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/uVpAzR99imdi/5tu8x5Twa2R/y9/4u6ywg3pkPtKg=; b=oLBh/BKE9pjVsy
	irur2rtJeY1U7zwusRaple6hxSukV9fTBEIF6OD+ywugxzgOiXZEdktf3b8wH7QH3tzz+IglD/Udb
	JwDnEh6H90WMKPRxwc39iQKxXr+Pd7nlWiiERwvpeW3xaCGhn7J5qqDWgrHCiJ3QiT5FAR+F/mvFw
	gCJS3QCZe2+Ya5PILsJM8Rkpl97+th7Z46IBKVp8+/Ov2QHa3l+iXSvYPa+y9pz1Yar8YfMd/Exdw
	N5u1BbOSahCgcq9p78PKhpmg2JEClx/7KWJBLyrttKpw10tPYQWGJJI9lmirku4mSWI6ApVH9eqdJ
	pO/0dGQqSPyAJ6+VUFuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXdjI-0003EK-3d; Thu, 21 Nov 2019 04:06:04 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXdj5-00034b-Ce
 for kexec@lists.infradead.org; Thu, 21 Nov 2019 04:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574309147;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ddcL9As6t6N2W7FClqz+MM4Vj5YcYH8nBzk/ipEcve0=;
 b=YlEOov1KgX/dyD+QILmBCPs9izD2voLE9iPBpCobzFsbRqC4YBDrE4m3Ij1yABITjtZ7Gu
 Ru9o2sD9pkCkT0GOkII7yR1I+opn4dPET0EW7QRkhysmmSeMs4YbxjHyTAYX/bqJMnPwyn
 5tSS7m3ij4pqZVq4faTlrNom2gLAaaA=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-251-e6ahuwNCO-GQZeg_U9ELsw-1; Wed, 20 Nov 2019 23:05:44 -0500
Received: by mail-lf1-f69.google.com with SMTP id m2so499923lfo.20
 for <kexec@lists.infradead.org>; Wed, 20 Nov 2019 20:05:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XAdRIJ2WowQ38gyWjLPpmLE8JvGLeIMdMt69fOJjIH4=;
 b=UPA16Xuv57Nn2yUNgevjlOZ7ORnyijTJevGYQU6ayaPnFa8xNzXpp7orOQ2EZLiY/C
 CBum5RT2IlNFO3vn3fRdfb2lLACUSexfht8oDJBUEToF6HFgcc/mOybijSTNdfa3QDak
 0iMlocS5rib7ZMTJZm97ZF9G2fWPYMaLV4CW7u4hQeRXbEuRB6fgA+bp4gPVihjSVSna
 bmIuHrKL978L+oSEwJDVOvkNXMpOt73JNzGQ5xp550p/9RkZikCdRZFZUTJAP90mUyqf
 1naVObFNLay+IJ/v9EqPr6+hOnrKbA/MX0sFyj7b7bpHytHt52cyS79bUQ+q27grc6qv
 dzSA==
X-Gm-Message-State: APjAAAX3OdBEbS9RWRWwy2Ky+KpM3/GdxtCrUwNw8HXxiwXpt/BdphNd
 vlqmApo4+4JBnmZfwEd7NeTbR6JRf20Arncpg63+delcIxC6N09IdHyyT6qtiwUaWltwEkMue3g
 pG9M1A9Cw7FwZJkBbpP34BR8BRCwgP6IlH6R3
X-Received: by 2002:a19:bec5:: with SMTP id o188mr5652118lff.140.1574309143458; 
 Wed, 20 Nov 2019 20:05:43 -0800 (PST)
X-Google-Smtp-Source: APXvYqy5dgsLiGw/+gMUCqCKW9wbveCY62iBIDQZk8TIYLgEUZuvgMt3xbY56NyFoSWIFRlYSXo+FYcMeO7+9TakXnE=
X-Received: by 2002:a19:bec5:: with SMTP id o188mr5652105lff.140.1574309143167; 
 Wed, 20 Nov 2019 20:05:43 -0800 (PST)
MIME-Version: 1.0
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
 <20191121032047.GB23368@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20191121032047.GB23368@dhcp-128-65.nay.redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 21 Nov 2019 09:35:29 +0530
Message-ID: <CACi5LpOXW+HTsAZfxbwnCnypSdpk4=t8bsS=SRx0crc=4261VA@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: Dave Young <dyoung@redhat.com>
X-MC-Unique: e6ahuwNCO-GQZeg_U9ELsw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_200551_504041_3E898BE1 
X-CRM114-Status: GOOD (  22.98  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Paul Mackerras <paulus@samba.org>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Anderson <anderson@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>, Boris Petkov <bp@alien8.de>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Dave,

On Thu, Nov 21, 2019 at 8:51 AM Dave Young <dyoung@redhat.com> wrote:
>
> On 11/11/19 at 01:31pm, Bhupesh Sharma wrote:
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
>
> Soft reminder:  the new introduced vmcoreinfo needs documentation
>
> Please check Documentation/admin-guide/kdump/vmcoreinfo.rst

Sure, will send a v5 to address the same.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
