Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FB462AE1
	for <lists+kexec@lfdr.de>; Mon,  8 Jul 2019 23:17:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVyUwPg6MVwcrp/S8bgFUtwWfWpjJ8HGuHYaupQ3Yh8=; b=YMXFEzH9VNJpTk
	HptnwoAt/DP6bjkbWsBtbXw7jzadT1Vf/h1oR98m7p0Tn/7Ggg8+8pcOlAQehA1tiadO6goGJCgLl
	rDv3oEXZx43kcuVYzP7CCr4zgTIXaIIy31+i/24wK1YGAs6kf9yI6oRjzHBa39A+4aSUy0Upbx68w
	/gHnMBRaf6q5j0iiita1RLs5NqBgkw0jorRzbl1slcnL1p+Bg/L96ogMDPSKGSvG2OtjPMMSqvYsx
	RR5jd0AHGBnuoTyHC8A09QtVzyhwPtCeLpiB4aJleNrXjM7ZM9B9o6iO1g/8Nf3x/6TTwbXDL8vVQ
	aJcKhjVv2MtenwSqe0Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkb18-0003CS-Fk; Mon, 08 Jul 2019 21:17:46 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkaz4-0001TI-Ex
 for kexec@lists.infradead.org; Mon, 08 Jul 2019 21:15:41 +0000
Received: by mail-qk1-x743.google.com with SMTP id v22so14444936qkj.8
 for <kexec@lists.infradead.org>; Mon, 08 Jul 2019 14:15:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=AiVVzsQgxExtlPdXUQO7u3KIlgj9fJXNjXAFaENAUkA=;
 b=hBOFe5Ugx8wiuHA/gjntnci5gyCoKGx2KeUGJzzIexTkV/nSc9m1wu1T3dPF3WEYlY
 lwMmi6wk/x1rt0bVkNJWpCL1+QH1ucrG89pfU/Isl/kUcpBebVFOWEvxPALC3iThVuqG
 ADWFeylsNMjjNctZNfFC/tsxiYCM89r45RVa2JJrS5RMWEiTiWiGUfh2oiNXyupiAH3g
 cE6WFbGJY3c5kcFPTx0V9QTiI0bipkfLQlrw6OCsuks9o6h6EGGcKxGMbiuZHxlMWMi1
 kbLgzBstYWq+jXa6BHc3h9N+ljlc8rZaZy3kFfH+zMMRFV46PunVk3YJusKsL4zZQHKQ
 hIAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AiVVzsQgxExtlPdXUQO7u3KIlgj9fJXNjXAFaENAUkA=;
 b=FsISeBQ77kvcu2CL62VTCxBfcD2qNuaVd3j5qqSgm6jFE1AjkQhOmpFRMnrloxyWl3
 fO9nVHfPgT5X97+h09yuc49PmZ6Jiqxnqbpj97aL/57asiwM8Uat4u9pkpW/rVfvh/l3
 HMMTelOsdjcRjhdL6ujf517UAIJIg4JCMJtSXyq48D99d8E93SzaQ4zV6lN+KczX71iY
 m6hdk06Sw3bmxl5BpeR42IkI6GaRpKmC6Uss/s4+zKksSMX/ba68vEWBPKJLGPQ2Vuv6
 WGlycr7YkVnJjzHP113IBTe6T7FDK9Mwg+qWt399XnOM+NCnsqw5k+LQdJPxsht/On0S
 xcNg==
X-Gm-Message-State: APjAAAX4lZUoAzOA5eEbfsqFW/7IONbN5cWaQbmoxafzmhc0ecsXV2J3
 e6RorloT5/408p7V3XOYeL1shQ==
X-Google-Smtp-Source: APXvYqyHLZkbmfQTKjXh1EEa/IoaB1YEoR8Z3fSF2HU2Rzl8oz3tGEYtOcg6+Dl43IZZhoEp3B/fZg==
X-Received: by 2002:a37:be41:: with SMTP id o62mr15906517qkf.356.1562620537487; 
 Mon, 08 Jul 2019 14:15:37 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id b67sm8335620qkd.82.2019.07.08.14.15.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 14:15:36 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v1 5/5] arm64, kexec: reserve kexeckernel region
Date: Mon,  8 Jul 2019 17:15:28 -0400
Message-Id: <20190708211528.12392-6-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708211528.12392-1-pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141538_675673_20456DE8 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

kexeckernel= is used to reserve memory for normal kexec kernel for
faster reboot.

Rename reserve_crashkernel() to reserve_crash_or_kexec_kernel(), and
generalize it by adding an argument that specifies what is reserved:
"crashkernel=" for crash kernel region
"kexeckernel=" for normal kexec region

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 .../admin-guide/kernel-parameters.txt         | 10 +--
 arch/arm64/kernel/setup.c                     |  5 ++
 arch/arm64/mm/init.c                          | 83 ++++++++++++-------
 3 files changed, 63 insertions(+), 35 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 0f5ce665c7f5..a18222c1fbee 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -740,11 +740,11 @@
 			or memory reserved is below 4G.
 
 	kexeckernel=size[KMG][@offset[KMG]]
-			[KNL] Using kexec, Linux can reboot to a new kernel.
-			This parameter reserves the physical memory region
-			[offset, offset + size] for that kernel. If '@offset' is
-			omitted, then a suitable offset is selected
-			automatically.
+			[KNL, ARM64] Using kexec, Linux can reboot to a new
+			kernel. This parameter reserves the physical memory
+			region [offset, offset + size] for that kernel. If
+			'@offset' is omitted, then a suitable offset is
+			selected automatically.
 
 	cryptomgr.notests
 			[KNL] Disable crypto self-tests
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 7e541f947b4c..9f308fa103c5 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -235,6 +235,11 @@ static void __init request_standard_resources(void)
 		if (crashk_res.end && crashk_res.start >= res->start &&
 		    crashk_res.end <= res->end)
 			request_resource(res, &crashk_res);
+
+		/* Userspace will find "Kexec kernel" region in /proc/iomem. */
+		if (kexeck_res.end && kexeck_res.start >= res->start &&
+		    kexeck_res.end <= res->end)
+			request_resource(res, &kexeck_res);
 #endif
 	}
 }
diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
index f3c795278def..dfef39f72faf 100644
--- a/arch/arm64/mm/init.c
+++ b/arch/arm64/mm/init.c
@@ -54,61 +54,83 @@ phys_addr_t arm64_dma_phys_limit __ro_after_init;
 
 #ifdef CONFIG_KEXEC_CORE
 /*
- * reserve_crashkernel() - reserves memory for crash kernel
+ * reserve_crash_or_kexec_kernel() - reserves memory for crash kernel or
+ * for normal kexec kernel.
  *
- * This function reserves memory area given in "crashkernel=" kernel command
- * line parameter. The memory reserved is used by dump capture kernel when
- * primary kernel is crashing.
+ * This function reserves memory area given in "crashkernel=" or "kexeckenel="
+ * kernel command line parameter. The memory reserved is used by dump capture
+ * kernel when primary kernel is crashing, or to load new kexec kernel for
+ * faster reboot without relocation.
  */
-static void __init reserve_crashkernel(void)
+static void __init reserve_crash_or_kexec_kernel(char *cmd)
 {
-	unsigned long long crash_base, crash_size;
+	unsigned long long base, size;
+	struct resource *res;
+	char s[16];
 	int ret;
 
-	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
-				&crash_size, &crash_base);
-	/* no crashkernel= or invalid value specified */
-	if (ret || !crash_size)
+	/* cmd must be either: "crashkernel=" or "kexeckernel=" */
+	if (!strcmp(cmd, "crashkernel=")) {
+		res = &crashk_res;
+	} else if (!strcmp(cmd, "kexeckernel=")) {
+		res = &kexeck_res;
+	} else {
+		pr_err("%s: invalid cmd %s\n", __func__, cmd);
+		return;
+	}
+
+	/* remove trailing '=' for a nicer printfs */
+	strcpy(s, cmd);
+	s[strlen(s) - 1] = '\0';
+
+	ret = parse_crash_or_kexec_kernel(boot_command_line,
+					  memblock_phys_mem_size(),
+					  &size, &base, cmd, NULL);
+	/* no specified command or invalid value specified */
+	if (ret || !size)
 		return;
 
-	crash_size = PAGE_ALIGN(crash_size);
+	size = PAGE_ALIGN(size);
 
-	if (crash_base == 0) {
+	if (base == 0) {
 		/* Current arm64 boot protocol requires 2MB alignment */
-		crash_base = memblock_find_in_range(0, ARCH_LOW_ADDRESS_LIMIT,
-				crash_size, SZ_2M);
-		if (crash_base == 0) {
-			pr_warn("cannot allocate crashkernel (size:0x%llx)\n",
-				crash_size);
+		base = memblock_find_in_range(0, ARCH_LOW_ADDRESS_LIMIT,
+					      size, SZ_2M);
+		if (base == 0) {
+			pr_warn("cannot allocate %s (size:0x%llx)\n",
+				s, size);
 			return;
 		}
 	} else {
 		/* User specifies base address explicitly. */
-		if (!memblock_is_region_memory(crash_base, crash_size)) {
-			pr_warn("cannot reserve crashkernel: region is not memory\n");
+		if (!memblock_is_region_memory(base, size)) {
+			pr_warn("cannot reserve %s: region is not memory\n",
+				s);
 			return;
 		}
 
-		if (memblock_is_region_reserved(crash_base, crash_size)) {
-			pr_warn("cannot reserve crashkernel: region overlaps reserved memory\n");
+		if (memblock_is_region_reserved(base, size)) {
+			pr_warn("cannot reserve %s: region overlaps reserved memory\n",
+				s);
 			return;
 		}
 
-		if (!IS_ALIGNED(crash_base, SZ_2M)) {
-			pr_warn("cannot reserve crashkernel: base address is not 2MB aligned\n");
+		if (!IS_ALIGNED(base, SZ_2M)) {
+			pr_warn("cannot reserve %s: base address is not 2MB aligned\n",
+				s);
 			return;
 		}
 	}
-	memblock_reserve(crash_base, crash_size);
+	memblock_reserve(base, size);
 
-	pr_info("crashkernel reserved: 0x%016llx - 0x%016llx (%lld MB)\n",
-		crash_base, crash_base + crash_size, crash_size >> 20);
+	pr_info("%s reserved: 0x%016llx - 0x%016llx (%lld MB)\n",
+		s, base, base + size, size >> 20);
 
-	crashk_res.start = crash_base;
-	crashk_res.end = crash_base + crash_size - 1;
+	res->start = base;
+	res->end = base + size - 1;
 }
 #else
-static void __init reserve_crashkernel(void)
+static void __init reserve_crash_or_kexec_kernel(char *cmd)
 {
 }
 #endif /* CONFIG_KEXEC_CORE */
@@ -411,7 +433,8 @@ void __init arm64_memblock_init(void)
 	else
 		arm64_dma_phys_limit = PHYS_MASK + 1;
 
-	reserve_crashkernel();
+	reserve_crash_or_kexec_kernel("crashkernel=");
+	reserve_crash_or_kexec_kernel("kexeckernel=");
 
 	reserve_elfcorehdr();
 
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
