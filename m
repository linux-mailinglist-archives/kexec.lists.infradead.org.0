Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693AA63C1B
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 21:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iPPQhAg6yNgQan0aUcNvR38LL2k11W4zwhpT10L2e4=; b=DyVCmNHvaiTFXr
	9dk8rrqKzUeB8rheUqk61lZynZMbJtLZdWqKerK4ZcCvv/+DKQE5mrnr/cbf4qpsik3KMHKSA/yog
	HTXZEGMHxrI+XrgsabKKTeVAtZXf4DEhcUr3QpgtnxOkc6TuVvh95Ta3z/fpMI84Ih25L0vMmnJ2V
	zpniYaL/52IG3wlvlus1Z5+Z9YYMERdvNiJwUJqREJ/DbPYK2noahcLlA2iizdv0SL/PLlG5LEHZV
	QkekM1NXeh+ELjqqpPmtncYFSDoAEWa50tu+R/QufK2oaSnmmUwPpJY6eAh/OO1LMH3iKGdX/a1Pr
	2fPPtgV2viLYk9x2i1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkw20-0004aV-6H; Tue, 09 Jul 2019 19:44:04 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkw1d-0004Nc-Se
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 19:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=Vkxm0H9rDcCAwVn3U4wp8JZAu0mqfV7kPwynX7pUS7w=; b=gpZhV18H4LUsdb1hSDsQmNjDnX
 Pb+5HBtfdM+Ws2IOxkCraERq7X7ffKw3/tnE99P04Lmqz3X1I8CrUabTkv6FPlIQPbNkS6HEtpJAz
 9kDah4IEOZvO5WPmrUYcTgjN/XfbrvB3N8qtM81lEeSByh4cXZzz//n6m+rCxQZiCNv4=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hkw1Z-0007pP-JQ; Tue, 09 Jul 2019 21:43:37 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v2 5/7] kexec_elf: remove elf_addr_to_cpu macro
Date: Tue,  9 Jul 2019 21:43:26 +0200
Message-Id: <20190709194328.16991-6-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709194328.16991-1-svens@stackframe.org>
References: <20190709194328.16991-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_124342_213138_2DD03D10 
X-CRM114-Status: UNSURE (   8.50  )
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

It had only one definition, so just use the function directly.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 kernel/kexec_elf.c | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 70d31b8feeae..99e6d63b5dfc 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -8,8 +8,6 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
-#define elf_addr_to_cpu	elf64_to_cpu
-
 #ifndef Elf_Rel
 #define Elf_Rel		Elf64_Rel
 #endif /* Elf_Rel */
@@ -143,9 +141,9 @@ static int elf_read_ehdr(const char *buf, size_t len, struct elfhdr *ehdr)
 	ehdr->e_type      = elf16_to_cpu(ehdr, buf_ehdr->e_type);
 	ehdr->e_machine   = elf16_to_cpu(ehdr, buf_ehdr->e_machine);
 	ehdr->e_version   = elf32_to_cpu(ehdr, buf_ehdr->e_version);
-	ehdr->e_entry     = elf_addr_to_cpu(ehdr, buf_ehdr->e_entry);
-	ehdr->e_phoff     = elf_addr_to_cpu(ehdr, buf_ehdr->e_phoff);
-	ehdr->e_shoff     = elf_addr_to_cpu(ehdr, buf_ehdr->e_shoff);
+	ehdr->e_entry     = elf64_to_cpu(ehdr, buf_ehdr->e_entry);
+	ehdr->e_phoff     = elf64_to_cpu(ehdr, buf_ehdr->e_phoff);
+	ehdr->e_shoff     = elf64_to_cpu(ehdr, buf_ehdr->e_shoff);
 	ehdr->e_flags     = elf32_to_cpu(ehdr, buf_ehdr->e_flags);
 	ehdr->e_phentsize = elf16_to_cpu(ehdr, buf_ehdr->e_phentsize);
 	ehdr->e_phnum     = elf16_to_cpu(ehdr, buf_ehdr->e_phnum);
@@ -190,18 +188,18 @@ static int elf_read_phdr(const char *buf, size_t len,
 	buf_phdr = (struct elf_phdr *) pbuf;
 
 	phdr->p_type   = elf32_to_cpu(elf_info->ehdr, buf_phdr->p_type);
-	phdr->p_offset = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_offset);
-	phdr->p_paddr  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_paddr);
-	phdr->p_vaddr  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_vaddr);
+	phdr->p_offset = elf64_to_cpu(elf_info->ehdr, buf_phdr->p_offset);
+	phdr->p_paddr  = elf64_to_cpu(elf_info->ehdr, buf_phdr->p_paddr);
+	phdr->p_vaddr  = elf64_to_cpu(elf_info->ehdr, buf_phdr->p_vaddr);
 	phdr->p_flags  = elf32_to_cpu(elf_info->ehdr, buf_phdr->p_flags);
 
 	/*
 	 * The following fields have a type equivalent to Elf_Addr
 	 * both in 32 bit and 64 bit ELF.
 	 */
-	phdr->p_filesz = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_filesz);
-	phdr->p_memsz  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_memsz);
-	phdr->p_align  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_align);
+	phdr->p_filesz = elf64_to_cpu(elf_info->ehdr, buf_phdr->p_filesz);
+	phdr->p_memsz  = elf64_to_cpu(elf_info->ehdr, buf_phdr->p_memsz);
+	phdr->p_align  = elf64_to_cpu(elf_info->ehdr, buf_phdr->p_align);
 
 	return elf_is_phdr_sane(phdr, len) ? 0 : -ENOEXEC;
 }
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
