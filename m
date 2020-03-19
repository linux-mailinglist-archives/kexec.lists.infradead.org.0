Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3F18B22D
	for <lists+kexec@lfdr.de>; Thu, 19 Mar 2020 12:15:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VLaNoYckhfGF8C+W//M9V2plRYFTReaY+MuVIFDYg/s=; b=MKC
	0YqeAwXgX7CS/addCowUifo4bE/JlEW9TeqMcJWIK/dtoFcjj7eTUMPKpD6Tqc/ehFb3BGsIxmltH
	1gWT9M0AgSgugPG0KR4Q7dvdSHx2Ddxsv6pIavnrsYgXysQSZgyd9VxANDt/Wx4jDmyEP7QwkVKWS
	yqFawTCeBcrsR6wRnQ1D1b4IK/mk+IdVfZ4S9lDqPSMo8xOdz7laccDtO65y3z0tHngDaIcOWd+6r
	24HOG7MPvxQUfFluEvGF3i7hScmVj5YCetu18CNHM46tJTetbV3OGxPptCODcjIcLTne9X9lAovbf
	J/l1dZZ21znyroupXWxZ2YpB3KYC5nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEt9R-0001u1-8O; Thu, 19 Mar 2020 11:15:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEt97-0001N6-ME; Thu, 19 Mar 2020 11:15:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9FE3FEC;
 Thu, 19 Mar 2020 04:15:26 -0700 (PDT)
Received: from a075553-lin.blr.arm.com (unknown [10.162.16.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 275233FA45;
 Thu, 19 Mar 2020 00:39:32 -0700 (PDT)
From: Amit Daniel Kachhap <amit.kachhap@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] arm64/crash_core: Export KERNELPACMASK in vmcoreinfo
Date: Thu, 19 Mar 2020 13:09:10 +0530
Message-Id: <1584603551-23845-1-git-send-email-amit.kachhap@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_041529_767672_64FF72F4 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Dave Anderson <anderson@redhat.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

ARMv8.3-A mandated feature Pointer Authentication may needs this change.
If this feature is enabled in the kernel and the hardware supports address
authentication then the return addresses are signed and stored in the stack
to prevent ROP kind of attack.

User tools like "crash" may need the kernel pac mask information to
generate the correct return address for stacktrace purpose.

This patch is similar to commit ec6e822d1a22d0eef ("arm64: expose user PAC
bit positions via ptrace") which exposes pac mask information via ptrace
interfaces.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Dave Anderson <anderson@redhat.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
---
 
An implementation of this field used by crash tool can be found here [1].

The patches in this series are based on in-kernel Pointer Authentication
patches present for-next tree [2].

[1]: http://linux-arm.org/git?p=crash-ak.git;a=commit;h=1775c6c33bed9269964719b90064b43a24ce97a5
[2]: git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git for-next/kernel-ptrauth

 arch/arm64/include/asm/compiler.h | 3 +++
 arch/arm64/kernel/crash_core.c    | 4 ++++
 2 files changed, 7 insertions(+)

diff --git a/arch/arm64/include/asm/compiler.h b/arch/arm64/include/asm/compiler.h
index eece20d..32d5900 100644
--- a/arch/arm64/include/asm/compiler.h
+++ b/arch/arm64/include/asm/compiler.h
@@ -19,6 +19,9 @@
 #define __builtin_return_address(val)					\
 	(void *)(ptrauth_clear_pac((unsigned long)__builtin_return_address(val)))
 
+#else  /* !CONFIG_ARM64_PTR_AUTH */
+#define	ptrauth_user_pac_mask()		0ULL
+#define	ptrauth_kernel_pac_mask()	0ULL
 #endif /* CONFIG_ARM64_PTR_AUTH */
 
 #endif /* __ASM_COMPILER_H */
diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
index ca4c3e1..25cf2ce 100644
--- a/arch/arm64/kernel/crash_core.c
+++ b/arch/arm64/kernel/crash_core.c
@@ -6,6 +6,7 @@
 
 #include <linux/crash_core.h>
 #include <asm/memory.h>
+#include <asm/pointer_auth.h>
 
 void arch_crash_save_vmcoreinfo(void)
 {
@@ -16,4 +17,7 @@ void arch_crash_save_vmcoreinfo(void)
 	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
 						PHYS_OFFSET);
 	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
+	vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
+						system_supports_address_auth() ?
+						ptrauth_kernel_pac_mask() : 0);
 }
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
