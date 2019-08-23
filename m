Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1AD9B74F
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 21:49:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k1mQ8TwbHPfIM38xhsj8ODXEMm4O+ANWW23Y54dLo70=; b=Pp0GzQP79rY4rE
	/j9yKPJAhpaVNECECB3EPrgYCdOC7HfnrB3F6KSkCY1gewzLY2QlnX4fORv0j3Gz+eyrYIC4Nv7VR
	+wlxqnza5kGJziuxzW3fV6lhvUu0h1Wt300SVzrZOmmOOIV8JY1P0KjmD7dJSwgdD32BXiC6siOp5
	jIdGSrK0649CEG5GJ363+5SA90cnCddtCZLCi30HO5O+BIyjah/zlGZUb1NWOg1rUr2If6GpiFfoD
	hxi67TUMA4uv8nuDZHgndpSMMKFDoWrsI3Z2KTSC9XPswQFavCJKVKD8kPqCrVLiDNtoQkqR1ESZC
	GOB0A00HR82Y6MYfDKkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1FZD-0000MK-43; Fri, 23 Aug 2019 19:49:47 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1FZ8-0000JO-As
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 19:49:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From;
 bh=aYGInAzUl0pRN0zpAIIO8vJ9r1QZKJubVPM0UJO9dBI=; b=Im41WT9IYAtJS2etr6YHVfjUg5
 Zua/fAQD/0mBmdHR+i+1I4y3J9CWRFK6IsiltBmHVjzRL3BnHjcxvygCXzCYyN60OTm+A5VKBA5Hs
 EPgupl4Gu+4DPepfknwQkb9E1gJxeUvJiKIzL/2+VoBtI3VpZ4hBBMI0J9Bq0adpz4n0=;
Received: from [134.3.44.134] (helo=x280.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1i1FZ1-00071n-W6; Fri, 23 Aug 2019 21:49:36 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v5 0/7] kexec: add generic support for elf kernel images
Date: Fri, 23 Aug 2019 21:49:12 +0200
Message-Id: <20190823194919.30916-1-svens@stackframe.org>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_124942_668572_E7405965 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sven Schnelle <svens@stackframe.org>, Helge Deller <deller@gmx.de>,
 linuxppc-dev@lists.ozlabs.org, Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changes to v4:
 - rebase on current powerpc/merge tree
 - fix syscall name in commit message
 - remove a few unused #defines in arch/powerpc/kernel/kexec_elf_64.c

Changes to v3:
 - add support for 32-bit ELF files

Changes to v2:
 - use git format-patch -C

Changes to v1:
 - split up patch into smaller pieces
 - rebase onto powerpc/next
 - remove unused variable in kexec_elf_load()

Changes to RFC version:
 - remove unused Elf_Rel macro
 - remove section header parsing
 - remove PURGATORY_STACK_SIZE
 - change order of elf_*_to_cpu() functions
 - remove elf_addr_to_cpu macro

Sven Schnelle (7):
  kexec: add KEXEC_ELF
  kexec_elf: change order of elf_*_to_cpu() functions
  kexec_elf: remove parsing of section headers
  kexec_elf: remove PURGATORY_STACK_SIZE
  kexec_elf: remove Elf_Rel macro
  kexec_elf: remove unused variable in kexec_elf_load()
  kexec_elf: support 32 bit ELF files

 arch/Kconfig                                  |   3 +
 arch/powerpc/Kconfig                          |   1 +
 arch/powerpc/kernel/kexec_elf_64.c            | 545 +-----------------
 include/linux/kexec.h                         |  23 +
 kernel/Makefile                               |   1 +
 .../kexec_elf_64.c => kernel/kexec_elf.c      | 394 +++----------
 6 files changed, 115 insertions(+), 852 deletions(-)
 copy arch/powerpc/kernel/kexec_elf_64.c => kernel/kexec_elf.c (50%)

-- 
2.23.0.rc1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
