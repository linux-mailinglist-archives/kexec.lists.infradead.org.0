Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF80132D93
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 18:52:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0gdKHJOjkcpfFf1NvQJ8jnA8S+nOhOudLVxCirckno=; b=eP+Y10ZQ7SRxI9
	k1Y7I2nYFQmD/gynDQaHOAKtsz2jjGV/prmgmKPJAMF6nLuk7eQg+mn1wdhk26j5WFv5rvhIA7pKL
	zu+JUpQPRu2N69AedT5LLna03YzOmYiOlLdVkp6tHjq43DRzpLYBk/XfY6SQelzKh//BPXjZIPoQj
	cYOhSLsugv7i+u6VL2P0JYZkfrJ9tWLwKVRFAX5xN175Tz/Blrw9T9RaasVa23KI5wh47t9G8S4+Q
	FKxVeYIacdUBcvZlH78dLYLQUq1HYxaawJR2xC5wRbCanu1GX6uF/QrJuW9JiF7PSGwssrB839pz6
	ivboFHPK1TF+lGpZR/Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iot1N-0000Bc-J4; Tue, 07 Jan 2020 17:52:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iot1K-0000Ak-Bv
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 17:52:00 +0000
Received: by mail-wr1-x443.google.com with SMTP id w15so425339wru.4
 for <kexec@lists.infradead.org>; Tue, 07 Jan 2020 09:51:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UbVULJcO0KoQ8UyAq3sKxvpp33IhKJl+pej7FZpNELY=;
 b=rYlDokC29xG14NYShebx3kVbcGhDwOlg8dhocTJWxexmpjVOsu48vUbua8LU//f6bV
 QXKcYKVtch0w36pWBBi5KBYZZhJqSBzBUnX6BZ50N/lqAxIW+rJClvHC/g0EszY77baN
 9vyhAz9tU3V6EUBabm8d72cCJQh0LTFFUR5ipoacezcauI0W0hYKreE4PZR4Lvk4KtkC
 bWW1LeWwABAbufmTvqQrJUiLvwkAQZAzPx85cF5qbX5MJyi1xT63YBL5emVNEBHqPz1I
 TlzNY++WnMMyNtmQIdHUo6HG7wprzOx+xT2Yy3ZM7SY36t35VZJfHpofJfD9mGsoPmQG
 Qb0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UbVULJcO0KoQ8UyAq3sKxvpp33IhKJl+pej7FZpNELY=;
 b=dEBkiW5qW0vT5IQIqL+gmAGJNwltGE+o9ZnTjZE9EBxopueHcBH+gyWa6yuFjXB7n4
 K4cBXilI9tj9DVf+SXycFryvUpardMhrtTDdn804/ufEtoKJBPLZa4JaQi8pcByYhJ76
 D7QXERajzZPLK/lmFomonzCQWr6fjPmky1Q9Bt5Tb8RENoeCePbs98CwYgXmX4SheEes
 WGqNdTQHDD/cH6jN16M0/2L1eYaPLA/+Ij852VqvcuqJYaLDYeb3cFLPA8slGMMsWR43
 SHqZMLhnYASb6BJGITfhBQA0vIr6V7t788TZtLxbv9+Spbu9ZiKYiYq5Uw8FExlY/kFY
 JMsQ==
X-Gm-Message-State: APjAAAVkHjrTz2dCOaYVSze8f+cWXbXerEiuHlkkHZXV0oO779ByKu8I
 JYHbXqfzBYeIYJ4m/RJPK1alNK02N6vdlcn81lUJyg==
X-Google-Smtp-Source: APXvYqyinGaD1+tRHAZo3zO3lRNIj8tetBCntRk3w2SI4OyoJYlkbvt4iiW3d7o8AhLEu7VBnd+o+XPv153tzuASdWQ=
X-Received: by 2002:a5d:46c1:: with SMTP id g1mr276481wrs.200.1578419516354;
 Tue, 07 Jan 2020 09:51:56 -0800 (PST)
MIME-Version: 1.0
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
 <CAPcyv4g_W4PoH6Wfj_SDGzGLpNLwxtoeGP7uwpzVMS4JWbXSTg@mail.gmail.com>
 <20200107051919.GC19080@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200107051919.GC19080@dhcp-128-65.nay.redhat.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 7 Jan 2020 18:51:45 +0100
Message-ID: <CAKv+Gu-djB=3zTxjEbyjJXXpw=8NE6YA82hMW-JYyAQ2TSywtQ@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] efi: Fix handling of multiple efi_fake_mem= entries
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_095158_419482_F5343AA7 
X-CRM114-Status: GOOD (  24.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Ingo Molnar <mingo@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Dan Williams <dan.j.williams@intel.com>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 7 Jan 2020 at 06:19, Dave Young <dyoung@redhat.com> wrote:
>
> On 01/06/20 at 08:16pm, Dan Williams wrote:
> > On Mon, Jan 6, 2020 at 8:04 PM Dave Young <dyoung@redhat.com> wrote:
> > >
> > > On 01/06/20 at 04:40pm, Dan Williams wrote:
> > > > Dave noticed that when specifying multiple efi_fake_mem= entries only
> > > > the last entry was successfully being reflected in the efi memory map.
> > > > This is due to the fact that the efi_memmap_insert() is being called
> > > > multiple times, but on successive invocations the insertion should be
> > > > applied to the last new memmap rather than the original map at
> > > > efi_fake_memmap() entry.
> > > >
> > > > Rework efi_fake_memmap() to install the new memory map after each
> > > > efi_fake_mem= entry is parsed.
> > > >
> > > > This also fixes an issue in efi_fake_memmap() that caused it to litter
> > > > emtpy entries into the end of the efi memory map. An empty entry causes
> > > > efi_memmap_insert() to attempt more memmap splits / copies than
> > > > efi_memmap_split_count() accounted for when sizing the new map. When
> > > > that happens efi_memmap_insert() may overrun its allocation, and if you
> > > > are lucky will spill over to an unmapped page leading to crash
> > > > signature like the following rather than silent corruption:
> > > >
> > > >     BUG: unable to handle page fault for address: ffffffffff281000
> > > >     [..]
> > > >     RIP: 0010:efi_memmap_insert+0x11d/0x191
> > > >     [..]
> > > >     Call Trace:
> > > >      ? bgrt_init+0xbe/0xbe
> > > >      ? efi_arch_mem_reserve+0x1cb/0x228
> > > >      ? acpi_parse_bgrt+0xa/0xd
> > > >      ? acpi_table_parse+0x86/0xb8
> > > >      ? acpi_boot_init+0x494/0x4e3
> > > >      ? acpi_parse_x2apic+0x87/0x87
> > > >      ? setup_acpi_sci+0xa2/0xa2
> > > >      ? setup_arch+0x8db/0x9e1
> > > >      ? start_kernel+0x6a/0x547
> > > >      ? secondary_startup_64+0xb6/0xc0
> > > >
> > > > Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
> > > > services data to fix kexec breakage" is listed in Fixes: since it
> > > > introduces more occurrences where efi_memmap_insert() is invoked after
> > > > an efi_fake_mem= configuration has been parsed. Previously the side
> > > > effects of vestigial empty entries were benign, but with commit
> > > > af1648984828 that follow-on efi_memmap_insert() invocation triggers
> > > > efi_memmap_insert() overruns.
> > > >
> > > > Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> > > > Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
> > >
> > > A nitpick for the Fixes flags, as I replied in the thread below:
> > > https://lore.kernel.org/linux-efi/CAPcyv4jLxqPaB22Ao9oV31Gm=b0+Phty+Uz33Snex4QchOUb0Q@mail.gmail.com/T/#m2bb2dd00f7715c9c19ccc48efef0fcd5fdb626e7
> > >
> > > I reproduced two other panics without the patches applied, so this issue
> > > is not caused by either of the commits, maybe just drop the Fixes.
> >
> > Just the "Fixes: af1648984828", right? No objection from me. I'll let
> > Ingo say if he needs a resend for that.
> >
> > The "Fixes: 0f96a99dab36" is valid because the original implementation
> > failed to handle the multiple argument case from the beginning.
>
> Agreed, thanks!
>

I'll queue this but without the fixes tags. The -stable maintainers
are far too trigger happy IMHO, and this really needs careful review
before being backported. efi_fake_mem is a debug feature anyway, so I
don't see an urgent need to get this fixed retroactively in older
kernels.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
