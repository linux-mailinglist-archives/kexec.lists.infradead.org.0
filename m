Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DA6A5261F
	for <lists+kexec@lfdr.de>; Tue, 25 Jun 2019 10:11:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qjlwTFaPKWCWDaatfTkWTY54irvoabEMEsp85QV8NT8=; b=i45smOZtcVbDAc
	jXgzeSvbByDIrLMYz67PFMOgUbThuedfEM8pVCl7xJKKXviCq9o0TQyHCSDAb2vS6oOkmCaJ3/LwB
	M1q5yBU5KcohZJ7jzizs7RpQWjjN8C5AXnHVXe1BQLJWwKY47Hnu3iUVS8FLlAyukc50cAghKQXUB
	mNtNKCmx2FUJoj+EomHeQg/eiuiP8MsV0ySLrdTY6NL8ebClU9nIOPYEEF+uNoZ9qgN6PNxClLN6I
	toPWWAbYQ327AeCk4MBUELj89SCumPHzJ1Yd352UlgNyWKIIkkCiyvGZ0uPEp9Eew1wWV9/h3P6NQ
	xBsNLGGBZWtyjuX/+33Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfgYS-0005Wt-9X; Tue, 25 Jun 2019 08:11:52 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfgYN-0005WE-TA
 for kexec@lists.infradead.org; Tue, 25 Jun 2019 08:11:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1561450307; x=1592986307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=WNFF7eXsO32KRtDY+a8TJX1mzFmR7sfgFAwgcm+Y6/8=;
 b=UJdCKPVISX379dg9Blhh8Mz4I5V69iexZTCn7VKOlaeYi0dDvDHMHHc1
 Y+Jx+TDB5KMJua5dDly9ptIjXZ1VwSCEfbIld2I9tq05w2YaWaSpWqzbn
 WPHsijkiq2bXO3mWXaAjEuo71JWfoaKn9OLE4etfSQomTlqQ1B1AX7NS6 I=;
X-IronPort-AV: E=Sophos;i="5.62,415,1554768000"; d="scan'208";a="407944503"
Received: from iad6-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-1a-715bee71.us-east-1.amazon.com) ([10.124.125.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 25 Jun 2019 08:11:43 +0000
Received: from EX13MTAUEB001.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan2.iad.amazon.com [10.40.159.162])
 by email-inbound-relay-1a-715bee71.us-east-1.amazon.com (Postfix) with ESMTPS
 id C8CFAA26AF
 for <kexec@lists.infradead.org>; Tue, 25 Jun 2019 08:11:43 +0000 (UTC)
Received: from EX13D08UEB003.ant.amazon.com (10.43.60.11) by
 EX13MTAUEB001.ant.amazon.com (10.43.60.129) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 25 Jun 2019 08:11:42 +0000
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13D08UEB003.ant.amazon.com (10.43.60.11) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 25 Jun 2019 08:11:41 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.28.86.19) by
 mail-relay.amazon.com (10.43.160.118) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 25 Jun 2019 08:11:40 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH 2/3 RESEND] elf: Support ELF loading with relocation
Date: Tue, 25 Jun 2019 10:11:24 +0200
Message-ID: <1561450284-22003-1-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558423948-24583-2-git-send-email-vrd@amazon.de>
References: <1558423948-24583-2-git-send-email-vrd@amazon.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_011148_159053_40317AA4 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Varad Gautam <vrd@amazon.de>, Amit Shah <aams@amazon.de>,
 David Woodhouse <dwmw@amazon.co.uk>
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
Geschaeftsfuehrung: Christian Schlaeger, Ralf Herbrich
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
