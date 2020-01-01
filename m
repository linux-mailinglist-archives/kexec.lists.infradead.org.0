Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F85B12E021
	for <lists+kexec@lfdr.de>; Wed,  1 Jan 2020 19:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X8v4UH5QsTMazlm1mng6yo9pKjTiPgOHQ/GfuCDIAFc=; b=TgKxqqeea9dEji
	14CnNAgGgCUifMlKt2svmEGnvN0SYfICgbTkojfmkQkhaGTUxaB2/4lJ66ZTw4odUNFYOZITL7QGV
	lIYI/oOk05r8hSbQGkhYwhlRdKoJL+nrKUcTltPAW+R2HW+40KcXgFxnNMCp4BAMosKZcbZtxFCOq
	sNkHnwFQf3mTBPu2BNgtS043o1IHhG35AD0I/VTusyQX8sj6oPd7ZoQwLiw2UyrvPi4v84DVNU0uR
	IaYL7XbcI9Nn7dG+CwGCQwzrK6oVTh2aKelBgPCZOQ2f2OnglHo/6w2pxdMbURY8N2lRxq0DMqKrb
	4qrDVd62mVNf1VjeIdKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imiri-0000tn-S2; Wed, 01 Jan 2020 18:37:06 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imirf-0000sv-01
 for kexec@lists.infradead.org; Wed, 01 Jan 2020 18:37:04 +0000
Received: by mail-ot1-x342.google.com with SMTP id 77so54049941oty.6
 for <kexec@lists.infradead.org>; Wed, 01 Jan 2020 10:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r8+LgrDTXxrAyzAw0RwZGEpTji/oOjaXA22yzdPDbF0=;
 b=ER+E7dCHHwS2LyjRD/sibbzhy4ilLrTDS0sxOpsAWtNtWZJIzJ4UsXI3Xuc0X39nFR
 G26VajH34OccYtdr+Spk/68MUyy6L3p5BLJ9hOzQd2yrRlszfiDp47kYOZaYTgEKf4os
 T4voUx1tZuDlevN8qv5QBHIjfqke6x6qv3H10OFOoCExN9dsWBS4BBZsYFLPPMO1Zkar
 nbwwUioLXnA/2pNkAakYWqCGgsqFk7LnlpZyEHUxuu7ebvKiM99vhN9fMMZbCV3a6XCN
 hIIp37SNuEpLr9F/Ypn7IhoqWkyhVkrYKWeb/1cuAT+i001byfj4LipH4tE5sGrd3Ypm
 a2KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r8+LgrDTXxrAyzAw0RwZGEpTji/oOjaXA22yzdPDbF0=;
 b=F19vtny0vRbsJfPklAo9j08oq4j9rVLSi5yfrkIquy6p8zU77XIdFQksU2vGyKEKGO
 izobmXjcU2CDkqZGtJ+F4RLe74aLRuQSqUtIRXWkb3AzmsZ3wdryZSt6VKNaWdkDLLHi
 mo1TRz/JLFHa30SYuW3FmvqGGd/KHEa4VBPGFgOTIQR26GbYdR0n0I+La/5lCeaFGH1A
 L6B/3QDAMF/hgv7srDuk2ejXGgBLd4z6wfEGTqHqUSRmRT+nJ0LywHQ5fORhAZwfR5lv
 RyTU1WpZdhQBE5e1DikdWlIk7Mzm+bALj4ybfwHM3Ic05wANzPd3StN2GHULb2sXg/RQ
 w1Qw==
X-Gm-Message-State: APjAAAXO+n8k02G80RYClCviR5tluB7+ioEvMLWaCjnYsJe4k4c+PKBd
 dmE1LQ75a/5ns3mZLNvG2lm+m+0ra/JGJ/2CXjVEoQ==
X-Google-Smtp-Source: APXvYqxWXdgchp08m0zeoknzHEMFoL9O+rhOarc8rGB6n6O+4jpJ7xdl8iJQjfEJCFf7EFr4drxCSnfwuKevgQPjq8w=
X-Received: by 2002:a9d:68cc:: with SMTP id i12mr50572049oto.207.1577903821166; 
 Wed, 01 Jan 2020 10:37:01 -0800 (PST)
MIME-Version: 1.0
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200101045141.GA15155@dhcp-128-65.nay.redhat.com>
 <CAPcyv4hSB9B5tiKVwtNOgDS6KS2Pj6f962OPBZVZpPjrBt6Z8A@mail.gmail.com>
 <20200101061505.GA15717@dhcp-128-65.nay.redhat.com>
 <20200101062047.GA16393@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200101062047.GA16393@dhcp-128-65.nay.redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 1 Jan 2020 10:36:50 -0800
Message-ID: <CAPcyv4ivPw7Z8y0yBT4j41=cgLqGjKafHHB==h=cC8aXvHK7Kw@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] efi: Fix handling of multiple efi_fake_mem= entries
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_103703_101384_DEA32316 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 10:21 PM Dave Young <dyoung@redhat.com> wrote:
>
> > > Does kexec preserve iomem? I.e. as long as the initial translation of
> > > efi entries to e820, and resulting resource tree, is preserved by
> > > successive kexec cycles then I think we're ok.
> >
> > It will not preserve them automatically, but that can be fixed if
> > needed.
> >
> > There are two places:
> > 1. the in kernel loader, we can do similar with below commit (for Soft
> > Reseved instead):
> > commit 980621daf368f2b9aa69c7ea01baa654edb7577b
> > Author: Lianbo Jiang <lijiang@redhat.com>
> > Date:   Tue Apr 23 09:30:07 2019 +0800
> >
> >     x86/crash: Add e820 reserved ranges to kdump kernel's e820 table
>
> Oops, that is for kdump only, for kexec, should update the kexec e820
> table.  But before doing that we need first to see if this is necessary.

We can cross that bridge later, but I expect it will eventually be
necessary. The soft-reservation facility will become more prevalent as
more platforms ship with DRAM differentiated memory ranges, like
high-bandwidth-memory, and the system needs to reserve it from general
kernel allocations. See commit 262b45ae3ab4 "x86/efi: EFI soft
reservation to E820 enumeration" and commit fe3e5e65c06e "efi:
Enumerate EFI_MEMORY_SP" for more details.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
