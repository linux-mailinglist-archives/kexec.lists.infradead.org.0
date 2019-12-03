Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74610FCEE
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 12:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UNetLe+SR9Q8rTmqrL4YZRm81cgzquB8VRtdxcxNKOM=; b=PEVozzewuiflWj
	hVIELmRIjbOKK60aB8QxdOosKTdawifkVorZfpVv2I8Ast7FrwaK+f36SUU+zk2z67+54J2lZsv+F
	rMryvyGveWmxVTuN8wMsN+FcUMJW2T0eyUBxt90npWqqBsWC0WNyZnbZuzCLz4DVwC2Ue8ZJVMwnR
	YoZzinx0SlhmG5rNJKTTnd8jlnVHfv+SFtgmbAKNWq4eX+X6+Rm6htqBA6KVL0VD0X4Szq+2FCdtg
	yAajM98hT4+KAU50axSk0jEm8efTquWthlozik28q891cFMaX0+nyiQnNEUrAOCCgI3CbgpjGpt+r
	ITb2WTjyOaFnkmQcHABA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6le-0005PD-4R; Tue, 03 Dec 2019 11:54:58 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6la-0005Ni-Qi
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 11:54:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575374091;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aW7ZugmwoIcjuikyDZkzt+LN1JeujEo0YrxdZrd3z4A=;
 b=K2My4Zra8emhqbCnytsr1OpN5wx1NhAULAhkDg+Q257/0TOmdj4kbtRIcrcLosMMMiJzpn
 Mq7ZKT25wqd8i+7UX+mlC2Y4JderVNC37EHbPafEZfbD0uwivEAyazsyVNSCdbzga9F6QO
 O8PbbhULBYaB45faIa4172/5BH8Z+AM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-j1FCUGnRMrGppNhHKyqOxg-1; Tue, 03 Dec 2019 06:54:48 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6289A107ACC4;
 Tue,  3 Dec 2019 11:54:46 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-100.pek2.redhat.com
 [10.72.12.100])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8901F5C290;
 Tue,  3 Dec 2019 11:54:39 +0000 (UTC)
Date: Tue, 3 Dec 2019 19:54:35 +0800
From: Dave Young <dyoung@redhat.com>
To: Michael Weiser <michael@weiser.dinsnail.net>
Subject: Re: kexec_file overwrites reserved EFI ESRT memory
Message-ID: <20191203115435.GA2606@dhcp-128-65.nay.redhat.com>
References: <20191122180552.GA32104@weiser.dinsnail.net>
 <87blt3y949.fsf@x220.int.ebiederm.org>
 <20191122210702.GE32104@weiser.dinsnail.net>
 <20191125055201.GA6569@dhcp-128-65.nay.redhat.com>
 <20191129152700.GA8286@weiser.dinsnail.net>
 <20191202085829.GA15808@dhcp-128-65.nay.redhat.com>
 <20191202090520.GA15874@dhcp-128-65.nay.redhat.com>
 <20191202234541.GA27567@weiser.dinsnail.net>
MIME-Version: 1.0
In-Reply-To: <20191202234541.GA27567@weiser.dinsnail.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: j1FCUGnRMrGppNhHKyqOxg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_035454_935878_9F49DFF3 
X-CRM114-Status: GOOD (  20.99  )
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

On 12/03/19 at 12:45am, Michael Weiser wrote:
> Hi Dave,
> 
> On Mon, Dec 02, 2019 at 05:05:20PM +0800, Dave Young wrote:
> 
> > > It seems a serious problem, the EFI modified memmap does not get an
> > > /proc/iomem resource update, but kexec_file relies on /proc/iomem in
> > > X86.
> > > 
> > > There is an question from Sai about why add_efi_memmap is not enabled by
> > > default:
> > > https://www.spinics.net/lists/linux-mm/msg185166.html
> 
> Incidentally, a data point I did not think to mention: I do boot the
> kernel as EFI application directly from the firmware as a boot entry
> with compiled in initrd and command line:
> 
> $ grep EFI nobak/kernel/linux/.config
> CONFIG_EFI=y
> CONFIG_EFI_STUB=y
> # CONFIG_EFI_MIXED is not set
> CONFIG_DMI_SCAN_MACHINE_NON_EFI_FALLBACK=y
> # EFI (Extensible Firmware Interface) Support
> CONFIG_EFI_VARS=m
> CONFIG_EFI_ESRT=y
> CONFIG_EFI_VARS_PSTORE=m
> # CONFIG_EFI_VARS_PSTORE_DEFAULT_DISABLE is not set
> CONFIG_EFI_RUNTIME_MAP=y
> # CONFIG_EFI_FAKE_MEMMAP is not set
> CONFIG_EFI_RUNTIME_WRAPPERS=y
> # CONFIG_EFI_BOOTLOADER_CONTROL is not set
> # CONFIG_EFI_CAPSULE_LOADER is not set
> # CONFIG_EFI_TEST is not set
> # CONFIG_EFI_RCI2_TABLE is not set
> # end of EFI (Extensible Firmware Interface) Support
> CONFIG_UEFI_CPER=y
> CONFIG_UEFI_CPER_X86=y
> CONFIG_EFI_EARLYCON=y
> CONFIG_EFI_PARTITION=y
> CONFIG_FB_EFI=y
> CONFIG_EFIVAR_FS=y
> # CONFIG_EFI_PGT_DUMP is not set
> 
> $ grep CMDLINE nobak/kernel/linux/.config
> CONFIG_CMDLINE_BOOL=y
> CONFIG_CMDLINE="root=UUID=97[...]e4 rd.luks.uuid=8a[...]c3 rd.luks.allow-discards=8a[...]c3 mem_sleep_default=deep resume=UUID=97[...]e4 resume_offset=96256 efi=debug memblock=debug"
> CONFIG_CMDLINE_OVERRIDE=y
> # CONFIG_BLK_CMDLINE_PARSER is not set
> # CONFIG_CMDLINE_PARTITION is not set
> CONFIG_FB_CMDLINE=y
> 
> $ efibootmgr -v
> BootCurrent: 000A
> Timeout: 2 seconds
> BootOrder: 000A,0009,0008,0005,0007,0006,0004,0002,0001,0000,0003
> [...]
> Boot0005* gentoo-5.4.0-next-20191127+-clear
> HD(1,GPT,e7[...]f2,0x800,0x64000)/File(\kernel-5.4.0-next-20191127+-clear)
> [...]
> Boot000A* gentoo-5.4.1-gentoo
> HD(1,GPT,e7[...]f2,0x800,0x64000)/File(\kernel-5.4.1-gentoo)
> 
> So there's no boot loader that could construct an e820 table for the
> kernel to consume. I understand it's then up to the EFI stub to come up
> with a e820 table from the EFI memory map.
> 
> > > Long time ago the add_efi_memmap is only enabled in case we explict
> > > enable it on cmdline, I'm not sure if we can do it by default, maybe we
> > > should.   Need opinion from X86 maintainers..
> > > Can you try below diff see if it works for you? (not tested, and need
> > > explicitly 'add_efi_memmap' in kernel cmdline param)
> 
> Neither adding add_efi_memmap nor adding your patch and setting that option
> does make the ESRT memory region appear in /proc/iomem. kexec_file still
> loads the kernel across the ESRT region.
> 

Hmm, sorry, my bad, actuall add_efi_memmap does not consider the
EFI_MEMORY_RUNTIME attribute, it only reads the memory descriptor types.

Will read your replied information later, did not get time today, but
probably below chunk can help?

diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
index 3b9fd679cea9..516307617621 100644
--- a/arch/x86/platform/efi/quirks.c
+++ b/arch/x86/platform/efi/quirks.c
@@ -293,6 +293,8 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
 	early_memunmap(new, new_size);
 
 	efi_memmap_install(new_phys, num_entries);
+	e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
+	e820__update_table(e820_table);
 }
 
 /*

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
