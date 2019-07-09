Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D69DE63498
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 12:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9alt9bZKyG0eiKQVmPhF0fFbx8aptkNSln5Ept6Xl4=; b=aboLhFql57MFGl
	9aDEMUrfuEuXlgp9O3VLh81BdsxjZNvHgD7YYAcf9QzxhGOenTmHLqIdvd2fwQtxP095/0WrDEwkt
	/xFbObesCt/vYVggezrVAcf2IHROWLw6hDYZWwGMgA4yAyki22M6YEVsRvrAVTZPOtoLZsez2YWi4
	Wk7jToeTBCiikm6Kk5yeRf3H6HrR9qqf78VP3QEjOYJDwj8y679Hdjx+sd8GsTEKjEDHA3Uw6kzPz
	Wphz95hJcwmRf/AXRFErW7A2bWmU6tZXq2Fi/40J9U6UvEHcPc5a+xvSiwZoJqmUPMQt3toKLzcvO
	N8kFnRM9O1mGFGFhojdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknmz-0001Li-62; Tue, 09 Jul 2019 10:56:01 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknmu-0001KZ-Dd
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 10:55:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id s49so17362707edb.1
 for <kexec@lists.infradead.org>; Tue, 09 Jul 2019 03:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CuR0e69I7mgSfC2aZ+6Blt0AlnXi6b5+QGMHj0cl8wQ=;
 b=H3WlmKuijQsSU0a7TLuEFl5089i9cBj5bQlzW0gPvihWPMgP7G94S30SDDV2haeICa
 pGMt/tK8FnppDqzcxSyDW/ZGHEBCDZF9y+SItMZORqBsUrYu7gWSBoRGhqvDlsRgCk3L
 CJFf3ltd8JZY5lsUyIPS3BcsvbXDX+aEDXSYvTa69E4sO6vP3fGrxCVgD3jxFxcK3kWc
 7HgLFC117OAk1gqAJL9/arNhNxDJv5ZGq02OWiM5Qfyr+bIicJ4bYEBP7ydQ+0WcFv/L
 bDTQbUbW7RbXsY8zovPUrWR5ZXV+ttIdrqIfu0jz4gftf9++zkA4rDA/sSp6z/o/n0Et
 6f6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CuR0e69I7mgSfC2aZ+6Blt0AlnXi6b5+QGMHj0cl8wQ=;
 b=MUR3vo+DaP3ZvKxxDUg5HclVokVjK4pbAOicD7fmhs1xVz7pKi5T3QZuvX+vnd2khz
 /MQMFoR5Zp24ggWAbdruGls3Zm1FuE0qzEUmunM5uoY9kUeVdiagVmKvj07OTdtC62hS
 4PpFzBNDMbPoTGEKtJ0YsyQPX5AuTLQh04z4wO/ujMP8N3Oj93t05btb8uI/sylfxVSH
 G4PIMHcg8E23EVaI8WRoSBGAJIv8TeDaqcDMKiuSdhznRodyCqHW3MZt65uNdyCtS/Iz
 jFP/xA2kY9o8Yg5XQfq8bg7bP1pdOyPVKr4KaToVKJhPxuP3kDeUwCfYq4eckwPbz2tC
 LkCA==
X-Gm-Message-State: APjAAAUGBTJhnLwUrIFlQvnl23hZ78LEMb3LNPmgV9w/ds+UJ+SdKjh2
 G8ZBJ/XQ44Q4Zcs3hDVZQIBVf9LEbaDb5lYwfb4OEQ==
X-Google-Smtp-Source: APXvYqx/6vJ3gKcKwyl7lr8xaD9C3sEOSHeUsI11wzdsW0Z+TsR9S678RUXH+ItREyVctYyP5WUXtxp+9zz/FamrbHo=
X-Received: by 2002:a05:6402:782:: with SMTP id
 d2mr25261183edy.80.1562669754543; 
 Tue, 09 Jul 2019 03:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
In-Reply-To: <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 9 Jul 2019 06:55:43 -0400
Message-ID: <CA+CK2bBrwBHhD-PFO_gVnDYoFi0Su6t456WNdtBWpOe4qM+oww@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_035556_879323_1E9C320B 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sasha Levin <sashal@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Eric Biederman <ebiederm@xmission.com>,
 will@kernel.org, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 6:36 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Pavel,
>
> On Tue, Jul 9, 2019 at 2:46 AM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
> >
> > Currently, it is only allowed to reserve memory for crash kernel, because
> > it is a requirement in order to be able to boot into crash kernel without
> > touching memory of crashed kernel is to have memory reserved.
> >
> > The second benefit for having memory reserved for kexec kernel is
> > that it does not require a relocation after segments are loaded into
> > memory.
> >
> > If kexec functionality is used for a fast system update, with a minimal
> > downtime, the relocation of kernel + initramfs might take a significant
> > portion of reboot.
> >
> > In fact, on the machine that we are using, that has ARM64 processor
> > it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> > time:
> >
> > kernel shutdown 0.03s
> > relocation      0.35s
> > kernel startup  0.29s
> >
> > Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> > time increases proportionally.
> >
> > While, it is possible to add 'kexeckernel=' parameters support to other
> > architectures by modifying reserve_crashkernel(), in this series this is
> > done for arm64 only.
> >
> > Pavel Tatashin (5):
> >   kexec: quiet down kexec reboot
> >   kexec: add resource for normal kexec region
> >   kexec: export common crashkernel/kexeckernel parser
> >   kexec: use reserved memory for normal kexec reboot
> >   arm64, kexec: reserve kexeckernel region
> >
> >  .../admin-guide/kernel-parameters.txt         |  7 ++
> >  arch/arm64/kernel/setup.c                     |  5 ++
> >  arch/arm64/mm/init.c                          | 83 ++++++++++++-------
> >  include/linux/crash_core.h                    |  6 ++
> >  include/linux/ioport.h                        |  1 +
> >  include/linux/kexec.h                         |  6 +-
> >  kernel/crash_core.c                           | 27 +++---
> >  kernel/kexec_core.c                           | 50 +++++++----
> >  8 files changed, 127 insertions(+), 58 deletions(-)
> >
> > --
> > 2.22.0
>
> This seems like an issue with time spent while doing sha256
> verification while in purgatory.
>
> Can you please try the following two patches which enable D-cache in
> purgatory before SHA verification and disable it before switching to
> kernel:
>
> http://lists.infradead.org/pipermail/kexec/2017-May/018839.html
> http://lists.infradead.org/pipermail/kexec/2017-May/018840.html

Hi Bhupesh,

The verification was taking 2.31s. This is why it is disabled via
kexec's '-i' flag. Therefore 0.35s is only the relocation part where
time is spent, and with my patches the time is completely gone.
Actually, I am glad you showed these patches to me because I might
pull them and enable verification for our needs.

>
> Note that these were not accepted upstream but are included in several
> distros in some form or the other :)

Enabling MMU and D-Cache for relocation  would essentially require the
same changes in kernel. Could you please share exactly why these were
not accepted upstream into kexec-tools?

Thank you,
Pasha

>
> Thanks,
> Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
