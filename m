Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BB0131E97
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 05:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxcSGEfQrH+BVEXJXsf0NyGZPlzBU0WqVgl+260Quas=; b=H0ULd2p9Zep5Id
	jpwsL0AVAaYFgvbXh3ET9uNb0h4dEHQZrzfFbySNfFJfuAKjhOGk5K+MfR6sIxaZclDXKqOEPCAiw
	MWalDFH1EJwaXFjkB6KZcymFIWwk9q54IcRn0Lj8wUhS13T+V12Si3e/NC+LSTCaX4v4z7tz6i1KO
	nTwTXAnsQY6VpHa23+QDM/OV/surw6PM3FuG2LO37R4kB9WsaOR+tBaq4KHg4zRdsXg+vp414dBy3
	0xRgm+ao5Ehl4TN79vA9GaitqRGD3euxW2AJsR4RDl27Be0ZfIGUdhTDSKBg9OWn5rjvVx9qhgrks
	NxQE8A3drgAMQR0teTZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iogIY-0006Wr-6N; Tue, 07 Jan 2020 04:16:54 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iogIU-0006W0-I2
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 04:16:52 +0000
Received: by mail-ot1-x342.google.com with SMTP id a15so74612457otf.1
 for <kexec@lists.infradead.org>; Mon, 06 Jan 2020 20:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7JwBnNcErx/Tqbos3sgmzuiRKwnTayVGEEUrwwVO9+Q=;
 b=kTfmCJhh1mbBCxqWkk2jJzl/J1kOXKq7lFQJCLEwwH1rEYWJoqgEISnsXnof7DsGKp
 r22nVFIxpGIaZUR7b8mcJMJxVKZAx1EOQZ8kr7V+DqBj11Lsa7c2bT5Bl5wLx++3CO8M
 PLsS96c92EcNKS1U47BedxbdFQo3DiJyad6/jcZXUufOff+1OCkXWUnQIlqc0iSB6pIO
 pliKONMzLNlNdrsXD/hyqtbTjE3AGJxs6w8V1q5W50mTzVUyOGGtrX1j5Yul63jwsK+x
 1EANxaD3gSNMM00ePgz+477b4uJ8VGdtRBPKtnNPQAQgCZS4s7GocmWFW6evH+CIEOvR
 qDfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7JwBnNcErx/Tqbos3sgmzuiRKwnTayVGEEUrwwVO9+Q=;
 b=tk0VEps4sDDPPCJ93tda33Z8zuDrqT4ek+yFBejdl7xA7v7EKxW49+h0B/ll5HwUIg
 Zk97GXAXnqCPe6gbUtC/Xxkpwr1fEVCVl5t44hIsWkbyV1NHgJPgzjb1QO1jk54PzES4
 JOYs2ipzao5vvig/r4my0isg9/Z1CBXaKmfmTKPbu28NC6rVvvicqGckWVCnceoYX5H4
 89TdR+KxoZkYXKc6iCnbKjXHnt3q/3+P7NflNIXaKh0gmAUqoIOrHwBwGpNv88TPM8KB
 Y8rmu1ZmEg2LV8yM+chgMhFNvrhz+m0km61hGjrj52hr9j400+UPyQQ1WsBoc5du3zYt
 d2Hw==
X-Gm-Message-State: APjAAAVolicSvSVNbVMhiQUbXo0VDQO0n8dgmKViaVoEvi/sp6Wm//ac
 /ibjt5FsEsvH0xTFV+iJHemJUsuHi79kjIyemrNBRQ==
X-Google-Smtp-Source: APXvYqwO1M8i45m+WC0eLF0xEzFwSmcFi2OVQfpuah9yioKi3aW2qWHzUJL5QsZGJUUrM6dz9UNyEWn7Zsge6Qw+T84=
X-Received: by 2002:a9d:68d3:: with SMTP id i19mr61571357oto.71.1578370608986; 
 Mon, 06 Jan 2020 20:16:48 -0800 (PST)
MIME-Version: 1.0
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 6 Jan 2020 20:16:37 -0800
Message-ID: <CAPcyv4g_W4PoH6Wfj_SDGzGLpNLwxtoeGP7uwpzVMS4JWbXSTg@mail.gmail.com>
Subject: Re: [PATCH v4 4/4] efi: Fix handling of multiple efi_fake_mem= entries
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_201650_734262_CAC1B71F 
X-CRM114-Status: GOOD (  29.56  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 8:04 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 01/06/20 at 04:40pm, Dan Williams wrote:
> > Dave noticed that when specifying multiple efi_fake_mem= entries only
> > the last entry was successfully being reflected in the efi memory map.
> > This is due to the fact that the efi_memmap_insert() is being called
> > multiple times, but on successive invocations the insertion should be
> > applied to the last new memmap rather than the original map at
> > efi_fake_memmap() entry.
> >
> > Rework efi_fake_memmap() to install the new memory map after each
> > efi_fake_mem= entry is parsed.
> >
> > This also fixes an issue in efi_fake_memmap() that caused it to litter
> > emtpy entries into the end of the efi memory map. An empty entry causes
> > efi_memmap_insert() to attempt more memmap splits / copies than
> > efi_memmap_split_count() accounted for when sizing the new map. When
> > that happens efi_memmap_insert() may overrun its allocation, and if you
> > are lucky will spill over to an unmapped page leading to crash
> > signature like the following rather than silent corruption:
> >
> >     BUG: unable to handle page fault for address: ffffffffff281000
> >     [..]
> >     RIP: 0010:efi_memmap_insert+0x11d/0x191
> >     [..]
> >     Call Trace:
> >      ? bgrt_init+0xbe/0xbe
> >      ? efi_arch_mem_reserve+0x1cb/0x228
> >      ? acpi_parse_bgrt+0xa/0xd
> >      ? acpi_table_parse+0x86/0xb8
> >      ? acpi_boot_init+0x494/0x4e3
> >      ? acpi_parse_x2apic+0x87/0x87
> >      ? setup_acpi_sci+0xa2/0xa2
> >      ? setup_arch+0x8db/0x9e1
> >      ? start_kernel+0x6a/0x547
> >      ? secondary_startup_64+0xb6/0xc0
> >
> > Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
> > services data to fix kexec breakage" is listed in Fixes: since it
> > introduces more occurrences where efi_memmap_insert() is invoked after
> > an efi_fake_mem= configuration has been parsed. Previously the side
> > effects of vestigial empty entries were benign, but with commit
> > af1648984828 that follow-on efi_memmap_insert() invocation triggers
> > efi_memmap_insert() overruns.
> >
> > Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> > Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
>
> A nitpick for the Fixes flags, as I replied in the thread below:
> https://lore.kernel.org/linux-efi/CAPcyv4jLxqPaB22Ao9oV31Gm=b0+Phty+Uz33Snex4QchOUb0Q@mail.gmail.com/T/#m2bb2dd00f7715c9c19ccc48efef0fcd5fdb626e7
>
> I reproduced two other panics without the patches applied, so this issue
> is not caused by either of the commits, maybe just drop the Fixes.

Just the "Fixes: af1648984828", right? No objection from me. I'll let
Ingo say if he needs a resend for that.

The "Fixes: 0f96a99dab36" is valid because the original implementation
failed to handle the multiple argument case from the beginning.

>
> > Link: https://lore.kernel.org/r/20191231014630.GA24942@dhcp-128-65.nay.redhat.com
> > Reported-by: Dave Young <dyoung@redhat.com>
> > Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
> > Cc: Michael Weiser <michael@weiser.dinsnail.net>
> > Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Thomas Gleixner <tglx@linutronix.de>
> > Cc: Ingo Molnar <mingo@kernel.org>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
> > ---
> >  drivers/firmware/efi/fake_mem.c |   31 ++++++++++++++++---------------
> >  drivers/firmware/efi/memmap.c   |    2 +-
> >  include/linux/efi.h             |    2 ++
> >  3 files changed, 19 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
> > index a8d20568d532..6e0f34a38171 100644
> > --- a/drivers/firmware/efi/fake_mem.c
> > +++ b/drivers/firmware/efi/fake_mem.c
> > @@ -34,25 +34,16 @@ static int __init cmp_fake_mem(const void *x1, const void *x2)
> >       return 0;
> >  }
> >
> > -void __init efi_fake_memmap(void)
> > +static void __init efi_fake_range(struct efi_mem_range *efi_range)
> >  {
> >       struct efi_memory_map_data data = { 0 };
> >       int new_nr_map = efi.memmap.nr_map;
> >       efi_memory_desc_t *md;
> >       void *new_memmap;
> > -     int i;
> > -
> > -     if (!efi_enabled(EFI_MEMMAP) || !nr_fake_mem)
> > -             return;
> >
> >       /* count up the number of EFI memory descriptor */
> > -     for (i = 0; i < nr_fake_mem; i++) {
> > -             for_each_efi_memory_desc(md) {
> > -                     struct range *r = &efi_fake_mems[i].range;
> > -
> > -                     new_nr_map += efi_memmap_split_count(md, r);
> > -             }
> > -     }
> > +     for_each_efi_memory_desc(md)
> > +             new_nr_map += efi_memmap_split_count(md, &efi_range->range);
>
> For this part, although I still have some concerns, but since I'm not
> 100% clear about it, maybe just leave it as you do, and see if it is
> good to Ard.

Absent a specific failure case I didn't see anything to change here.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
