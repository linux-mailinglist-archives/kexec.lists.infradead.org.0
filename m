Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A97890C4C
	for <lists+kexec@lfdr.de>; Sat, 17 Aug 2019 04:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WrAtNXRN/+lBdIl2skjxG/dBC6h0Ua/jyvqxm06fBdk=; b=GAGdsh2NJFoEGa
	OVWmdMcecxI7trCn4kg/8qeVd68M35sdhQxoVFgJ+lG8d/1h5DM9aG3/ot4vteg+zohoAlLKA8joz
	zx8/g5+ZeOisFKPJhx70Y7fZsSuTU5Hsjrj2WREwHiTlONAApYazd88+YCB/CMmxdtExrvl4c8AAd
	3OJjUX3vhbkx0GJS+UiLd7FZINPwPQLadd5SFL5YzSTbiOVEs+HRq2rfMh1y4lhKIj3p/T+fPiHou
	ftE0lcfc8e5Di2q7b2IP4o27BsADW4Qbvx3tckekJob445u/OWrlvQekQGV6Ich81ciD5V/N/E/dY
	fe7HSQ1soU8kfWzlhZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyolK-0003rQ-4P; Sat, 17 Aug 2019 02:48:14 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojq-0002W6-1m
 for kexec@lists.infradead.org; Sat, 17 Aug 2019 02:46:46 +0000
Received: by mail-qk1-x742.google.com with SMTP id m2so6308464qki.12
 for <kexec@lists.infradead.org>; Fri, 16 Aug 2019 19:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ekaKdccxVH9Vd+/E5UI//vE0AEA91U4VJzNQTwl8d/E=;
 b=W88elMS7kW8jg3EvlTR8TpaW28BxanfKAEZA1T8tCbXzGsz62pHn2DbtF/0gi1MvG6
 QnxWiMVsfkxQUm0Ae/FuzabuFMIch0uoq5Zhg7oba7ZeKDDAzmXRQ2n1IvGcQFjc8nYV
 m4/JkZyrt8pdX01FitiJJx0cPgVJ/FhH5Tu9IkA2IMuX557W2Y50K7mGgQhAzvNA1s7Q
 wWqVrMrxEqH7/ouO/0/KTzJm5DoKmotecr6ZDZVSYpvnvvHXAki018cukTq6oT85R9s1
 ylwJHOA8a1x0T03lSz9YDdycI4Gy2dKPQXITbseL26rSf0oItWq1y+PT+gj0RZzI1Xzc
 2brw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ekaKdccxVH9Vd+/E5UI//vE0AEA91U4VJzNQTwl8d/E=;
 b=tFSiLLqpFhHocSFmWOOUDYcmR/7MQ/ub7DPLQ7shdkoIAxG5EcYwxFG+6+xTfcn+DQ
 IcPen+K/lAvMQZ/i9Si8CV1GXzhzUxTiEM5Q3g1W4bPE3e5A6CBHug4T2CKYFUfdqKIB
 Mge9IALE825IVwrlV3ezFjNLORgso2eS2xhNqAIC+bJO0pU2196AjLjxEUmxgd3uWzCb
 vM3Qj74pXr8SOWrPDN+fZ6oEHaTV8RkoO3P3N52qXalijYwcFu9kXpagjhofMZG54Bzg
 RIVjBzAYTv2cgv9ZKZE39Ff2/33GeG2fgNlkS3bXgibfdHpisITv9v7iLevTHMpRt0qa
 Rt7A==
X-Gm-Message-State: APjAAAVYLAZk79sN+JuExiACeeRrTaso9rtsUSM9cMnBRC0L/EJfD6Wm
 Y1pvIgLwsAABwMera30uXJN9Jg==
X-Google-Smtp-Source: APXvYqwwaSAihWvkXLVrmpYscesC91A5cT8+kN1NZAN7lWtU4GZ2OM1L0rSQkXGfKeYYArAeLuF39A==
X-Received: by 2002:a37:6905:: with SMTP id e5mr11456548qkc.121.1566010001248; 
 Fri, 16 Aug 2019 19:46:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:40 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 07/14] arm64,
 trans_table: adjust trans_table_create_copy interface
Date: Fri, 16 Aug 2019 22:46:22 -0400
Message-Id: <20190817024629.26611-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194642_148130_2D7807CA 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Make trans_table_create_copy inline with the other functions in
trans_table: use the trans_table_info argument, and also use the
trans_table_create_empty.

Note, that the functions that are called by trans_table_create_copy are
not yet adjusted to be compliant with trans_table: they do not yet use
the provided allocator, do not check for generic errors, and do not yet
use the flags in info argument.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/trans_table.h |  7 ++++++-
 arch/arm64/kernel/hibernate.c        | 31 ++++++++++++++++++++++++++--
 arch/arm64/mm/trans_table.c          | 17 ++++++---------
 3 files changed, 41 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/include/asm/trans_table.h b/arch/arm64/include/asm/trans_table.h
index 02d3a0333dc9..8c296bd3e10f 100644
--- a/arch/arm64/include/asm/trans_table.h
+++ b/arch/arm64/include/asm/trans_table.h
@@ -44,7 +44,12 @@ struct trans_table_info {
 int trans_table_create_empty(struct trans_table_info *info,
 			     pgd_t **trans_table);
 
-int trans_table_create_copy(pgd_t **dst_pgdp, unsigned long start,
+/*
+ * Create trans table and copy entries from from_table to trans_table in range
+ * [start, end)
+ */
+int trans_table_create_copy(struct trans_table_info *info, pgd_t **trans_table,
+			    pgd_t *from_table, unsigned long start,
 			    unsigned long end);
 
 /*
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 3a7b362e5a58..6fbaff769c1d 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -323,15 +323,42 @@ int swsusp_arch_resume(void)
 	phys_addr_t phys_hibernate_exit;
 	void __noreturn (*hibernate_exit)(phys_addr_t, phys_addr_t, void *,
 					  void *, phys_addr_t, phys_addr_t);
+	struct trans_table_info trans_info = {
+		.trans_alloc_page	= hibernate_page_alloc,
+		.trans_alloc_arg	= (void *)GFP_ATOMIC,
+		/*
+		 * Resume will overwrite areas that may be marked read only
+		 * (code, rodata). Clear the RDONLY bit from the temporary
+		 * mappings we use during restore.
+		 */
+		.trans_flags		= TRANS_MKWRITE,
+	};
+
+	/*
+	 * debug_pagealloc will removed the PTE_VALID bit if the page isn't in
+	 * use by the resume kernel. It may have been in use by the original
+	 * kernel, in which case we need to put it back in our copy to do the
+	 * restore.
+	 *
+	 * Before marking this entry valid, check the pfn should be mapped.
+	 */
+	if (debug_pagealloc_enabled())
+		trans_info.trans_flags |= (TRANS_MKVALID | TRANS_CHECKPFN);
 
 	/*
 	 * Restoring the memory image will overwrite the ttbr1 page tables.
 	 * Create a second copy of just the linear map, and use this when
 	 * restoring.
 	 */
-	rc = trans_table_create_copy(&tmp_pg_dir, PAGE_OFFSET, 0);
-	if (rc)
+	rc = trans_table_create_copy(&trans_info, &tmp_pg_dir, init_mm.pgd,
+				     PAGE_OFFSET, 0);
+	if (rc) {
+		if (rc == -ENOMEM)
+			pr_err("Failed to allocate memory for temporary page tables.\n");
+		else if (rc == -ENXIO)
+			pr_err("Tried to set PTE for PFN that does not exist\n");
 		goto out;
+	}
 
 	/*
 	 * We need a zero page that is zero before & after resume in order to
diff --git a/arch/arm64/mm/trans_table.c b/arch/arm64/mm/trans_table.c
index 6deb35f83118..634293ffb54c 100644
--- a/arch/arm64/mm/trans_table.c
+++ b/arch/arm64/mm/trans_table.c
@@ -176,22 +176,17 @@ int trans_table_create_empty(struct trans_table_info *info, pgd_t **trans_table)
 	return 0;
 }
 
-int trans_table_create_copy(pgd_t **dst_pgdp, unsigned long start,
+int trans_table_create_copy(struct trans_table_info *info, pgd_t **trans_table,
+			    pgd_t *from_table, unsigned long start,
 			    unsigned long end)
 {
 	int rc;
-	pgd_t *trans_table = (pgd_t *)get_safe_page(GFP_ATOMIC);
 
-	if (!trans_table) {
-		pr_err("Failed to allocate memory for temporary page tables.\n");
-		return -ENOMEM;
-	}
-
-	rc = copy_page_tables(trans_table, start, end);
-	if (!rc)
-		*dst_pgdp = trans_table;
+	rc = trans_table_create_empty(info, trans_table);
+	if (rc)
+		return rc;
 
-	return rc;
+	return copy_page_tables(*trans_table, start, end);
 }
 
 int trans_table_map_page(struct trans_table_info *info, pgd_t *trans_table,
-- 
2.22.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
