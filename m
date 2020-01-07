Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45A34131CEB
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 01:56:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pw9N5ivgR6Yzv59UKNYPINAE1bE2azU+ORgBRFNbno0=; b=p4kln0dRUJciVz
	YRNaQJKcaivEVwXgMooXe7JmOTvSIqNujf6fOeGs5DOQD+INpSZNJ8s41O2SQ33L4flW4XueddjrM
	CpwEhWwjGa4Q5fB3BCixtg7XUyj1sgnd/pC9amwSYr8ma/PSBLFae9DKTXobcKIcq4Pl8962jQwWY
	VxSaHnYXyUGzpP9Ix2796LNL1X3QNL55igt5b27J2YBKN+apXJS5gWQCF0V+WcKgF9mk1x6zAFVRn
	GYdvQnYQB41+rgSahatNJ+keXSD2CB2PnASCj4FLfhKMrsTnMzhFSPyk6vR6B0saphtxmMBCSIOTY
	HuZCmQ926VYEUeDFGJTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iodAt-00054g-F6; Tue, 07 Jan 2020 00:56:47 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iodAn-00050o-Hu
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 00:56:43 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:56:40 -0800
X-IronPort-AV: E=Sophos;i="5.69,404,1571727600"; d="scan'208";a="210958795"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:56:40 -0800
Subject: [PATCH v4 3/4] efi: Fix efi_memmap_alloc() leaks
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Mon, 06 Jan 2020 16:40:37 -0800
Message-ID: <157835763783.1456824.4013634516855823659.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
References: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_165641_649387_B79E9429 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-efi@vger.kernel.org, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Taku Izumi <izumi.taku@jp.fujitsu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

With efi_fake_memmap() and efi_arch_mem_reserve() the efi table may be
updated and replaced multiple times. When that happens a previous
dynamically allocated efi memory map can be garbage collected. Use the
new EFI_MEMMAP_{SLAB,MEMBLOCK} flags to detect when a dynamically
allocated memory map is being replaced.

Debug statements in efi_memmap_free() reveal:

 efi: __efi_memmap_free:37: phys: 0x23ffdd580 size: 2688 flags: 0x2
 efi: __efi_memmap_free:37: phys: 0x9db00 size: 2640 flags: 0x2
 efi: __efi_memmap_free:37: phys: 0x9e580 size: 2640 flags: 0x2

...a savings of 7968 bytes on a qemu boot with 2 entries specified to
efi_fake_mem=.

Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 drivers/firmware/efi/memmap.c |   24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/firmware/efi/memmap.c b/drivers/firmware/efi/memmap.c
index 04dfa56b994b..bffa320d2f9a 100644
--- a/drivers/firmware/efi/memmap.c
+++ b/drivers/firmware/efi/memmap.c
@@ -29,6 +29,28 @@ static phys_addr_t __init __efi_memmap_alloc_late(unsigned long size)
 	return PFN_PHYS(page_to_pfn(p));
 }
 
+static void __init __efi_memmap_free(u64 phys, unsigned long size, unsigned long flags)
+{
+	if (flags & EFI_MEMMAP_MEMBLOCK) {
+		if (slab_is_available())
+			memblock_free_late(phys, size);
+		else
+			memblock_free(phys, size);
+	} else if (flags & EFI_MEMMAP_SLAB) {
+		struct page *p = pfn_to_page(PHYS_PFN(phys));
+		unsigned int order = get_order(size);
+
+		free_pages((unsigned long) page_address(p), order);
+	}
+}
+
+static void __init efi_memmap_free(void)
+{
+	__efi_memmap_free(efi.memmap.phys_map,
+			efi.memmap.desc_size * efi.memmap.nr_map,
+			efi.memmap.flags);
+}
+
 /**
  * efi_memmap_alloc - Allocate memory for the EFI memory map
  * @num_entries: Number of entries in the allocated map.
@@ -100,6 +122,8 @@ static int __init __efi_memmap_init(struct efi_memory_map_data *data)
 		return -ENOMEM;
 	}
 
+	efi_memmap_free();
+
 	map.phys_map = data->phys_map;
 	map.nr_map = data->size / data->desc_size;
 	map.map_end = map.map + data->size;


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
