Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E78C290E2
	for <lists+kexec@lfdr.de>; Fri, 24 May 2019 08:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pi3oKr6wi5samEsnk6xpAjUv+XArWsUSRDc/AaYFYis=; b=Gf0WZtIK26+P0e
	CPoSodH8KV02J4BgyQhr1DTx0QG5doV2PohfvZE9Lo9B54X2gMwpurhEilGrGPfOxiwdg33oOrxNB
	Ufvtw8ESGCVGbMfQjXI6kyIp1hx1IqarMtxixABMddYh6zUm+sEd9XIB3BYqDrDY7t9xGzXxlEWJO
	2CiXMp3XDrvpDrFwtfN9HORD1p3sufGUWYrWAWkz8NewZB3LVzAPIltfveGyFvkCqS+DK+NCZUOIo
	ZVd5Ke8H2GzSFq5tBqTEEb9lo8x6Iy74B/MS8xC/TXHMmDrY4mUovxDMlwBP39GJpBPURmu7VLJSE
	+2djeaYb53z6hryYajCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3dC-00005e-6c; Fri, 24 May 2019 06:24:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3d3-0008Rb-KK
 for kexec@lists.infradead.org; Fri, 24 May 2019 06:24:35 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DEF5C30820E6;
 Fri, 24 May 2019 06:24:32 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-142.pek2.redhat.com
 [10.72.3.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 590B31001F5B;
 Fri, 24 May 2019 06:24:30 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v3 4/4] crashdump/x86: Use new introduce helper for getting
 RSDP
Date: Fri, 24 May 2019 14:23:21 +0800
Message-Id: <20190524062321.24126-5-kasong@redhat.com>
In-Reply-To: <20190524062321.24126-1-kasong@redhat.com>
References: <20190524062321.24126-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 24 May 2019 06:24:32 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232433_830168_EFA93084 
X-CRM114-Status: GOOD (  12.97  )
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

Use the new introduce helper for getting RSDP, this ensures RSDP is
always accessible and avoid code duplication.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 kexec/arch/i386/crashdump-x86.c | 34 +++++++++------------------------
 1 file changed, 9 insertions(+), 25 deletions(-)

diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
index 140f45b..a2aea31 100644
--- a/kexec/arch/i386/crashdump-x86.c
+++ b/kexec/arch/i386/crashdump-x86.c
@@ -787,35 +787,19 @@ static int sysfs_efi_runtime_map_exist(void)
 /* Appends 'acpi_rsdp=' commandline for efi boot crash dump */
 static void cmdline_add_efi(char *cmdline)
 {
-	FILE *fp;
-	int cmdlen, len;
-	char line[MAX_LINE], *s;
-	const char *acpis = " acpi_rsdp=";
+	uint64_t acpi_rsdp;
+	char acpi_rsdp_buf[MAX_LINE];
 
-	fp = fopen("/sys/firmware/efi/systab", "r");
-	if (!fp)
-		return;
+	acpi_rsdp = get_acpi_rsdp();
 
-	while(fgets(line, sizeof(line), fp) != 0) {
-		/* ACPI20= always goes before ACPI= */
-		if ((strstr(line, "ACPI20=")) || (strstr(line, "ACPI="))) {
-		        line[strlen(line) - 1] = '\0';
-			s = strchr(line, '=');
-			s += 1;
-			len = strlen(s) + strlen(acpis);
-			cmdlen = strlen(cmdline) + len;
-			if (cmdlen > (COMMAND_LINE_SIZE - 1))
-				die("Command line overflow\n");
-			strcat(cmdline, acpis);
-			strcat(cmdline, s);
-			dbgprintf("Command line after adding efi\n");
-			dbgprintf("%s\n", cmdline);
+	if (!acpi_rsdp)
+		return;
 
-			break;
-		}
-	}
+	sprintf(acpi_rsdp_buf, " acpi_rsdp=0x%lx", acpi_rsdp);
+	if (strlen(cmdline) + strlen(acpi_rsdp_buf) > (COMMAND_LINE_SIZE - 1))
+		die("Command line overflow\n");
 
-	fclose(fp);
+	strcat(cmdline, acpi_rsdp_buf);
 }
 
 static void get_backup_area(struct kexec_info *info,
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
