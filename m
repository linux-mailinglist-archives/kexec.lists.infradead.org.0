Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694271A4753
	for <lists+kexec@lfdr.de>; Fri, 10 Apr 2020 16:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tB4yh0/5jd5DqwiZZ47Zvtqo2eP3T5u8ahdPZXHcT2s=; b=niOFmXCgKeK5El
	aY1gJSSqdk80cu2wXrHnHCFNcpdulzGeMX3Ns2WgCNMnOQjQ9HJBgn/MpQKjtGLndNqmFYzHxJ7V5
	ydgMl47gl6r5ULQ+iNuiaof0+GMoLDNr9EB+K0f1T0eU6sj6t52dNgxxjQawjBBpb6R3twOr2nSLG
	LPpyWz7sBLGkYTIPhmUFFpAo2whNgWCY/gMoBsGLtXyKJrcTpWFr4iu4smC+W72OuIF3A8e88cOhy
	PZPx+88ZUmepSY/L7xg7vo47r2zjtnu0uLmugFERjqeVeTPjovJOk/cZRgkQ8QVRjqF+29qKYBqb9
	zsyhCZHlcceIwJnJWNGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMuYk-0004o5-3A; Fri, 10 Apr 2020 14:23:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMuYf-0004nh-Up
 for kexec@lists.infradead.org; Fri, 10 Apr 2020 14:23:03 +0000
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7917120CC7
 for <kexec@lists.infradead.org>; Fri, 10 Apr 2020 14:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586528580;
 bh=vTTp+WgQaua5C56D3LueZpY4WHMSGkM6V6Izo/WPmLA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JrKhsOUVqty77Ddo2Zr872HiXb/2Ith/dnW6UqYZxRx1UAfuJUBubRHAxbRZWpTLU
 TuyFSQZ2DMzSL64e3Cf6w/VPqNNLPYejQqjcHh7K4UDQKBshdte7z9u/p8IlAI9l57
 a367DDYmrpxt03aYW0XNzPDOOk4s7mtssxxg9B8Q=
Received: by mail-io1-f51.google.com with SMTP id n20so1888932ioa.4
 for <kexec@lists.infradead.org>; Fri, 10 Apr 2020 07:23:00 -0700 (PDT)
X-Gm-Message-State: AGi0PuaPAeNKm4dHcXi9OgdIYT3vKbPo6jhdO6m7MsHoMdCQV8O4YJcN
 fw4e9ZhxmTh/qFo0O+f1tAIRJi3BwtrGyupDQ0E=
X-Google-Smtp-Source: APiQypLZJznMn2PppYfugNCcfb0yXiIHON5424ppKEzhU1TTpW/Zpi+M9tz4bRd0qpmXyEJ1unFrhSbefetASK9v1tI=
X-Received: by 2002:a5e:8b47:: with SMTP id z7mr4501341iom.16.1586528579875;
 Fri, 10 Apr 2020 07:22:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200410074320.16589-1-ardb@kernel.org>
 <20200410135644.GB6772@dhcp-128-65.nay.redhat.com>
 <20200410140151.GC6772@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200410140151.GC6772@dhcp-128-65.nay.redhat.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 16:22:49 +0200
X-Gmail-Original-Message-ID: <CAMj1kXEM13Y5FCh8GvJGTueen3fa0u_JX66j0X10KPf4Z0c4Jg@mail.gmail.com>
Message-ID: <CAMj1kXEM13Y5FCh8GvJGTueen3fa0u_JX66j0X10KPf4Z0c4Jg@mail.gmail.com>
Subject: Re: [PATCH] efi/x86: Revert struct layout change to fix kexec boot
 regression
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_072302_723152_03215422 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 X86 ML <x86@kernel.org>, kexec@lists.infradead.org,
 Borislav Petkov <bp@alien8.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, 10 Apr 2020 at 16:02, Dave Young <dyoung@redhat.com> wrote:
>
> On 04/10/20 at 09:56pm, Dave Young wrote:
> > On 04/10/20 at 09:43am, Ard Biesheuvel wrote:
> > > Commit
> > >
> > >   0a67361dcdaa29 ("efi/x86: Remove runtime table address from kexec EFI setup data")
> > >
> > > removed the code that retrieves the non-remapped UEFI runtime services
> > > pointer from the data structure provided by kexec, as it was never really
> > > needed on the kexec boot path: mapping the runtime services table at its
> > > non-remapped address is only needed when calling SetVirtualAddressMap(),
> > > which never happens during a kexec boot in the first place.
> > >
> > > However, dropping the 'runtime' member from struct efi_setup_data was a
> > > mistake. That struct is shared ABI between the kernel and the kexec tooling
> > > for x86, and so we cannot simply change its layout. So let's put back the
> > > removed field, but call it 'unused' to reflect the fact that we never look
> > > at its contents. While at it, add a comment to remind our future selves
> > > that the layout is external ABI.
> > >
> > > Reported-by: Theodore Ts'o <tytso@mit.edu>
> > > Tested-by: Theodore Ts'o <tytso@mit.edu>
> > > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > > ---
> > >
> > > Ingo, Thomas, Boris: I sent out my efi-urgent pull request just yesterday,
> > > so please take this directly into tip:efi/urgent - no need to wait for the
> > > next batch.
> > >
> > >  arch/x86/include/asm/efi.h | 2 ++
> > >  1 file changed, 2 insertions(+)
> > >
> > > diff --git a/arch/x86/include/asm/efi.h b/arch/x86/include/asm/efi.h
> > > index 781170d36f50..96044c8d8600 100644
> > > --- a/arch/x86/include/asm/efi.h
> > > +++ b/arch/x86/include/asm/efi.h
> > > @@ -178,8 +178,10 @@ extern void efi_free_boot_services(void);
> > >  extern pgd_t * __init efi_uv1_memmap_phys_prolog(void);
> > >  extern void __init efi_uv1_memmap_phys_epilog(pgd_t *save_pgd);
> > >
> > > +/* kexec external ABI */
> > >  struct efi_setup_data {
> > >     u64 fw_vendor;
> > > +   u64 unused;
> > >     u64 tables;
> > >     u64 smbios;
> > >     u64 reserved[8];
> > > --
> > > 2.17.1
> > >
> >
> > Ah, replied too quick in another mail.  I just cced kexec list again.
> >
> > Thanks for the fix:
> >
> > Reviewed-by: Dave Young <dyoung@redhat.com>
> >
>

Thanks Dave

> BTW, a fixes tag is good to have..
>

I usually omit those for patches that fix bugs that were introduced in
the current cycle.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
