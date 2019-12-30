Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8181212D455
	for <lists+kexec@lfdr.de>; Mon, 30 Dec 2019 21:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9KKanO0GZdAMvkGeMgsn+4nY+A7S/1IHLYNHrPAQO7Q=; b=GfNRMk8V4CA43B
	sGOxCriRTCH76p86nI6uTwo2LEU9gJFDeIPExN9Mzt7xSnIiZuNBcuUmxEy/MntOFLqNAQeG+lxbh
	kXVUHg6eO2m6ZG9WO5DcNLJk91OPfCoticaPkXjAOiWTp1O+QG+bYMDMXmkgJOd/Qbux0cqcjDSYP
	7Y+zJUlNugaW6JiEuD0kJ12RHek6DQolazKotlmhxvOV34VKOrxelzedwuFN2Tn/PAVS6IR/EI/gb
	mEfNXHc/Sy+t/LmSS89vB2GP91lFuxZ0SJwBQa6EbGCssJBL4lBUuTDMwvBC1jOzctkMQPXUlb+q4
	/9027HPzPvHS2DJVh+4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im1Qx-00063J-G3; Mon, 30 Dec 2019 20:14:35 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im1Qp-00062m-NJ
 for kexec@lists.infradead.org; Mon, 30 Dec 2019 20:14:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 12:14:25 -0800
X-IronPort-AV: E=Sophos;i="5.69,376,1571727600"; d="scan'208";a="213420200"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 12:14:25 -0800
Subject: [PATCH] efi: Fix handling of multiple contiguous efi_fake_mem= entries
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Mon, 30 Dec 2019 11:58:23 -0800
Message-ID: <157773590338.4153451.5898675419563883883.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_121427_803386_DB03428C 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
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
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

A recent test of efi_fake_mem=4G@9G:0x40000,4G@13G:0x40000 crashed with
a signature of:

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

efi_memmap_insert() is attempting to insert entries past the end of the
new map. This condition is setup by efi_fake_mem() leaking empty entries
to the end of memory map, and then efi_arch_mem_reserve() trips over the
bad entry when attempting an additional efi_memmap_insert(). The empty
entry causes efi_memmap_insert() to attempt more memmap splits / copies
than efi_memmap_split_count() accounted for when sizing the new map.

Update efi_fake_memmap() to cleanup lagging empty entries.

This change is related to commit af1648984828 "x86/efi: Update e820 with
reserved EFI boot services data to fix kexec breakage" since that
introduces more occurrences where efi_memmap_insert() is invoked after
an efi_fake_mem= configuration has been parsed. Previously the side
effects of vestigial empty entries were benign, but with commit
af1648984828 that follow-on efi_memmap_insert() invocation triggers the
above crash signature.

Fixes: 0f96a99dab36 ("efi: Add 'efi_fake_mem' boot option")
Fixes: af1648984828 ("x86/efi: Update e820 with reserved EFI boot services...")
Cc: Taku Izumi <izumi.taku@jp.fujitsu.com>
Cc: Michael Weiser <michael@weiser.dinsnail.net>
Cc: Dave Young <dyoung@redhat.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Ingo Molnar <mingo@kernel.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
 drivers/firmware/efi/fake_mem.c |   22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/efi/fake_mem.c b/drivers/firmware/efi/fake_mem.c
index bb9fc70d0cfa..6df51ba93ae8 100644
--- a/drivers/firmware/efi/fake_mem.c
+++ b/drivers/firmware/efi/fake_mem.c
@@ -67,13 +67,33 @@ void __init efi_fake_memmap(void)
 		return;
 	}
 
+	memset(new_memmap, 0, efi.memmap.desc_size * new_nr_map);
 	for (i = 0; i < nr_fake_mem; i++)
 		efi_memmap_insert(&efi.memmap, new_memmap, &efi_fake_mems[i]);
 
+	/*
+	 * efi_memmap_split_count() may over count the number of
+	 * required splits in the case when contiguous fake entries are
+	 * specified. Check that all new_nr_map entries were consumed.
+	 */
+	for (i = new_nr_map; i > 0; i--) {
+		efi_memory_desc_t *md;
+		u64 start, end;
+
+		md = new_memmap + efi.memmap.desc_size * (new_nr_map - i - 1);
+		end = md->phys_addr + (md->num_pages << EFI_PAGE_SHIFT) - 1;
+		start = md->phys_addr;
+
+		if (start == 0 && end + 1 == 0)
+			continue;
+		break;
+	}
+
 	/* swap into new EFI memmap */
 	early_memunmap(new_memmap, efi.memmap.desc_size * new_nr_map);
 
-	efi_memmap_install(new_memmap_phy, new_nr_map);
+	/* install only the valid entries */
+	efi_memmap_install(new_memmap_phy, i);
 
 	/* print new EFI memmap */
 	efi_print_memmap();


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
