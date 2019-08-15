Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC048E33A
	for <lists+kexec@lfdr.de>; Thu, 15 Aug 2019 05:38:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BrUbcdVvhuhGEckgaUmj3kyZ0kvtL2k7WVHpLlrM+wk=; b=Sm3XdrxayFBiE8F5NMYJgxwfV4
	YhahJL3sUgsVkL8rM+l3/ins2Vq/aeyoDTkOQoPtgHwKCTDUzmlrijfMJ20vtJ2e8pvH20heRxJJj
	bZdIljDpWUq3R+UPy2K+/6905dxzoTb2ZB2W32KJ+BB24Lm4YO2k0tOt+kqDaZEVs0wTidZf1WU43
	ChRC2yvOk1RatJpb+j1SI6X+vFFdsVQc0Y8RK9C7SDCsQdG+kCnOyji5ehviC/p+PcTaVYmZuJtGv
	Bb4XuIuLHb2ib/ERzZZqzUtY+SIgmWlJGDBsnX+DLQ5yLLXW1KspEcYMXwvlpADZIE//8gvTz9d8a
	cRNsTAgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy6ah-0004gK-VI; Thu, 15 Aug 2019 03:38:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy6ad-0004fK-NF
 for kexec@lists.infradead.org; Thu, 15 Aug 2019 03:38:17 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 747933004E52;
 Thu, 15 Aug 2019 03:38:15 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-36.pek2.redhat.com
 [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8191C91E9A;
 Thu, 15 Aug 2019 03:38:10 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 1/2] cleanup: move it back from util_lib/elf_info.c
Date: Thu, 15 Aug 2019 11:37:55 +0800
Message-Id: <20190815033756.15587-2-lijiang@redhat.com>
In-Reply-To: <20190815033756.15587-1-lijiang@redhat.com>
References: <20190815033756.15587-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Thu, 15 Aug 2019 03:38:15 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_203816_024565_87DDFE0C 
X-CRM114-Status: GOOD (  18.55  )
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
Cc: kasong@redhat.com, bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 junw99@yahoo.com, horms@verge.net.au, dyoung@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Some code related to vmcore-dmesg.c is put into the util_lib, which
is not very reasonable, so lets move it back and tidy up those code.

In addition, that will also help to limit the size of vmcore-dmesg.txt.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 kexec/arch/arm64/kexec-arm64.c |  2 +-
 util_lib/elf_info.c            | 73 ++++++++--------------------------
 util_lib/include/elf_info.h    |  8 +++-
 vmcore-dmesg/vmcore-dmesg.c    | 44 +++++++++++++++++---
 4 files changed, 61 insertions(+), 66 deletions(-)

diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
index eb3a3a37307c..6ad3b0a134b3 100644
--- a/kexec/arch/arm64/kexec-arm64.c
+++ b/kexec/arch/arm64/kexec-arm64.c
@@ -889,7 +889,7 @@ int get_phys_base_from_pt_load(unsigned long *phys_offset)
 		return EFAILED;
 	}
 
-	read_elf_kcore(fd);
+	read_elf(fd);
 
 	for (i = 0; get_pt_load(i,
 		    &phys_start, NULL, &virt_start, NULL);
diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
index 90a3b21662e7..2f254e972721 100644
--- a/util_lib/elf_info.c
+++ b/util_lib/elf_info.c
@@ -20,7 +20,6 @@
 /* The 32bit and 64bit note headers make it clear we don't care */
 typedef Elf32_Nhdr Elf_Nhdr;
 
-static const char *fname;
 static Elf64_Ehdr ehdr;
 static Elf64_Phdr *phdr;
 static int num_pt_loads;
@@ -120,8 +119,8 @@ void read_elf32(int fd)
 
 	ret = pread(fd, &ehdr32, sizeof(ehdr32), 0);
 	if (ret != sizeof(ehdr32)) {
-		fprintf(stderr, "Read of Elf header from %s failed: %s\n",
-			fname, strerror(errno));
+		fprintf(stderr, "Read of Elf header failed in %s: %s\n",
+				__func__, strerror(errno));
 		exit(10);
 	}
 
@@ -193,8 +192,8 @@ void read_elf64(int fd)
 
 	ret = pread(fd, &ehdr64, sizeof(ehdr64), 0);
 	if (ret < 0 || (size_t)ret != sizeof(ehdr)) {
-		fprintf(stderr, "Read of Elf header from %s failed: %s\n",
-			fname, strerror(errno));
+		fprintf(stderr, "Read of Elf header failed in %s: %s\n",
+				__func__, strerror(errno));
 		exit(10);
 	}
 
@@ -531,19 +530,7 @@ static int32_t read_file_s32(int fd, uint64_t addr)
 	return read_file_u32(fd, addr);
 }
 
-static void write_to_stdout(char *buf, unsigned int nr)
-{
-	ssize_t ret;
-
-	ret = write(STDOUT_FILENO, buf, nr);
-	if (ret != nr) {
-		fprintf(stderr, "Failed to write out the dmesg log buffer!:"
-			" %s\n", strerror(errno));
-		exit(54);
-	}
-}
-
-static void dump_dmesg_legacy(int fd)
+void dump_dmesg_legacy(int fd, handler_t handler)
 {
 	uint64_t log_buf, log_buf_offset;
 	unsigned log_end, logged_chars, log_end_wrapped;
@@ -604,7 +591,7 @@ static void dump_dmesg_legacy(int fd)
 	 */
 	logged_chars = log_end < log_buf_len ? log_end : log_buf_len;
 
-	write_to_stdout(buf + (log_buf_len - logged_chars), logged_chars);
+	handler(buf + (log_buf_len - logged_chars), logged_chars);
 }
 
 static inline uint16_t struct_val_u16(char *ptr, unsigned int offset)
@@ -623,7 +610,7 @@ static inline uint64_t struct_val_u64(char *ptr, unsigned int offset)
 }
 
 /* Read headers of log records and dump accordingly */
-static void dump_dmesg_structured(int fd)
+void dump_dmesg_structured(int fd, handler_t handler)
 {
 #define OUT_BUF_SIZE	4096
 	uint64_t log_buf, log_buf_offset, ts_nsec;
@@ -733,7 +720,7 @@ static void dump_dmesg_structured(int fd)
 				out_buf[len++] = c;
 
 			if (len >= OUT_BUF_SIZE - 64) {
-				write_to_stdout(out_buf, len);
+				handler(out_buf, len);
 				len = 0;
 			}
 		}
@@ -753,25 +740,24 @@ static void dump_dmesg_structured(int fd)
 	}
 	free(buf);
 	if (len)
-		write_to_stdout(out_buf, len);
+		handler(out_buf, len);
 }
 
-static void dump_dmesg(int fd)
+int check_log_first_idx_vaddr(void)
 {
 	if (log_first_idx_vaddr)
-		dump_dmesg_structured(fd);
-	else
-		dump_dmesg_legacy(fd);
+		return 1;
+
+	return 0;
 }
 
-static int read_elf(int fd)
+int read_elf(int fd)
 {
 	int ret;
 
 	ret = pread(fd, ehdr.e_ident, EI_NIDENT, 0);
 	if (ret != EI_NIDENT) {
-		fprintf(stderr, "Read of e_ident from %s failed: %s\n",
-			fname, strerror(errno));
+		fprintf(stderr, "Read of e_ident failed: %s\n", strerror(errno));
 		return 3;
 	}
 	if (memcmp(ehdr.e_ident, ELFMAG, SELFMAG) != 0) {
@@ -808,40 +794,13 @@ static int read_elf(int fd)
 	return 0;
 }
 
-int read_elf_vmcore(int fd)
-{
-	int ret;
-
-	ret = read_elf(fd);
-	if (ret > 0) {
-		fprintf(stderr, "Unable to read ELF information"
-			" from vmcore\n");
-		return ret;
-	}
-
-	dump_dmesg(fd);
-
-	return 0;
-}
-
-int read_elf_kcore(int fd)
-{
-	int ret;
-
-	ret = read_elf(fd);
-	if (ret != 0)
-		return ret;
-
-	return 0;
-}
-
 int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
 {
 	int ret;
 
 	*phys_off = UINT64_MAX;
 
-	ret = read_elf_kcore(fd);
+	ret = read_elf(fd);
 	if (!ret) {
 		/* If we have a valid 'PHYS_OFFSET' by now,
 		 * return it to the caller now.
diff --git a/util_lib/include/elf_info.h b/util_lib/include/elf_info.h
index 1a4debd2d4ba..8ee7d3e2763f 100644
--- a/util_lib/include/elf_info.h
+++ b/util_lib/include/elf_info.h
@@ -23,13 +23,17 @@
 #include <inttypes.h>
 #include <ctype.h>
 
+typedef void (*handler_t)(char *msg, unsigned int bytes);
+
 int get_pt_load(int idx,
 	unsigned long long *phys_start,
 	unsigned long long *phys_end,
 	unsigned long long *virt_start,
 	unsigned long long *virt_end);
 int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off);
-int read_elf_kcore(int fd);
-int read_elf_vmcore(int fd);
+int check_log_first_idx_vaddr(void);
+void dump_dmesg_structured(int fd, handler_t handler);
+void dump_dmesg_legacy(int fd, handler_t handler);
+int read_elf(int fd);
 
 #endif /* ELF_INFO_H */
diff --git a/vmcore-dmesg/vmcore-dmesg.c b/vmcore-dmesg/vmcore-dmesg.c
index 7a386b380291..ff0d540c9130 100644
--- a/vmcore-dmesg/vmcore-dmesg.c
+++ b/vmcore-dmesg/vmcore-dmesg.c
@@ -1,21 +1,53 @@
 #include <elf_info.h>
 
-/* The 32bit and 64bit note headers make it clear we don't care */
-typedef Elf32_Nhdr Elf_Nhdr;
+static void write_to_stdout(char *buf, unsigned int nr)
+{
+	ssize_t ret;
+
+	ret = write(STDOUT_FILENO, buf, nr);
+	if (ret != nr) {
+		fprintf(stderr, "Failed to write out the dmesg log buffer!:"
+				" %s\n", strerror(errno));
+		exit(54);
+	}
+}
+
+static void dump_dmesg(int fd, handler_t handler)
+{
+	if (check_log_first_idx_vaddr())
+		dump_dmesg_structured(fd, handler);
+	else
+		dump_dmesg_legacy(fd, handler);
+}
 
-static const char *fname;
+static int read_vmcore_dmesg(int fd)
+{
+        int ret;
+
+        ret = read_elf(fd);
+        if (ret > 0) {
+                fprintf(stderr, "Unable to read ELF information"
+                        " from vmcore\n");
+                return ret;
+        }
+
+        dump_dmesg(fd, write_to_stdout);
+
+        return 0;
+}
 
 int main(int argc, char **argv)
 {
 	ssize_t ret;
 	int fd;
+	const char *fname;
 
 	if (argc != 2) {
 		fprintf(stderr, "usage: %s <kernel core file>\n", argv[0]);
 		return 1;
 	}
-	fname = argv[1];
 
+	fname = argv[1];
 	fd = open(fname, O_RDONLY);
 	if (fd < 0) {
 		fprintf(stderr, "Cannot open %s: %s\n",
@@ -23,8 +55,8 @@ int main(int argc, char **argv)
 		return 2;
 	}
 
-	ret = read_elf_vmcore(fd);
-	
+	ret = read_vmcore_dmesg(fd);
+
 	close(fd);
 
 	return ret;
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
