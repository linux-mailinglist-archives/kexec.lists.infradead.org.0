Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC74FCE80
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 20:11:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FOC3KWxOJFbQQXEJCzFdPg8/MGaK6I7WTZ6CMvNxaE=; b=tX+FmBY9+UAXHy
	ebgIpqh7codW8KQRlYULgVctXSPztP3E20rCUGGL96upg3/2CtyIuayaI1LXjSBZVQpVY0QuBzqHE
	DGqhRdnlKRtG5tjHLX+EF8giqTaiPZz4YlJrk/LQNSGnWX/+HeNRuJKC0IvG0/HLGxMBF1HAAseZh
	IlLQjCuYIh8U0OYctjxvyUykHCiu3cBI7oIsPMRmL2ETgM2TvQpYuzmRrjX9Ee1qj5Ek3DlgAruBM
	2Fbu3EyuNtyuaDLrgULBcigpo9Ssdj0zqfAmGUACMLnQjKnRhpNS/veJt/63LLhhXwdxFoyt8OJAx
	8g2gqHdQlxyh2rvJChXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVKWL-00014U-54; Thu, 14 Nov 2019 19:11:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVKWH-00013g-89
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 19:11:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573758662;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7dFqT60wDyWvJNbv9Fa/4UCoxWe5XddCt08mjvVZH0o=;
 b=HcwSm0tS02JrE2cwdfs6yNko37LtqRcRI7yESs08/zNWdEptfQDUMd5IOJwpxtV0NJQot4
 tKBJ3FHFl4Ry4pefBoJSba/k7AO8oYgfVP3nBUF89N2Uq04xr1GUk3tS8fs1khh7rOKECn
 cVhDiyEw0UJw9CElAmC+4uuhGAW/0Gg=
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-38-UgpLXQ0fO6KoaVaLXDn3Jw-1; Thu, 14 Nov 2019 14:11:00 -0500
Received: by mail-lf1-f71.google.com with SMTP id g143so2258690lfd.22
 for <kexec@lists.infradead.org>; Thu, 14 Nov 2019 11:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6VP2Kczv7w0cWIR3+j2gXWkwV+THO+gP5W8SVW8CAPg=;
 b=ZhxFz5dkPJJzNLpQqK0mpwoMsqJwLbCebX1/DjLI9wI29XCDYKQfUuctmQV4wj1z2k
 Zx4Z8yS+VXYCUd0BemOcX1gN20E1O5a40uy1TH457m1SiFLPaBwl02URShILRgrvKK7x
 VdHTcpuECHE2xhMu1bfDsLeW2Z2exjc1bYeZR6+PAiEel0f7vTDgZ3D8Lp7Bb3yNvSOQ
 d1U8/8WQsZmtJlQfYAH5KxJYKauVRK4ck40bdlf+JmQJ7A/VYKeFdgHLFxaVFz62kRlu
 eEdcS5QsQhGdnHFlcg2zymKTnCgFJB+ji5HeeDAvL1ttzuqTW8UMFG+fzP8uGnAFRmJO
 MlaQ==
X-Gm-Message-State: APjAAAUFz0X06uTuDZnpglPAGTqg8/aFTchxaD46zpT49tVb0bC9EeaK
 iB7tNhqNdWyFb48jEDil0Iu6VRAlj3m7jD4Ij/wl5ze1LENp2Vdq3UcZq3n005RUqV3afhKCbrI
 Q/z4EvqZzhDFUpZ+gxC3pLiamm7SO+RxlJjjh
X-Received: by 2002:ac2:5144:: with SMTP id q4mr8288494lfd.36.1573758659348;
 Thu, 14 Nov 2019 11:10:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwtIWySrESx9Uf/hHPaRqyqcXtrEDRIq2POR0S6AcUUn6ifL58NaGBby0VvqB8BnhiNrEwdgdro7h3AGhW/QAw=
X-Received: by 2002:ac2:5144:: with SMTP id q4mr8288465lfd.36.1573758659089;
 Thu, 14 Nov 2019 11:10:59 -0800 (PST)
MIME-Version: 1.0
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035950A0@BPXM09GP.gisp.nec.co.jp>
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC035950A0@BPXM09GP.gisp.nec.co.jp>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 15 Nov 2019 00:40:35 +0530
Message-ID: <CACi5LpPiRsu7-Lv9YMw4FNxP64=sXHjegZwmHD7VJvSL63gmCQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
X-MC-Unique: UgpLXQ0fO6KoaVaLXDn3Jw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_111105_365160_A416AF2F 
X-CRM114-Status: GOOD (  30.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Kazu,

On Thu, Nov 14, 2019 at 3:31 AM Kazuhito Hagio <k-hagio@ab.jp.nec.com> wrote:
>
> Hi Bhupesh,
>
> Thanks for the updated patchset.
>
> I'm taking a look at this, but I will be out of office from tomorrow
> until Nov 29th, so please expect some (long) delays in my response..

Thanks a lot for your message. Sure, let's discuss this more when you
return from your holidays.

Regards,
Bhupesh

>
> Thanks,
> Kazu
>
> > -----Original Message-----
> > Changes since v3:
> > ----------------
> > - v3 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-March/022534.html
> > - Added a new patch (via [PATCH 4/4]) which marks '--mem-usage' option as
> >   unsupported for arm64 architecture. With the newer arm64 kernels
> >   supporting 48-bit/52-bit VA address spaces and keeping a single
> >   binary for supporting the same, the address of
> >   kernel symbols like _stext, which could be earlier used to determine
> >   VA_BITS value, can no longer to determine whether VA_BITS is set to 48
> >   or 52 in the kernel space. Hence for now, it makes sense to mark
> >   '--mem-usage' option as unsupported for arm64 architecture until
> >   we have more clarity from arm64 kernel maintainers on how to manage
> >   the same in future kernel/makedumpfile versions.
> >
> > Changes since v2:
> > ----------------
> > - v2 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022456.html
> > - I missed some comments from Kazu sent on the LVA v1 patch when I sent
> >   out the v2. So, addressing them now in v3.
> > - Also added a patch that adds a tree-wide feature to read
> >   'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).
> >
> > Changes since v1:
> > ----------------
> > - v1 was sent as two separate patches:
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022424.html
> >   (ARMv8.2-LPA)
> >   http://lists.infradead.org/pipermail/kexec/2019-February/022425.html
> >   (ARMv8.2-LVA)
> > - v2 combined the two in a single patchset and also addresses Kazu's
> >   review comments.
> >
> > This patchset adds support for ARMv8.2 extensions in makedumpfile code.
> > I cover the following two cases with this patchset:
> >  - 48-bit kernel VA + 52-bit PA (LPA)
> >  - 52-bit kernel VA (LVA) + 52-bit PA (LPA)
> >  - 48-bit kernel VA + 52-bit user-space VA (LVA)
> >  - 52-bit kernel VA + 52-bit user-space VA (Full LVA)
> >
> > This has been tested for the following user-cases:
> > 1. Creating a dumpfile using /proc/vmcore,
> > 2. Creating a dumpfile using /proc/kcore, and
> > 3. Post-processing a vmcore.
> >
> > I have tested this patchset on the following platforms, with kernels
> > which support/do-not-support ARMv8.2 features:
> > 1. CPUs which don't support ARMv8.2 features, e.g. qualcomm-amberwing,
> >    ampere-osprey.
> > 2. Prototype models which support ARMv8.2 extensions (e.g. ARMv8 FVP
> >    simulation model).
> >
> > Also a preparation patch has been added in this patchset which adds a
> > common feature for archs (except arm64, for which similar support is
> > added via subsequent patch) to retrieve 'MAX_PHYSMEM_BITS' from
> > vmcoreinfo (if available).
> >
> > I recently posted two kernel patches (see [0] and [1]) which append
> > 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' to vmcoreinfo in the kernel
> > code, so that user-space code can benefit from the same.
> >
> > This patchset ensures backward compatibility for kernel versions in
> > which 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' are not available in
> > vmcoreinfo.
> >
> > [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
> > [1]. http://lists.infradead.org/pipermail/kexec/2019-November/023962.html
> >
> > Cc: John Donnelly <john.p.donnelly@oracle.com>
> > Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> > Cc: kexec@lists.infradead.org
> >
> > Bhupesh Sharma (4):
> >   tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available)
> >   makedumpfile/arm64: Add support for ARMv8.2-LPA (52-bit PA support)
> >   makedumpfile/arm64: Add support for ARMv8.2-LVA (52-bit kernel VA
> >     support)
> >   makedumpfile: Mark --mem-usage option unsupported for arm64
> >
> >  arch/arm.c     |   8 +-
> >  arch/arm64.c   | 438 ++++++++++++++++++++++++++++++++++++++++++---------------
> >  arch/ia64.c    |   7 +-
> >  arch/ppc.c     |   8 +-
> >  arch/ppc64.c   |  49 ++++---
> >  arch/s390x.c   |  29 ++--
> >  arch/sparc64.c |   9 +-
> >  arch/x86.c     |  34 +++--
> >  arch/x86_64.c  |  27 ++--
> >  makedumpfile.c |   7 +
> >  makedumpfile.h |   3 +-
> >  11 files changed, 439 insertions(+), 180 deletions(-)
> >
> > --
> > 2.7.4
> >
> >
> > _______________________________________________
> > kexec mailing list
> > kexec@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/kexec
>
>
>
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
>


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
