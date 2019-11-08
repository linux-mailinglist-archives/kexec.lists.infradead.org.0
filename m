Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AF0F5AF8
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 23:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6ttCVVacO5+PGHMT9O6ajhtgT4eaPtSMeVDedpdym9g=; b=gSfjj3KflwB8Sy
	AMT4f9O9bgOxHI6ofzTHTp+ag9bCywRCRnItLAgMYziFeFCeQvwHDwWJANdPnNsXFkqZ8X22UXF6V
	Ys9rQonR5ioHS40Awb9hj27Gkh6XRjr9OyRA5PiseMaRieyaUh5exNHGvtT/h2AwNnbOc7kpQ7epk
	PJtr1vEa4jF9iGxFd9O6A9qfM09AyxiEmGSi1oWn0CRK5J/soJ9MRsejht7gTFIEtlA2GnRZgGuk/
	ArlqDE3FWaPnknbbzG0h5Lwi3EK2cEnwEMBqyihJF7VlC7grY2xQU5gFhcyvx8KNx3AFHLzJOgtUx
	tjoaQhawozP+jrnCn+Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCtF-0007JQ-OX; Fri, 08 Nov 2019 22:38:01 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCtC-0007Io-FJ
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 22:38:00 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xA8MbrpI007930
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <kexec@lists.infradead.org>; Sat, 9 Nov 2019 07:37:53 +0900
Received: from mailsv01.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA8MbrcI022759
 for <kexec@lists.infradead.org>; Sat, 9 Nov 2019 07:37:53 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv01.nec.co.jp (8.15.1/8.15.1) with ESMTP id xA8Mbr3r008942
 for <kexec@lists.infradead.org>; Sat, 9 Nov 2019 07:37:53 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.135] [10.38.151.135]) by
 mail02.kamome.nec.co.jp with ESMTP id BT-MMP-10219573;
 Sat, 9 Nov 2019 07:36:28 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC07GP.gisp.nec.co.jp ([10.38.151.135]) with mapi id 14.03.0439.000; Sat, 9
 Nov 2019 07:36:27 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [PATCH] makedumpfile: Add support for ELF extended numbering
Thread-Topic: [PATCH] makedumpfile: Add support for ELF extended numbering
Thread-Index: AdWWgfxKH9vj3bcGSCy1C/5nsjYUYg==
Date: Fri, 8 Nov 2019 22:36:26 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC03594BB6@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.134.151]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_143758_753945_2D5A06FA 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In ELF dump mode, since makedumpfile cannot handle more than PN_XNUM
(0xFFFF) program headers, if a resulting dumpfile needs such a number
of program headers, it creates a broken ELF dumpfile like this:

  # crash vmlinux dump.elf
  ...
  WARNING: possibly corrupt Elf64_Nhdr: n_namesz: 4185522176 n_descsz: 3 n_type: f4000
  ...
  WARNING: cannot read linux_banner string
  crash: vmlinux and dump.elf do not match!

With this patch, if the actual number of program headers is PN_XNUM
or more, the e_phnum field of the ELF header is set to PN_XNUM, and
the actual number is set in the sh_info field of the section header
at index 0.

The section header is written just after the program headers, although
this order is not typical, for the sake of code simplisity.

Signed-off-by: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
---
 elf_info.c     | 40 ++++++++++++++++++++++++---
 elf_info.h     |  1 +
 makedumpfile.c | 73 ++++++++++++++++++++++++++++++++++++--------------
 3 files changed, 91 insertions(+), 23 deletions(-)

diff --git a/elf_info.c b/elf_info.c
index 204bfbf69ae3..e9c267161bc2 100644
--- a/elf_info.c
+++ b/elf_info.c
@@ -123,8 +123,11 @@ check_elf_format(int fd, char *filename, int *phnum, unsigned int *num_load)
 	(*num_load) = 0;
 	if ((ehdr64.e_ident[EI_CLASS] == ELFCLASS64)
 	    && (ehdr32.e_ident[EI_CLASS] != ELFCLASS32)) {
-		(*phnum) = ehdr64.e_phnum;
-		for (i = 0; i < ehdr64.e_phnum; i++) {
+		if (!get_elf64_phnum(fd, filename, &ehdr64, phnum)) {
+			ERRMSG("Can't get phnum.\n");
+			return FALSE;
+		}
+		for (i = 0; i < (*phnum); i++) {
 			if (!get_elf64_phdr(fd, filename, i, &load64)) {
 				ERRMSG("Can't find Phdr %d.\n", i);
 				return FALSE;
@@ -1035,6 +1038,34 @@ is_xen_memory(void)
 	return (flags_memory & MEMORY_XEN);
 }
 
+int
+get_elf64_phnum(int fd, char *filename, Elf64_Ehdr *ehdr, int *phnum)
+{
+	Elf64_Shdr shdr;
+
+	/*
+	 * Extended Numbering support
+	 * See include/uapi/linux/elf.h and elf(5) for more information.
+	 */
+	if (ehdr->e_phnum == PN_XNUM) {
+		if (lseek(fd, ehdr->e_shoff, SEEK_SET) < 0) {
+			ERRMSG("Can't seek %s at 0x%lx. %s\n", filename,
+				ehdr->e_shoff, strerror(errno));
+			return FALSE;
+		}
+		if (read(fd, &shdr, ehdr->e_shentsize) != ehdr->e_shentsize) {
+			ERRMSG("Can't read %s at 0x%lx. %s\n", filename,
+				ehdr->e_shoff, strerror(errno));
+			return FALSE;
+		}
+
+		*phnum = shdr.sh_info;
+	} else
+		*phnum = ehdr->e_phnum;
+
+	return TRUE;
+}
+
 int
 get_phnum_memory(void)
 {
@@ -1047,7 +1078,10 @@ get_phnum_memory(void)
 			ERRMSG("Can't get ehdr64.\n");
 			return FALSE;
 		}
-		phnum = ehdr64.e_phnum;
+		if (!get_elf64_phnum(fd_memory, name_memory, &ehdr64, &phnum)) {
+			ERRMSG("Can't get phnum.\n");
+			return FALSE;
+		}
 	} else {                /* ELF32 */
 		if (!get_elf32_ehdr(fd_memory, name_memory, &ehdr32)) {
 			ERRMSG("Can't get ehdr32.\n");
diff --git a/elf_info.h b/elf_info.h
index cd4ffa6feed3..934b60806a8b 100644
--- a/elf_info.h
+++ b/elf_info.h
@@ -54,6 +54,7 @@ int get_kcore_dump_loads(void);
 int is_elf64_memory(void);
 int is_xen_memory(void);
 
+int get_elf64_phnum(int fd, char *filename, Elf64_Ehdr *ehdr, int *phnum);
 int get_phnum_memory(void);
 int get_phdr_memory(int index, Elf64_Phdr *phdr);
 off_t get_offset_pt_load_memory(void);
diff --git a/makedumpfile.c b/makedumpfile.c
index 4a000112ba59..371c9a33b8ad 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -6862,10 +6862,17 @@ write_elf_header(struct cache_data *cd_header)
 			ERRMSG("Can't get ehdr64.\n");
 			goto out;
 		}
+
+		/* For PT_NOTE */
+		num_loads_dumpfile++;
+
 		/*
-		 * PT_NOTE(1) + PT_LOAD(1+)
+		 * Extended Numbering support
+		 * See include/uapi/linux/elf.h and elf(5) for more information.
 		 */
-		ehdr64.e_phnum = 1 + num_loads_dumpfile;
+		ehdr64.e_phnum = (num_loads_dumpfile >= PN_XNUM) ?
+					PN_XNUM : num_loads_dumpfile;
+
 	} else {                /* ELF32 */
 		if (!get_elf32_ehdr(info->fd_memory,
 				    info->name_memory, &ehdr32)) {
@@ -6878,20 +6885,6 @@ write_elf_header(struct cache_data *cd_header)
 		ehdr32.e_phnum = 1 + num_loads_dumpfile;
 	}
 
-	/*
-	 * Write an ELF header.
-	 */
-	if (is_elf64_memory()) { /* ELF64 */
-		if (!write_buffer(info->fd_dumpfile, 0, &ehdr64, sizeof(ehdr64),
-		    info->name_dumpfile))
-			goto out;
-
-	} else {                /* ELF32 */
-		if (!write_buffer(info->fd_dumpfile, 0, &ehdr32, sizeof(ehdr32),
-		    info->name_dumpfile))
-			goto out;
-	}
-
 	/*
 	 * Pre-calculate the required size to store eraseinfo in ELF note
 	 * section so that we can add enough space in ELF notes section and
@@ -6925,15 +6918,12 @@ write_elf_header(struct cache_data *cd_header)
 	if (is_elf64_memory()) { /* ELF64 */
 		cd_header->offset    = sizeof(ehdr64);
 		offset_note_dumpfile = sizeof(ehdr64)
-		    + sizeof(Elf64_Phdr) * ehdr64.e_phnum;
+		    + sizeof(Elf64_Phdr) * num_loads_dumpfile;
 	} else {
 		cd_header->offset    = sizeof(ehdr32);
 		offset_note_dumpfile = sizeof(ehdr32)
 		    + sizeof(Elf32_Phdr) * ehdr32.e_phnum;
 	}
-	offset_note_memory = note.p_offset;
-	note.p_offset      = offset_note_dumpfile;
-	size_note          = note.p_filesz;
 
 	/*
 	 * Reserve a space to store the whole program headers.
@@ -6942,6 +6932,35 @@ write_elf_header(struct cache_data *cd_header)
 				offset_note_dumpfile, cd_header->file_name))
 		goto out;
 
+	/*
+	 * Write the initial section header just after the program headers
+	 * if necessary. This order is not typical, but looks enough for now.
+	 */
+	if (is_elf64_memory() && ehdr64.e_phnum == PN_XNUM) {
+		Elf64_Shdr shdr64;
+
+		ehdr64.e_shoff = offset_note_dumpfile;
+		ehdr64.e_shentsize = sizeof(shdr64);
+		ehdr64.e_shnum = 1;
+		ehdr64.e_shstrndx = SHN_UNDEF;
+
+		memset(&shdr64, 0, sizeof(shdr64));
+		shdr64.sh_type = SHT_NULL;
+		shdr64.sh_size = ehdr64.e_shnum;
+		shdr64.sh_link = ehdr64.e_shstrndx;
+		shdr64.sh_info = num_loads_dumpfile;
+
+		if (!write_buffer(info->fd_dumpfile, offset_note_dumpfile,
+				&shdr64, sizeof(shdr64), info->name_dumpfile))
+			goto out;
+
+		offset_note_dumpfile += sizeof(shdr64);
+	}
+
+	offset_note_memory = note.p_offset;
+	note.p_offset      = offset_note_dumpfile;
+	size_note          = note.p_filesz;
+
 	/*
 	 * Modify the note size in PT_NOTE header to accomodate eraseinfo data.
 	 * Eraseinfo will be written later.
@@ -6958,6 +6977,20 @@ write_elf_header(struct cache_data *cd_header)
 	if (!write_elf_phdr(cd_header, &note))
 		goto out;
 
+	/*
+	 * Write the ELF header.
+	 */
+	if (is_elf64_memory()) { /* ELF64 */
+		if (!write_buffer(info->fd_dumpfile, 0, &ehdr64, sizeof(ehdr64),
+		    info->name_dumpfile))
+			goto out;
+
+	} else {                 /* ELF32 */
+		if (!write_buffer(info->fd_dumpfile, 0, &ehdr32, sizeof(ehdr32),
+		    info->name_dumpfile))
+			goto out;
+	}
+
 	/*
 	 * Write a PT_NOTE segment.
 	 * PT_LOAD header will be written later.
-- 
2.18.1



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
