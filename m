Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A0C63C1C
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 21:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8kzP2QlJ1R23lCEiaPfKXFbUnTJDW3IEH36BFJ7kIto=; b=do4Wd7ysqlyT5r
	wULJf6KQgx0MpbKJ2Wy/vn4+xQIgOd0x/8dtwTt2cvmD9kW6iQ74CzPRuYnuNmkjCV/g+B8bqlfyK
	nIewCZAlG/LRoCOS04O7dhxc/GXF+5kelRZ7QP6q8GQFNfh+5+sLsXwbTnbc+6k79olULARdCADde
	9n4Qffd/XhRY87CQwx61oYsfTdNeXbmU6lw8i4De3V1dz7H25UFA7E346/jkU5AvYvh5zeoDJc8ea
	knD7o/X8qptAzM72mR8dbCBKUe3roC6IM+QTEJmlX6CkhaYS3EpyT3zdQAhJsZA5TpikxnqcibFN4
	M/OA1hcfpUWu9dmPdemg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkw23-0004eF-3N; Tue, 09 Jul 2019 19:44:07 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkw1d-0004Na-TG
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 19:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=S7LDnDqrF+KRwhMpZ7TCJEdQWTb51YB0cy9i1jicEGQ=; b=ExMiizT0UVvBlIKDSeCkKbdLZd
 jOFJr1eIy8yllDlV//v0H3uDebKc5Z8jRgBdpdds5xKm75gIK/SyM07kvQX483hw990vOgiOo5ato
 o/9w/LaxGbpwUeX2asAOwWd3/3DEJ+LDQqObMRFYTis0Mw8jZGN+RsKI35UsfiFGG3Ks=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hkw1Z-0007pP-1O; Tue, 09 Jul 2019 21:43:37 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v2 3/7] kexec_elf: remove parsing of section headers
Date: Tue,  9 Jul 2019 21:43:24 +0200
Message-Id: <20190709194328.16991-4-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190709194328.16991-1-svens@stackframe.org>
References: <20190709194328.16991-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_124342_218833_FB157F44 
X-CRM114-Status: GOOD (  15.59  )
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

We're not using them, so we can drop the parsing.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 include/linux/kexec.h |   1 -
 kernel/kexec_elf.c    | 137 ------------------------------------------
 2 files changed, 138 deletions(-)

diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index da2a6b1d69e7..f0b809258ed3 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -226,7 +226,6 @@ struct kexec_elf_info {
 
 	const struct elfhdr *ehdr;
 	const struct elf_phdr *proghdrs;
-	struct elf_shdr *sechdrs;
 };
 
 int kexec_build_elf_info(const char *buf, size_t len, struct elfhdr *ehdr,
diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 76e7df64d715..effe9dc0b055 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -244,134 +244,6 @@ static int elf_read_phdrs(const char *buf, size_t len,
 	return 0;
 }
 
-/**
- * elf_is_shdr_sane - check that it is safe to use the section header
- * @buf_len:	size of the buffer in which the ELF file is loaded.
- */
-static bool elf_is_shdr_sane(const struct elf_shdr *shdr, size_t buf_len)
-{
-	bool size_ok;
-
-	/* SHT_NULL headers have undefined values, so we can't check them. */
-	if (shdr->sh_type == SHT_NULL)
-		return true;
-
-	/* Now verify sh_entsize */
-	switch (shdr->sh_type) {
-	case SHT_SYMTAB:
-		size_ok = shdr->sh_entsize == sizeof(Elf_Sym);
-		break;
-	case SHT_RELA:
-		size_ok = shdr->sh_entsize == sizeof(Elf_Rela);
-		break;
-	case SHT_DYNAMIC:
-		size_ok = shdr->sh_entsize == sizeof(Elf_Dyn);
-		break;
-	case SHT_REL:
-		size_ok = shdr->sh_entsize == sizeof(Elf_Rel);
-		break;
-	case SHT_NOTE:
-	case SHT_PROGBITS:
-	case SHT_HASH:
-	case SHT_NOBITS:
-	default:
-		/*
-		 * This is a section whose entsize requirements
-		 * I don't care about.  If I don't know about
-		 * the section I can't care about it's entsize
-		 * requirements.
-		 */
-		size_ok = true;
-		break;
-	}
-
-	if (!size_ok) {
-		pr_debug("ELF section with wrong entry size.\n");
-		return false;
-	} else if (shdr->sh_addr + shdr->sh_size < shdr->sh_addr) {
-		pr_debug("ELF section address wraps around.\n");
-		return false;
-	}
-
-	if (shdr->sh_type != SHT_NOBITS) {
-		if (shdr->sh_offset + shdr->sh_size < shdr->sh_offset) {
-			pr_debug("ELF section location wraps around.\n");
-			return false;
-		} else if (shdr->sh_offset + shdr->sh_size > buf_len) {
-			pr_debug("ELF section not in file.\n");
-			return false;
-		}
-	}
-
-	return true;
-}
-
-static int elf_read_shdr(const char *buf, size_t len,
-			 struct kexec_elf_info *elf_info,
-			 int idx)
-{
-	struct elf_shdr *shdr = &elf_info->sechdrs[idx];
-	const struct elfhdr *ehdr = elf_info->ehdr;
-	const char *sbuf;
-	struct elf_shdr *buf_shdr;
-
-	sbuf = buf + ehdr->e_shoff + idx * sizeof(*buf_shdr);
-	buf_shdr = (struct elf_shdr *) sbuf;
-
-	shdr->sh_name      = elf32_to_cpu(ehdr, buf_shdr->sh_name);
-	shdr->sh_type      = elf32_to_cpu(ehdr, buf_shdr->sh_type);
-	shdr->sh_addr      = elf_addr_to_cpu(ehdr, buf_shdr->sh_addr);
-	shdr->sh_offset    = elf_addr_to_cpu(ehdr, buf_shdr->sh_offset);
-	shdr->sh_link      = elf32_to_cpu(ehdr, buf_shdr->sh_link);
-	shdr->sh_info      = elf32_to_cpu(ehdr, buf_shdr->sh_info);
-
-	/*
-	 * The following fields have a type equivalent to Elf_Addr
-	 * both in 32 bit and 64 bit ELF.
-	 */
-	shdr->sh_flags     = elf_addr_to_cpu(ehdr, buf_shdr->sh_flags);
-	shdr->sh_size      = elf_addr_to_cpu(ehdr, buf_shdr->sh_size);
-	shdr->sh_addralign = elf_addr_to_cpu(ehdr, buf_shdr->sh_addralign);
-	shdr->sh_entsize   = elf_addr_to_cpu(ehdr, buf_shdr->sh_entsize);
-
-	return elf_is_shdr_sane(shdr, len) ? 0 : -ENOEXEC;
-}
-
-/**
- * elf_read_shdrs - read the section headers from the buffer
- *
- * This function assumes that the section header table was checked for sanity.
- * Use elf_is_ehdr_sane() if it wasn't.
- */
-static int elf_read_shdrs(const char *buf, size_t len,
-			  struct kexec_elf_info *elf_info)
-{
-	size_t shdr_size, i;
-
-	/*
-	 * e_shnum is at most 65536 so calculating
-	 * the size of the section header cannot overflow.
-	 */
-	shdr_size = sizeof(struct elf_shdr) * elf_info->ehdr->e_shnum;
-
-	elf_info->sechdrs = kzalloc(shdr_size, GFP_KERNEL);
-	if (!elf_info->sechdrs)
-		return -ENOMEM;
-
-	for (i = 0; i < elf_info->ehdr->e_shnum; i++) {
-		int ret;
-
-		ret = elf_read_shdr(buf, len, elf_info, i);
-		if (ret) {
-			kfree(elf_info->sechdrs);
-			elf_info->sechdrs = NULL;
-			return ret;
-		}
-	}
-
-	return 0;
-}
-
 /**
  * elf_read_from_buffer - read ELF file and sets up ELF header and ELF info
  * @buf:	Buffer to read ELF file from.
@@ -404,14 +276,6 @@ static int elf_read_from_buffer(const char *buf, size_t len,
 		if (ret)
 			return ret;
 	}
-	if (ehdr->e_shoff > 0 && ehdr->e_shnum > 0) {
-		ret = elf_read_shdrs(buf, len, elf_info);
-		if (ret) {
-			kfree(elf_info->proghdrs);
-			return ret;
-		}
-	}
-
 	return 0;
 }
 
@@ -421,7 +285,6 @@ static int elf_read_from_buffer(const char *buf, size_t len,
 void kexec_free_elf_info(struct kexec_elf_info *elf_info)
 {
 	kfree(elf_info->proghdrs);
-	kfree(elf_info->sechdrs);
 	memset(elf_info, 0, sizeof(*elf_info));
 }
 /**
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
