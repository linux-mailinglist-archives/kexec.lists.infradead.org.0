Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144666347B
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 12:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QiA/SpWJ0zAlL+rRJWDMgdUka3zNGpCygRjsUdLqvs=; b=Zz/MsfTF0UuJgR
	BUr0O7Y05r9d7pdgbgUb1JEOy5PduK+ZjZH82srGZ8SRG3YKKLyh4L04EDQElFf1NBgUa/dCL6X4U
	T76O8ulwoQytlcT59MUM6VqjuvaRFhqykYgMx0LYTVWgaDAlnidR+x7BCCV0coJoDsuM7QY7Qrymw
	4jXNy0bYDnbDRpStbb4yagMh4bWV70M7CRtUo0UrRzSWhF0VlxFShXslnI25P7z64ByZURCMDxqlu
	3iigqW2wgNDc9KlLRHvFpT9FGDUjqCbrbPq87I7moZ2HxKr3DqqiHTtAteN0emLoNlq8lHZwfIqJm
	80mj4J/BIyrirLLImQQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hknaP-0004V0-Qx; Tue, 09 Jul 2019 10:43:01 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hknaL-0004US-5W
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 10:42:58 +0000
Received: by mail-lj1-f196.google.com with SMTP id k18so19054962ljc.11
 for <kexec@lists.infradead.org>; Tue, 09 Jul 2019 03:42:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2WJ4m/DGadKDJn7LI59T/jmaK1sNDv+NLzWApQUyooQ=;
 b=YE+Vgc4YgzYXTkPFKrV7T1l/SIslF3RDHHY6DP0/fx+rc0EiVJJ0r8O1sgWnt+/HfL
 Jp6azSS98fHOw8Vp3sAqyDIs0ApBsgJIScTWQloDjoVOYgsbyhTOi7XpRQ3n8+CHLMZS
 8AwCjI3/lqOcznaxf6BYTr2jDkDuCwGITaNYAxnQ6Gt+aPjGHcJoVm5JYao5sqkNlWVy
 W3Q1618mBHyAN/D0fvu43LkIg31vM0xbFY7MtMaPB1GZfuCTdR3gYsD5xAHlPhLgT20r
 DyehO9zzuqu4/n6eHNGDTqhOobk5m0dVlIDI48rb99+M3zmGcWmVXxQlQbhNO57f/kOg
 DnhQ==
X-Gm-Message-State: APjAAAVwNGznXddK1lBCU6wb2TbfDrRHxAU6qysdCrrBWEc8OXJWa7qA
 c081sINDUBw0TxDQ7mZ7x9MnXvoeM8gr3dFT7w2IXg==
X-Google-Smtp-Source: APXvYqxPHBLg8W3ob44pbfsQreCW94qFhPE+cEwluc5uu4+OgXOPXOW4idA52S+Cl1VzOEXfq3Z9ZQKY+KVJgWw/EsE=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr13056704ljk.93.1562668577294; 
 Tue, 09 Jul 2019 03:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
In-Reply-To: <20190708211528.12392-1-pasha.tatashin@soleen.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 9 Jul 2019 16:06:05 +0530
Message-ID: <CACi5LpNGWhTnXyM8gB0Tn=682+08s-ppfDpX2SawfxMvue1GTQ@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: Pavel Tatashin <pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_034257_212493_3609DD1F 
X-CRM114-Status: GOOD (  19.70  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sashal@kernel.org, Jonathan Corbet <corbet@lwn.net>,
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

Hi Pavel,

On Tue, Jul 9, 2019 at 2:46 AM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> Currently, it is only allowed to reserve memory for crash kernel, because
> it is a requirement in order to be able to boot into crash kernel without
> touching memory of crashed kernel is to have memory reserved.
>
> The second benefit for having memory reserved for kexec kernel is
> that it does not require a relocation after segments are loaded into
> memory.
>
> If kexec functionality is used for a fast system update, with a minimal
> downtime, the relocation of kernel + initramfs might take a significant
> portion of reboot.
>
> In fact, on the machine that we are using, that has ARM64 processor
> it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
> time:
>
> kernel shutdown 0.03s
> relocation      0.35s
> kernel startup  0.29s
>
> Image: 13M and initramfs is 24M. If initramfs increases, the relocation
> time increases proportionally.
>
> While, it is possible to add 'kexeckernel=' parameters support to other
> architectures by modifying reserve_crashkernel(), in this series this is
> done for arm64 only.
>
> Pavel Tatashin (5):
>   kexec: quiet down kexec reboot
>   kexec: add resource for normal kexec region
>   kexec: export common crashkernel/kexeckernel parser
>   kexec: use reserved memory for normal kexec reboot
>   arm64, kexec: reserve kexeckernel region
>
>  .../admin-guide/kernel-parameters.txt         |  7 ++
>  arch/arm64/kernel/setup.c                     |  5 ++
>  arch/arm64/mm/init.c                          | 83 ++++++++++++-------
>  include/linux/crash_core.h                    |  6 ++
>  include/linux/ioport.h                        |  1 +
>  include/linux/kexec.h                         |  6 +-
>  kernel/crash_core.c                           | 27 +++---
>  kernel/kexec_core.c                           | 50 +++++++----
>  8 files changed, 127 insertions(+), 58 deletions(-)
>
> --
> 2.22.0

This seems like an issue with time spent while doing sha256
verification while in purgatory.

Can you please try the following two patches which enable D-cache in
purgatory before SHA verification and disable it before switching to
kernel:

http://lists.infradead.org/pipermail/kexec/2017-May/018839.html
http://lists.infradead.org/pipermail/kexec/2017-May/018840.html

Note that these were not accepted upstream but are included in several
distros in some form or the other :)

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
