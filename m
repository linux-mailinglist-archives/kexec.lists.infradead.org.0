Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CD69AEB1
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 14:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MOL43/YkvRUaEUct3wC4q2cNlJ9bvuIxDfaD+G3IdPw=; b=rvMIjaQhlipNSfR0uiqGQQXKyC
	Sh31V6ndeNomK85p0vx0w+8S/h1VOsPWBUolVgk9jj12sxxzzVFsTiPBMFv3zBpa/kRULkaclIcnE
	7w4K6J97yN42WWY2QAYXVR+8mvIauEpV3R1JfCXG7hWGBkWxC+kgzYmc5Cuc1XUX4lbHRpyOPvYd0
	iqKv4zo3H4N7H0honoJP10dxZ04Oakpz8+KcyhxgCNvkvmuyHXWzxbyHXuvunO6WhkhNCgHIR38gQ
	vwG20CHaNU6zIUTGbAQJ22cMDrWWbuIoEQQEt7ALGy8U6PW/+tJ2jPDj+mL0AVuKACdEVlNYLL9FI
	8US2UsKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Kp-0007sZ-Lw; Fri, 23 Aug 2019 12:06:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Km-0007rZ-Ez
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 12:06:25 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3CB628980FF;
 Fri, 23 Aug 2019 12:06:24 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-117.pek2.redhat.com
 [10.72.12.117])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7161F61785;
 Fri, 23 Aug 2019 12:06:16 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 3/4 v2] Cleanup: move it back from util_lib/elf_info.c
Date: Fri, 23 Aug 2019 20:05:38 +0800
Message-Id: <20190823120539.18330-4-lijiang@redhat.com>
In-Reply-To: <20190823120539.18330-1-lijiang@redhat.com>
References: <20190823120539.18330-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Fri, 23 Aug 2019 12:06:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050624_536660_5616C742 
X-CRM114-Status: GOOD (  15.81  )
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

In addition, that will also help to limit the size of vmcore-dmesg.txt
in vmcore-dmesg.c instead of elf_info.c.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 util_lib/elf_info.c         | 48 +++++++++----------------------------
 util_lib/include/elf_info.h |  2 +-
 vmcore-dmesg/vmcore-dmesg.c | 30 ++++++++++++++++++++++-
 3 files changed, 41 insertions(+), 39 deletions(-)

diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
index 5d0efaafab53..2bce5cb1713c 100644
--- a/util_lib/elf_info.c
+++ b/util_lib/elf_info.c
@@ -531,19 +531,7 @@ static int32_t read_file_s32(int fd, uint64_t addr)
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
+static void dump_dmesg_legacy(int fd, void (*handler)(char*, unsigned int))
 {
 	uint64_t log_buf, log_buf_offset;
 	unsigned log_end, logged_chars, log_end_wrapped;
@@ -604,7 +592,8 @@ static void dump_dmesg_legacy(int fd)
 	 */
 	logged_chars = log_end < log_buf_len ? log_end : log_buf_len;
 
-	write_to_stdout(buf + (log_buf_len - logged_chars), logged_chars);
+	if (handler)
+		handler(buf + (log_buf_len - logged_chars), logged_chars);
 }
 
 static inline uint16_t struct_val_u16(char *ptr, unsigned int offset)
@@ -623,7 +612,7 @@ static inline uint64_t struct_val_u64(char *ptr, unsigned int offset)
 }
 
 /* Read headers of log records and dump accordingly */
-static void dump_dmesg_structured(int fd)
+static void dump_dmesg_structured(int fd, void (*handler)(char*, unsigned int))
 {
 #define OUT_BUF_SIZE	4096
 	uint64_t log_buf, log_buf_offset, ts_nsec;
@@ -733,7 +722,8 @@ static void dump_dmesg_structured(int fd)
 				out_buf[len++] = c;
 
 			if (len >= OUT_BUF_SIZE - 64) {
-				write_to_stdout(out_buf, len);
+				if (handler)
+					handler(out_buf, len);
 				len = 0;
 			}
 		}
@@ -752,16 +742,16 @@ static void dump_dmesg_structured(int fd)
 			current_idx += loglen;
 	}
 	free(buf);
-	if (len)
-		write_to_stdout(out_buf, len);
+	if (len && handler)
+		handler(out_buf, len);
 }
 
-static void dump_dmesg(int fd)
+void dump_dmesg(int fd, void (*handler)(char*, unsigned int))
 {
 	if (log_first_idx_vaddr)
-		dump_dmesg_structured(fd);
+		dump_dmesg_structured(fd, handler);
 	else
-		dump_dmesg_legacy(fd);
+		dump_dmesg_legacy(fd, handler);
 }
 
 int read_elf(int fd)
@@ -808,22 +798,6 @@ int read_elf(int fd)
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
 int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
 {
 	int ret;
diff --git a/util_lib/include/elf_info.h b/util_lib/include/elf_info.h
index c328a1b0ecf2..4bc9279ba603 100644
--- a/util_lib/include/elf_info.h
+++ b/util_lib/include/elf_info.h
@@ -30,6 +30,6 @@ int get_pt_load(int idx,
 	unsigned long long *virt_end);
 int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off);
 int read_elf(int fd);
-int read_elf_vmcore(int fd);
+void dump_dmesg(int fd, void (*handler)(char*, unsigned int));
 
 #endif /* ELF_INFO_H */
diff --git a/vmcore-dmesg/vmcore-dmesg.c b/vmcore-dmesg/vmcore-dmesg.c
index bebc348a657e..fe7df8ec372c 100644
--- a/vmcore-dmesg/vmcore-dmesg.c
+++ b/vmcore-dmesg/vmcore-dmesg.c
@@ -5,6 +5,34 @@ typedef Elf32_Nhdr Elf_Nhdr;
 
 extern const char *fname;
 
+static void write_to_stdout(char *buf, unsigned int nr)
+{
+	ssize_t ret;
+
+	ret = write(STDOUT_FILENO, buf, nr);
+	if (ret != nr) {
+		fprintf(stderr, "Failed to write out the dmesg log buffer!:"
+			" %s\n", strerror(errno));
+		exit(54);
+	}
+}
+
+static int read_vmcore_dmesg(int fd, void (*handler)(char*, unsigned int))
+{
+	int ret;
+
+	ret = read_elf(fd);
+	if (ret > 0) {
+		fprintf(stderr, "Unable to read ELF information"
+			" from vmcore\n");
+		return ret;
+	}
+
+	dump_dmesg(fd, handler);
+
+	return 0;
+}
+
 int main(int argc, char **argv)
 {
 	ssize_t ret;
@@ -23,7 +51,7 @@ int main(int argc, char **argv)
 		return 2;
 	}
 
-	ret = read_elf_vmcore(fd);
+	ret = read_vmcore_dmesg(fd, write_to_stdout);
 	
 	close(fd);
 
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
