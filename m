Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73F9131F05
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 06:19:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26HQDPf43qrunlKvrQ8PyrrjJjgz7s1Pf9/BIdl5h/o=; b=JiZ6lKl5tl2tJR
	BHwda5nqpBG3e0XH6eDlIlupA6dcf26wX6KDq3OHo19xWWs2ykn2vJEmHKCQ/QPRnVCfxp9RCjbtX
	XQ7TcuVIW4Dfb6KTkNF0CFxGFsjstDH1u5weZRX6sUNAJ3a6MbPJVHchuRQMN1SgKLKEGJlfYbTCr
	ExmQ6Xgtdc8zVNr1aWhAflz5MWtIz+5itmWVqbuylPBzPgM1gUyaoybYj/C6cdkNNtMcGoyq/BWrl
	f0YipuVywSi6/yb5JmOMlMOtqyTz8atkp4AHvRNEnw7EBqeprAjSRQzlBdDezi7F6vp4vxQhRtNy3
	uEOA1K2e7k/ZQacQ5BAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iohHF-0002n0-Uy; Tue, 07 Jan 2020 05:19:37 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iohHD-0002lp-5n
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 05:19:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578374373;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=76hRmswgUa7V5RIleDh99QRzTzR2VY/Wx1+aVBKahK0=;
 b=V0JUbl3UScaHvgzgQq2+3eWdB5SgSe1R+P+dhzxguOUes4o4p6GLGcYKzFd/8K68xZK9B6
 6r9mTxj39npg2orNdmueYJ5FmPtOj8ocjrcnXbQlDx9TETcBS9RapIO3M+L++ZHEUZ4rGY
 XPUg+oOKJaI1vNoAyATttihAirjsL/4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-347-h6eFQ58-N_GM4NTmD5lDvA-1; Tue, 07 Jan 2020 00:19:29 -0500
X-MC-Unique: h6eFQ58-N_GM4NTmD5lDvA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23CB4107ACC4;
 Tue,  7 Jan 2020 05:19:28 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-32.pek2.redhat.com
 [10.72.12.32])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C68847DB53;
 Tue,  7 Jan 2020 05:19:23 +0000 (UTC)
Date: Tue, 7 Jan 2020 13:19:19 +0800
From: Dave Young <dyoung@redhat.com>
To: Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH v4 4/4] efi: Fix handling of multiple efi_fake_mem= entries
Message-ID: <20200107051919.GC19080@dhcp-128-65.nay.redhat.com>
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
 <157835764298.1456824.224151767362114611.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20200107040415.GA19309@dhcp-128-65.nay.redhat.com>
 <CAPcyv4g_W4PoH6Wfj_SDGzGLpNLwxtoeGP7uwpzVMS4JWbXSTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4g_W4PoH6Wfj_SDGzGLpNLwxtoeGP7uwpzVMS4JWbXSTg@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_211935_291076_082DB818 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 01/06/20 at 08:16pm, Dan Williams wrote:
> On Mon, Jan 6, 2020 at 8:04 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 01/06/20 at 04:40pm, Dan Williams wrote:
> > > Dave noticed that when specifying multiple efi_fake_mem= entries only
> > > the last entry was successfully being reflected in the efi memory map.
> > > This is due to the fact that the efi_memmap_insert() is being called
> > > multiple times, but on successive invocations the insertion should be
> > > applied to the last new memmap rather than the original map at
> > > efi_fake_memmap() entry.
> > >
> > > Rework efi_fake_memmap() to install the new memory map after each
> > > efi_fake_mem= entry is parsed.
> > >
> > > This also fixes an issue in efi_fake_memmap() that caused it to litter
> > > emtpy entries into the end of the efi memory map. An empty entry causes
> > > efi_memmap_insert() to attempt more memmap splits / copies than
> > > efi_memmap_split_count() accounted for when sizing the new map. When
> > > that happens efi_memmap_insert() may overrun its allocation, and if you
> > > are lucky will spill over to an unmapped page leading to crash
> > > signature like the following rather than silent corruption:
> > >
> > >     BUG: unable to handle page fault for address: ffffffffff281000
> > >     [..]
> > >     RIP: 0010:efi_memmap_insert+0x11d/0x191
> > >     [..]
> > >     Call Trace:
> > >      ? bgrt_init+0xbe/0xbe
> > >      ? efi_arch_mem_reserve+0x1cb/0x228
> > >      ? acpi_parse_bgrt+0xa/0xd
> > >      ? acpi_table_parse+0x86/0xb8
> > >      ? acpi_boot_init+0x494/0x4e3
> > >      ? acpi_parse_x2apic+0x87/0x87
> > >      ? setup_acpi_sci+0xa2/0xa2
> > >      ? setup_arch+0x8db/0x9e1
> > >      ? start_kernel+0x6a/0x547
> > >      ? secondary_startup_64+0xb6/0xc0
> > >
> > > Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
> > > services data to fix kexec breakage" is listed in Fixes: since it
> > > introduces more occurrences where efi_memmap_insert() is invoked after
> > > an efi_fake_mem= configuration has been parsed. Previously the side
> > > effects of vestigial empty entries were benign, but with commit
> > > af1648984828 that follow-on efi_memmap_insert() invocation triggers
> > > efi_memmap_insert() overruns.
> > >
> > > Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
> > > Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
> >
> > A nitpick for the Fixes flags, as I replied in the thread below:
> > https://lore.kernel.org/linux-efi/CAPcyv4jLxqPaB22Ao9oV31Gm=b0+Phty+Uz33Snex4QchOUb0Q@mail.gmail.com/T/#m2bb2dd00f7715c9c19ccc48efef0fcd5fdb626e7
> >
> > I reproduced two other panics without the patches applied, so this issue
> > is not caused by either of the commits, maybe just drop the Fixes.
> 
> Just the "Fixes: af1648984828", right? No objection from me. I'll let
> Ingo say if he needs a resend for that.
> 
> The "Fixes: 0f96a99dab36" is valid because the original implementation
> failed to handle the multiple argument case from the beginning.

Agreed, thanks!

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
