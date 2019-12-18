Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B011124E1B
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 17:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V81TJFRCfrL+JLVagDHUEBMYAKeB+YJeBR/MX6aOa7k=; b=Xdk+Q2JJWQPaZlvmm9rBCl3IRY
	mgXCSxDwL5N3eiXslP8KqVm+eAdwtXIP31Cj3y3szu9OAZiDwuiPsh3+mUVbCc7DKt97BddRK8QhC
	zPWMbaHGXSkyHq0zWbPPjS/0gFW8kFz6TWC18JzC5f1R5j1vflhZAbf0HxL2QvHI5pyQzxoMdRvsd
	iAIptJhviioagxfVeQ6vRP/DdQtimYyYhBZdkgVDtTQdmGrrpvno451bznJL/SU7E9rFim7c8F2eE
	dO/FH0PrZbl8pDgI0lhmZ29WDAJj5bCpR0Dsa9XJ5imRos4jfS/Ch+u5NyyU8Myv2pL6NSvZGT7LC
	0ukH/ELQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcQD-0006i4-UT; Wed, 18 Dec 2019 16:43:37 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcQ7-0006bq-7G
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 16:43:33 +0000
Received: by mail-qt1-x841.google.com with SMTP id e5so2454202qtm.6
 for <kexec@lists.infradead.org>; Wed, 18 Dec 2019 08:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Mn7lT/v33beqUUHzTYcxw1ZuuVT33ZNDOi+r+jNEqrI=;
 b=S4eONsoNCtlvWb1SXb0HSyC/Xewk/6u/pvaM/zQHPwXXLcGag7UibnSt3vj1Y+eZDq
 sq/HNhNWGfK/7RIBwsLH8vVrVtozKIka/f9cin02GpzENEtpCwlF+Y42Fm43v6WVyOvY
 k3VMXBXf824LGqIdFbYh+VMLPgy9uyEsqctN7k2V0e8OVUhY7fCY74uPopqIlNJrBLEu
 TvaLVHcEaTsyBmkUjDH+7on2+MRjh6SYpxiHJP3e+rbzatCMx45bxhs8s52mo6RaF40V
 3ZOWf3vTEW74ikGw9k1n0kDAOZs71ZW7OfQhFkjLp8gmuHhRgBIAT57419XcTw+JU5Ur
 iKcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Mn7lT/v33beqUUHzTYcxw1ZuuVT33ZNDOi+r+jNEqrI=;
 b=JYTmzEfuj6QcdPvPBXj7eMuogCqw8FzbpZMsdpKahk+w1Csa7OyFZ0uPU4zj6bTNXi
 3U0BZ8vysazZVRUTLnNcvCC4zhGy7wLyShv+qt7DPGdgKV+vGxq3JWsk0eIIkEmFeyMK
 8G30tQMWPx37mNwn+IRIV+TzLTkH2scpUVFo7MS/OOLlkZZwCmUoGlQ/W/Uw4xnm+RqI
 u89YIGsrPPUgW2W2W8vhQY8VY/QESCRbRutDGVt2G8aFgX07vvrBHFnzS3jrAQElt6nt
 ecueopcRhFgPPoxiHAPWzE8VpkN4zyUki69yTZ+VEBMVC6hAU90W1Uf5yd9s0qJa1Frr
 kzmg==
X-Gm-Message-State: APjAAAVJhojZMuAzducCzj5/RWSqYVFW8WUJ0DM6LRRmt5PB7InbHC2q
 Ofuv78YoeAkkn80SXZU8szSPfYE=
X-Google-Smtp-Source: APXvYqz9oVbNa9sK4moZqzNK0k6ZkMsSF0MTT87Fq4xaIaDI/VDqijByRGhEtBA2anPCCh3TXm9vow==
X-Received: by 2002:ac8:3751:: with SMTP id p17mr3070241qtb.9.1576687409202;
 Wed, 18 Dec 2019 08:43:29 -0800 (PST)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id r66sm752051qkd.125.2019.12.18.08.43.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:43:28 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: kexec mailing list <kexec@lists.infradead.org>,
 Simon Horman <horms@verge.net.au>
Subject: [PATCH v3 2/3] arm64: kexec: allocate memory space avoiding reserved
 regions
Date: Wed, 18 Dec 2019 11:42:31 -0500
Message-Id: <20191218164232.6086-3-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218164232.6086-1-msys.mizuma@gmail.com>
References: <20191218164232.6086-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084331_316513_7C3E957F 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Masayoshi Mizuma <msys.mizuma@gmail.com>,
 James Morse <james.morse@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: AKASHI Takahiro <takahiro.akashi@linaro.org>

On UEFI/ACPI-only system, some memory regions, including but not limited
to UEFI memory map and ACPI tables, must be preserved across kexec'ing.
Otherwise, they can be corrupted and result in early failure in booting
a new kernel.

In recent kernels, /proc/iomem now has an extended file format like:

 40000000-5871ffff : System RAM
   41800000-426affff : Kernel code
   426b0000-42aaffff : reserved
   42ab0000-42c64fff : Kernel data
   54400000-583fffff : Crash kernel
   58590000-585effff : reserved
   58700000-5871ffff : reserved
 58720000-58b5ffff : reserved
 58b60000-5be3ffff : System RAM
   58b61000-58b61fff : reserved

where the "reserved" entries at the top level or under System RAM (and
its descendant resources) are ones of such kind and should not be regarded
as usable memory ranges where several free spaces for loading kexec data
will be allocated.

With this patch, get_memory_ranges() will handle this format of file
correctly. Note that, for safety, unknown regions, in addition to
"reserved" ones, will also be excluded.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Tested-by: Bhupesh Sharma <bhsharma@redhat.com>
Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 kexec/arch/arm64/kexec-arm64.c | 153 ++++++++++++++++++++-------------
 1 file changed, 94 insertions(+), 59 deletions(-)

diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
index 6ad3b0a..45ebc54 100644
--- a/kexec/arch/arm64/kexec-arm64.c
+++ b/kexec/arch/arm64/kexec-arm64.c
@@ -10,7 +10,9 @@
 #include <inttypes.h>
 #include <libfdt.h>
 #include <limits.h>
+#include <stdio.h>
 #include <stdlib.h>
+#include <string.h>
 #include <sys/stat.h>
 #include <linux/elf-em.h>
 #include <elf.h>
@@ -29,6 +31,7 @@
 #include "fs2dt.h"
 #include "iomem.h"
 #include "kexec-syscall.h"
+#include "mem_regions.h"
 #include "arch/options.h"
 
 #define ROOT_NODE_ADDR_CELLS_DEFAULT 1
@@ -905,19 +908,33 @@ int get_phys_base_from_pt_load(unsigned long *phys_offset)
 	return 0;
 }
 
+static bool to_be_excluded(char *str)
+{
+	if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)) ||
+	    !strncmp(str, KERNEL_CODE, strlen(KERNEL_CODE)) ||
+	    !strncmp(str, KERNEL_DATA, strlen(KERNEL_DATA)) ||
+	    !strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)))
+		return false;
+	else
+		return true;
+}
+
 /**
- * get_memory_ranges_iomem_cb - Helper for get_memory_ranges_iomem.
+ * get_memory_ranges - Try to get the memory ranges from
+ * /proc/iomem.
  */
-
-static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
-	unsigned long long base, unsigned long long length)
+int get_memory_ranges(struct memory_range **range, int *ranges,
+	unsigned long kexec_flags)
 {
-	int ret;
 	unsigned long phys_offset = UINT64_MAX;
-	struct memory_range *r;
-
-	if (nr >= KEXEC_SEGMENT_MAX)
-		return -1;
+	FILE *fp;
+	const char *iomem = proc_iomem();
+	char line[MAX_LINE], *str;
+	unsigned long long start, end;
+	int n, consumed;
+	struct memory_ranges memranges;
+	struct memory_range *last, excl_range;
+	int ret;
 
 	if (!try_read_phys_offset_from_kcore) {
 		/* Since kernel version 4.19, 'kcore' contains
@@ -951,17 +968,72 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
 		try_read_phys_offset_from_kcore = true;
 	}
 
-	r = (struct memory_range *)data + nr;
+	fp = fopen(iomem, "r");
+	if (!fp)
+		die("Cannot open %s\n", iomem);
+
+	memranges.ranges = NULL;
+	memranges.size = memranges.max_size  = 0;
+
+	while (fgets(line, sizeof(line), fp) != 0) {
+		n = sscanf(line, "%llx-%llx : %n", &start, &end, &consumed);
+		if (n != 2)
+			continue;
+		str = line + consumed;
+
+		if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM))) {
+			ret = mem_regions_alloc_and_add(&memranges,
+					start, end - start + 1, RANGE_RAM);
+			if (ret) {
+				fprintf(stderr,
+					"Cannot allocate memory for ranges\n");
+				fclose(fp);
+				return -ENOMEM;
+			}
 
-	if (!strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)))
-		r->type = RANGE_RAM;
-	else if (!strncmp(str, IOMEM_RESERVED, strlen(IOMEM_RESERVED)))
-		r->type = RANGE_RESERVED;
-	else
-		return 1;
+			dbgprintf("%s:+[%d] %016llx - %016llx\n", __func__,
+				memranges.size - 1,
+				memranges.ranges[memranges.size - 1].start,
+				memranges.ranges[memranges.size - 1].end);
+		} else if (to_be_excluded(str)) {
+			if (!memranges.size)
+				continue;
+
+			/*
+			 * Note: mem_regions_exclude() doesn't guarantee
+			 * that the ranges are sorted out, but as long as
+			 * we cope with /proc/iomem, we only operate on
+			 * the last entry and so it is safe.
+			 */
 
-	r->start = base;
-	r->end = base + length - 1;
+			/* The last System RAM range */
+			last = &memranges.ranges[memranges.size - 1];
+
+			if (last->end < start)
+				/* New resource outside of System RAM */
+				continue;
+			if (end < last->start)
+				/* Already excluded by parent resource */
+				continue;
+
+			excl_range.start = start;
+			excl_range.end = end;
+			ret = mem_regions_alloc_and_exclude(&memranges, &excl_range);
+			if (ret) {
+				fprintf(stderr,
+					"Cannot allocate memory for ranges (exclude)\n");
+				fclose(fp);
+				return -ENOMEM;
+			}
+			dbgprintf("%s:-      %016llx - %016llx\n",
+					__func__, start, end);
+		}
+	}
+
+	fclose(fp);
+
+	*range = memranges.ranges;
+	*ranges = memranges.size;
 
 	/* As a fallback option, we can try determining the PHYS_OFFSET
 	 * value from the '/proc/iomem' entries as well.
@@ -982,52 +1054,15 @@ static int get_memory_ranges_iomem_cb(void *data, int nr, char *str,
 	 * between the user-space and kernel space 'PHYS_OFFSET'
 	 * value.
 	 */
-	set_phys_offset(r->start, "iomem");
-
-	dbgprintf("%s: %016llx - %016llx : %s", __func__, r->start,
-		r->end, str);
-
-	return 0;
-}
-
-/**
- * get_memory_ranges_iomem - Try to get the memory ranges from
- * /proc/iomem.
- */
+	if (memranges.size)
+		set_phys_offset(memranges.ranges[0].start, "iomem");
 
-static int get_memory_ranges_iomem(struct memory_range *array,
-	unsigned int *count)
-{
-	*count = kexec_iomem_for_each_line(NULL,
-		get_memory_ranges_iomem_cb, array);
-
-	if (!*count) {
-		dbgprintf("%s: failed: No RAM found.\n", __func__);
-		return EFAILED;
-	}
+	dbgprint_mem_range("System RAM ranges;",
+				memranges.ranges, memranges.size);
 
 	return 0;
 }
 
-/**
- * get_memory_ranges - Try to get the memory ranges some how.
- */
-
-int get_memory_ranges(struct memory_range **range, int *ranges,
-	unsigned long kexec_flags)
-{
-	static struct memory_range array[KEXEC_SEGMENT_MAX];
-	unsigned int count;
-	int result;
-
-	result = get_memory_ranges_iomem(array, &count);
-
-	*range = result ? NULL : array;
-	*ranges = result ? 0 : count;
-
-	return result;
-}
-
 int arch_compat_trampoline(struct kexec_info *info)
 {
 	return 0;
-- 
2.18.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
