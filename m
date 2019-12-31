Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0EF12DC13
	for <lists+kexec@lfdr.de>; Tue, 31 Dec 2019 23:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nQTnABUzndLg75hYYUcHUl3RC/QErGJy6V5TgrOVv5k=; b=oWm4dRFa0LArMY
	2jCF1H9nfy7dVPBI5u1fHf4FZii7fLpQEO83Hn5qh+OazKk7QGAdTfo0MOo0QdyfrEJJmXgzFxxpK
	kozg+fQINHr5P//fZviFYFVrehySOQHH1bJ49IpERDoVZj1hroNvL4b9O4GDX0vD2AQGmhTkSXe5f
	K88tTYcMw78o+dHXs06PjTJsSNYrN5xfn7sOuuEUrig0V1rhahZgNFWbWfJ9vgih4097SXiberc/G
	k7WtBlc1EvM9T55kenTpcIiPd+VaAuqFpCFruAEa5kS7FbKuzuqv1XnKz5HIEDrN/zi8z4M7YhWNa
	dSbnlvegvmOPUJ86EnwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imPsQ-0007nz-Je; Tue, 31 Dec 2019 22:20:34 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imPsN-0007m3-Aa
 for kexec@lists.infradead.org; Tue, 31 Dec 2019 22:20:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 14:20:30 -0800
X-IronPort-AV: E=Sophos;i="5.69,380,1571727600"; d="scan'208";a="221518225"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 14:20:30 -0800
Subject: [PATCH v2 2/4] efi: Add tracking for dynamically allocated memmaps
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Tue, 31 Dec 2019 14:04:28 -0800
Message-ID: <157782986828.367056.12411146199853107797.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_142031_375148_52FCCC50 
X-CRM114-Status: GOOD (  16.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In preparation for fixing efi_memmap_alloc() leaks, add support for
recording whether the memmap was dynamically allocated from slab,
memblock, or is the original physical memmap provided by the platform.

Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 arch/x86/platform/efi/efi.c     |    2 +-
 arch/x86/platform/efi/quirks.c  |   11 ++++++-----
 drivers/firmware/efi/fake_mem.c |    5 +++--
 drivers/firmware/efi/memmap.c   |   16 ++++++++++------
 include/linux/efi.h             |    8 ++++++--
 5 files changed, 26 insertions(+), 16 deletions(-)

diff --git a/arch/x86/platform/efi/efi.c b/arch/x86/platform/efi/efi.c
index 38d44f36d5ed..7086afbb84fd 100644
--- a/arch/x86/platform/efi/efi.c
+++ b/arch/x86/platform/efi/efi.c
@@ -333,7 +333,7 @@ static void __init efi_clean_memmap(void)
 		u64 size = efi.memmap.nr_map - n_removal;
 
 		pr_warn("Removing %d invalid memory map entries.\n", n_removal);
-		efi_memmap_install(efi.memmap.phys_map, size);
+		efi_memmap_install(efi.memmap.phys_map, size, 0);
 	}
 }
 
diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
index f8f0220b6a66..4a71c790f9c3 100644
--- a/arch/x86/platform/efi/quirks.c
+++ b/arch/x86/platform/efi/quirks.c
@@ -244,6 +244,7 @@ EXPORT_SYMBOL_GPL(efi_query_variable_store);
 void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
 {
 	phys_addr_t new_phys, new_size;
+	unsigned long flags = 0;
 	struct efi_mem_range mr;
 	efi_memory_desc_t md;
 	int num_entries;
@@ -272,8 +273,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
 	num_entries += efi.memmap.nr_map;
 
 	new_size = efi.memmap.desc_size * num_entries;
-
-	new_phys = efi_memmap_alloc(num_entries);
+	new_phys = efi_memmap_alloc(num_entries, &flags);
 	if (!new_phys) {
 		pr_err("Could not allocate boot services memmap\n");
 		return;
@@ -288,7 +288,7 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
 	efi_memmap_insert(&efi.memmap, new, &mr);
 	early_memunmap(new, new_size);
 
-	efi_memmap_install(new_phys, num_entries);
+	efi_memmap_install(new_phys, num_entries, flags);
 	e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
 	e820__update_table(e820_table);
 }
@@ -408,6 +408,7 @@ static void __init efi_unmap_pages(efi_memory_desc_t *md)
 void __init efi_free_boot_services(void)
 {
 	phys_addr_t new_phys, new_size;
+	unsigned long flags = 0;
 	efi_memory_desc_t *md;
 	int num_entries = 0;
 	void *new, *new_md;
@@ -463,7 +464,7 @@ void __init efi_free_boot_services(void)
 		return;
 
 	new_size = efi.memmap.desc_size * num_entries;
-	new_phys = efi_memmap_alloc(num_entries);
+	new_phys = efi_memmap_alloc(num_entries, &flags);
 	if (!new_phys) {
 		pr_err("Failed to allocate new EFI memmap\n");
 		return;
@@ -493,7 +494,7 @@ void __init efi_free_boot_services(void)
 
 	memunmap(new);
 
-	if (efi_memmap_install(new_phys, num_entries)) {
+	if (efi_memmap_install(new_phys, num_entries, flags)) {
 		pr_err("Could not install new EFI memmap\n");
 		return;
 	}
diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
index bb9fc70d0cfa..7e53e5520548 100644
--- a/drivers/firmware/efi/fake_mem.c
+++ b/drivers/firmware/efi/fake_mem.c
@@ -39,6 +39,7 @@ void __init efi_fake_memmap(void)
 	int new_nr_map = efi.memmap.nr_map;
 	efi_memory_desc_t *md;
 	phys_addr_t new_memmap_phy;
+	unsigned long flags = 0;
 	void *new_memmap;
 	int i;
 
@@ -55,7 +56,7 @@ void __init efi_fake_memmap(void)
 	}
 
 	/* allocate memory for new EFI memmap */
-	new_memmap_phy = efi_memmap_alloc(new_nr_map);
+	new_memmap_phy = efi_memmap_alloc(new_nr_map, &flags);
 	if (!new_memmap_phy)
 		return;
 
@@ -73,7 +74,7 @@ void __init efi_fake_memmap(void)
 	/* swap into new EFI memmap */
 	early_memunmap(new_memmap, efi.memmap.desc_size * new_nr_map);
 
-	efi_memmap_install(new_memmap_phy, new_nr_map);
+	efi_memmap_install(new_memmap_phy, new_nr_map, flags);
 
 	/* print new EFI memmap */
 	efi_print_memmap();
diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
index 813674ef9000..2b81ee6858a9 100644
--- a/drivers/firmware/efi/memmap.c
+++ b/drivers/firmware/efi/memmap.c
@@ -32,6 +32,7 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
 /**
  * efi_memmap_alloc - Allocate memory for the EFI memory map
  * @num_entries: Number of entries in the allocated map.
+ * @flags: Late map, memblock alloc, slab alloc flags
  *
  * Depending on whether mm_init() has already been invoked or not,
  * either memblock or "normal" page allocation is used.
@@ -39,20 +40,23 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
  * Returns the physical address of the allocated memory map on
  * success, zero on failure.
  */
-phys_addr_t __init efi_memmap_alloc(unsigned int num_entries)
+phys_addr_t __init efi_memmap_alloc(unsigned int num_entries, unsigned long *flags)
 {
 	unsigned long size = num_entries * efi.memmap.desc_size;
 
-	if (slab_is_available())
+	if (slab_is_available()) {
+		*flags |= EFI_MEMMAP_SLAB;
 		return __efi_memmap_alloc_late(size);
+	}
 
+	*flags |= EFI_MEMMAP_MEMBLOCK;
 	return __efi_memmap_alloc_early(size);
 }
 
 /**
  * __efi_memmap_init - Common code for mapping the EFI memory map
  * @data: EFI memory map data
- * @flags: Use early or late mapping function?
+ * @flags: Use early or late mapping function, and allocator
  *
  * This function takes care of figuring out which function to use to
  * map the EFI memory map in efi.memmap based on how far into the boot
@@ -192,10 +196,10 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
  *
  * Returns zero on success, a negative error code on failure.
  */
-int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
+int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map,
+		unsigned long flags)
 {
 	struct efi_memory_map_data data;
-	unsigned long flags;
 
 	efi_memmap_unmap();
 
@@ -203,7 +207,7 @@ int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
 	data.size = efi.memmap.desc_size * nr_map;
 	data.desc_version = efi.memmap.desc_version;
 	data.desc_size = efi.memmap.desc_size;
-	flags = efi.memmap.flags & EFI_MEMMAP_LATE;
+	flags |= efi.memmap.flags & EFI_MEMMAP_LATE;
 
 	return __efi_memmap_init(&data, flags);
 }
diff --git a/include/linux/efi.h b/include/linux/efi.h
index b8e930f5ff77..fa2668a992ae 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -796,6 +796,8 @@ struct efi_memory_map {
 	unsigned long desc_version;
 	unsigned long desc_size;
 #define EFI_MEMMAP_LATE (1UL << 0)
+#define EFI_MEMMAP_MEMBLOCK (1UL << 1)
+#define EFI_MEMMAP_SLAB (1UL << 2)
 	unsigned long flags;
 };
 
@@ -1057,11 +1059,13 @@ static inline efi_status_t efi_query_variable_store(u32 attributes,
 #endif
 extern void __iomem *efi_lookup_mapped_addr(u64 phys_addr);
 
-extern phys_addr_t __init efi_memmap_alloc(unsigned int num_entries);
+extern phys_addr_t __init efi_memmap_alloc(unsigned int num_entries,
+		unsigned long *flags);
 extern int __init efi_memmap_init_early(struct efi_memory_map_data *data);
 extern int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size);
 extern void __init efi_memmap_unmap(void);
-extern int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map);
+extern int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map,
+		unsigned long flags);
 extern int __init efi_memmap_split_count(efi_memory_desc_t *md,
 					 struct range *range);
 extern void __init efi_memmap_insert(struct efi_memory_map *old_memmap,


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
