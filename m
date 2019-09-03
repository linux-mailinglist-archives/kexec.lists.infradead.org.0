Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08FCA6F04
	for <lists+kexec@lfdr.de>; Tue,  3 Sep 2019 18:31:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=URRyXwGGy14q5qWuPXRhNhiTD2Wurt6HTG4Ikn34JTU=; b=ZaXX0WSeJMVqn/
	Yts40iiiOskUKbcyz93/FdbyQfcdbJ23qmf/+vEfVnNods98Zevk2aFeWzHfKuKDcTWmbk+04st2x
	5+2MYhRhhTAgSz09+yVhAl3ny9enLNV0o17mk4WgvxsxyUq48PiH/yS9SMFiTZerT8I/vH7Rz3zD/
	FcIQEprGp0+j2rYdXZuNpYxOWbO2pB5MnBbCNts3MRZx7ZgtwyebBuMJWTWnTgvwCE0XQJVuMaNRL
	bYwxhvhCGkc1Z/tpCjUtZ5xPzdVflyUk44rTG8dHks0TYZfGRm9/fngKcWs8TSjD9cISwqWCjAoxH
	pDMh386sQ8WGFT/an3Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Bia-0002x0-6N; Tue, 03 Sep 2019 16:31:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5BiV-0002vo-N8
 for kexec@lists.infradead.org; Tue, 03 Sep 2019 16:31:41 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8A04B23878;
 Tue,  3 Sep 2019 16:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567528299;
 bh=YyjbxgNl4LnQZCMq5LMk+9ESz9qxxJdoYR7Pz12nRbM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zJvX6x1UD5UrLH+bRnEY0vHe+QQk+FLxXSzwFWosrVWuSB0YcECOKmxI3bS3QHIE+
 lmQ5LY2Fs1qfOIVpKxMQRF3OpTFfC+y7hNsEWFdF2p0ceNLO10b7XGKrbQ/wHw4JUK
 LpPnLjcV3DznFrGAOBBHydkXljj/r3SJKjmA1ViE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 143/167] resource: Fix find_next_iomem_res()
 iteration issue
Date: Tue,  3 Sep 2019 12:24:55 -0400
Message-Id: <20190903162519.7136-143-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190903162519.7136-1-sashal@kernel.org>
References: <20190903162519.7136-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_093139_795385_01A1183A 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>,
 Brijesh Singh <brijesh.singh@amd.com>, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, Takashi Iwai <tiwai@suse.de>, x86-ml <x86@kernel.org>,
 kexec@lists.infradead.org, mingo@redhat.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Yaowei Bai <baiyaowei@cmss.chinamobile.com>, "H . Peter Anvin" <hpa@zytor.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Morton <akpm@linux-foundation.org>,
 Borislav Petkov <bp@suse.de>, dyoung@redhat.com,
 Dan Williams <dan.j.williams@intel.com>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Bjorn Helgaas <bhelgaas@google.com>

[ Upstream commit 010a93bf97c72f43aac664d0a685942f83d1a103 ]

Previously find_next_iomem_res() used "*res" as both an input parameter for
the range to search and the type of resource to search for, and an output
parameter for the resource we found, which makes the interface confusing.

The current callers use find_next_iomem_res() incorrectly because they
allocate a single struct resource and use it for repeated calls to
find_next_iomem_res().  When find_next_iomem_res() returns a resource, it
overwrites the start, end, flags, and desc members of the struct.  If we
call find_next_iomem_res() again, we must update or restore these fields.
The previous code restored res.start and res.end, but not res.flags or
res.desc.

Since the callers did not restore res.flags, if they searched for flags
IORESOURCE_MEM | IORESOURCE_BUSY and found a resource with flags
IORESOURCE_MEM | IORESOURCE_BUSY | IORESOURCE_SYSRAM, the next search would
incorrectly skip resources unless they were also marked as
IORESOURCE_SYSRAM.

Fix this by restructuring the interface so it takes explicit "start, end,
flags" parameters and uses "*res" only as an output parameter.

Based on a patch by Lianbo Jiang <lijiang@redhat.com>.

 [ bp: While at it:
   - make comments kernel-doc style.
   -

Originally-by: http://lore.kernel.org/lkml/20180921073211.20097-2-lijiang@redhat.com
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: Brijesh Singh <brijesh.singh@amd.com>
CC: Dan Williams <dan.j.williams@intel.com>
CC: H. Peter Anvin <hpa@zytor.com>
CC: Lianbo Jiang <lijiang@redhat.com>
CC: Takashi Iwai <tiwai@suse.de>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Tom Lendacky <thomas.lendacky@amd.com>
CC: Vivek Goyal <vgoyal@redhat.com>
CC: Yaowei Bai <baiyaowei@cmss.chinamobile.com>
CC: bhe@redhat.com
CC: dan.j.williams@intel.com
CC: dyoung@redhat.com
CC: kexec@lists.infradead.org
CC: mingo@redhat.com
CC: x86-ml <x86@kernel.org>
Link: http://lkml.kernel.org/r/153805812916.1157.177580438135143788.stgit@bhelgaas-glaptop.roam.corp.google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/resource.c | 96 +++++++++++++++++++++--------------------------
 1 file changed, 42 insertions(+), 54 deletions(-)

diff --git a/kernel/resource.c b/kernel/resource.c
index 155ec873ea4d1..38b8d11c9eaf4 100644
--- a/kernel/resource.c
+++ b/kernel/resource.c
@@ -318,24 +318,27 @@ int release_resource(struct resource *old)
 
 EXPORT_SYMBOL(release_resource);
 
-/*
- * Finds the lowest iomem resource existing within [res->start..res->end].
- * The caller must specify res->start, res->end, res->flags, and optionally
- * desc.  If found, returns 0, res is overwritten, if not found, returns -1.
- * This function walks the whole tree and not just first level children until
- * and unless first_level_children_only is true.
+/**
+ * Finds the lowest iomem resource that covers part of [start..end].  The
+ * caller must specify start, end, flags, and desc (which may be
+ * IORES_DESC_NONE).
+ *
+ * If a resource is found, returns 0 and *res is overwritten with the part
+ * of the resource that's within [start..end]; if none is found, returns
+ * -1.
+ *
+ * This function walks the whole tree and not just first level children
+ * unless @first_level_children_only is true.
  */
-static int find_next_iomem_res(struct resource *res, unsigned long desc,
-			       bool first_level_children_only)
+static int find_next_iomem_res(resource_size_t start, resource_size_t end,
+			       unsigned long flags, unsigned long desc,
+			       bool first_level_children_only,
+			       struct resource *res)
 {
-	resource_size_t start, end;
 	struct resource *p;
 	bool sibling_only = false;
 
 	BUG_ON(!res);
-
-	start = res->start;
-	end = res->end;
 	BUG_ON(start >= end);
 
 	if (first_level_children_only)
@@ -344,7 +347,7 @@ static int find_next_iomem_res(struct resource *res, unsigned long desc,
 	read_lock(&resource_lock);
 
 	for (p = iomem_resource.child; p; p = next_resource(p, sibling_only)) {
-		if ((p->flags & res->flags) != res->flags)
+		if ((p->flags & flags) != flags)
 			continue;
 		if ((desc != IORES_DESC_NONE) && (desc != p->desc))
 			continue;
@@ -359,32 +362,31 @@ static int find_next_iomem_res(struct resource *res, unsigned long desc,
 	read_unlock(&resource_lock);
 	if (!p)
 		return -1;
+
 	/* copy data */
-	if (res->start < p->start)
-		res->start = p->start;
-	if (res->end > p->end)
-		res->end = p->end;
+	res->start = max(start, p->start);
+	res->end = min(end, p->end);
 	res->flags = p->flags;
 	res->desc = p->desc;
 	return 0;
 }
 
-static int __walk_iomem_res_desc(struct resource *res, unsigned long desc,
-				 bool first_level_children_only,
-				 void *arg,
+static int __walk_iomem_res_desc(resource_size_t start, resource_size_t end,
+				 unsigned long flags, unsigned long desc,
+				 bool first_level_children_only, void *arg,
 				 int (*func)(struct resource *, void *))
 {
-	u64 orig_end = res->end;
+	struct resource res;
 	int ret = -1;
 
-	while ((res->start < res->end) &&
-	       !find_next_iomem_res(res, desc, first_level_children_only)) {
-		ret = (*func)(res, arg);
+	while (start < end &&
+	       !find_next_iomem_res(start, end, flags, desc,
+				    first_level_children_only, &res)) {
+		ret = (*func)(&res, arg);
 		if (ret)
 			break;
 
-		res->start = res->end + 1;
-		res->end = orig_end;
+		start = res.end + 1;
 	}
 
 	return ret;
@@ -407,13 +409,7 @@ static int __walk_iomem_res_desc(struct resource *res, unsigned long desc,
 int walk_iomem_res_desc(unsigned long desc, unsigned long flags, u64 start,
 		u64 end, void *arg, int (*func)(struct resource *, void *))
 {
-	struct resource res;
-
-	res.start = start;
-	res.end = end;
-	res.flags = flags;
-
-	return __walk_iomem_res_desc(&res, desc, false, arg, func);
+	return __walk_iomem_res_desc(start, end, flags, desc, false, arg, func);
 }
 EXPORT_SYMBOL_GPL(walk_iomem_res_desc);
 
@@ -427,13 +423,9 @@ EXPORT_SYMBOL_GPL(walk_iomem_res_desc);
 int walk_system_ram_res(u64 start, u64 end, void *arg,
 				int (*func)(struct resource *, void *))
 {
-	struct resource res;
+	unsigned long flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
 
-	res.start = start;
-	res.end = end;
-	res.flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
-
-	return __walk_iomem_res_desc(&res, IORES_DESC_NONE, true,
+	return __walk_iomem_res_desc(start, end, flags, IORES_DESC_NONE, true,
 				     arg, func);
 }
 
@@ -444,13 +436,9 @@ int walk_system_ram_res(u64 start, u64 end, void *arg,
 int walk_mem_res(u64 start, u64 end, void *arg,
 		 int (*func)(struct resource *, void *))
 {
-	struct resource res;
+	unsigned long flags = IORESOURCE_MEM | IORESOURCE_BUSY;
 
-	res.start = start;
-	res.end = end;
-	res.flags = IORESOURCE_MEM | IORESOURCE_BUSY;
-
-	return __walk_iomem_res_desc(&res, IORES_DESC_NONE, true,
+	return __walk_iomem_res_desc(start, end, flags, IORES_DESC_NONE, true,
 				     arg, func);
 }
 
@@ -464,25 +452,25 @@ int walk_mem_res(u64 start, u64 end, void *arg,
 int walk_system_ram_range(unsigned long start_pfn, unsigned long nr_pages,
 		void *arg, int (*func)(unsigned long, unsigned long, void *))
 {
+	resource_size_t start, end;
+	unsigned long flags;
 	struct resource res;
 	unsigned long pfn, end_pfn;
-	u64 orig_end;
 	int ret = -1;
 
-	res.start = (u64) start_pfn << PAGE_SHIFT;
-	res.end = ((u64)(start_pfn + nr_pages) << PAGE_SHIFT) - 1;
-	res.flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
-	orig_end = res.end;
-	while ((res.start < res.end) &&
-		(find_next_iomem_res(&res, IORES_DESC_NONE, true) >= 0)) {
+	start = (u64) start_pfn << PAGE_SHIFT;
+	end = ((u64)(start_pfn + nr_pages) << PAGE_SHIFT) - 1;
+	flags = IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
+	while (start < end &&
+	       !find_next_iomem_res(start, end, flags, IORES_DESC_NONE,
+				    true, &res)) {
 		pfn = (res.start + PAGE_SIZE - 1) >> PAGE_SHIFT;
 		end_pfn = (res.end + 1) >> PAGE_SHIFT;
 		if (end_pfn > pfn)
 			ret = (*func)(pfn, end_pfn - pfn, arg);
 		if (ret)
 			break;
-		res.start = res.end + 1;
-		res.end = orig_end;
+		start = res.end + 1;
 	}
 	return ret;
 }
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
