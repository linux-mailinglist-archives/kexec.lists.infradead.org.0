Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B394212B645
	for <lists+kexec@lfdr.de>; Fri, 27 Dec 2019 18:41:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHSEO8UYbvqTrWB15YGQJJNnQxr4oKTAOWVPnHCNd6w=; b=CKry3uhmcXmngY
	v/h/IQAx8hT8ZabRPNZn+VCOUj7ECIcptqQ/sKznCSAaGg/re33zbuQq+AWkc95fsNWIlb0wMYE+l
	O5X7EJql9RPKt5RxJV69Zr22A79F3WQnuRS5hBC5qbZewIT6UaG72c1zg72hOhnyR3BlAjc1MCY8D
	31YwhwW/D9CP4LLUa3r5/96mdlNsVOiDCL72DEtkrHMJPxy/jsvlhsOStsf3j8UINlK1XnYCElP+Q
	BE/lMZR9/urJkLu1qpmWT2wTF/iCJkwANlnG+ok2xptEcfcAhlz3mahd2Gvjna42C0kMRLsNwnW77
	IqmtYar1lXnJ9RyOn1Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktc8-0007Ts-O5; Fri, 27 Dec 2019 17:41:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktc4-0007T7-Sj
 for kexec@lists.infradead.org; Fri, 27 Dec 2019 17:41:26 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F322A22B48;
 Fri, 27 Dec 2019 17:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577468484;
 bh=PAOUSNAxojEzCiLlv75nNZS799ylz9MjHsY1qAlDUQ4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q4zdVrjxH4agQM6pwN7FRkBdsqmC2+5lQLTXW7cymaVqUQW0lP/4bWnCIGg2t8HaR
 w2E/vCJ4tJT9T/fgDgceK2cO64RqAsQ1eG/GdsfJf2bf2RkCaNMBCoLIGlghEHPCzi
 MB5xlSw4XCy59M3XNkwzcxUniX/E2x/rzbhqLwrY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 022/187] x86/efi: Update e820 with reserved EFI
 boot services data to fix kexec breakage
Date: Fri, 27 Dec 2019 12:38:10 -0500
Message-Id: <20191227174055.4923-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191227174055.4923-1-sashal@kernel.org>
References: <20191227174055.4923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_094124_963095_BE0F1758 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>,
 Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, x86@kernel.org,
 kexec@lists.infradead.org, platform-driver-x86@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, "Eric W . Biederman" <ebiederm@xmission.com>,
 "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Dave Young <dyoung@redhat.com>

[ Upstream commit af164898482817a1d487964b68f3c21bae7a1beb ]

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
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/platform/efi/quirks.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/x86/platform/efi/quirks.c b/arch/x86/platform/efi/quirks.c
index 3b9fd679cea9..aefe845dff59 100644
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
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
