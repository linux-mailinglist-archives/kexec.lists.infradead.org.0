Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB872DA31
	for <lists+kexec@lfdr.de>; Mon, 29 Apr 2019 02:23:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mW+sW6SCRFPRJDWaf1nETmGGErYy/sRqDQkXZpF5uSA=; b=tKk0FpK3UajpLA
	GhyrBroLnSxvAwQKJKsfJc5KaEib4HdTi5VCThEXxLdFFXdBQdyZ7dW7c6uo3AyraBuLV2pCZDkhN
	Wi4zzg1rPbxqwR7nkgl7IA7zVGdZxSlQCm5C0D0ntkNJleHimozLqUMQSahf/60t8LgOVd4FpruIk
	hcIFzvW29KyiXTOb1iSi+sXTj+b09PeOWEUu+1HHFb+jc07IEz2p5jtF3d7N2/Tau1Pv6ADs3puCz
	CnA7GWJtmQYK2h7g48G2rOQM2lamfDPj0XFRZuTtPx374jHZHX3L6bZlvjvSMmIuLmcvd6xOJBBJ3
	Tqvu/Gt9kwngCWiaFiRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKu4u-0007sm-St; Mon, 29 Apr 2019 00:23:28 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKu4q-0007sL-PS
 for kexec@lists.infradead.org; Mon, 29 Apr 2019 00:23:26 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 912CC3098544;
 Mon, 29 Apr 2019 00:23:23 +0000 (UTC)
Received: from localhost (ovpn-12-38.pek2.redhat.com [10.72.12.38])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 9EC6917D08;
 Mon, 29 Apr 2019 00:23:20 +0000 (UTC)
Date: Mon, 29 Apr 2019 08:23:18 +0800
From: Baoquan He <bhe@redhat.com>
To: bp@alien8.de, j-nomura@ce.jp.nec.com, kasong@redhat.com, dyoung@redhat.com
Subject: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab and
 ACPI tables
Message-ID: <20190429002318.GA25400@MiWiFi-R3L-srv>
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190424092944.30481-2-bhe@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Mon, 29 Apr 2019 00:23:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_172324_867688_B9B170E1 
X-CRM114-Status: GOOD (  16.44  )
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
Cc: x86@kernel.org, fanc.fnst@cn.fujitsu.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, hpa@zytor.com, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Kairui Song <kasong@redhat.com>

The current code only builds identity mapping for physical memory during
kexec-type loading. The regions reserved by firmware are not covered.
In the later patch, the boot decompressing code of kexec-ed kernel tries
to access EFI systab and ACPI tables, lacking identity mapping for them
will cause error and reset system to firmware.

This error doesn't happen on all systems. Because kexec enables gbpages
to build identity mapping, the EFI systab and ACPI tables could have been
covered if they share the same 1 GB area with physical memory. To make
sure, we should map them always.

So here add mapping for them.

Signed-off-by: Kairui Song <kasong@redhat.com>
Signed-off-by: Baoquan He <bhe@redhat.com>
---
Changelog:
v5->v6:
  Tune code, comments and patch log Per Boris's comments.
v5:
  This patch was newly added into v5.

 arch/x86/kernel/machine_kexec_64.c | 79 ++++++++++++++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
index ceba408ea982..0af01490ee2d 100644
--- a/arch/x86/kernel/machine_kexec_64.c
+++ b/arch/x86/kernel/machine_kexec_64.c
@@ -18,6 +18,7 @@
 #include <linux/io.h>
 #include <linux/suspend.h>
 #include <linux/vmalloc.h>
+#include <linux/efi.h>
 
 #include <asm/init.h>
 #include <asm/pgtable.h>
@@ -29,6 +30,47 @@
 #include <asm/setup.h>
 #include <asm/set_memory.h>
 
+#ifdef CONFIG_ACPI
+/*
+ * Used while adding mapping for ACPI tables.
+ * Can be reused when other iomem regions need be mapped
+ */
+struct init_pgtable_data {
+	struct x86_mapping_info *info;
+	pgd_t *level4p;
+};
+
+static int mem_region_callback(struct resource *res, void *arg)
+{
+	struct init_pgtable_data *data = arg;
+	unsigned long mstart, mend;
+
+	mstart = res->start;
+	mend = mstart + resource_size(res) - 1;
+
+	return kernel_ident_mapping_init(data->info, data->level4p, mstart, mend);
+}
+
+static int
+map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p)
+{
+	unsigned long flags = IORESOURCE_MEM | IORESOURCE_BUSY;
+	struct init_pgtable_data data;
+
+	data.info = info;
+	data.level4p = level4p;
+	flags = IORESOURCE_MEM | IORESOURCE_BUSY;
+	return walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
+				   &data, mem_region_callback);
+}
+#else
+static int init_acpi_pgtable(struct x86_mapping_info *info,
+				   pgd_t *level4p)
+{
+	return 0;
+}
+#endif
+
 #ifdef CONFIG_KEXEC_FILE
 const struct kexec_file_ops * const kexec_file_loaders[] = {
 		&kexec_bzImage64_ops,
@@ -36,6 +78,31 @@ const struct kexec_file_ops * const kexec_file_loaders[] = {
 };
 #endif
 
+static int
+map_efi_systab(struct x86_mapping_info *info, pgd_t *level4p)
+{
+#ifdef CONFIG_EFI
+	unsigned long mstart, mend;
+
+	if (!efi_enabled(EFI_BOOT))
+		return 0;
+
+	mstart = (boot_params.efi_info.efi_systab |
+			((u64)boot_params.efi_info.efi_systab_hi<<32));
+
+	if (efi_enabled(EFI_64BIT))
+		mend = mstart + sizeof(efi_system_table_64_t);
+	else
+		mend = mstart + sizeof(efi_system_table_32_t);
+
+	if (!mstart)
+		return 0;
+
+	return kernel_ident_mapping_init(info, level4p, mstart, mend);
+#endif
+	return 0;
+}
+
 static void free_transition_pgtable(struct kimage *image)
 {
 	free_page((unsigned long)image->arch.p4d);
@@ -159,6 +226,18 @@ static int init_pgtable(struct kimage *image, unsigned long start_pgtable)
 			return result;
 	}
 
+	/*
+	 * Prepare EFI systab and ACPI table mapping for kexec kernel,
+	 * since they are not covered by pfn_mapped.
+	 */
+	result = map_efi_systab(&info, level4p);
+	if (result)
+		return result;
+
+	result = map_acpi_tables(&info, level4p);
+	if (result)
+		return result;
+
 	return init_transition_pgtable(image, level4p);
 }
 
-- 
2.17.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
