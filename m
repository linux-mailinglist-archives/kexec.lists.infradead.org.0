Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1AB112259
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 06:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHLINQx8Rbb0DRoNF6FMTTq7fHBkKozZdlfrZJoeB3A=; b=MoY/7E4wWKbuJG
	Fmu7lS41sW4Fqac3QkRMhm/LhIjHcXkO0upx3Oq43hb5D0lwwd+6eNm7Gh7hwcZ/bGi0XH7sFnPBU
	aRzWzHYb2VULohXjjcdViqvkItQUxs15JVnNnXQzc+suGdamPFJKT6ulxztccoqxrYQyeKXMDxG4i
	Z8PC6FCsTw8vI3GMM61P51S7Ys71VOo0M449W5xLK37/mnVZL4rPFGNYOrtApzIfRNljjBLs3RPOr
	tDhbLm5CwEYTgqqtBOAilFf9rPM5XE+T7GJ+Eq6jj1VGRH2wkXxEx0UAtPOkwbR62Zkl5vebQan5R
	e0V9IQGV/oSxt/4RXuUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icN7J-0007p4-60; Wed, 04 Dec 2019 05:22:25 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icN7E-0007o5-Ri
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 05:22:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575436936;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=92CBU2Ty+dwDpFTMX4aM10Q30OyEhz7K16TwsMGdXwM=;
 b=h0Oslm1dIh27aAGIdrBD0zDKYRezmbD7gAL0dj1yucGwV2MTsm1zAt/kHRxjIyFGisQvRs
 FUqC4TrIhl/M9H4RTnqUGv+v1IjGBw7w6CgAgaHcZIGvXtorPxU6/ehqnpDLmevO5kmT7I
 bPGSHNSkBFMyvJmSm9agdRS6l4dkXXI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-78-SATqPsZZOmSjNgVSUFE58g-1; Wed, 04 Dec 2019 00:22:12 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 955B810054E3;
 Wed,  4 Dec 2019 05:22:10 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-34.pek2.redhat.com
 [10.72.12.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C083319C69;
 Wed,  4 Dec 2019 05:22:05 +0000 (UTC)
Date: Wed, 4 Dec 2019 13:22:01 +0800
From: Dave Young <dyoung@redhat.com>
To: Michael Weiser <michael@weiser.dinsnail.net>
Subject: Re: kexec_file overwrites reserved EFI ESRT memory
Message-ID: <20191204052201.GA2665@dhcp-128-65.nay.redhat.com>
References: <20191122180552.GA32104@weiser.dinsnail.net>
 <87blt3y949.fsf@x220.int.ebiederm.org>
 <20191122210702.GE32104@weiser.dinsnail.net>
 <20191125055201.GA6569@dhcp-128-65.nay.redhat.com>
 <20191129152700.GA8286@weiser.dinsnail.net>
 <20191202085829.GA15808@dhcp-128-65.nay.redhat.com>
 <20191202090520.GA15874@dhcp-128-65.nay.redhat.com>
 <20191202234541.GA27567@weiser.dinsnail.net>
 <20191203115435.GA2606@dhcp-128-65.nay.redhat.com>
 <20191203211146.GA536@weiser.dinsnail.net>
MIME-Version: 1.0
In-Reply-To: <20191203211146.GA536@weiser.dinsnail.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: SATqPsZZOmSjNgVSUFE58g-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_212221_036158_D8D55AF6 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 12/03/19 at 10:11pm, Michael Weiser wrote:
> Hi Dave,
> 
> On Tue, Dec 03, 2019 at 07:54:35PM +0800, Dave Young wrote:
> 
> > > Neither adding add_efi_memmap nor adding your patch and setting that option
> > > does make the ESRT memory region appear in /proc/iomem. kexec_file still
> > > loads the kernel across the ESRT region.
> > Hmm, sorry, my bad, actuall add_efi_memmap does not consider the
> > EFI_MEMORY_RUNTIME attribute, it only reads the memory descriptor types.
> 
> > Will read your replied information later, did not get time today, but
> > probably below chunk can help?
> 
> > diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
> > index 3b9fd679cea9..516307617621 100644
> > --- a/arch/x86/platform/efi/quirks.c
> > +++ b/arch/x86/platform/efi/quirks.c
> > @@ -293,6 +293,8 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
> >  	early_memunmap(new, new_size);
> 
> >  	efi_memmap_install(new_phys, num_entries);
> > +	e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
> > +	e820__update_table(e820_table);
> >  }
> 
> >  /*
> 
> Yes, that did it:
> 
> 00000000-00000fff : Reserved
> 00001000-0009efff : System RAM
> 0009f000-000fffff : Reserved
>   000a0000-000bffff : PCI Bus 0000:00
>   000e0000-000e3fff : PCI Bus 0000:00
>   000e4000-000e7fff : PCI Bus 0000:00
>   000e8000-000ebfff : PCI Bus 0000:00
>   000ec000-000effff : PCI Bus 0000:00
>   000f0000-000fffff : PCI Bus 0000:00
>     000f0000-000fffff : System ROM
> 00100000-74dd1fff : System RAM
>   65000000-6affffff : Crash kernel
> 74dd2000-74dd2fff : Reserved                   <----- ESRT
> 74dd3000-763f5fff : System RAM
> 763f6000-79974fff : Reserved
> 79975000-799f1fff : ACPI Tables
> 799f2000-79aa6fff : ACPI Non-volatile Storage
>   79a17000-79a17fff : USBC000:00

Ok, good to know it works.  I will think about it and file a patch
later.  There are more things to consider, eg. kexec reboot multiple
times, userspace kexec loader etc.

If we choose to fix it in kexec_file path to avoid those region then we
need to do same in userspace, there will be compatibility issues so I
would still prefer to go with this way you tested.

BTW, on my laptop the ESRT stays in EFI runtime area so I do not see the
problem.  This should be machine/firmware specific.

Here is the info on my laptop:
[    0.000000] efi: mem34: [Runtime Data       |RUN|  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x000000007a4b0000-0x000000007a676fff] (1MB)
[    0.020670] esrt: Reserving ESRT space from 0x000000007a4ec000 to 0x000000007a4ec088.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
