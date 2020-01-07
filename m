Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D93131CE4
	for <lists+kexec@lfdr.de>; Tue,  7 Jan 2020 01:56:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XLOsWXEnkq6Ehq1k8m6lPuHjj94IU1O/RCQPV+D+088=; b=eAK3jp+BPaCJxN
	hcLlVGuYMYu9YLtOCyWa2fkMZ8IdkRfeL7ANlRaf6ocGnrt1ZZKEhlUPebDq7okLB4iGk0D/t3BLX
	4wjdpMs7vUKLyjIdNdxNsHiQqrfNmSwGtj8Yrrk3Fr/vikYrcxMrXuMhdbsCOJpP5MO47jYPMO2ar
	FqRN5wbg6XkYrrqp2swFR/TV2oVvRuNmGHvUqfp92oDKMyPxjEw8HWC+DCsU+nXEa58fadEMqH3t1
	285Nd9oDwZJ70VRGBCaoo6kC7haCROhbsA8whvg84KjSUvTYuLyA+vKSx03xDTfjSKvilf1P+WssS
	+dEifAwTOdZjpPVshsaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iodAf-0004uA-An; Tue, 07 Jan 2020 00:56:33 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iodAb-0004t3-Td
 for kexec@lists.infradead.org; Tue, 07 Jan 2020 00:56:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:56:24 -0800
X-IronPort-AV: E=Sophos;i="5.69,404,1571727600"; d="scan'208";a="233001479"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jan 2020 16:56:24 -0800
Subject: [PATCH v4 0/4] efi: Fix handling of multiple efi_fake_mem= entries
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Mon, 06 Jan 2020 16:40:22 -0800
Message-ID: <157835762222.1456824.290100196815539830.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_165629_970864_25824CB4 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Taku Izumi <izumi.taku@jp.fujitsu.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changes since v3 [1]:
- Rather than pass a reference to a new flags argument, pass a common
  data structure ('struct efi_memory_map_data'), between
  efi_memmap_alloc() and efi_memmap_install(). (Ard)

- Arrange for EFI_MEMMAP_SLAB to be clear if EFI_MEMMAP_MEMBLOCK was set
  and vice versa (Ard).

[1]: http://lore.kernel.org/r/157793839827.977550.7845382457971215205.stgit@dwillia2-desk3.amr.corp.intel.com
---

While testing an upcoming patchset to enhance the "soft reservation"
implementation it started crashing when rebased on v5.5-rc3. This
uncovered a few bugs in the efi_fake_mem= handling and
efi_memmap_alloc() leaks.

---

Copied from patch4:

Dave noticed that when specifying multiple efi_fake_mem= entries only
the last entry was successfully being reflected in the efi memory map.
This is due to the fact that the efi_memmap_insert() is being called
multiple times, but on successive invocations the insertion should be
applied to the last new memmap rather than the original map at
efi_fake_memmap() entry.

Rework efi_fake_memmap() to install the new memory map after each
efi_fake_mem= entry is parsed.

This also fixes an issue in efi_fake_memmap() that caused it to litter
emtpy entries into the end of the efi memory map. An empty entry causes
efi_memmap_insert() to attempt more memmap splits / copies than
efi_memmap_split_count() accounted for when sizing the new map. When
that happens efi_memmap_insert() may overrun its allocation, and if you
are lucky will spill over to an unmapped page leading to crash
signature like the following rather than silent corruption:

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
af1648984828 that follow-on efi_memmap_insert() invocation triggers
efi_memmap_insert() overruns.

---

Dan Williams (4):
      efi: Add a flags parameter to efi_memory_map
      efi: Add tracking for dynamically allocated memmaps
      efi: Fix efi_memmap_alloc() leaks
      efi: Fix handling of multiple efi_fake_mem= entries


 arch/x86/platform/efi/efi.c     |   10 +++-
 arch/x86/platform/efi/quirks.c  |   23 ++++------
 drivers/firmware/efi/fake_mem.c |   43 +++++++++---------
 drivers/firmware/efi/memmap.c   |   94 ++++++++++++++++++++++++++-------------
 include/linux/efi.h             |   17 +++++--
 5 files changed, 113 insertions(+), 74 deletions(-)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
