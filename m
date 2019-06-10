Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED913AFC7
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 09:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YO8fKojF62IXXhdKwjpbDdtVMf2NlyRK/bDMdE1q3KU=; b=sTHa8aQaTWunDm
	5qf8tZuPGIbHoMoFtiUxRf2eQqVqO0DCGy8fuhp9ppzLJTqCPtdNjqwtHAwfhi4EC/uNiCFSJhue4
	gIAsqP6+E+2462n9HLUldq1yEymsozYhuk6pIvQdmpy5oymODTdXJn+gCx15Nrz+AM1aiEg8lohtv
	01/+SyJNDJcz/2KU2ooeys+IwUqp4yWreKG1Oq1FOEqtoZBwXFLAK3Iic4wEVYd4WCKsKU+DNCF9n
	e5uMnIuwsMXrpJQRdHa1JVisPY3xfTla3IlkMHr49YE0tM0fL2DAPNNWcFCcyik/ZSmVp/1qNWfcA
	L4P+iqMbBAXBgyhs9j3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haErr-0006gZ-NS; Mon, 10 Jun 2019 07:37:24 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haErn-0006ff-6Z
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 07:37:20 +0000
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 76FD97FDEE;
 Mon, 10 Jun 2019 07:37:11 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-16.pek2.redhat.com
 [10.72.3.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 70DA960565;
 Mon, 10 Jun 2019 07:37:04 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: linux-kernel@vger.kernel.org, Borislav Petkov <bp@alien8.de>,
 Baoquan He <bhe@redhat.com>, Junichi Nomura <j-nomura@ce.jp.nec.com>,
 Dave Young <dyoung@redhat.com>
Subject: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
Date: Mon, 10 Jun 2019 15:36:17 +0800
Message-Id: <20190610073617.19767-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Mon, 10 Jun 2019 07:37:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_003719_261993_31AC6F25 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: Chao Fan <fanc.fnst@cn.fujitsu.com>, Kairui Song <kasong@redhat.com>,
 kexec@lists.infradead.org, x86@kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

With the recent addition of RSDP parsing in decompression stage, kexec
kernel now needs ACPI tables to be covered by the identity mapping.
And in commit 6bbeb276b71f ("x86/kexec: Add the EFI system tables and
ACPI tables to the ident map"), ACPI tables memory region was added to
the ident map.

But on some machines, there is only ACPI NVS memory region, and the ACPI
tables is located in the NVS region instead. In such case second kernel
will still fail when trying to access ACPI tables.

So, to fix the problem, add NVS memory region in the ident map as well.

Fixes: 6bbeb276b71f ("x86/kexec: Add the EFI system tables and ACPI tables to the ident map")
Suggested-by: Junichi Nomura <j-nomura@ce.jp.nec.com>
Signed-off-by: Kairui Song <kasong@redhat.com>
---

Tested with my laptop and VM, on top of current tip:x86/boot.

 arch/x86/kernel/machine_kexec_64.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
index 3c77bdf7b32a..a406602fdb3c 100644
--- a/arch/x86/kernel/machine_kexec_64.c
+++ b/arch/x86/kernel/machine_kexec_64.c
@@ -54,14 +54,26 @@ static int mem_region_callback(struct resource *res, void *arg)
 static int
 map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p)
 {
-	unsigned long flags = IORESOURCE_MEM | IORESOURCE_BUSY;
+	int ret;
+	unsigned long flags;
 	struct init_pgtable_data data;
 
 	data.info = info;
 	data.level4p = level4p;
 	flags = IORESOURCE_MEM | IORESOURCE_BUSY;
-	return walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
-				   &data, mem_region_callback);
+
+	ret = walk_iomem_res_desc(IORES_DESC_ACPI_TABLES, flags, 0, -1,
+				  &data, mem_region_callback);
+	if (ret && ret != -EINVAL)
+		return ret;
+
+	/* ACPI tables could be located in ACPI Non-volatile Storage region */
+	ret = walk_iomem_res_desc(IORES_DESC_ACPI_NV_STORAGE, flags, 0, -1,
+				  &data, mem_region_callback);
+	if (ret && ret != -EINVAL)
+		return ret;
+
+	return 0;
 }
 #else
 static int map_acpi_tables(struct x86_mapping_info *info, pgd_t *level4p) { return 0; }
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
