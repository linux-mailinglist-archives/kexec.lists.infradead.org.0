Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A27B290E0
	for <lists+kexec@lfdr.de>; Fri, 24 May 2019 08:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIr2xB9GvGPVrJ+HauIUeakB6jeURwQbhr4kOLH57fU=; b=Z3z3UU7sB/mFOF
	RfHSLi8syTTidD4Ths/ccBqOHM5KlanbNaFtDV9yGfTRBypAgaOh1a2ZKDXze9gakicyReh2MTtuH
	+rKLpibEX+ldOitjO5GUFaCG4xKg2/cRUGO0O8nPzH4JS+syuttUMi3xFbSAUHE5dWzNe492UgcMN
	hbKbQkkMGURSoQKP9rv99fpIqXA/i/28aCjAMvPSJFSo3wAgK88V9nMrJhi08cLq0xXVv01ygqkhI
	AGG5KbUXqvTsxHA+QJi4Dp1jV8CzQUQ/l+T6yKr/3qRW65G3MN728tnzLnMxYQvgRRCZnmZqtTLAf
	qq04OhYZ0jsANyCdppKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3d4-0008Ra-V2; Fri, 24 May 2019 06:24:35 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3cx-0008OJ-87
 for kexec@lists.infradead.org; Fri, 24 May 2019 06:24:29 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 99E63C04FFF9;
 Fri, 24 May 2019 06:24:26 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-142.pek2.redhat.com
 [10.72.3.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 14BAC1001E6F;
 Fri, 24 May 2019 06:24:23 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v3 2/4] x86: Introduce helpers for getting RSDP address
Date: Fri, 24 May 2019 14:23:19 +0800
Message-Id: <20190524062321.24126-3-kasong@redhat.com>
In-Reply-To: <20190524062321.24126-1-kasong@redhat.com>
References: <20190524062321.24126-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 24 May 2019 06:24:26 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232427_536270_557CFA5F 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Simon Horman <horms@verge.net.au>, Dave Young <dyoung@redhat.com>,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>,
 Kairui Song <kasong@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On x86 RSDP is fundamental for booting the machine. When second kernel
is incapable of parsing the RSDP address (eg. kexec next kernel on an EFI
system with EFI service disabled), kexec should prepare the RSDP address
for second kernel.

Introduce helpers for getting RSDP from multiple sources, including boot
params and EFI firmware.

For legacy BIOS interface, there is no better way to find the RSDP address
rather than scanning the memory region and search for it, and this will
always be done by the kernel as a fallback, so this is no need to try to
get the RSDP address for that case.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 kexec/arch/i386/kexec-x86-common.c | 43 ++++++++++++++++++++++++++++++
 kexec/arch/i386/kexec-x86.h        |  1 +
 kexec/arch/i386/x86-linux-setup.c  |  3 +--
 kexec/arch/i386/x86-linux-setup.h  |  1 +
 4 files changed, 46 insertions(+), 2 deletions(-)

diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
index de99758..5c55ec8 100644
--- a/kexec/arch/i386/kexec-x86-common.c
+++ b/kexec/arch/i386/kexec-x86-common.c
@@ -39,6 +39,7 @@
 #include "../../firmware_memmap.h"
 #include "../../crashdump.h"
 #include "kexec-x86.h"
+#include "x86-linux-setup.h"
 #include "../../kexec-xen.h"
 
 /* Used below but not present in (older?) xenctrl.h */
@@ -392,4 +393,46 @@ int get_memory_ranges(struct memory_range **range, int *ranges,
 	return ret;
 }
 
+static uint64_t bootparam_get_acpi_rsdp(void) {
+	uint64_t acpi_rsdp = 0;
+	off_t offset = offsetof(struct x86_linux_param_header, acpi_rsdp_addr);
 
+	if (get_bootparam(&acpi_rsdp, offset, sizeof(acpi_rsdp)))
+		return 0;
+
+	return acpi_rsdp;
+}
+
+static uint64_t efi_get_acpi_rsdp(void) {
+	FILE *fp;
+	char line[MAX_LINE], *s;
+	uint64_t acpi_rsdp = 0;
+
+	fp = fopen("/sys/firmware/efi/systab", "r");
+	if (!fp)
+		return acpi_rsdp;
+
+	while(fgets(line, sizeof(line), fp) != 0) {
+		/* ACPI20= always goes before ACPI= */
+		if ((strstr(line, "ACPI20=")) || (strstr(line, "ACPI="))) {
+			s = strchr(line, '=') + 1;
+			sscanf(s, "0x%lx", &acpi_rsdp);
+			break;
+		}
+	}
+	fclose(fp);
+
+	return acpi_rsdp;
+}
+
+uint64_t get_acpi_rsdp(void)
+{
+	uint64_t acpi_rsdp = 0;
+
+	acpi_rsdp = bootparam_get_acpi_rsdp();
+
+	if (!acpi_rsdp)
+		acpi_rsdp = efi_get_acpi_rsdp();
+
+	return acpi_rsdp;
+}
diff --git a/kexec/arch/i386/kexec-x86.h b/kexec/arch/i386/kexec-x86.h
index c2bcd37..1b58c3b 100644
--- a/kexec/arch/i386/kexec-x86.h
+++ b/kexec/arch/i386/kexec-x86.h
@@ -86,4 +86,5 @@ int nbi_load(int argc, char **argv, const char *buf, off_t len,
 void nbi_usage(void);
 
 extern unsigned xen_e820_to_kexec_type(uint32_t type);
+extern uint64_t get_acpi_rsdp(void);
 #endif /* KEXEC_X86_H */
diff --git a/kexec/arch/i386/x86-linux-setup.c b/kexec/arch/i386/x86-linux-setup.c
index 8fad115..5ca7c25 100644
--- a/kexec/arch/i386/x86-linux-setup.c
+++ b/kexec/arch/i386/x86-linux-setup.c
@@ -123,7 +123,6 @@ void setup_linux_bootloader_parameters_high(
 	cmdline_ptr[cmdline_len - 1] = '\0';
 }
 
-static int get_bootparam(void *buf, off_t offset, size_t size);
 static int setup_linux_vesafb(struct x86_linux_param_header *real_mode)
 {
 	struct fb_fix_screeninfo fix;
@@ -452,7 +451,7 @@ char *find_mnt_by_fsname(char *fsname)
 	return mntdir;
 }
 
-static int get_bootparam(void *buf, off_t offset, size_t size)
+int get_bootparam(void *buf, off_t offset, size_t size)
 {
 	int data_file;
 	char *debugfs_mnt, *sysfs_mnt;
diff --git a/kexec/arch/i386/x86-linux-setup.h b/kexec/arch/i386/x86-linux-setup.h
index f5d23d3..0c651e5 100644
--- a/kexec/arch/i386/x86-linux-setup.h
+++ b/kexec/arch/i386/x86-linux-setup.h
@@ -21,6 +21,7 @@ static inline void setup_linux_bootloader_parameters(
 }
 void setup_linux_system_parameters(struct kexec_info *info,
 	struct x86_linux_param_header *real_mode);
+int get_bootparam(void *buf, off_t offset, size_t size);
 
 
 #define SETUP_BASE    0x90000
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
