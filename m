Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC217124E1C
	for <lists+kexec@lfdr.de>; Wed, 18 Dec 2019 17:43:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pSfstYAuuK7aMf8GK5syWRx/arqjFmakFKLUpLJKyRA=; b=UVyuZ4qj4D1uZ3E0GDZg8GRFaf
	DTN/Bn5eyvEFLM0r+TbG2igGWn5ZiFm4eTBbdHcbUsM685FxnWk/hsC8b6I1k4AOpbTScYWG1tnwt
	1MZRl+JMzP5AeS5BxjZronPLsoYwP9qLXU0Db+BkciSWGUPv2S6jNtkK2LN6XZHLRmCsgXNdt8Jsk
	8VysoTfhABZLyjhTyC/kjTmU8bCxkGUNDNAgcCKdjiCStib6Atmb+s4vrwNSieyZ72Lfhi+DNoy/6
	+B8fI3JtdLBQF99/ONyuUAt8b/o0f3OVNGZSTVSsxYdDivCwS0soo2EU81is8HBgMs5EvhOBDVlAF
	Wc6rT+aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcQF-0006kD-JG; Wed, 18 Dec 2019 16:43:39 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcQ8-0006ds-Tv
 for kexec@lists.infradead.org; Wed, 18 Dec 2019 16:43:34 +0000
Received: by mail-qv1-xf41.google.com with SMTP id t6so1004595qvs.5
 for <kexec@lists.infradead.org>; Wed, 18 Dec 2019 08:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AuYbVTTFHt8IOFWlacJrH6aliLDgthD59oT5nrUjys4=;
 b=rMfMuL7NhhEx1KygBNams+URRoloeJKePq7onw/fAx7HC8iT/lAKZLPcCI3xYpU6Zg
 S83EllJVbzDyHLqDA6TqygjLEVeDwx5Qsg+/9JnrcJfKsXCL9wSt1JULrMfOSOujv4Id
 KcuLHEMLvwsVtiFnkXjoZVLBgdEGTNFrkg0gxcqx+spJmjsF3010mv3Rk6QdiaomcxT7
 +FxapmbHxYANgIcU2W++Jlq2MOlXEsD3nkBBpSyY4jv5BRyQag+MWd/PZhOj/xo5COhq
 q7GDkvgGr96jYqeWrOgRdUqxSRaAHdNOqkOlZV+ikaQpBFfeBMwAbND0wVrkyo4Ehgh9
 CMZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AuYbVTTFHt8IOFWlacJrH6aliLDgthD59oT5nrUjys4=;
 b=gPSSGkzwNiQE4qtrV6wMOnIOzs7KGww2inz8+dN3vUgWnw66Ufv9IWET6gbIMmSCqz
 E0dYgFlLUK0Ai12omU+rq59xS2gH3xW89Z6skiAKHk/yVifhw5aQl4+7IkEDJVRjqpaT
 rmFi9JZj1lSy4lVS+xl57bNfQtMvoYh9UXWCmhSekPQVmB8FjCDuZHlyP267ZZ+v7Opj
 beWRKJK7nbbzqupwrBMb4stdJbyT2ABJBESct5LHFKZafPHcKSiD0hXuNko8fex2SI4n
 8dx7DoIyy6zoqBPYsoC83zIZ+WtKNZId4dFr8X7fOuWueHnuL4v37zSFpKDtcnA+Ophz
 yVqQ==
X-Gm-Message-State: APjAAAVSvcvwk+4MJ0tiwfZ0kBO6HpqjkzfLxp1QJQf3nqiaA3+6Bodf
 mMw9KfbimIqBhb2M3eSd16QotqY=
X-Google-Smtp-Source: APXvYqz3gARHo9yn+Ks84JT1eJcSxWZFBcz0V/XJquZZVUv8jgpzjN/yjpXYgkc4bgKcsKvWxP3XTA==
X-Received: by 2002:ad4:580e:: with SMTP id dd14mr3274129qvb.84.1576687410864; 
 Wed, 18 Dec 2019 08:43:30 -0800 (PST)
Received: from gabell.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id r66sm752051qkd.125.2019.12.18.08.43.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Dec 2019 08:43:30 -0800 (PST)
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: kexec mailing list <kexec@lists.infradead.org>,
 Simon Horman <horms@verge.net.au>
Subject: [PATCH v3 3/3] arm64: kdump: deal with a lot of resource entries in
 /proc/iomem
Date: Wed, 18 Dec 2019 11:42:32 -0500
Message-Id: <20191218164232.6086-4-msys.mizuma@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191218164232.6086-1-msys.mizuma@gmail.com>
References: <20191218164232.6086-1-msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084332_967279_E1C85F8D 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

As described in the commit ("arm64: kexec: allocate memory space avoiding
reserved regions"), /proc/iomem now has a lot of "reserved" entries, and
it's not just enough to have a fixed size of memory range array.

With this patch, kdump is allowed to handle arbitrary number of memory
ranges, using mem_regions_alloc_and_xxx() functions.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Tested-by: Bhupesh Sharma <bhsharma@redhat.com>
Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
---
 kexec/arch/arm64/crashdump-arm64.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/kexec/arch/arm64/crashdump-arm64.c b/kexec/arch/arm64/crashdump-arm64.c
index 4fd7aa8..38d1a0f 100644
--- a/kexec/arch/arm64/crashdump-arm64.c
+++ b/kexec/arch/arm64/crashdump-arm64.c
@@ -23,13 +23,8 @@
 #include "kexec-elf.h"
 #include "mem_regions.h"
 
-/* memory ranges on crashed kernel */
-static struct memory_range system_memory_ranges[CRASH_MAX_MEMORY_RANGES];
-static struct memory_ranges system_memory_rgns = {
-	.size = 0,
-	.max_size = CRASH_MAX_MEMORY_RANGES,
-	.ranges = system_memory_ranges,
-};
+/* memory ranges of crashed kernel */
+static struct memory_ranges system_memory_rgns;
 
 /* memory range reserved for crashkernel */
 struct memory_range crash_reserved_mem;
@@ -82,7 +77,7 @@ static uint64_t get_kernel_page_offset(void)
  *
  * This function is called once for each memory region found in /proc/iomem.
  * It locates system RAM and crashkernel reserved memory and places these to
- * variables, respectively, system_memory_ranges and crash_reserved_mem.
+ * variables, respectively, system_memory_rgns and usablemem_rgns.
  */
 
 static int iomem_range_callback(void *UNUSED(data), int UNUSED(nr),
@@ -90,11 +85,11 @@ static int iomem_range_callback(void *UNUSED(data), int UNUSED(nr),
 				unsigned long long length)
 {
 	if (strncmp(str, CRASH_KERNEL, strlen(CRASH_KERNEL)) == 0)
-		return mem_regions_add(&usablemem_rgns,
-				       base, length, RANGE_RAM);
+		return mem_regions_alloc_and_add(&usablemem_rgns,
+						base, length, RANGE_RAM);
 	else if (strncmp(str, SYSTEM_RAM, strlen(SYSTEM_RAM)) == 0)
-		return mem_regions_add(&system_memory_rgns,
-				       base, length, RANGE_RAM);
+		return mem_regions_alloc_and_add(&system_memory_rgns,
+						base, length, RANGE_RAM);
 	else if (strncmp(str, KERNEL_CODE, strlen(KERNEL_CODE)) == 0)
 		elf_info.kern_paddr_start = base;
 	else if (strncmp(str, KERNEL_DATA, strlen(KERNEL_DATA)) == 0)
@@ -135,9 +130,9 @@ static int crash_get_memory_ranges(void)
 
 	dbgprint_mem_range("Reserved memory range", &crash_reserved_mem, 1);
 
-	if (mem_regions_exclude(&system_memory_rgns, &crash_reserved_mem)) {
-		fprintf(stderr,
-			"Error: Number of crash memory ranges excedeed the max limit\n");
+	if (mem_regions_alloc_and_exclude(&system_memory_rgns,
+						&crash_reserved_mem)) {
+		fprintf(stderr, "Cannot allocate memory for ranges\n");
 		return -ENOMEM;
 	}
 
-- 
2.18.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
