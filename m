Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B24D9D625
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 21:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wgOxT0b2QK50nCdWO0ZC9iokMJSURVp2QGjaB0bT9L8=; b=gXrODoELHbSuvz
	Xt1QhdUwkLFIx2cXGbbj4N9lG9NOFISljVkI3KAxzARmzEmAHX/Jg05aKi5CHbI8m/RWySZvtlr1M
	2dcbuC2O17BRMK3+gDew2iSXkNbZFZEtx73BQao8cqZQnpE8uvEbX3ArylwWDorZKNRPS18bLGbD8
	cb3RS5hJ76ncML99O9O5RAZB2Fk9CmNX0fLkigFfCk85+MJhiYJEnZkIXtBHqLB1g3M2dT97Wv656
	CG4W8DLXuPsWHDhu+EXOUtp3HAPW4ukP5+V8DlR3gcXj4/y9JUVOovkVGVB797U2vUExJLf220NRJ
	T2I9lxu77ws1SofWa1kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KF4-0007lR-DX; Mon, 26 Aug 2019 19:01:26 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEe-0006yA-Fm
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 19:01:03 +0000
Received: by mail-qt1-x843.google.com with SMTP id j15so18901657qtl.13
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 12:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=MVGzHS9ibRvktU9gzuXWTCeM/ZsMv8ZNEfXsJO3ZoxM=;
 b=B26GOpyrtMcVplPhl7Il/MGEWWA8xd6bEnjFdWoHib2Rq2CQ2PBaL6pitAD90OeatG
 tvJzrwjReaiCAXbgM7nLmeUHIJ8/TZBf0kkeT01e/VjRWbOWaZD4xgFGJy/70LhHlAsY
 UnjEME49+kC2iR55o2+mlOizKCmy3OB/EctD8PVQHoI6XHSMF53PwgEfahO3jykEsLIb
 rx3c0uE2DuomPLwTqb/gjWEYyvIfaBDdYx+79C/aU9O3JgLSowUa+EQVq5O5HLoHhJUX
 Vo7WzIj4qCeHmTkqlfQYvj9mS8pVTI0zrxWAM+EBdsWGT1jbV7TzXerLWaktA4hBPL5w
 1G6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MVGzHS9ibRvktU9gzuXWTCeM/ZsMv8ZNEfXsJO3ZoxM=;
 b=kZO+wK3cI4bSyAN5dBeJNxz+xB2srdH6/QfiUHxAIdz91aV0RUBbgysbqQmb3lZ7Hb
 a0xN4pKH9EilCtM2cMUbzuEOhyhmXnO7fe7L7xgUcqIYEFCeD70pYc/WV0cN8lgyYpAm
 KRtygn5KpbtY7GZGWXaqk7AzYFZ2XNylA9N5pIX82BdCGLkA7WezpN8WAf7ztdLsFBY+
 rQBkcbxC11XR5WAk4UXnUir+p6liXS6gZoEZrsangLMTneOAng0KWiuT8r83Y5eDXwto
 sqsEisT066YFIL4+V+RBs2D7nHxd1qyImW2xrbybb3cTO9gu7PoQPVH8mUpwsEmaiPMk
 RIPg==
X-Gm-Message-State: APjAAAXiKpgLz/3ozP4JAS6Gz2SzGq8VTBiHM37PAf8AjbnhTqVLAfEr
 AXgXAap13gWAP6rt9r/gpsrPVw==
X-Google-Smtp-Source: APXvYqxeU7d2ypGYD+w4LlmlZBLQ94N4jLKoJtLpD4qFS3r6JUQs+pZr0N0cUZuPWjoo9GSHYRXaKw==
X-Received: by 2002:ac8:64a:: with SMTP id e10mr18640949qth.30.1566846059770; 
 Mon, 26 Aug 2019 12:00:59 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:00:59 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 1/6] rqchip/gic-v3-its: reset prop table outside of
 allocation
Date: Mon, 26 Aug 2019 15:00:51 -0400
Message-Id: <20190826190056.27854-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120100_529049_4AF6E923 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

In preparation of adding another variant of allocation, move
the resetting outside of the current allocator.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 1b5c3672aea2..ada18748ed1c 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1621,15 +1621,7 @@ static void gic_reset_prop_table(void *va)
 
 static struct page *its_allocate_prop_table(gfp_t gfp_flags)
 {
-	struct page *prop_page;
-
-	prop_page = alloc_pages(gfp_flags, get_order(LPI_PROPBASE_SZ));
-	if (!prop_page)
-		return NULL;
-
-	gic_reset_prop_table(page_address(prop_page));
-
-	return prop_page;
+	return alloc_pages(gfp_flags, get_order(LPI_PROPBASE_SZ));
 }
 
 static void its_free_prop_table(struct page *prop_page)
@@ -1685,7 +1677,6 @@ static int __init its_setup_lpi_prop_table(void)
 		gic_rdists->prop_table_va = memremap(gic_rdists->prop_table_pa,
 						     LPI_PROPBASE_SZ,
 						     MEMREMAP_WB);
-		gic_reset_prop_table(gic_rdists->prop_table_va);
 	} else {
 		struct page *page;
 
@@ -1703,6 +1694,7 @@ static int __init its_setup_lpi_prop_table(void)
 		WARN_ON(gic_reserve_range(gic_rdists->prop_table_pa,
 					  LPI_PROPBASE_SZ));
 	}
+	gic_reset_prop_table(gic_rdists->prop_table_va);
 
 	pr_info("GICv3: using LPI property table @%pa\n",
 		&gic_rdists->prop_table_pa);
@@ -3079,6 +3071,7 @@ static int its_vpe_irq_domain_alloc(struct irq_domain *domain, unsigned int virq
 		its_lpi_free(bitmap, base, nr_ids);
 		return -ENOMEM;
 	}
+	gic_reset_prop_table(page_address(vprop_page));
 
 	vm->db_bitmap = bitmap;
 	vm->db_lpi_base = base;
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
