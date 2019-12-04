Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F7811292D
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 11:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:
	References:In-Reply-To:Subject:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOzb5Xo3L9Boty0xxzD5jnJvGHSWsa9VIiYkpnUU3BQ=; b=T7w6YDZeoksFl9
	e6s2HDHHVyfk+h4JlZ5+kZBxcTCXb6eXuZccIniIv4TLCVDR5w5xh8ewt2TmA/vbprya1j+15Q/2i
	0us2Jev8yKWqazo2SFQyS3fxWO2Cfa3+Tjis/yQIQT8vA+1Tox0SsCAmHeFEWfOZLsWIQeZQv9nWW
	RWqaFOaH7nRXTsF6YQuJsak7rQ3sdSxSzyFxdOrYQwlMiAVTgiXrOX6/I0OTTcIyEJNWSicxG014A
	hugKpgtSJqmHV5htMlBa9C9opg5vn86gooC0b1zILHXIhJJrcQREwTnD8zy5vAqmQZZBbQ6YxVxlD
	ZmWl1LVmtkiA2VTIXs/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRmi-0002IM-Bi; Wed, 04 Dec 2019 10:21:28 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRme-0002Gy-20
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 10:21:26 +0000
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tip-bot2@linutronix.de>)
 id 1icRmU-0006v8-1R; Wed, 04 Dec 2019 11:21:14 +0100
Received: from [127.0.1.1] (localhost [IPv6:::1])
 by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id A21A21C2667;
 Wed,  4 Dec 2019 11:21:13 +0100 (CET)
Date: Wed, 04 Dec 2019 10:21:13 -0000
From: "tip-bot2 for Dave Young" <tip-bot2@linutronix.de>
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/urgent] x86/efi: Update e820 with reserved EFI boot
 services data to fix kexec breakage
In-Reply-To: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Message-ID: <157545487347.21853.1786279419838113209.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from
 these emails
Precedence: bulk
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_022124_241063_CEFFD0FC 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: linux-kernel@vger.kernel.org
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, x86 <x86@kernel.org>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Borislav Petkov <bp@alien8.de>, "Eric W. Biederman" <ebiederm@xmission.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The following commit has been merged into the x86/urgent branch of tip:

Commit-ID:     af164898482817a1d487964b68f3c21bae7a1beb
Gitweb:        https://git.kernel.org/tip/af164898482817a1d487964b68f3c21bae7a1beb
Author:        Dave Young <dyoung@redhat.com>
AuthorDate:    Wed, 04 Dec 2019 15:52:33 +08:00
Committer:     Ingo Molnar <mingo@kernel.org>
CommitterDate: Wed, 04 Dec 2019 11:15:30 +01:00

x86/efi: Update e820 with reserved EFI boot services data to fix kexec breakage

Michael Weiser reported that he got this error during a kexec rebooting:

  esrt: Unsupported ESRT version 2904149718861218184.

The ESRT memory stays in EFI boot services data, and it was reserved
in kernel via efi_mem_reserve().  The initial purpose of the reservation
is to reuse the EFI boot services data across kexec reboot. For example
the BGRT image data and some ESRT memory like Michael reported.

But although the memory is reserved it is not updated in the X86 E820 table,
and kexec_file_load() iterates system RAM in the IO resource list to find places
for kernel, initramfs and other stuff. In Michael's case the kexec loaded
initramfs overwrote the ESRT memory and then the failure happened.

Since kexec_file_load() depends on the E820 table being updated, just fix this
by updating the reserved EFI boot services memory as reserved type in E820.

Originally any memory descriptors with EFI_MEMORY_RUNTIME attribute are
bypassed in the reservation code path because they are assumed as reserved.

But the reservation is still needed for multiple kexec reboots,
and it is the only possible case we come here thus just drop the code
chunk, then everything works without side effects.

On my machine the ESRT memory sits in an EFI runtime data range, it does
not trigger the problem, but I successfully tested with BGRT instead.
both kexec_load() and kexec_file_load() work and kdump works as well.

[ mingo: Edited the changelog. ]

Reported-by: Michael Weiser <michael@weiser.dinsnail.net>
Tested-by: Michael Weiser <michael@weiser.dinsnail.net>
Signed-off-by: Dave Young <dyoung@redhat.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Eric W. Biederman <ebiederm@xmission.com>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: kexec@lists.infradead.org
Cc: linux-efi@vger.kernel.org
Link: https://lkml.kernel.org/r/20191204075233.GA10520@dhcp-128-65.nay.redhat.com
Signed-off-by: Ingo Molnar <mingo@kernel.org>
---
 arch/x86/platform/efi/quirks.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
index 7675cf7..f8f0220 100644
--- a/arch/x86/platform/efi/quirks.c
+++ b/arch/x86/platform/efi/quirks.c
@@ -260,10 +260,6 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
 		return;
 	}
 
-	/* No need to reserve regions that will never be freed. */
-	if (md.attribute & EFI_MEMORY_RUNTIME)
-		return;
-
 	size += addr % EFI_PAGE_SIZE;
 	size = round_up(size, EFI_PAGE_SIZE);
 	addr = round_down(addr, EFI_PAGE_SIZE);
@@ -293,6 +289,8 @@ void __init efi_arch_mem_reserve(phys_addr_t addr, u64 size)
 	early_memunmap(new, new_size);
 
 	efi_memmap_install(new_phys, num_entries);
+	e820__range_update(addr, size, E820_TYPE_RAM, E820_TYPE_RESERVED);
+	e820__update_table(e820_table);
 }
 
 /*

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
