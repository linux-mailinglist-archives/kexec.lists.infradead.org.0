Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2357134F29
	for <lists+kexec@lfdr.de>; Wed,  8 Jan 2020 22:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFvIqZHsnIplhOxjpabncBP1Hxtf0kJV0f4LN7xNQmY=; b=djEMyCj4c0P4CL
	ul2WnTs/fkHk+6oeF0D9gGrSdicTLpkB3kwJawMBFO5IpCpikI8FTbhSEosCqHrJTD0mpLaD3TzVy
	ATWI1+PvM/TduseJ1n8CcKgHtX0aGibfcwSH51vZyKC2CYSdNU5aA6xs+Gsq8kzlJwykZVUoxpeOa
	1GsHcA8NbLMHc7L/PlxFPbH/eWGUsGclg5mH7qo+J1YXriz8V4qnCCo38Eyyb3YLtRmBq4PjCK/ka
	/DanpjgohVh3n1Kh480M3MJstgnJNdfYR3tvph/CI+wMQEICIOTnilRJge8yNRmuSlwtQ1cFMEEuo
	Hk9gkjmP5LWdTUvzDNKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipJH2-0000QT-FK; Wed, 08 Jan 2020 21:53:56 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipJGy-0000Ov-Bs
 for kexec@lists.infradead.org; Wed, 08 Jan 2020 21:53:54 +0000
Received: by mail-ot1-x341.google.com with SMTP id 19so5163364otz.3
 for <kexec@lists.infradead.org>; Wed, 08 Jan 2020 13:53:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uhzjXDFfjYHRbMTJJFHpwq518k3jjZ5F1Nc5S+y6bT8=;
 b=q78bn8qpIIpykvt7xIGtljLHImgPRgl+m0WhNnnVnT5a8wJXcakJViLzNxt3OdA55Z
 hxiX4Ahmzg4E+dp2k3slw/wbUZuME4N5ryZHKeectR1RrX03U9+7zC266AUvIgZfeRYi
 cHEcRPrhw+JhfpSKM1lZhZMBdba392ylfiqou221Sy5U4GKMxf5KAKQHbuRlqtQExx8K
 hMCqPjcCqPlsZYDn2qwgFuC1BjQcwmpigt4mpha6hQZQmVgsoPzNb4TuxMoJoUYnyss9
 8Xp128m5gzg8Dvibo3RPcBaFil8ise+FaupXZgls3QcWv/4KT0/MwmLn2VFfvbsH8hMU
 Ddiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uhzjXDFfjYHRbMTJJFHpwq518k3jjZ5F1Nc5S+y6bT8=;
 b=toNm5lyNzkFtdwhkncEl+Fb6LysR3vlfhLwk0i8rZkmV/in866NRZqa/3tPsQhGMKG
 bv+EUTIidJykCl98F6zA1Va/bhcE3/JfB7+EqjubkM8/h2aUSWyf3H/XXfQ0ESCW+zKi
 M41kxjW0hbmycqp05655f0qO300J5CmwXh6c3AedWKAIFngUdD4TvuoG+yLyzVEJVMDd
 K98YwycMQQKGpRY7PfyjkS0v6LuseBnwwOOZzG//lRfygdCvZYppCnqJQwHU38Um0P4Q
 uoiXpVwe+wEIUrKPek1w52Ix3iJiO7fhL/mlZdBfwrpZ3MPbl08H7YOJcQ28nccNsy+2
 CCNg==
X-Gm-Message-State: APjAAAVwJGrUU6x44SOPm3g7S8d2msz3l2MB4dH+TSHgcJqfoRg88taD
 k0qYaVSrigAn+72Eq+3q2xlwy+8hugdzwkoM+e0OPA==
X-Google-Smtp-Source: APXvYqxgJC+lj68M6vVZvqY28cs6rrDu3iNLGPXMI+DfmkJ6DbcrtgYrcHSP8WXBfLzw+SF0oAkfJncisjw/9a+k+mU=
X-Received: by 2002:a9d:7852:: with SMTP id c18mr5583387otm.247.1578520431507; 
 Wed, 08 Jan 2020 13:53:51 -0800 (PST)
MIME-Version: 1.0
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
 <CAPcyv4g_W4PoH6Wfj_SDGzGLpNLwxtoeGP7uwpzVMS4JWbXSTg@mail.gmail.com>
 <20200107051919.GC19080@dhcp-128-65.nay.redhat.com>
 <CAKv+Gu-djB=3zTxjEbyjJXXpw=8NE6YA82hMW-JYyAQ2TSywtQ@mail.gmail.com>
In-Reply-To: <CAKv+Gu-djB=3zTxjEbyjJXXpw=8NE6YA82hMW-JYyAQ2TSywtQ@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 8 Jan 2020 13:53:40 -0800
Message-ID: <CAPcyv4ixPchDOet=ztRQxLMgnJf9DauSFgBs3+TEoaua7R1s_Q@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] efi: Fix handling of multiple efi_fake_mem= entries
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_135352_548931_FCD07D56 
X-CRM114-Status: GOOD (  27.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jan 7, 2020 at 9:52 AM Ard Biesheuvel <ard.biesheuvel@linaro.org> wrote:
>
> On Tue, 7 Jan 2020 at 06:19, Dave Young <dyoung@redhat.com> wrote:
> >
> > On 01/06/20 at 08:16pm, Dan Williams wrote:
> > > On Mon, Jan 6, 2020 at 8:04 PM Dave Young <dyoung@redhat.com> wrote:
> > > >
> > > > On 01/06/20 at 04:40pm, Dan Williams wrote:
> > > > > Dave noticed that when specifying multiple efi_fake_mem= entries only
> > > > > the last entry was successfully being reflected in the efi memory map.
> > > > > This is due to the fact that the efi_memmap_insert() is being called
> > > > > multiple times, but on successive invocations the insertion should be
> > > > > applied to the last new memmap rather than the original map at
> > > > > efi_fake_memmap() entry.
> > > > >
> > > > > Rework efi_fake_memmap() to install the new memory map after each
> > > > > efi_fake_mem= entry is parsed.
> > > > >
> > > > > This also fixes an issue in efi_fake_memmap() that caused it to litter
> > > > > emtpy entries into the end of the efi memory map. An empty entry causes
> > > > > efi_memmap_insert() to attempt more memmap splits / copies than
> > > > > efi_memmap_split_count() accounted for when sizing the new map. When
> > > > > that happens efi_memmap_insert() may overrun its allocation, and if you
> > > > > are lucky will spill over to an unmapped page leading to crash
> > > > > signature like the following rather than silent corruption:
> > > > >
> > > > >     BUG: unable to handle page fault for address: ffffffffff281000
> > > > >     [..]
> > > > >     RIP: 0010:efi_memmap_insert+0x11d/0x191
> > > > >     [..]
> > > > >     Call Trace:
> > > > >      ? bgrt_init+0xbe/0xbe
> > > > >      ? efi_arch_mem_reserve+0x1cb/0x228
> > > > >      ? acpi_parse_bgrt+0xa/0xd
> > > > >      ? acpi_table_parse+0x86/0xb8
> > > > >      ? acpi_boot_init+0x494/0x4e3
> > > > >      ? acpi_parse_x2apic+0x87/0x87
> > > > >      ? setup_acpi_sci+0xa2/0xa2
> > > > >      ? setup_arch+0x8db/0x9e1
> > > > >      ? start_kernel+0x6a/0x547
> > > > >      ? secondary_startup_64+0xb6/0xc0
> > > > >
> > > > > Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
> > > > > services data to fix kexec breakage" is listed in Fixes: since it
> > > > > introduces more occurrences where efi_memmap_insert() is invoked after
> > > > > an efi_fake_mem= configuration has been parsed. Previously the side
> > > > > effects of vestigial empty entries were benign, but with commit
> > > > > af1648984828 that follow-on efi_memmap_insert() invocation triggers
> > > > > efi_memmap_insert() overruns.
> > > > >
> > > > > Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> > > > > Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
> > > >
> > > > A nitpick for the Fixes flags, as I replied in the thread below:
> > > > https://lore.kernel.org/linux-efi/CAPcyv4jLxqPaB22Ao9oV31Gm=b0+Phty+Uz33Snex4QchOUb0Q@mail.gmail.com/T/#m2bb2dd00f7715c9c19ccc48efef0fcd5fdb626e7
> > > >
> > > > I reproduced two other panics without the patches applied, so this issue
> > > > is not caused by either of the commits, maybe just drop the Fixes.
> > >
> > > Just the "Fixes: af1648984828", right? No objection from me. I'll let
> > > Ingo say if he needs a resend for that.
> > >
> > > The "Fixes: 0f96a99dab36" is valid because the original implementation
> > > failed to handle the multiple argument case from the beginning.
> >
> > Agreed, thanks!
> >
>
> I'll queue this but without the fixes tags. The -stable maintainers
> are far too trigger happy IMHO, and this really needs careful review
> before being backported. efi_fake_mem is a debug feature anyway, so I
> don't see an urgent need to get this fixed retroactively in older
> kernels.

I'm fine to drop the fixes tags.

However, I do want to point out my driving motive for digging in on
efi_fake_mem=nn@ss:0x40000, is that it is a better interface for
diverting memory ranges to device-dax than the current standard bearer
memmap=nn!ss. The main benefit is that the kernel only considers the
attribute when it is applied to EFI_CONVENTIONAL_MEMORY. This fixes a
long standing unsolvable issue of people picking busted memmap=nn!ss
settings that clobber platform memory ranges, or vector off into
nothing.

So yes, efi_fake_mem is a debug feature, but if the popularity of
memmap=nn!ss is any clue I expect efi_fake_mem=nn@ss:0x40000 will be a
useful tool going forward for late enabling, or repairing platform
"soft reservation" declarations.

I'll respin the series with those tags dropped and add the comment you
recommended about the cases when efi_memmap_free() is expected to be a
nop. Holler if there's anything else, but that's all I had on my list
to fix up.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
