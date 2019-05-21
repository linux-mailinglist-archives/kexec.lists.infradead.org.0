Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A51A124902
	for <lists+kexec@lfdr.de>; Tue, 21 May 2019 09:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GIhi+BYJv7viuKEgXoJ6kx5GU7oPQpCQTdpR0QFXphM=; b=Ld817ywbukE62f
	1HWSC8RiLMNakOWQWwVYX4Bu++VFATFMlSpdj/GwtgJ1JP08rcI71SPdbQaWPkO3NO0J2+8SlMnrn
	Xd7QK511P/k4rMa5Dbbz418KQHTXnMGcUR0lotQQcXU78UUtq0SsRYZ8Jbqkn/XeD8tyRpJo3SLBd
	lrkzu14MZKOv8/L65jH19SWmxoePjsh7K2bNLinhkh6P5ITLEYdqFo9PK5Gnn44sh/k0tchsTts4V
	ksNuSk8DFEQpCoDHVzIRm8HyxjfurrcUtBLw45k+LfxFMaU7yNGEdfvvsHrvQTWbMeO3NKHSO8ZNL
	E6dcKonqKEF+fhhUBF9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzGh-0007C2-P2; Tue, 21 May 2019 07:33:03 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzGc-0007Az-Ra
 for kexec@lists.infradead.org; Tue, 21 May 2019 07:33:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1558423978; x=1589959978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=1HaFT6sWUtjFyAaLcb74Jt1vwQ48xgzA8IcPI7WHgjE=;
 b=KzHuF0uvWgrBUUN6mcK3/tMOAXLNBlAT/Yl4wWahsxXqju8lGa+GJQ61
 2K8g+YGu1s3yLimy134skoskpHoadDsHFya/NgSeiQotlwJkGptwZrWRs
 PB9lnIVUHKE8rmdX1u/iH96Jd9YQ1gdn8BC1Kmhii+GrZ092h/blI4Fpm Q=;
X-IronPort-AV: E=Sophos;i="5.60,494,1549929600"; d="scan'208";a="675490955"
Received: from sea3-co-svc-lb6-vlan3.sea.amazon.com (HELO
 email-inbound-relay-2a-1c1b5cdd.us-west-2.amazon.com) ([10.47.22.38])
 by smtp-border-fw-out-9102.sea19.amazon.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 21 May 2019 07:32:57 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (pdx1-ws-svc-p6-lb9-vlan3.pdx.amazon.com [10.236.137.198])
 by email-inbound-relay-2a-1c1b5cdd.us-west-2.amazon.com (8.14.7/8.14.7) with
 ESMTP id x4L7WqYp068603
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
 for <kexec@lists.infradead.org>; Tue, 21 May 2019 07:32:56 GMT
Received: from EX13D08UEB001.ant.amazon.com (10.43.60.245) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.96) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 May 2019 07:32:56 +0000
Received: from EX13MTAUWC001.ant.amazon.com (10.43.162.135) by
 EX13D08UEB001.ant.amazon.com (10.43.60.245) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 21 May 2019 07:32:55 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.28.86.17) by
 mail-relay.amazon.com (10.43.162.232) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 21 May 2019 07:32:53 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH 2/3] elf: Support ELF loading with relocation
Date: Tue, 21 May 2019 09:32:27 +0200
Message-ID: <1558423948-24583-2-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558423948-24583-1-git-send-email-vrd@amazon.de>
References: <1558423948-24583-1-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_003258_957493_84287B68 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.29 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Varad Gautam <vrd@amazon.de>, David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add a helper to allow loading an image within specified address range.
This will be used to load multiboot2 images later.

Signed-off-by: Varad Gautam <vrd@amazon.de>
---
 kexec/kexec-elf-exec.c | 199 +++++++++++++++++++++++++++++++++----------------
 kexec/kexec-elf.h      |   7 ++
 2 files changed, 141 insertions(+), 65 deletions(-)

diff --git a/kexec/kexec-elf-exec.c b/kexec/kexec-elf-exec.c
index a9329ac..bea7b3e 100644
--- a/kexec/kexec-elf-exec.c
+++ b/kexec/kexec-elf-exec.c
@@ -11,6 +11,84 @@
 
 static const int probe_debug = 0;
 
+static void load_elf_segments(struct mem_ehdr *ehdr, struct kexec_info *info, unsigned long base)
+{
+	size_t i;
+
+	/* Read in the PT_LOAD segments */
+	for(i = 0; i < ehdr->e_phnum; i++) {
+		struct mem_phdr *phdr;
+		size_t size;
+		phdr = &ehdr->e_phdr[i];
+		if (phdr->p_type != PT_LOAD) {
+			continue;
+		}
+		size = phdr->p_filesz;
+		if (size > phdr->p_memsz) {
+			size = phdr->p_memsz;
+		}
+		add_segment(info, phdr->p_data, size,
+					phdr->p_paddr + base, phdr->p_memsz);
+	}
+}
+
+static int get_elf_exec_load_base(struct mem_ehdr *ehdr, struct kexec_info *info,
+				  unsigned long min, unsigned long max,
+				  unsigned long align, unsigned long *base)
+{
+	unsigned long first, last;
+	size_t i;
+
+	/* Note on arm64:
+	 * arm64's vmlinux has virtual address in physical address
+	 * field of PT_LOAD segments. So the following validity check
+	 * and relocation makes no sense on arm64.
+	 */
+	if (ehdr->e_machine == EM_AARCH64)
+		return 0;
+
+	first = ULONG_MAX;
+	last  = 0;
+	for(i = 0; i < ehdr->e_phnum; i++) {
+		unsigned long start, stop;
+		struct mem_phdr *phdr;
+		phdr = &ehdr->e_phdr[i];
+		if ((phdr->p_type != PT_LOAD) ||
+			(phdr->p_memsz == 0))
+		{
+			continue;
+		}
+		start = phdr->p_paddr;
+		stop  = start + phdr->p_memsz;
+		if (first > start) {
+			first = start;
+		}
+		if (last < stop) {
+			last = stop;
+		}
+		if (align < phdr->p_align) {
+			align = phdr->p_align;
+		}
+	}
+
+	if ((max - min) < (last - first))
+		return -1;
+
+	if (!valid_memory_range(info, min > first ? min : first, max < last ? max : last)) {
+		unsigned long hole;
+		hole = locate_hole(info, last - first + 1, align, min, max, 1);
+		if (hole == ULONG_MAX)
+			return -1;
+
+		/* Base is the value that when added
+		 * to any virtual address in the file
+		 * yields it's load virtual address.
+		 */
+		*base = hole - first;
+	}
+	return 0;
+}
+
 int build_elf_exec_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
 				uint32_t flags)
 {
@@ -53,7 +131,6 @@ int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info)
 {
 	unsigned long base;
 	int result;
-	size_t i;
 
 	if (!ehdr->e_phdr) {
 		fprintf(stderr, "No program header?\n");
@@ -63,75 +140,48 @@ int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info)
 
 	/* If I have a dynamic executable find it's size
 	 * and then find a location for it in memory.
-	 * Note on arm64:
-	 * arm64's vmlinux has virtual address in physical address
-	 * field of PT_LOAD segments. So the following validity check
-	 * and relocation makes no sense on arm64.
 	 */
 	base = 0;
-	if ((ehdr->e_machine != EM_AARCH64) && (ehdr->e_type == ET_DYN)) {
-		unsigned long first, last, align;
-		first = ULONG_MAX;
-		last  = 0;
-		align = 0;
-		for(i = 0; i < ehdr->e_phnum; i++) {
-			unsigned long start, stop;
-			struct mem_phdr *phdr;
-			phdr = &ehdr->e_phdr[i];
-			if ((phdr->p_type != PT_LOAD) ||
-				(phdr->p_memsz == 0))
-			{
-				continue;
-			}
-			start = phdr->p_paddr;
-			stop  = start + phdr->p_memsz;
-			if (first > start) {
-				first = start;
-			}
-			if (last < stop) {
-				last = stop;
-			}
-			if (align < phdr->p_align) {
-				align = phdr->p_align;
-			}
-		}
-		/* If I can't use the default paddr find a new
-		 * hole for the dynamic executable.
-		 */
-		if (!valid_memory_range(info, first, last)) {
-			unsigned long hole;
-			hole = locate_hole(info,
-				last - first + 1, align, 
-				0, elf_max_addr(ehdr), 1);
-			if (hole == ULONG_MAX) {
-				result = -1;
-				goto out;
-			}
-			/* Base is the value that when added
-			 * to any virtual address in the file
-			 * yields it's load virtual address.
-			 */
-			base = hole - first;
-		}
-
+	if (ehdr->e_type == ET_DYN) {
+		result = get_elf_exec_load_base(ehdr, info, 0, elf_max_addr(ehdr), 0 /* align */, &base);
+		if (result < 0)
+			goto out;
 	}
 
-	/* Read in the PT_LOAD segments */
-	for(i = 0; i < ehdr->e_phnum; i++) {
-		struct mem_phdr *phdr;
-		size_t size;
-		phdr = &ehdr->e_phdr[i];
-		if (phdr->p_type != PT_LOAD) {
-			continue;
-		}
-		size = phdr->p_filesz;
-		if (size > phdr->p_memsz) {
-			size = phdr->p_memsz;
-		}
-		add_segment(info,
-			phdr->p_data, size,
-			phdr->p_paddr + base, phdr->p_memsz);
+	load_elf_segments(ehdr, info, base);
+
+	/* Update entry point to reflect new load address*/
+	ehdr->e_entry += base;
+
+	result = 0;
+ out:
+	return result;
+}
+
+int elf_exec_load_relocatable(struct mem_ehdr *ehdr, struct kexec_info *info,
+			      unsigned long reloc_min, unsigned long reloc_max,
+			      unsigned long align)
+{
+	unsigned long base;
+	int result;
+
+	if (reloc_min > reloc_max) {
+		fprintf(stderr, "Bad relocation range, start=%lux > end=%lux.\n", reloc_min, reloc_max);
+		result = -1;
+		goto out;
 	}
+	if (!ehdr->e_phdr) {
+		fprintf(stderr, "No program header?\n");
+		result = -1;
+		goto out;
+	}
+
+	base = 0;
+	result = get_elf_exec_load_base(ehdr, info, reloc_min, reloc_max, align, &base);
+	if (result < 0)
+		goto out;
+
+	load_elf_segments(ehdr, info, base);
 
 	/* Update entry point to reflect new load address*/
 	ehdr->e_entry += base;
@@ -157,3 +207,22 @@ void elf_exec_build_load(struct kexec_info *info, struct mem_ehdr *ehdr,
 		die("ELF exec load failed\n");
 	}
 }
+
+void elf_exec_build_load_relocatable(struct kexec_info *info, struct mem_ehdr *ehdr,
+				     const char *buf, off_t len, uint32_t flags,
+				     unsigned long reloc_min, unsigned long reloc_max,
+				     unsigned long align)
+{
+	int result;
+	/* Parse the Elf file */
+	result = build_elf_exec_info(buf, len, ehdr, flags);
+	if (result < 0) {
+		die("%s: ELF exec parse failed\n", __func__);
+	}
+
+	/* Load the Elf data */
+	result = elf_exec_load_relocatable(ehdr, info, reloc_min, reloc_max, align);
+	if (result < 0) {
+		die("%s: ELF exec load failed\n", __func__);
+	}
+}
\ No newline at end of file
diff --git a/kexec/kexec-elf.h b/kexec/kexec-elf.h
index 1164db4..1e512c8 100644
--- a/kexec/kexec-elf.h
+++ b/kexec/kexec-elf.h
@@ -100,11 +100,18 @@ extern int build_elf_rel_info(const char *buf, off_t len, struct mem_ehdr *ehdr,
 extern int build_elf_core_info(const char *buf, off_t len,
 					struct mem_ehdr *ehdr, uint32_t flags);
 extern int elf_exec_load(struct mem_ehdr *ehdr, struct kexec_info *info);
+extern int elf_exec_load_relocatable(struct mem_ehdr *ehdr, struct kexec_info *info,
+				     unsigned long reloc_min, unsigned long reloc_max,
+				     unsigned long align);
 extern int elf_rel_load(struct mem_ehdr *ehdr, struct kexec_info *info,
 	unsigned long min, unsigned long max, int end);
 
 extern void elf_exec_build_load(struct kexec_info *info, struct mem_ehdr *ehdr, 
 				const char *buf, off_t len, uint32_t flags);
+extern void elf_exec_build_load_relocatable(struct kexec_info *info, struct mem_ehdr *ehdr,
+					    const char *buf, off_t len, uint32_t flags,
+					    unsigned long reloc_min, unsigned long reloc_max,
+					    unsigned long align);
 extern void elf_rel_build_load(struct kexec_info *info, struct mem_ehdr *ehdr, 
 	const char *buf, off_t len, unsigned long min, unsigned long max, 
 	int end, uint32_t flags);
-- 
2.7.4




Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrer: Christian Schlaeger, Ralf Herbrich
Ust-ID: DE 289 237 879
Eingetragen am Amtsgericht Charlottenburg HRB 149173 B



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
