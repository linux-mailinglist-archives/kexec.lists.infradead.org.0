Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFA212E254
	for <lists+kexec@lfdr.de>; Thu,  2 Jan 2020 05:29:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w88E3K1NpEfRz6g64l9/guiP0mYTtbnPorsmqz+JP4I=; b=Rgmi8KqYvnKWz3
	c45f77f1R9d4ljotboemPoX/PpYrwTTllw/XeKaXvO9Op7e4hgvS2g7q2NVvFTZ07Zbmfdor5Y5Q7
	PSfg6m0QnTOCRD8F7jbcLi69sHGyj69D9RnJSa+sNZ23zl6gLwZbf3kO0VRP6QNJO2l8h4JB6HeO6
	d0F0gH3G2Z+qZNIf1yVR//Xu2n6V7RsuX932mf3OIHNGBsflUl3loZdL6Mhkwz4cmPUTU+F6ky2HP
	5ZxCR0/ImqnVaOTEYJL+4aAhQYBVeOtA4Gq9cAIsc2xo27rc3+mvV0W3vt86BtoOqtrbQ2GDD+JFT
	C4RY1mQdFLxlukZuf+fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ims6v-0007ZD-Ir; Thu, 02 Jan 2020 04:29:25 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ims6s-0007YS-18
 for kexec@lists.infradead.org; Thu, 02 Jan 2020 04:29:23 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jan 2020 20:29:20 -0800
X-IronPort-AV: E=Sophos;i="5.69,385,1571727600"; d="scan'208";a="209682597"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jan 2020 20:29:20 -0800
Subject: [PATCH v3 0/4] efi: Fix handling of multiple efi_fake_mem= entries
From: Dan Williams <dan.j.williams@intel.com>
To: mingo@redhat.com
Date: Wed, 01 Jan 2020 20:13:18 -0800
Message-ID: <157793839827.977550.7845382457971215205.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_202922_082939_C3D64048 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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

Changes since v2 [1]:
- Move the efi_memmap_free() until efi_memmap_install() is committed to
  installing the new map. (Dave).

- Handle the case of a memblock allocated memmap being freed after the slab
  allocator is up. Just use memblock_free_late() for that case rather
  than warn. (Prompted by Dave's feedback on how many successful
  efi_memmap_free() calls occur during a boot).

- Not changed was anything additional related to Dave's concern about
  efi_fake_mem= being applied to overlapping entries. I tested
  "efi_fake_mem=4G@9G:0x40000,4G@12G:0x40000" which triggers the second
  entry to overwrite the first as well as another entry. The result is
  reasonable and functional for what is otherwise garbage input:

  efi: mem53: [Conventional Memory|   |  |SP|  |  |  |  |  |   |WB|WT|WC|UC] range=[0x240000000-0x2ffffffff] (3072MB)
  efi: mem54: [Conventional Memory|   |  |SP|  |  |  |  |  |   |WB|WT|WC|UC] range=[0x300000000-0x33fffffff] (1024MB)
  efi: mem55: [Conventional Memory|   |  |SP|  |  |  |  |  |   |WB|WT|WC|UC] range=[0x340000000-0x3ffffffff] (3072MB)
  efi: mem56: [Conventional Memory|   |  |  |  |  |  |  |  |   |WB|WT|WC|UC] range=[0x400000000-0x43fffffff] (1024MB)

  # cat /proc/iomem  | grep Sof
  240000000-3ffffffff : Soft Reserved

[1]: http://lore.kernel.org/r/157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com

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

---

Dan Williams (4):
      efi: Add a flags parameter to efi_memory_map
      efi: Add tracking for dynamically allocated memmaps
      efi: Fix efi_memmap_alloc() leaks
      efi: Fix handling of multiple efi_fake_mem= entries


 arch/x86/platform/efi/efi.c     |    2 +
 arch/x86/platform/efi/quirks.c  |   11 ++++---
 drivers/firmware/efi/fake_mem.c |   37 +++++++++++++------------
 drivers/firmware/efi/memmap.c   |   58 ++++++++++++++++++++++++++++++---------
 include/linux/efi.h             |   13 +++++++--
 5 files changed, 81 insertions(+), 40 deletions(-)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
