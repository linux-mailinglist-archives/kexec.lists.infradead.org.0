Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7437C6F1
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 17:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lHB/eJbxnrAP7wgKT6XOYFs+Kff7Y7kfEsilAUXd6LA=; b=rQAhBoz7vdGUfa
	X9c/pf4H5BJBYr7miTVuMyVbNxzFc+GG43SpRj45QfbiJbsVNrcKFvsj4sGu3nz1QBysCv2tDE9Ge
	Fwfxju9fwYQxRY/+IpjlOqSKATvc36LzZsu5N2KEdlSNUTSJU4DgaM9WViDmAGDzukTRu+je4i/Qn
	FlLhhllJI9Drhp1eb+H/eGWVzV0ZzZE57aDLPwVLm/4mGEkWLgsibYmt0dru4FG03vwyGBV5dhOqK
	wjrTz7BAo3gzHUCMeWHs1xG02VAaVNW25CsBF9fMe5aGlN62O5oGHy4+HcxMyaw6GTOTV8L7l4rh4
	tjfssSIyKlPkqRsdpb0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqgy-0007jV-BW; Wed, 31 Jul 2019 15:39:04 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqgv-0007hf-BS
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 15:39:03 +0000
Received: by mail-qk1-x742.google.com with SMTP id t8so49569139qkt.1
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 08:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o/O3YpN4O8rPb4BgrrX1qWIeA6J8/etb5rlyfqo4ciQ=;
 b=fOlK1pZTJZmDoPZasVUypsNKooUm9H+V1U6+OsQGPQtgVMQkxb3fJ1+UwUtJOR/0a1
 U1xjP8sYotLYI727WseY4fv7iJnqltKbNblNHQf3MWVZZsXTajVL34VYRVHYVdbt6ZQG
 r+0HTEjMOgKgyOCoc4DPX/cbDyJnziYpmU6qzD98mje3mqCjsrLzCzC44nx8I1NUzHOT
 uGDBZIK18qQSjuRjl3oW12PzgM4IrL8xZb/dUBn11cgWX84yOokXq1Cd+J0lOA5K17i+
 9pJITYdbN24xX7LH4sCLKlQBFo5AZ5afeaew/VAGZAnOopNVAoAkad1RSXIgnx2IcW//
 F97w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o/O3YpN4O8rPb4BgrrX1qWIeA6J8/etb5rlyfqo4ciQ=;
 b=UgsALSGMx/XL9V8XelHWyysO+9yo0zLCY15BADdeihieVNssNQEpvOW4ZewLiAFFtP
 NpXBA3SUyOoSTqDi1wh+jiEaw9EtA/RCKR0VpkWgvlsZjPPNxHTJSFhNGdy1rcLpN45y
 pW2G7d7Z6UtN1OLDGwPZ1kpVx/Gf9Vt0W6S7HvanobpFhuQ/I10HtUk0i8jjAHLRmwgv
 343OMWDnBUo16ZVLKulo5cX9hW21rdV0UKsrmG8jl5rxwMi9jpSERK8SIWlLTI9uX78P
 /sftFD4tAqE8+yTycdobHT3mSnXJWOsUX2pplB7MFV1TmZd0CrhgkLMcbpnFwwf2+kNb
 RbCg==
X-Gm-Message-State: APjAAAWgP7OIBYXsG6TxqA55PBik51MYfrZrGYwA2GN7aT4QRSS5QQMN
 NXRliEZhe8aG9ofmjwPSE2o=
X-Google-Smtp-Source: APXvYqz3bX9t942bsPfIdm5UWF5TE+oazNJbrYKmlWzscRMxFVemlmAHsAGgHRnb/Jr/wSRlzl3clg==
X-Received: by 2002:a37:a851:: with SMTP id r78mr28629493qke.120.1564587539523; 
 Wed, 31 Jul 2019 08:38:59 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.38.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:38:58 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 0/8] arm64: MMU enabled kexec relocation
Date: Wed, 31 Jul 2019 11:38:49 -0400
Message-Id: <20190731153857.4045-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083901_451786_9EF5A3FE 
X-CRM114-Status: GOOD (  13.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changelog from previous RFC:
- Added trans_table support for both hibernate and kexec.
- Fixed performance issue, where enabling MMU did not yield the
  actual performance improvement.

Bug:
With the current state, this patch series works on kernels booted with EL1
mode, but for some reason, when elevated to EL2 mode reboot freezes in
both QEMU and on real hardware.

The freeze happens in:

arch/arm64/kernel/relocate_kernel.S
	turn_on_mmu()

Right after sctlr_el2 is written (MMU on EL2 is enabled)

	msr     sctlr_el2, \tmp1

I've been studying all the relevant control registers for EL2, but do not
see what might be causing this hang:

MAIR_EL2 is set to be exactly the same as MAIR_EL1 0xbbff440c0400

TCR_EL2        0x80843510
Enabled bits:
PS      Physical Address Size. (0b100   44 bits, 16TB.)
SH0     Shareability    11 Inner Shareable
ORGN0   Normal memory, Outer Write-Back Read-Allocate Write-Allocate Cach.
IRGN0   Normal memory, Inner Write-Back Read-Allocate Write-Allocate Cach.
T0SZ    01 0000

SCTLR_EL2	0x30e5183f
RES1    : Reserve ones
M       : MMU enabled
A       : Align check
C       : Cacheability control
SA      : SP Alignment check enable
IESB    : Implicit Error Synchronization event
I       : Instruction access Cacheability

TTBR0_EL2      0x1b3069000 (address of trans_table)

Any suggestion of what else might be missing that causes this freeze when
MMU is enabled in EL2?

=====
Here is the current data from the real hardware:
(because of bug, I forced EL1 mode by setting el2_switch always to zero in
cpu_soft_restart()):

For this experiment, the size of kernel plus initramfs is 25M. If initramfs
was larger, than the improvements would be even greater, as time spent in
relocation is proportional to the size of relocation.

Previously:
kernel shutdown	0.022131328s
relocation	0.440510736s
kernel startup	0.294706768s

Relocation was taking: 58.2% of reboot time

Now:
kernel shutdown	0.032066576s
relocation	0.022158152s
kernel startup	0.296055880s

Now: Relocation takes 6.3% of reboot time

Total reboot is x2.16 times faster.

Previous approaches and discussions
-----------------------------------
https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
reserve space for kexec to avoid relocation, involves changes to generic code
to optimize a problem that exists on arm64 only:

https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
The first attempt to enable MMU, some bugs that prevented performance
improvement. The page tables unnecessary configured idmap for the whole
physical space.

Pavel Tatashin (8):
  kexec: quiet down kexec reboot
  arm64, mm: transitional tables
  arm64: hibernate: switch to transtional page tables.
  kexec: add machine_kexec_post_load()
  arm64, kexec: move relocation function setup and clean up
  arm64, kexec: add expandable argument to relocation function
  arm64, kexec: configure transitional page table for kexec
  arm64, kexec: enable MMU during kexec relocation

 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/kexec.h         |  24 ++-
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_table.h   |  66 ++++++
 arch/arm64/kernel/asm-offsets.c        |  10 +
 arch/arm64/kernel/cpu-reset.S          |   4 +-
 arch/arm64/kernel/cpu-reset.h          |   8 +-
 arch/arm64/kernel/hibernate.c          | 261 ++++++------------------
 arch/arm64/kernel/machine_kexec.c      | 168 ++++++++++++---
 arch/arm64/kernel/relocate_kernel.S    | 238 +++++++++++++++-------
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_table.c            | 272 +++++++++++++++++++++++++
 kernel/kexec.c                         |   4 +
 kernel/kexec_core.c                    |   8 +-
 kernel/kexec_file.c                    |   4 +
 kernel/kexec_internal.h                |   2 +
 16 files changed, 756 insertions(+), 319 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_table.h
 create mode 100644 arch/arm64/mm/trans_table.c

-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
