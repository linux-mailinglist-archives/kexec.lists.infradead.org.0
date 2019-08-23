Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689239B754
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 21:49:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEOdjU2OXDgxiJrR2mt/Tfih+9Wcnur7yfSa4qJkeHs=; b=FQQ3DtGUs4xVu4
	2TnUC9ZTjrWeJg0D3DdlcgSiI+B0AYM1mqgpnmtseBI6ZD+xyyQb4fNzU4C5Ed31VKklKQyNpCMnc
	9sLaR+zqSgvxJm0ek0qxJGwykvbxSg0XM9TVk85Ki1/BZiw0DBouAJvbQyY8AXMyA6MwI5Y4gsTe7
	NO2r1jvUY9c2ShXvD6B8D9ez4eP6HVPa0gw0v/pABkvN0Ia45LGyYxiP+w4qex+PGK2qesJQWrz48
	N0zEN0wQSz3Rj9P7HvJOinqbnJNkbYmbJlFhlNO1vz1tSyvNzA2MIm6cTGAhE/Lr7Bh1ltadhY9zM
	OMvqORmsBd5WpzS5trbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1FZJ-0000VK-O5; Fri, 23 Aug 2019 19:49:53 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1FZ8-0000Ja-9c
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 19:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=H4eOft3mmhMmM4qIstVdgVIAgDkeI6V05OnxkDQA5RQ=; b=Z42gmiAU84qIhJsbBCXC7B6km8
 ft1liMbGsKfaXHl9j1+f4Kl3o9APmEsyQtDfQGpnzF6FvqhVwnjpRZjg6qGaVpQQfMdpvGw7uTzO2
 YYBH0sy4ue0FVkDyY37mMaEpESlaPZzC1n8uJmq+ZG4fDG67rjam7JYjBlbzBreZUad4=;
Received: from [134.3.44.134] (helo=x280.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1i1FZ3-00071n-Ej; Fri, 23 Aug 2019 21:49:37 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v5 7/7] kexec_elf: support 32 bit ELF files
Date: Fri, 23 Aug 2019 21:49:19 +0200
Message-Id: <20190823194919.30916-8-svens@stackframe.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190823194919.30916-1-svens@stackframe.org>
References: <20190823194919.30916-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_124942_658723_D7C3FD51 
X-CRM114-Status: GOOD (  10.31  )
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

The powerpc version only supported 64 bit. Add some
code to switch decoding of fields during runtime so
we can kexec a 32 bit kernel from a 64 bit kernel and
vice versa.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
---
 kernel/kexec_elf.c | 57 ++++++++++++++++++++++++++++++++++------------
 1 file changed, 42 insertions(+), 15 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 85f2bd177d6e..d3689632e8b9 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -21,8 +21,6 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
-#define elf_addr_to_cpu	elf64_to_cpu
-
 static inline bool elf_is_elf_file(const struct elfhdr *ehdr)
 {
 	return memcmp(ehdr->e_ident, ELFMAG, SELFMAG) == 0;
@@ -152,9 +150,6 @@ static int elf_read_ehdr(const char *buf, size_t len, struct elfhdr *ehdr)
 	ehdr->e_type      = elf16_to_cpu(ehdr, buf_ehdr->e_type);
 	ehdr->e_machine   = elf16_to_cpu(ehdr, buf_ehdr->e_machine);
 	ehdr->e_version   = elf32_to_cpu(ehdr, buf_ehdr->e_version);
-	ehdr->e_entry     = elf_addr_to_cpu(ehdr, buf_ehdr->e_entry);
-	ehdr->e_phoff     = elf_addr_to_cpu(ehdr, buf_ehdr->e_phoff);
-	ehdr->e_shoff     = elf_addr_to_cpu(ehdr, buf_ehdr->e_shoff);
 	ehdr->e_flags     = elf32_to_cpu(ehdr, buf_ehdr->e_flags);
 	ehdr->e_phentsize = elf16_to_cpu(ehdr, buf_ehdr->e_phentsize);
 	ehdr->e_phnum     = elf16_to_cpu(ehdr, buf_ehdr->e_phnum);
@@ -162,6 +157,24 @@ static int elf_read_ehdr(const char *buf, size_t len, struct elfhdr *ehdr)
 	ehdr->e_shnum     = elf16_to_cpu(ehdr, buf_ehdr->e_shnum);
 	ehdr->e_shstrndx  = elf16_to_cpu(ehdr, buf_ehdr->e_shstrndx);
 
+	switch (ehdr->e_ident[EI_CLASS]) {
+	case ELFCLASS64:
+		ehdr->e_entry = elf64_to_cpu(ehdr, buf_ehdr->e_entry);
+		ehdr->e_phoff = elf64_to_cpu(ehdr, buf_ehdr->e_phoff);
+		ehdr->e_shoff = elf64_to_cpu(ehdr, buf_ehdr->e_shoff);
+		break;
+
+	case ELFCLASS32:
+		ehdr->e_entry = elf32_to_cpu(ehdr, buf_ehdr->e_entry);
+		ehdr->e_phoff = elf32_to_cpu(ehdr, buf_ehdr->e_phoff);
+		ehdr->e_shoff = elf32_to_cpu(ehdr, buf_ehdr->e_shoff);
+		break;
+
+	default:
+		pr_debug("Unknown ELF class.\n");
+		return -EINVAL;
+	}
+
 	return elf_is_ehdr_sane(ehdr, len) ? 0 : -ENOEXEC;
 }
 
@@ -192,6 +205,7 @@ static int elf_read_phdr(const char *buf, size_t len,
 {
 	/* Override the const in proghdrs, we are the ones doing the loading. */
 	struct elf_phdr *phdr = (struct elf_phdr *) &elf_info->proghdrs[idx];
+	const struct elfhdr *ehdr = elf_info->ehdr;
 	const char *pbuf;
 	struct elf_phdr *buf_phdr;
 
@@ -199,18 +213,31 @@ static int elf_read_phdr(const char *buf, size_t len,
 	buf_phdr = (struct elf_phdr *) pbuf;
 
 	phdr->p_type   = elf32_to_cpu(elf_info->ehdr, buf_phdr->p_type);
-	phdr->p_offset = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_offset);
-	phdr->p_paddr  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_paddr);
-	phdr->p_vaddr  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_vaddr);
 	phdr->p_flags  = elf32_to_cpu(elf_info->ehdr, buf_phdr->p_flags);
 
-	/*
-	 * The following fields have a type equivalent to Elf_Addr
-	 * both in 32 bit and 64 bit ELF.
-	 */
-	phdr->p_filesz = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_filesz);
-	phdr->p_memsz  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_memsz);
-	phdr->p_align  = elf_addr_to_cpu(elf_info->ehdr, buf_phdr->p_align);
+	switch (ehdr->e_ident[EI_CLASS]) {
+	case ELFCLASS64:
+		phdr->p_offset = elf64_to_cpu(ehdr, buf_phdr->p_offset);
+		phdr->p_paddr  = elf64_to_cpu(ehdr, buf_phdr->p_paddr);
+		phdr->p_vaddr  = elf64_to_cpu(ehdr, buf_phdr->p_vaddr);
+		phdr->p_filesz = elf64_to_cpu(ehdr, buf_phdr->p_filesz);
+		phdr->p_memsz  = elf64_to_cpu(ehdr, buf_phdr->p_memsz);
+		phdr->p_align  = elf64_to_cpu(ehdr, buf_phdr->p_align);
+		break;
+
+	case ELFCLASS32:
+		phdr->p_offset = elf32_to_cpu(ehdr, buf_phdr->p_offset);
+		phdr->p_paddr  = elf32_to_cpu(ehdr, buf_phdr->p_paddr);
+		phdr->p_vaddr  = elf32_to_cpu(ehdr, buf_phdr->p_vaddr);
+		phdr->p_filesz = elf32_to_cpu(ehdr, buf_phdr->p_filesz);
+		phdr->p_memsz  = elf32_to_cpu(ehdr, buf_phdr->p_memsz);
+		phdr->p_align  = elf32_to_cpu(ehdr, buf_phdr->p_align);
+		break;
+
+	default:
+		pr_debug("Unknown ELF class.\n");
+		return -EINVAL;
+	}
 
 	return elf_is_phdr_sane(phdr, len) ? 0 : -ENOEXEC;
 }
-- 
2.23.0.rc1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
