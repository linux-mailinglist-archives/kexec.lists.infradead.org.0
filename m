Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321B4A302B
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 08:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ONCI4AONYBXIfSb/eO4AQE1N9uSCslH7CHeIYRU48HY=; b=CfGZBX2lfdE41W
	7k7eT6uF2ITs1SfLFGqNNJ1ON7lhX8BHBhFnUD/yyxiQtY8/TlFg1xxwrhaiizZJ71nUYbvEi90EF
	Ju7DQBbE213t0d5IRciTaLTzaWgUr1fns2qzuOLOgbB3f6DtJDOQ2talDLQtR9KtwD4HtBoDuoUV0
	hWtXMoEdMYx0i1ObqqpSDLQ8KXOCdQaPHBjXrEzjgorjAaRPeFWEYBs5+lg31JZdS0SDpGwMu2g9F
	BC/oizfy1+fzOCS9FRFoAGayjCSEmVU17nHtI40JtTOBGIn4aWSQIpZHRzgqe4OHxLPzRSVIy9k/4
	IuT+wyzK0SofWF/Wp1/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aab-0001fp-Dn; Fri, 30 Aug 2019 06:40:53 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aaV-0001et-4v
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 06:40:48 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 61E7CFDE62EA47F40FAF
 for <kexec@lists.infradead.org>; Fri, 30 Aug 2019 14:40:37 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Fri, 30 Aug 2019 14:40:31 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <horms@verge.net.au>, <kexec@lists.infradead.org>
Subject: [PATCH v2] arm64: kdump: add another DT property to crash dump
 kernel's dtb
Date: Fri, 30 Aug 2019 14:43:05 +0800
Message-ID: <20190830064305.36356-1-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_234047_358647_46D0ED92 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chen Zhou <chenzhou10@huawei.com>, guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Currently, there is only one crash kernel region on arm64, we add
another region "crash kernel low" used for crash dump kernel devices.

To do this, we add DT property "linux,low-memory-range" to crash
dump kernel's dtb to pass the low region.

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
For "support reserving crashkernel above 4G on arm64 kdump", we need to
modify the kexec-tools.

I will post patch series "[PATCH v6 0/4] support reserving crashkernel
above 4G on arm64 kdump". This version is much different from the previous
one and the kexec-tools part neeed to be modified.

Changes since [v1]:
- Add another DT property "linux,low-memory-range" to crash dump kernel's
dtb to pass the low region instead of reusing "linux,usable-memory-range".

[1]: http://lists.infradead.org/pipermail/kexec/2019-April/022792.html
---
 kexec/arch/arm64/crashdump-arm64.c | 29 +++++++++++++++++++++++++++--
 kexec/arch/arm64/crashdump-arm64.h |  2 ++
 kexec/arch/arm64/iomem.h           |  1 +
 kexec/arch/arm64/kexec-arm64.c     | 27 +++++++++++++++++++++++++++
 4 files changed, 57 insertions(+), 2 deletions(-)

diff --git a/kexec/arch/arm64/crashdump-arm64.c b/kexec/arch/arm64/crashdump-arm64.c
index 4fd7aa8..a8be036 100644
--- a/kexec/arch/arm64/crashdump-arm64.c
+++ b/kexec/arch/arm64/crashdump-arm64.c
@@ -39,6 +39,14 @@ struct memory_ranges usablemem_rgns = {
 	.ranges = &crash_reserved_mem,
 };
 
+/* memory range reserved for crashkernel low, optional */
+struct memory_range crash_reserved_low_mem;
+struct memory_ranges lowmem_rgns = {
+	.size = 0,
+	.max_size = 1,
+	.ranges = &crash_reserved_low_mem,
+};
+
 struct memory_range elfcorehdr_mem;
 
 static struct crash_elf_info elf_info = {
@@ -89,7 +97,10 @@ static int iomem_range_callback(void *UNUSED(data), int UNUSED(nr),
 				char *str, unsigned long long base,
 				unsigned long long length)
 {
-	if (strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)) == 0)
+	if (strncmp(str, CRASH_KERNEL_LOW, strlen(CRASH_KERNEL_LOW)) == 0)
+		return mem_regions_add(&lowmem_rgns,
+				base, length, RANGE_RAM);
+	else if (strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)) == 0)
 		return mem_regions_add(&usablemem_rgns,
 				       base, length, RANGE_RAM);
 	else if (strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)) == 0)
@@ -129,7 +140,7 @@ static int crash_get_memory_ranges(void)
 	if (!usablemem_rgns.size)
 		kexec_iomem_for_each_line(NULL, iomem_range_callback, NULL);
 
-	/* allow only a single region for crash dump kernel */
+	/* allow only a single usablemem region for crash dump kernel */
 	if (usablemem_rgns.size != 1)
 		return -EINVAL;
 
@@ -141,6 +152,20 @@ static int crash_get_memory_ranges(void)
 		return -ENOMEM;
 	}
 
+	/* lowmem region for crash dump kernel is optional, at most one region */
+	if (lowmem_rgns.size > 1)
+		return -EINVAL;
+
+	if (lowmem_rgns.size) {
+		dbgprint_mem_range("Reserved low memory range", &crash_reserved_low_mem,
+				1);
+
+		if (mem_regions_exclude(&system_memory_rgns, &crash_reserved_low_mem)) {
+			fprintf(stderr,
+					"Error: Number of crash memory ranges excedeed the max limit\n");
+			return -ENOMEM;
+		}
+	}
 	/*
 	 * Make sure that the memory regions are sorted.
 	 */
diff --git a/kexec/arch/arm64/crashdump-arm64.h b/kexec/arch/arm64/crashdump-arm64.h
index 880b83a..f185534 100644
--- a/kexec/arch/arm64/crashdump-arm64.h
+++ b/kexec/arch/arm64/crashdump-arm64.h
@@ -18,6 +18,8 @@
 
 extern struct memory_ranges usablemem_rgns;
 extern struct memory_range crash_reserved_mem;
+extern struct memory_ranges lowmem_rgns;
+extern struct memory_range crash_reserved_low_mem;
 extern struct memory_range elfcorehdr_mem;
 
 extern int load_crashdump_segments(struct kexec_info *info);
diff --git a/kexec/arch/arm64/iomem.h b/kexec/arch/arm64/iomem.h
index d4864bb..45d7953 100644
--- a/kexec/arch/arm64/iomem.h
+++ b/kexec/arch/arm64/iomem.h
@@ -4,6 +4,7 @@
 #define SYSTEM_RAM		"System RAM\n"
 #define KERNEL_CODE		"Kernel code\n"
 #define KERNEL_DATA		"Kernel data\n"
+#define CRASH_KERNEL_LOW	"Crash kernel (low)\n"
 #define CRASH_KERNEL		"Crash kernel\n"
 #define IOMEM_RESERVED		"reserved\n"
 
diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
index eb3a3a3..dddec23 100644
--- a/kexec/arch/arm64/kexec-arm64.c
+++ b/kexec/arch/arm64/kexec-arm64.c
@@ -38,6 +38,7 @@
 #define PROP_SIZE_CELLS "#size-cells"
 #define PROP_ELFCOREHDR "linux,elfcorehdr"
 #define PROP_USABLE_MEM_RANGE "linux,usable-memory-range"
+#define PROP_LOW_MEM_RANGE "linux,low-memory-range"
 
 #define PAGE_OFFSET_36 ((0xffffffffffffffffUL) << 36)
 #define PAGE_OFFSET_39 ((0xffffffffffffffffUL) << 39)
@@ -466,12 +467,24 @@ static int setup_2nd_dtb(struct dtb *dtb, char *command_line, int on_crash)
 		goto on_error;
 	}
 
+	if (lowmem_rgns.size) {
+		if (!cells_size_fitted(address_cells, size_cells,
+					&crash_reserved_low_mem)) {
+			fprintf(stderr, "kexec: low memory range doesn't fit cells-size.\n");
+			result = -EINVAL;
+			goto on_error;
+		}
+	}
+
 	/* duplicate dt blob */
 	range_len = sizeof(uint32_t) * (address_cells + size_cells);
 	new_size = fdt_totalsize(dtb->buf)
 		+ fdt_prop_len(PROP_ELFCOREHDR, range_len)
 		+ fdt_prop_len(PROP_USABLE_MEM_RANGE, range_len);
 
+	if (lowmem_rgns.size)
+		new_size += fdt_prop_len(PROP_LOW_MEM_RANGE, range_len);
+
 	new_buf = xmalloc(new_size);
 	result = fdt_open_into(dtb->buf, new_buf, new_size);
 	if (result) {
@@ -575,6 +588,20 @@ static int setup_2nd_dtb(struct dtb *dtb, char *command_line, int on_crash)
 			result = -EINVAL;
 			goto on_error;
 		}
+
+		/* add linux,low-memory-range */
+		if (lowmem_rgns.size) {
+			nodeoffset = fdt_path_offset(new_buf, "/chosen");
+			result = fdt_setprop_range(new_buf, nodeoffset,
+					PROP_LOW_MEM_RANGE, &crash_reserved_low_mem,
+					address_cells, size_cells);
+			if (result) {
+				dbgprintf("%s: fdt_setprop failed: %s\n", __func__,
+						fdt_strerror(result));
+				result = -EINVAL;
+				goto on_error;
+			}
+		}
 	}
 
 	fdt_pack(new_buf);
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
