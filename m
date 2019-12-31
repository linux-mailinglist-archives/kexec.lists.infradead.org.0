Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BC612DC11
	for <lists+kexec@lfdr.de>; Tue, 31 Dec 2019 23:20:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffoM3FNl3UD+NvI4ZUiM5mw6N/ad4Asp6yDCB/lo6pc=; b=iGBLsmM36fE0tw
	SACzqyiVEi1KERwUp7KtKBlenzRcHAThuMDm80g02tyOAv1GSBqHk+x28/Ok2P7YVsbPwnK4HP+dB
	SbwxQPILGguAiaZJX2Au4y+mXvS/wFMMg8tVmSowSAVWopIqVA14IgTnv9SK11lmpSLRC4IiAIpq2
	hA+Kxro1hCSd3asXiR64o0r3UwpsQ4NtDsb4nR8vE1YIHv6CZa4BKJF62dLz1HMamzuyM9hLs72kD
	maIULFpHT3b2DFZC2SM3clFCl5iUPTXns/qqPIsoetzXdKbMF0ocwxI4jbsX+1pLtqbe3CiRCBh7E
	WqQj5Q8zhJIgdXyiHTTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imPsL-0007kg-P1; Tue, 31 Dec 2019 22:20:29 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imPsH-0007jL-QH
 for kexec@lists.infradead.org; Tue, 31 Dec 2019 22:20:27 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 14:20:25 -0800
X-IronPort-AV: E=Sophos;i="5.69,380,1571727600"; d="scan'208";a="368974398"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 14:20:25 -0800
Subject: [PATCH v2 1/4] efi: Add a flags parameter to efi_memory_map
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Tue, 31 Dec 2019 14:04:23 -0800
Message-ID: <157782986309.367056.18234587970434659175.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_142025_863824_F85B0FCD 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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

In preparation for garbage collecting dynamically allocated efi memory
maps, where the allocation method of memblock vs slab needs to be
recalled, convert the existing 'late' flag into a 'flags' bitmask.

Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 drivers/firmware/efi/memmap.c |   24 +++++++++++++-----------
 include/linux/efi.h           |    3 ++-
 2 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
index 38b686c67b17..813674ef9000 100644
--- a/drivers/firmware/efi/memmap.c
+++ b/drivers/firmware/efi/memmap.c
@@ -52,7 +52,7 @@ phys_addr_t __init efi_memmap_alloc(unsigned int num_entries)
 /**
  * __efi_memmap_init - Common code for mapping the EFI memory map
  * @data: EFI memory map data
- * @late: Use early or late mapping function?
+ * @flags: Use early or late mapping function?
  *
  * This function takes care of figuring out which function to use to
  * map the EFI memory map in efi.memmap based on how far into the boot
@@ -66,9 +66,9 @@ phys_addr_t __init efi_memmap_alloc(unsigned int num_entries)
  * Returns zero on success, a negative error code on failure.
  */
 static int __init
-__efi_memmap_init(struct efi_memory_map_data *data, bool late)
+__efi_memmap_init(struct efi_memory_map_data *data, unsigned long flags)
 {
-	struct efi_memory_map map;
+	struct efi_memory_map map = { 0 };
 	phys_addr_t phys_map;
 
 	if (efi_enabled(EFI_PARAVIRT))
@@ -76,7 +76,7 @@ __efi_memmap_init(struct efi_memory_map_data *data, bool late)
 
 	phys_map = data->phys_map;
 
-	if (late)
+	if (flags & EFI_MEMMAP_LATE)
 		map.map = memremap(phys_map, data->size, MEMREMAP_WB);
 	else
 		map.map = early_memremap(phys_map, data->size);
@@ -92,7 +92,7 @@ __efi_memmap_init(struct efi_memory_map_data *data, bool late)
 
 	map.desc_version = data->desc_version;
 	map.desc_size = data->desc_size;
-	map.late = late;
+	map.flags |= flags;
 
 	set_bit(EFI_MEMMAP, &efi.flags);
 
@@ -111,9 +111,9 @@ __efi_memmap_init(struct efi_memory_map_data *data, bool late)
 int __init efi_memmap_init_early(struct efi_memory_map_data *data)
 {
 	/* Cannot go backwards */
-	WARN_ON(efi.memmap.late);
+	WARN_ON(efi.memmap.flags & EFI_MEMMAP_LATE);
 
-	return __efi_memmap_init(data, false);
+	return __efi_memmap_init(data, 0);
 }
 
 void __init efi_memmap_unmap(void)
@@ -121,7 +121,7 @@ void __init efi_memmap_unmap(void)
 	if (!efi_enabled(EFI_MEMMAP))
 		return;
 
-	if (!efi.memmap.late) {
+	if (!(efi.memmap.flags & EFI_MEMMAP_LATE)) {
 		unsigned long size;
 
 		size = efi.memmap.desc_size * efi.memmap.nr_map;
@@ -168,7 +168,7 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
 	WARN_ON(efi.memmap.map);
 
 	/* Were we already called? */
-	WARN_ON(efi.memmap.late);
+	WARN_ON(efi.memmap.flags & EFI_MEMMAP_LATE);
 
 	/*
 	 * It makes no sense to allow callers to register different
@@ -178,7 +178,7 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
 	data.desc_version = efi.memmap.desc_version;
 	data.desc_size = efi.memmap.desc_size;
 
-	return __efi_memmap_init(&data, true);
+	return __efi_memmap_init(&data, EFI_MEMMAP_LATE);
 }
 
 /**
@@ -195,6 +195,7 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
 int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
 {
 	struct efi_memory_map_data data;
+	unsigned long flags;
 
 	efi_memmap_unmap();
 
@@ -202,8 +203,9 @@ int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
 	data.size = efi.memmap.desc_size * nr_map;
 	data.desc_version = efi.memmap.desc_version;
 	data.desc_size = efi.memmap.desc_size;
+	flags = efi.memmap.flags & EFI_MEMMAP_LATE;
 
-	return __efi_memmap_init(&data, efi.memmap.late);
+	return __efi_memmap_init(&data, flags);
 }
 
 /**
diff --git a/include/linux/efi.h b/include/linux/efi.h
index aa54586db7a5..b8e930f5ff77 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -795,7 +795,8 @@ struct efi_memory_map {
 	int nr_map;
 	unsigned long desc_version;
 	unsigned long desc_size;
-	bool late;
+#define EFI_MEMMAP_LATE (1UL << 0)
+	unsigned long flags;
 };
 
 struct efi_mem_range {


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
