Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363E12DC1A
	for <lists+kexec@lfdr.de>; Tue, 31 Dec 2019 23:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uWWVnnlFVghyaUNbzFh34SUNRVhs4xzCAS/Vl5fFH8E=; b=IHiiLBTTiXOy/k
	4P9J7WGdEY0cItmDc7xWg7B2k3eqUEhgm/34X32djyI3QfM518oJp9LKCc2z2cctN/FrZ+46w6G2x
	tJ3cvw9c7ILMOIZEFqPxncPHPamzSuqTqxiOHcmusEtOl6JDeHXpB3g7LCHKnTwuOxOo9czBaIgJf
	u97xS6PAEswj+c+VYuicUrEAhPHmCSGfT3eqJDIxozz4isEF6iWEEsFIFxcQIEWi7LK7OrBflDs0p
	mYSbkHClk3CdHVdRCDmU6qqb6HfcdTtYWxEJSC2C0kJCOvs+bLkvucKKIXS1eiS/8Pc2Uc5uOcMqo
	SQgvhS/o+rGdOq5V1lzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imPsd-0007xl-BR; Tue, 31 Dec 2019 22:20:47 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imPsX-0007uv-GB
 for kexec@lists.infradead.org; Tue, 31 Dec 2019 22:20:44 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 14:20:40 -0800
X-IronPort-AV: E=Sophos;i="5.69,380,1571727600"; d="scan'208";a="301617925"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 14:20:40 -0800
Subject: [PATCH v2 4/4] efi: Fix handling of multiple efi_fake_mem= entries
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Tue, 31 Dec 2019 14:04:38 -0800
Message-ID: <157782987865.367056.15199592105978588123.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_142041_579343_440C03E8 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Taku Izumi <izumi.taku@jp.fujitsu.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Dave noticed that when specifying multiple efi_fake_mem= entries only
the last entry was successfully being reflected in the efi memory map.
This is due to the fact that the efi_memmap_insert() is being called
multiple times, but on successive invocations the insertion should be
applied to the last new memmap rather than the original map at
efi_fake_memmap() entry.

Rework efi_fake_memmap() to install the new memory map after each
efi_fake_mem= entry is parsed.

This also fixes an issue in efi_fake_memmap() that caused it to litter
emtpy entries into the end of the efi memory map. The empty entry causes
efi_memmap_insert() to attempt more memmap splits / copies than
efi_memmap_split_count() accounted for when sizing the new map.

    BUG: unable to handle page fault for address: ffffffffff281000
    [..]
    RIP: 0010:efi_memmap_insert+0x11d/0x191
    [..]
    Call Trace:
     ? bgrt_init+0xbe/0xbe
     ? efi_arch_mem_reserve+0x1cb/0x228
     ? acpi_parse_bgrt+0xa/0xd
     ? acpi_table_parse+0x86/0xb8
     ? acpi_boot_init+0x494/0x4e3
     ? acpi_parse_x2apic+0x87/0x87
     ? setup_acpi_sci+0xa2/0xa2
     ? setup_arch+0x8db/0x9e1
     ? start_kernel+0x6a/0x547
     ? secondary_startup_64+0xb6/0xc0

Commit af1648984828 "x86/efi: Update e820 with reserved EFI boot
services data to fix kexec breakage" is listed in Fixes: since it
introduces more occurrences where efi_memmap_insert() is invoked after
an efi_fake_mem= configuration has been parsed. Previously the side
effects of vestigial empty entries were benign, but with commit
af1648984828 that follow-on efi_memmap_insert() invocation triggers the
above crash signature.

Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
Link: https://lore.kernel.org/r/20191231014630.GA24942@dhcp-128-65.nay.redhat.com
Reported-by: Dave Young <dyoung@redhat.com>
Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
Cc: Michael Weiser <michael@weiser.dinsnail.net>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@kernel.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 drivers/firmware/efi/fake_mem.c |   32 +++++++++++++++++---------------
 drivers/firmware/efi/memmap.c   |    2 +-
 include/linux/efi.h             |    2 ++
 3 files changed, 20 insertions(+), 16 deletions(-)

diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
index 7e53e5520548..68d752d8af21 100644
--- a/drivers/firmware/efi/fake_mem.c
+++ b/drivers/firmware/efi/fake_mem.c
@@ -34,26 +34,17 @@ static int __init cmp_fake_mem(const void *x1, const void *x2)
 	return 0;
 }
 
-void __init efi_fake_memmap(void)
+static void __init efi_fake_range(struct efi_mem_range *efi_range)
 {
 	int new_nr_map = efi.memmap.nr_map;
 	efi_memory_desc_t *md;
 	phys_addr_t new_memmap_phy;
 	unsigned long flags = 0;
 	void *new_memmap;
-	int i;
-
-	if (!efi_enabled(EFI_MEMMAP) || !nr_fake_mem)
-		return;
 
 	/* count up the number of EFI memory descriptor */
-	for (i = 0; i < nr_fake_mem; i++) {
-		for_each_efi_memory_desc(md) {
-			struct range *r = &efi_fake_mems[i].range;
-
-			new_nr_map += efi_memmap_split_count(md, r);
-		}
-	}
+	for_each_efi_memory_desc(md)
+		new_nr_map += efi_memmap_split_count(md, &efi_range->range);
 
 	/* allocate memory for new EFI memmap */
 	new_memmap_phy = efi_memmap_alloc(new_nr_map, &flags);
@@ -64,17 +55,28 @@ void __init efi_fake_memmap(void)
 	new_memmap = early_memremap(new_memmap_phy,
 				    efi.memmap.desc_size * new_nr_map);
 	if (!new_memmap) {
-		memblock_free(new_memmap_phy, efi.memmap.desc_size * new_nr_map);
+		__efi_memmap_free(new_memmap_phy,
+				efi.memmap.desc_size * new_nr_map, flags);
 		return;
 	}
 
-	for (i = 0; i < nr_fake_mem; i++)
-		efi_memmap_insert(&efi.memmap, new_memmap, &efi_fake_mems[i]);
+	efi_memmap_insert(&efi.memmap, new_memmap, efi_range);
 
 	/* swap into new EFI memmap */
 	early_memunmap(new_memmap, efi.memmap.desc_size * new_nr_map);
 
 	efi_memmap_install(new_memmap_phy, new_nr_map, flags);
+}
+
+void __init efi_fake_memmap(void)
+{
+	int i;
+
+	if (!efi_enabled(EFI_MEMMAP) || !nr_fake_mem)
+		return;
+
+	for (i = 0; i < nr_fake_mem; i++)
+		efi_fake_range(&efi_fake_mems[i]);
 
 	/* print new EFI memmap */
 	efi_print_memmap();
diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
index 188ab3cd5c52..de66c2a0e8f8 100644
--- a/drivers/firmware/efi/memmap.c
+++ b/drivers/firmware/efi/memmap.c
@@ -29,7 +29,7 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
 	return PFN_PHYS(page_to_pfn(p));
 }
 
-static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
+void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
 {
 	if (WARN_ON(slab_is_available() && (flags & EFI_MEMMAP_MEMBLOCK)))
 		return;
diff --git a/include/linux/efi.h b/include/linux/efi.h
index fa2668a992ae..6ae31e064321 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -1061,6 +1061,8 @@ extern void __iomem *efi_lookup_mapped_addr(u64 phys_addr);
 
 extern phys_addr_t __init efi_memmap_alloc(unsigned int num_entries,
 		unsigned long *flags);
+extern void __efi_memmap_free(u64 phys, unsigned long size,
+		unsigned long flags);
 extern int __init efi_memmap_init_early(struct efi_memory_map_data *data);
 extern int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size);
 extern void __init efi_memmap_unmap(void);


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
