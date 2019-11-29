Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FDD910D7E6
	for <lists+kexec@lfdr.de>; Fri, 29 Nov 2019 16:32:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEcyfgkF4U2XrBqodxgEb1KokrEd6vurxguO99n2i2Q=; b=jxpQ6AYrnGq5uI
	x5NpZavUzbyV/yWFQQSemhGhVdbs+yEkTrHGkrYzLJeFeC3CoMLdd67yxjk4uoCjzacLsZPKT8FpN
	mc7VCPROn1fRtgy4rrixUGzPd9I+kILvjpkUZgevxxiIgq5b9tRzd725DwqQ1QDrxpy+3JvcTPWi6
	3XbPzkbtNuGNiZZxgxqk+o0i9K7YQfMn22QyNfmIsCWu6iG7CHkzHZG7BsGYj0Esw6VQlO/TM7j0b
	Kh954vubXf8RLN/BQkluaWRsrLf3vNjXcVal1xV1GoSaLa9nczdmDJuB/y31l9DvfIQxJnHqbIDh7
	eZ0zVl+EOiDA/oMCv44g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaiG7-0007wH-Qz; Fri, 29 Nov 2019 15:32:39 +0000
Received: from heinz.dinsnail.net ([2a01:238:43b4:3200:9392:5dcc:2f0e:a960])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaiG3-0007vn-Mr
 for kexec@lists.infradead.org; Fri, 29 Nov 2019 15:32:37 +0000
Received: from heinz.dinsnail.net ([IPv6:0:0:0:0:0:0:0:1])
 by heinz.dinsnail.net (8.15.2/8.15.2) with ESMTP id xATFUA2v016367;
 Fri, 29 Nov 2019 16:30:10 +0100
Received: from eldalonde.UUCP (uucp@localhost)
 by heinz.dinsnail.net (8.15.2/8.15.2/Submit) with bsmtp id xATFU6CW016366;
 Fri, 29 Nov 2019 16:30:06 +0100
Received: from eldalonde.weiser.dinsnail.net (localhost [IPv6:0:0:0:0:0:0:0:1])
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2) with ESMTP id xATFR0fe012378; 
 Fri, 29 Nov 2019 16:27:00 +0100
Received: (from michael@localhost)
 by eldalonde.weiser.dinsnail.net (8.15.2/8.15.2/Submit) id xATFR0xb012377;
 Fri, 29 Nov 2019 16:27:00 +0100
Date: Fri, 29 Nov 2019 16:27:00 +0100
From: Michael Weiser <michael@weiser.dinsnail.net>
To: Dave Young <dyoung@redhat.com>
Subject: Re: kexec_file overwrites reserved EFI ESRT memory
Message-ID: <20191129152700.GA8286@weiser.dinsnail.net>
References: <20191122180552.GA32104@weiser.dinsnail.net>
 <87blt3y949.fsf@x220.int.ebiederm.org>
 <20191122210702.GE32104@weiser.dinsnail.net>
 <20191125055201.GA6569@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191125055201.GA6569@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-dinsnail-net-MailScanner-Information: Please contact the ISP for more
 information
X-dinsnail-net-MailScanner-ID: xATFUA2v016367
X-dinsnail-net-MailScanner: Found to be clean
X-dinsnail-net-MailScanner-From: michael@weiser.dinsnail.net
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_073236_048742_1B84D510 
X-CRM114-Status: GOOD (  19.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, kexec@lists.infradead.org,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Dave,

On Mon, Nov 25, 2019 at 01:52:01PM +0800, Dave Young wrote:

> > > Fundamentally when deciding where to place a new kernel kexec (either
> > > user space or the in kernel kexec_file implementation) needs to be able
> > > to ask the question which memory ares are reserved.
[...]
> > > So my question is why doesn't the ESRT reservation wind up in
> > > /proc/iomem?
> > 
> > My guess is that the focus was that some EFI structures need to be kept
> > around accross the life cycle of *one* running kernel and
> > memblock_reserve() was enough for that. Marking them so they survive
> > kexecing another kernel might just never have cropped up thus far. Ard
> > or Matt would know.
> Can you check your un-reserved memory, if your memory falls into EFI
> BOOT* then in X86 you can use something like below if it is not covered:

> void __init efi_esrt_init(void)
> {
> ...
> 	pr_info("Reserving ESRT space from %pa to %pa.\n", &esrt_data, &end);
> 	if (md.type == EFI_BOOT_SERVICES_DATA)
> 		efi_mem_reserve(esrt_data, esrt_data_size);
> ...
> }

Please bear with me if I'm a bit slow on the uptake here: On my machine,
the esrt module reports at boot:

[    0.001244] esrt: Reserving ESRT space from 0x0000000074dd2f98 to 0x0000000074dd2fd0.

This area is of type "Boot Data" (== BOOT_SERVICES_DATA) which makes the
code you quote reserve it using memblock_reserve() shown by
memblock=debug:

[    0.001246] memblock_reserve: [0x0000000074dd2f98-0x0000000074dd2fcf] efi_mem_reserve+0x1d/0x2b

It also calls into arch/x86/platform/efi/quirks.c:efi_arch_mem_reserve()
which tags it as EFI_MEMORY_RUNTIME while the surrounding ones aren't
as shown by efi=debug:

[    0.178111] efi: mem10: [Boot Data          |   |  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x0000000074dd3000-0x0000000075becfff] (14MB)
[    0.178113] efi: mem11: [Boot Data          |RUN|  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x0000000074dd2000-0x0000000074dd2fff] (0MB)
[    0.178114] efi: mem12: [Boot Data          |   |  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x000000006d635000-0x0000000074dd1fff] (119MB)

This prevents arch/x86/platform/efi/quirks.c:efi_free_boot_services()
from calling __memblock_free_late() on it. And indeed, memblock=debug does
not report this area as being free'd while the surrounding ones are:

[    0.178369] __memblock_free_late: [0x0000000074dd3000-0x0000000075becfff] efi_free_boot_services+0x126/0x1f8
[    0.178658] __memblock_free_late: [0x000000006d635000-0x0000000074dd1fff] efi_free_boot_services+0x126/0x1f8

The esrt area does not show up in /proc/iomem though:

00100000-763f5fff : System RAM
  62000000-62a00d80 : Kernel code
  62c00000-62f15fff : Kernel rodata
  63000000-630ea8bf : Kernel data
  63fed000-641fffff : Kernel bss
  65000000-6affffff : Crash kernel

And thus kexec loads the new kernel right over that area as shown when
enabling -DDEBUG on kexec_file.c (0x74dd3000 being inbetween 0x73000000
and 0x73000000+0x24be000 = 0x754be000):

[  650.007695] kexec_file: Loading segment 0: buf=0x000000003a9c84d6 bufsz=0x5000 mem=0x98000 memsz=0x6000
[  650.007699] kexec_file: Loading segment 1: buf=0x0000000017b2b9e6 bufsz=0x1240 mem=0x96000 memsz=0x2000
[  650.007703] kexec_file: Loading segment 2: buf=0x00000000fdf72ba2 bufsz=0x1150888 mem=0x73000000 memsz=0x24be000

... because it looks for any memory hole large enough in iomem resources
tagged as System RAM, which 0x74dd2000-0x74dd2fff would then need to be
excluded from on my system.

Looking some more at efi_arch_mem_reserve() I see that it also registers
the area with efi.memmap and installs it using efi_memmap_install().
which seems to call memremap(MEMREMAP_WB) on it. From my understanding
of the comments in the source of memremap(), MEMREMAP_WB does specifically
*not* reserve that memory in any way.

> Unfortunately I noticed there are different requirements/ways for
> different types of "reserved" memory.  But that is another topic..

I tried to reserve the area with something like this:

t a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
index 4de244683a7e..b86a5df027a2 100644
--- a/arch/x86/platform/efi/quirks.c
+++ b/arch/x86/platform/efi/quirks.c
@@ -249,6 +249,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
        efi_memory_desc_t md;
        int num_entries;
        void *new;
+       struct resource *res;
 
        if (efi_mem_desc_lookup(addr, &md) ||
            md.type != EFI_BOOT_SERVICES_DATA) {
@@ -294,6 +295,21 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
        early_memunmap(new, new_size);
 
        efi_memmap_install(new_phys, num_entries);
+
+       res = memblock_alloc(sizeof(*res), SMP_CACHE_BYTES);
+       if (!res) {
+               pr_err("Failed to allocate EFI io resource allocator for "
+                               "0x%llx:0x%llx", mr.range.start, mr.range.end);
+               return;
+       }
+
+       res->start      = mr.range.start;
+       res->end        = mr.range.end;
+       res->name       = "EFI runtime";
+       res->flags      = IORESOURCE_MEM | IORESOURCE_BUSY;
+       res->desc       = IORES_DESC_NONE;
+
+       insert_resource(&iomem_resource, res);
 }
 
 /*

... but failed miserably in terms of the kernel not booting because I
have no experience whatsoever in programming and debugging early kernel
init. But I am somewhat keen to ride the learning curve here. :)

Am I on the right track or were you a couple of leaps ahead of me
already and I just didn't get the question?
-- 
Thanks,
Michael

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
