Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5B9F131CE3
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 01:56:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1DcvcOLdVfBWOnxXoOT2eABJjiF/PvUvXMKdR51oJ9M=; b=abbA2hIK1ru74I
	5lvitmdWxq1ikcB8qGzIdmjaipxOC4Km9jL1pbcjsreGobSfY1qkWqiWyc97pmyb5GFVzkuKMjlle
	5hPVBaMWg7s7mMSa8nySxkQoMwZJRP/h2QgNXJvwR7jKUWewUVNzR/4RMC1MHxqXfJx5XPilY+nuo
	1DxtE5rZmBq35NCi+wVEZo9EWPqgbmfc7QCKIJSTsCiJMKTVVe3qxWaEeRfj+tP/hGIKSQn1A53YY
	Sn0Ss5Jz9hLXFoY5mWtr+JLAt8v1YXifl2OKChYxAoGkxJ/XyCp1WoEEd/LiBAzvSh+CU/cJ5f6oM
	wEmwicd4wT88Qx8OFbkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iodAi-0004vZ-77; Tue, 07 Jan 2020 00:56:36 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iodAe-0004tX-O4
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 00:56:34 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:56:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,404,1571727600"; d="scan'208";a="303034623"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:56:29 -0800
Subject: [PATCH v4 1/4] efi: Add a flags parameter to efi_memory_map
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Mon, 06 Jan 2020 16:40:27 -0800
Message-ID: <157835762748.1456824.5246139429550635887.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_165632_793700_F9D13CE0 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Arrange for the flag to be passed via 'struct efi_memory_map_data'. This
structure grows additional flags in follow-on changes.

Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 drivers/firmware/efi/memmap.c |   31 +++++++++++++++++--------------
 include/linux/efi.h           |    4 +++-
 2 files changed, 20 insertions(+), 15 deletions(-)

diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
index 38b686c67b17..4f98eb12c172 100644
--- a/drivers/firmware/efi/memmap.c
+++ b/drivers/firmware/efi/memmap.c
@@ -52,21 +52,20 @@ phys_addr_t __init efi_memmap_alloc(unsigned int num_entries)
 /**
  * __efi_memmap_init - Common code for mapping the EFI memory map
  * @data: EFI memory map data
- * @late: Use early or late mapping function?
  *
  * This function takes care of figuring out which function to use to
  * map the EFI memory map in efi.memmap based on how far into the boot
  * we are.
  *
- * During bootup @late should be %false since we only have access to
- * the early_memremap*() functions as the vmalloc space isn't setup.
- * Once the kernel is fully booted we can fallback to the more robust
- * memremap*() API.
+ * During bootup EFI_MEMMAP_LATE in data->flags should be clear since we
+ * only have access to the early_memremap*() functions as the vmalloc
+ * space isn't setup.  Once the kernel is fully booted we can fallback
+ * to the more robust memremap*() API.
  *
  * Returns zero on success, a negative error code on failure.
  */
 static int __init
-__efi_memmap_init(struct efi_memory_map_data *data, bool late)
+__efi_memmap_init(struct efi_memory_map_data *data)
 {
 	struct efi_memory_map map;
 	phys_addr_t phys_map;
@@ -76,7 +75,7 @@ __efi_memmap_init(struct efi_memory_map_data *data, bool late)
 
 	phys_map = data->phys_map;
 
-	if (late)
+	if (data->flags & EFI_MEMMAP_LATE)
 		map.map = memremap(phys_map, data->size, MEMREMAP_WB);
 	else
 		map.map = early_memremap(phys_map, data->size);
@@ -92,7 +91,7 @@ __efi_memmap_init(struct efi_memory_map_data *data, bool late)
 
 	map.desc_version = data->desc_version;
 	map.desc_size = data->desc_size;
-	map.late = late;
+	map.flags = data->flags;
 
 	set_bit(EFI_MEMMAP, &efi.flags);
 
@@ -111,9 +110,10 @@ __efi_memmap_init(struct efi_memory_map_data *data, bool late)
 int __init efi_memmap_init_early(struct efi_memory_map_data *data)
 {
 	/* Cannot go backwards */
-	WARN_ON(efi.memmap.late);
+	WARN_ON(efi.memmap.flags & EFI_MEMMAP_LATE);
 
-	return __efi_memmap_init(data, false);
+	data->flags = 0;
+	return __efi_memmap_init(data);
 }
 
 void __init efi_memmap_unmap(void)
@@ -121,7 +121,7 @@ void __init efi_memmap_unmap(void)
 	if (!efi_enabled(EFI_MEMMAP))
 		return;
 
-	if (!efi.memmap.late) {
+	if (!(efi.memmap.flags & EFI_MEMMAP_LATE)) {
 		unsigned long size;
 
 		size = efi.memmap.desc_size * efi.memmap.nr_map;
@@ -162,13 +162,14 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
 	struct efi_memory_map_data data = {
 		.phys_map = addr,
 		.size = size,
+		.flags = EFI_MEMMAP_LATE,
 	};
 
 	/* Did we forget to unmap the early EFI memmap? */
 	WARN_ON(efi.memmap.map);
 
 	/* Were we already called? */
-	WARN_ON(efi.memmap.late);
+	WARN_ON(efi.memmap.flags & EFI_MEMMAP_LATE);
 
 	/*
 	 * It makes no sense to allow callers to register different
@@ -178,7 +179,7 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
 	data.desc_version = efi.memmap.desc_version;
 	data.desc_size = efi.memmap.desc_size;
 
-	return __efi_memmap_init(&data, true);
+	return __efi_memmap_init(&data);
 }
 
 /**
@@ -195,6 +196,7 @@ int __init efi_memmap_init_late(phys_addr_t addr, unsigned long size)
 int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
 {
 	struct efi_memory_map_data data;
+	unsigned long flags;
 
 	efi_memmap_unmap();
 
@@ -202,8 +204,9 @@ int __init efi_memmap_install(phys_addr_t addr, unsigned int nr_map)
 	data.size = efi.memmap.desc_size * nr_map;
 	data.desc_version = efi.memmap.desc_version;
 	data.desc_size = efi.memmap.desc_size;
+	data.flags = efi.memmap.flags & EFI_MEMMAP_LATE;
 
-	return __efi_memmap_init(&data, efi.memmap.late);
+	return __efi_memmap_init(&data);
 }
 
 /**
diff --git a/include/linux/efi.h b/include/linux/efi.h
index aa54586db7a5..e7e6c64469a7 100644
--- a/include/linux/efi.h
+++ b/include/linux/efi.h
@@ -786,6 +786,7 @@ struct efi_memory_map_data {
 	unsigned long size;
 	unsigned long desc_version;
 	unsigned long desc_size;
+	unsigned long flags;
 };
 
 struct efi_memory_map {
@@ -795,7 +796,8 @@ struct efi_memory_map {
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
