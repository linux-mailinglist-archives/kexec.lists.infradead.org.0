Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A6D129836
	for <lists+kexec@lfdr.de>; Mon, 23 Dec 2019 16:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xBpS2+lPknqGCiGeImMhK0R67KFJSqS2LPowEKchR8E=; b=AE479s2jXI63j4
	G5kN4GugdIvp3V0SsjPbV2wGSV/JWrI3qMA+dVq7NI8n2K54GkOubUYSCIATH5xp3kTHpPaitWtj9
	U2Te70lTqndeT6wuVY3UCqidCF9lUbWTiGr+GOGNOkXl1BfB0YUdm9UnpONYz0xcR0Wz0a/0HaLJx
	F6vi9ldRyj/Gb5kCCnh5sC0ZeSmGY6YpjRZBNcU1tjPObepJIB1ZVIvFLKOasE7Yr65bvHmWNDt94
	O9/+7cpNwZoAM5Vb4DQt6dzaUYTxJlikLnoRIUQhxiGSPTTwWEIjdQJG4uvR5C61zwsR70nCO5soF
	Sm8N2ht6uo+6Evfb+cyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPd6-0007Zx-Vy; Mon, 23 Dec 2019 15:28:21 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPcL-0006yW-LF; Mon, 23 Dec 2019 15:27:36 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E232833A261A59EE3E5A;
 Mon, 23 Dec 2019 23:27:24 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Mon, 23 Dec 2019 23:27:18 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <james.morse@arm.com>, <dyoung@redhat.com>,
 <bhsharma@redhat.com>
Subject: [PATCH v7 3/4] arm64: kdump: add memory for devices by DT property,
 low-memory-range
Date: Mon, 23 Dec 2019 23:23:48 +0800
Message-ID: <20191223152349.180172-4-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191223152349.180172-1-chenzhou10@huawei.com>
References: <20191223152349.180172-1-chenzhou10@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_072734_274429_0EAF4789 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: xiexiuqi@huawei.com, chenzhou10@huawei.com, linux-doc@vger.kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, horms@verge.net.au,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

If we want to reserve crashkernel above 4G, we could use parameters
"crashkernel=X crashkernel=Y,low", in this case, specified size low
memory is reserved for crash dump kernel devices and never mapped by
the first kernel. This memory range is advertised to crash dump kernel
via DT property under /chosen,
	linux,low-memory-range=<BASE SIZE>

Crash dump kernel reads this property at boot time and call
memblock_add() after memblock_cap_memory_range() has been called.

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 arch/arm64/mm/init.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index 0d7afd5..1c4a6ad 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -322,6 +322,26 @@ static int __init early_mem(char *p)
 }
 early_param("mem", early_mem);
 
+static int __init early_init_dt_scan_lowmem(unsigned long node,
+		const char *uname, int depth, void *data)
+{
+	struct memblock_region *lowmem = data;
+	const __be32 *reg;
+	int len;
+
+	if (depth != 1 || strcmp(uname, "chosen") != 0)
+		return 0;
+
+	reg = of_get_flat_dt_prop(node, "linux,low-memory-range", &len);
+	if (!reg || (len < (dt_root_addr_cells + dt_root_size_cells)))
+		return 1;
+
+	lowmem->base = dt_mem_next_cell(dt_root_addr_cells, &reg);
+	lowmem->size = dt_mem_next_cell(dt_root_size_cells, &reg);
+
+	return 1;
+}
+
 static int __init early_init_dt_scan_usablemem(unsigned long node,
 		const char *uname, int depth, void *data)
 {
@@ -352,13 +372,21 @@ static void __init fdt_enforce_memory_region(void)
 
 	if (reg.size)
 		memblock_cap_memory_range(reg.base, reg.size);
+
+	of_scan_flat_dt(early_init_dt_scan_lowmem, &reg);
+
+	if (reg.size)
+		memblock_add(reg.base, reg.size);
 }
 
 void __init arm64_memblock_init(void)
 {
 	const s64 linear_region_size = BIT(vabits_actual - 1);
 
-	/* Handle linux,usable-memory-range property */
+	/*
+	 * Handle linux,usable-memory-range and linux,low-memory-range
+	 * properties.
+	 */
 	fdt_enforce_memory_region();
 
 	/* Remove memory above our supported physical address size */
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
