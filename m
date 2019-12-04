Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E99411293A
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 11:24:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4+nJUGBwHD6i83xoOhavA92HWCNvMBJD2dbj9VnG18=; b=gI/i1PS9Dyarvj
	87rIHpg22ceiSKGXb6IrdNGK5b9hDbrtJ87MYWSCD9QMYonqPJ6u4BcXwA3v9eOjx3gZuPd5Y5lYh
	8rr6hxgAzZEhrD/6Y//7yvAQv+quyh1RK0UcZ98AIbx/A802+Z+Va9TjvpA/tlXpnVltk1d5KUoER
	TsUnknfpAKD69z+n2p7R7cl7eK5f+fyekUKzqz/MncJ9e6QXmMw5O2aqr2dpju8lO3hWdKnA8uE9O
	73K5YjQ8U6KYhgh+Gh5qNkVTDtJBOjJsTxcY4KLKKVXQpVw9vMunTqNHIVm9Zxch2T53ERayc73GI
	i7EoYfQAJKpHUGvHEhvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRpL-00034C-9C; Wed, 04 Dec 2019 10:24:11 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRpH-00033G-IV
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 10:24:09 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so7863920wrh.5
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 02:24:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GuqJKgxzORWixv+ONGuRvuIb4W1dExSeU86nj2DCsb0=;
 b=MYMcpF0NBpya3Dp0QUs8IhS2XLN5hBn3Y74n2Fpg/00W933ktGY5gQuF5wGqC7dYf/
 09qiEy92KfIgQgS+Zmo0DpX7rURPfWDBgRkP3d/r9p6HsYExqQAgaV/iRhlwDbZGw98L
 uPjFZBSTofPNVxyjqtBh6MdbKRYzbm8MSmaMbsCVuthOUDjBMC7fGMTpxrA33vLEM/Ir
 4cFfh+nlygb67h7WLQ083u+1eogyQ1SvUA71LYknaaooRX/9P/7kQU54UYf1oMm1qMi6
 PE25lcUp+E2amWLAZt0AbC10mzYJ6McnJbJKCA3Ann6D5MibCmobitoldmtdRSxAcjvV
 y9KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GuqJKgxzORWixv+ONGuRvuIb4W1dExSeU86nj2DCsb0=;
 b=MkKKwEbfnMgqObruW73m6Z911oWEDrwiH1uRLWoJK810YSn6LW+M8jPfgoU1qm/2sm
 ByHboBx6NNiiF4LNbnGPpmibuFle8W9Ha0V8y4D7ZIbfViGOITmbn6bIGpL7HxGXoD9I
 HiTkoE7TwKtoBK8NWuQQVaYDBxmypFXZHuaFFFXT0ERqXhjm3+gjQ+l+d0rDgIElgKu+
 9ZY7wXCMRJfBH+4T3xJYtTJkO2FmXnIjKTiRFIVOBWeAi6hXQuIyCkVpfRSFFqw+5E4h
 tYHW+IUS39+E5l172JHmubESfDdRe5uXLcNWa43/2plXcae30iFZ6cWve/GTyGBXcP0u
 EE0A==
X-Gm-Message-State: APjAAAWYEtDp2L2RpJycCpQq+lN8Zgm43iYTadarorPTDEcnyXp38T8M
 9et5D+uOj4TdJ5wECLSftDXGwDJMVu6ceUh8ztJPGA==
X-Google-Smtp-Source: APXvYqxWwFndRJgAqjBJu+iNimNvB0sXaYF2yRdMmBK9Aw4qj7i6zYf8yApxP+lwHCYRcybjgFLsPwfMKMGRGGwlg9Y=
X-Received: by 2002:a5d:6652:: with SMTP id f18mr3249867wrw.246.1575455044775; 
 Wed, 04 Dec 2019 02:24:04 -0800 (PST)
MIME-Version: 1.0
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
 <20191204101412.GD114697@gmail.com>
In-Reply-To: <20191204101412.GD114697@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Dec 2019 10:24:01 +0000
Message-ID: <CAKv+Gu8TcF69QNhqRJGh+A8AJ=91dfTJhRmV=J4V3ML9vQWoXA@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
To: Ingo Molnar <mingo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_022407_737589_1C17692A 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 the arch/x86 maintainers <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, 4 Dec 2019 at 10:14, Ingo Molnar <mingo@kernel.org> wrote:
>
>
> * Dave Young <dyoung@redhat.com> wrote:
>
> > On 12/04/19 at 03:52pm, Dave Young wrote:
> > > Michael Weiser reported he got below error during a kexec rebooting:
> > > esrt: Unsupported ESRT version 2904149718861218184.
> > >
> > > The ESRT memory stays in EFI boot services data, and it was reserved
> > > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > > is to reuse the EFI boot services data across kexec reboot. For example
> > > the BGRT image data and some ESRT memory like Michael reported.
> > >
> > > But although the memory is reserved it is not updated in X86 e820 table.
> > > And kexec_file_load iterate system ram in io resource list to find places
> > > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > > initramfs overwritten the ESRT memory and then the failure happened.
> >
> > s/overwritten/overwrote :)  If need a repost please let me know..
> >
> > >
> > > Since kexec_file_load depends on the e820 to be updated, just fix this
> > > by updating the reserved EFI boot services memory as reserved type in e820.
> > >
> > > Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
> > > bypassed in the reservation code path because they are assumed as reserved.
> > > But the reservation is still needed for multiple kexec reboot.
> > > And it is the only possible case we come here thus just drop the code
> > > chunk then everything works without side effects.
> > >
> > > On my machine the ESRT memory sits in an EFI runtime data range, it does
> > > not trigger the problem, but I successfully tested with BGRT instead.
> > > both kexec_load and kexec_file_load work and kdump works as well.
> > >
> > > Signed-off-by: Dave Young <dyoung@redhat.com>
>
>
> So I edited this to:
>
>  From: Dave Young <dyoung@redhat.com>
>
>  Michael Weiser reported he got this error during a kexec rebooting:
>
>    esrt: Unsupported ESRT version 2904149718861218184.
>
>  The ESRT memory stays in EFI boot services data, and it was reserved
>  in kernel via efi_mem_reserve().  The initial purpose of the reservation
>  is to reuse the EFI boot services data across kexec reboot. For example
>  the BGRT image data and some ESRT memory like Michael reported.
>
>  But although the memory is reserved it is not updated in the X86 E820 table,
>  and kexec_file_load() iterates system RAM in the IO resource list to find places
>  for kernel, initramfs and other stuff. In Michael's case the kexec loaded
>  initramfs overwrote the ESRT memory and then the failure happened.
>
>  Since kexec_file_load() depends on the E820 table being updated, just fix this
>  by updating the reserved EFI boot services memory as reserved type in E820.
>
>  Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
>  bypassed in the reservation code path because they are assumed as reserved.
>
>  But the reservation is still needed for multiple kexec reboots,
>  and it is the only possible case we come here thus just drop the code
>  chunk, then everything works without side effects.
>
>  On my machine the ESRT memory sits in an EFI runtime data range, it does
>  not trigger the problem, but I successfully tested with BGRT instead.
>  both kexec_load() and kexec_file_load() work and kdump works as well.
>

Acked-by: Ard Biesheuvel <ardb@kernel.org>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
