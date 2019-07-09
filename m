Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4C163C1A
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 21:44:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vU6XqPU4ideTILe8AFgBJnV29w2DWI4tmM5Oh4y3l3Y=; b=UG7DvOKoy5VOqF
	JfQ//N3LrENpkW6YZNyVmXf8Q4WSvEf8BPBUnJ8stqUfl5KUCybedwCOR7rWvn8mhCVZQZPoL7v2R
	A2JW8kH/003Rg9l6GVvv27WwIz6FD/qXI1Sis39swNWf3kCHo9oh88ewfdYu6Tbs7AC1jKdm1oxX4
	IJEPeUCMgjH6migDXhCH//zGekC41++/0q01hUzsa5GmfxYbbjjwsQ215usqF8O3kqwQMTdUcxAG0
	4QFejlrc62of/8+Y0GGz/fu5+cz9D51IrAS1MC/jxeIEJAnUkIscMzr45ysvvrhTNAPcH6eib5C6R
	L4sf9CzeBcF5dVkAOe4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkw1v-0004XY-I8; Tue, 09 Jul 2019 19:43:59 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkw1d-0004NY-TQ
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 19:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From;
 bh=jO1Bg4FHUhM6jsS2bqYB5gZ2IzMSJji5y+7Kkq/uNC8=; b=JFHPv+yWSP7Of4s3SRu/hr7/us
 vp+Wi69+PSBhxL4FPqg9o8+UhHdxH7ndyrHv7n3jOgcckVM6Kn4x+l8NrzZVZLDrYAtXjh5yeC4vS
 XwQAB0ftCGYAv8wF9Av4+XkEf+x6Dalni5ix9wE8/oQiKpeEqMphXDiKH0j6UAEJ3/e0=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hkw1Y-0007pP-3W; Tue, 09 Jul 2019 21:43:36 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v2 0/7] kexec: add generic support for elf kernel images
Date: Tue,  9 Jul 2019 21:43:21 +0200
Message-Id: <20190709194328.16991-1-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_124342_234387_67732044 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sven Schnelle <svens@stackframe.org>, deller@gmx.de,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi List,

i've split up the patch a bit more. The first one move the generic elf stuff
out of arch/powerpc to linux/kexec_elf.c, and prefixes the exposed functions
with kexec_. That other patches remove stuff that is not used as proposed in
the review.

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
  kexec_elf: remove elf_addr_to_cpu macro
  kexec_elf: remove Elf_Rel macro
  kexec_elf: remove unused variable in kexec_elf_load()

 arch/Kconfig                       |   3 +
 arch/powerpc/Kconfig               |   1 +
 arch/powerpc/kernel/kexec_elf_64.c | 551 +----------------------------
 include/linux/kexec.h              |  23 ++
 kernel/Makefile                    |   1 +
 kernel/kexec_elf.c                 | 389 ++++++++++++++++++++
 6 files changed, 427 insertions(+), 541 deletions(-)
 create mode 100644 kernel/kexec_elf.c

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
