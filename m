Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2693EEC6C
	for <lists+kexec@lfdr.de>; Mon,  4 Nov 2019 22:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SWs7zCuzJ1Dxywd2CpBkaLeDSJ4V+R1qDy9zKRihs74=; b=o5l
	29ixVsTXrBoVKSNV9TuX7qIg8PegdxyqucD//pvnBzeu8sAtBCDzkS0SINQVea49WRR+OyoRNuxAG
	vpWv+p7r++6ABz879/nb1F3lWLa2aHkKSKgnlArvn2CQAWgoRmRSEQYfeyThRwLJWmeWwn0RI3i4m
	s04MulPT0SbxvjC/v1de1Zyp9jEpjX7LD9QB3TTBu035FRWDEanGA/+WpiJMsxy5wOsHEYSjeiL6u
	EP+xoIP3nlyXAcQpK4GUHUz+mHp8LNIT9+feYOv4/UbCcAH2SJTHzl/RxSbKm1K42qbexakFk0rZ8
	2NvfygL7k8rWPypgc6PHQ9QuSbFJswA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRkLd-0007oM-TW; Mon, 04 Nov 2019 21:57:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRkLV-0007fp-0z
 for kexec@lists.infradead.org; Mon, 04 Nov 2019 21:57:11 +0000
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D81481F0E
 for <kexec@lists.infradead.org>; Mon,  4 Nov 2019 21:57:07 +0000 (UTC)
Received: by mail-pf1-f198.google.com with SMTP id w16so3257154pfq.14
 for <kexec@lists.infradead.org>; Mon, 04 Nov 2019 13:57:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=VEjZbpLdVwy3arAkz9SYmqq7myiGlsbhXTCJx2Y0Xq4=;
 b=fEltr7BuvLJJO++Jj6Tx5eF3h6si7v1IvMM9vidT7ssPhzlO6wpBx8W39+dYnpRlye
 7V0sdQY0h1Q2/wfJyM87TsGnj1IRV8ia9hfU3i8LDz5FPYmfaUMr4Y5g3yvq/9oJr+u5
 KuBJE4Nn2YyOFygRt8boinKFZcjrzyN6cg7Ve5zJhxp6G6Efj4Je5cVKGchVqhxM1XKq
 s6j98UWl417w4H2KLFRSeR/7Dlqpsr58RRtQOw01EVh7O0zYavSAH6HE3SzFNr7wvrGI
 /DO9oV7AcbCPbma9adm16hfhjBvq8jyFJ0+1EaSAPUwwtxe78wFwfK4N8/6ZMAIz/GNo
 1A2Q==
X-Gm-Message-State: APjAAAWEXj6akq8twwfHgFE++oQ8SiCICfd84LsCVjzrmeusULi14Q+2
 Gkv6DMF0Neh8ZtpT+nHgBut+JsRsChVtKl+KTuAbwOVRvS/IXuX6KAVYwfC8HjJpBUtgt2/ap5G
 jPFAgB0CfdwKeKjkb8Ow0
X-Received: by 2002:a17:90a:b90b:: with SMTP id
 p11mr1792607pjr.73.1572904626741; 
 Mon, 04 Nov 2019 13:57:06 -0800 (PST)
X-Google-Smtp-Source: APXvYqxek4cnLo2j7JE5LY3Fdlz8cmjGPUDJiJmdDcXnAJbnRW3R15BMc9ytXLGrz8UQlHX/du+CWQ==
X-Received: by 2002:a17:90a:b90b:: with SMTP id
 p11mr1792574pjr.73.1572904626420; 
 Mon, 04 Nov 2019 13:57:06 -0800 (PST)
Received: from localhost ([182.69.200.119])
 by smtp.gmail.com with ESMTPSA id r8sm4661118pgr.59.2019.11.04.13.57.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Nov 2019 13:57:05 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: mm: Remove MAX_USER_VA_BITS definition
Date: Tue,  5 Nov 2019 03:26:46 +0530
Message-Id: <1572904606-27961-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_135709_112738_173F774A 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Steve Capper <steve.capper@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 bhupesh.linux@gmail.com, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

commit 9b31cf493ffa ("arm64: mm: Introduce MAX_USER_VA_BITS definition")
introduced the MAX_USER_VA_BITS definition, which was used to support
the arm64 mm use-cases where the user-space could use 52-bit virtual
addresses whereas the kernel-space would still could a maximum of 48-bit
virtual addressing.

But, now with commit b6d00d47e81a ("arm64: mm: Introduce 52-bit Kernel
VAs"), we removed the 52-bit user/48-bit kernel kconfig option and hence
there is no longer any scenario where user VA != kernel VA size
(even with CONFIG_ARM64_FORCE_52BIT enabled, the same is true).

Hence we can do away with the MAX_USER_VA_BITS macro as it is equal to
VA_BITS (maximum VA space size) in all possible use-cases. Note that
even though the 'vabits_actual' value would be 48 for arm64 hardware
which don't support LVA-8.2 extension (even when CONFIG_ARM64_VA_BITS_52
is enabled), VA_BITS would still be set to a value 52. Hence this change
would be safe in all possible VA address space combinations.

Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/include/asm/memory.h        | 6 ------
 arch/arm64/include/asm/pgtable-hwdef.h | 2 +-
 arch/arm64/include/asm/processor.h     | 2 +-
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index c23c47360664..a4f9ca5479b0 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -69,12 +69,6 @@
 #define KERNEL_START		_text
 #define KERNEL_END		_end
 
-#ifdef CONFIG_ARM64_VA_BITS_52
-#define MAX_USER_VA_BITS	52
-#else
-#define MAX_USER_VA_BITS	VA_BITS
-#endif
-
 /*
  * Generic and tag-based KASAN require 1/8th and 1/16th of the kernel virtual
  * address space for the shadow region respectively. They can bloat the stack
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index 3df60f97da1f..d9fbd433cc17 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -69,7 +69,7 @@
 #define PGDIR_SHIFT		ARM64_HW_PGTABLE_LEVEL_SHIFT(4 - CONFIG_PGTABLE_LEVELS)
 #define PGDIR_SIZE		(_AC(1, UL) << PGDIR_SHIFT)
 #define PGDIR_MASK		(~(PGDIR_SIZE-1))
-#define PTRS_PER_PGD		(1 << (MAX_USER_VA_BITS - PGDIR_SHIFT))
+#define PTRS_PER_PGD		(1 << (VA_BITS - PGDIR_SHIFT))
 
 /*
  * Section address mask and size definitions.
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index 5623685c7d13..586fcd4b1965 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -9,7 +9,7 @@
 #define __ASM_PROCESSOR_H
 
 #define KERNEL_DS		UL(-1)
-#define USER_DS			((UL(1) << MAX_USER_VA_BITS) - 1)
+#define USER_DS			((UL(1) << VA_BITS) - 1)
 
 /*
  * On arm64 systems, unaligned accesses by the CPU are cheap, and so there is
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
