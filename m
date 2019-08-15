Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271FE8F1E7
	for <lists+kexec@lfdr.de>; Thu, 15 Aug 2019 19:16:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KUxNdOhW4I90SXhe/7LgdrvgaZ3Er2WnYXTCvakPDew=; b=Wr/UTqufh/fO0jPQIWgWpMoZaK
	3LK7Nr1A51h5AHZlE/LnsVuxEOpTDWsa4ucFCLgSkrt90JNBU1jZ7cYgmVJ8omKYMJCOgQeL2gzlw
	IWCFntaZFJnvctv0XJ3CAyZXRm0LlAK0e8XjEj/+Arf/t6am5RjTuo5AxC4O7XD95W0TwVgBAV9vx
	ByGLd3zVtfjaMyC6+MszJmCxatkTJCJrSgojdELEBMmEpyfr8RkrtHEl4gTiR90tZz9Iw32v0kZbo
	Lw+p/rIVvC22qqFsEa2D0vNUpXNLAvBBVeZrpGb2wu4gVvYqYrBvws+tEaKSWmWgXuto7wNioiYEj
	iOiv68ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyJMg-0008S9-Tx; Thu, 15 Aug 2019 17:16:43 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyJMX-0008RJ-Cz
 for kexec@lists.infradead.org; Thu, 15 Aug 2019 17:16:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id r12so2725472edo.5
 for <kexec@lists.infradead.org>; Thu, 15 Aug 2019 10:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=HvH/9QkJPpLkWxDBArczHr4uoHoZvdo767/gla+0Cq4=;
 b=pKHPfBNQUfx3iIaUdBEjdoQBnwVE33BsffdbfdtS4c7cz0NChF2ssj7n0oUNYvLBml
 1GW7C9tC38qeN54CAe2livGh5ZgyPHx1kBuk/IvtFXrnFpJB8Ek/GI0NZfSHqLaPD9oi
 2UtsZ5gQknSqtRiljMnlxI6c8SaAZBr3tZ3nhrRXJUZrIF7INC4o3B2dXzMQTBEzum7c
 jLOY3vrE7M080p/0Pboi6nDaUWr6lRajGfmDoPJJol5qFQmqtvJbODsLpb22T2hQaxvL
 NgnhaiHSKPHsKDlHk1m/gx0MjaiOiKCkfxPxDFJOO4hcsmg0h7rmTCnKZY6RTOJVN9Jc
 fE/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=HvH/9QkJPpLkWxDBArczHr4uoHoZvdo767/gla+0Cq4=;
 b=El+TduUNiWZTN39LejCudP3gH3rnBQ4zC2vRgZ+mpPf/bhjbLcG59f1Clp/jcw95Wg
 OIACfcX3OXoYdAwy2X7BnqXccK1PqhxyeUFEHR3ZSxSf2i4o1q4EMxc2dh9raDL+WdeG
 3hDyB9d8UzwvJ3ArVxtkc/MXPtNlnMfW1ueZgwJMVlbjaoX/p21/w6TZt1wZbozJgW8p
 tRUVVVEwjUi98OWChZ2bkdNIvXYaFtMIVKU7xgUYjp6qCzqYqFIG4Qop9Sg6GSNTLF6p
 6YDzzz5bv9MrIJK/QC0Ex9i7fbZ7O5hzyvEx2Yp6Yj8n1iwf3DrPPUhFQMkBnLbL0Qhd
 dKMQ==
X-Gm-Message-State: APjAAAUYyB3em0XsJsJVnm5Jk1/OoSlIisnqvrZgXJkVG9AnZtxXBJze
 2sfjoin6humnLTnAJVI8jYpXWVEkmw8hAcNGufiddQ==
X-Google-Smtp-Source: APXvYqxjQMegw/1NCxtxkMv+zw0eXzahg5VKDPdm64IBjqfvOgF3V96t+tXb8M/4zCohVqTP+H/B/YvKeSv6kTxEdbs=
X-Received: by 2002:aa7:d48c:: with SMTP id b12mr6512796edr.170.1565889391108; 
 Thu, 15 Aug 2019 10:16:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190801152439.11363-1-pasha.tatashin@soleen.com>
 <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
In-Reply-To: <CA+CK2bADiBMEx9cJuXT5fQkBYFZAtxUtc7ZzjrNfEjijPZkPtw@mail.gmail.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 15 Aug 2019 13:16:20 -0400
Message-ID: <CA+CK2bD6e2WGxuPG+jX8c_qyHNZOC=8NZ-wVZXQuMS2ncBNndg@mail.gmail.com>
Subject: Re: [PATCH v1 0/8] arm64: MMU enabled kexec relocation
To: Pavel Tatashin <pasha.tatashin@soleen.com>,
 James Morris <jmorris@namei.org>, 
 Sasha Levin <sashal@kernel.org>, "Eric W. Biederman" <ebiederm@xmission.com>, 
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 will@kernel.org, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marc Zyngier <marc.zyngier@arm.com>, 
 James Morse <james.morse@arm.com>, Vladimir Murzin <vladimir.murzin@arm.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Bhupesh Sharma <bhsharma@redhat.com>,
 linux-mm <linux-mm@kvack.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_101633_465037_41569D84 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

It is been two weeks, and no review activity yet. Please help with
reviewing this work.

Thank you,
Pasha

On Thu, Aug 8, 2019 at 2:44 PM Pavel Tatashin <pasha.tatashin@soleen.com> wrote:
>
> Just a friendly reminder, please send your comments on this series.
> It's been a week since I sent out these patches, and no feedback yet.
> Also, I'd appreciate if anyone could test this series on vhe hardware
> with vhe kernel, it does not look like QEMU can emulate it yet
>
> Thank you,
> Pasha
>
> On Thu, Aug 1, 2019 at 11:24 AM Pavel Tatashin
> <pasha.tatashin@soleen.com> wrote:
> >
> > Enable MMU during kexec relocation in order to improve reboot performance.
> >
> > If kexec functionality is used for a fast system update, with a minimal
> > downtime, the relocation of kernel + initramfs takes a significant portion
> > of reboot.
> >
> > The reason for slow relocation is because it is done without MMU, and thus
> > not benefiting from D-Cache.
> >
> > Performance data
> > ----------------
> > For this experiment, the size of kernel plus initramfs is small, only 25M.
> > If initramfs was larger, than the improvements would be greater, as time
> > spent in relocation is proportional to the size of relocation.
> >
> > Previously:
> > kernel shutdown 0.022131328s
> > relocation      0.440510736s
> > kernel startup  0.294706768s
> >
> > Relocation was taking: 58.2% of reboot time
> >
> > Now:
> > kernel shutdown 0.032066576s
> > relocation      0.022158152s
> > kernel startup  0.296055880s
> >
> > Now: Relocation takes 6.3% of reboot time
> >
> > Total reboot is x2.16 times faster.
> >
> > Previous approaches and discussions
> > -----------------------------------
> > https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
> > reserve space for kexec to avoid relocation, involves changes to generic code
> > to optimize a problem that exists on arm64 only:
> >
> > https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
> > The first attempt to enable MMU, some bugs that prevented performance
> > improvement. The page tables unnecessary configured idmap for the whole
> > physical space.
> >
> > https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
> > No linear copy, bug with EL2 reboots.
> >
> > Pavel Tatashin (8):
> >   kexec: quiet down kexec reboot
> >   arm64, mm: transitional tables
> >   arm64: hibernate: switch to transtional page tables.
> >   kexec: add machine_kexec_post_load()
> >   arm64, kexec: move relocation function setup and clean up
> >   arm64, kexec: add expandable argument to relocation function
> >   arm64, kexec: configure transitional page table for kexec
> >   arm64, kexec: enable MMU during kexec relocation
> >
> >  arch/arm64/Kconfig                     |   4 +
> >  arch/arm64/include/asm/kexec.h         |  51 ++++-
> >  arch/arm64/include/asm/pgtable-hwdef.h |   1 +
> >  arch/arm64/include/asm/trans_table.h   |  68 ++++++
> >  arch/arm64/kernel/asm-offsets.c        |  14 ++
> >  arch/arm64/kernel/cpu-reset.S          |   4 +-
> >  arch/arm64/kernel/cpu-reset.h          |   8 +-
> >  arch/arm64/kernel/hibernate.c          | 261 ++++++-----------------
> >  arch/arm64/kernel/machine_kexec.c      | 199 ++++++++++++++----
> >  arch/arm64/kernel/relocate_kernel.S    | 196 +++++++++---------
> >  arch/arm64/mm/Makefile                 |   1 +
> >  arch/arm64/mm/trans_table.c            | 273 +++++++++++++++++++++++++
> >  kernel/kexec.c                         |   4 +
> >  kernel/kexec_core.c                    |   8 +-
> >  kernel/kexec_file.c                    |   4 +
> >  kernel/kexec_internal.h                |   2 +
> >  16 files changed, 758 insertions(+), 340 deletions(-)
> >  create mode 100644 arch/arm64/include/asm/trans_table.h
> >  create mode 100644 arch/arm64/mm/trans_table.c
> >
> > --
> > 2.22.0
> >

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
