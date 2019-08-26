Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496379D631
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 21:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yjf4QHEAEKzlB8qC/b0L/fnh7IveiF1MB9dBziuGJQ=; b=etZXk7uZ4ScGi7
	/ULrgXOse9bAx/GFG9Z7l8paHMsTwJxL4i8t7C8M4fQX03dS6HCkeSD8u3Ib5wZFYTfSpea3dohqj
	0FG9Hv3yoKRiWS95RViFR4dKSxUiO2hsogbWPoKf4ag+OlkuofecCXxDU4WHx6Y0fK1efDKwhBsGe
	34yRZPrNcaWMqCL6rvAwjLyfGDVqS05MW93K1oiM2wjLpPXF6P4MRfv2diay6QiMrGwfcC/Fp8LoU
	a6xigZRrSpJA6YqzfoNx8Npg/RZlpu0rxZwWsTcOzzOjG0rdqq8HmbNrinPkPRJflBas43G2P27x2
	cEW6MHLcHJ+qZ4NSlxwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KGJ-0000YF-5R; Mon, 26 Aug 2019 19:02:43 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEi-00072U-OK
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 19:01:08 +0000
Received: by mail-qk1-x743.google.com with SMTP id r21so14972600qke.2
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 12:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0G4wOYVegWG72k6oGUeWPK9tZ0VMm8uCy6edjZslp4c=;
 b=ZPsZFx07m0tAJXmqzDFkTOaZzOQz/AQuMAjRi257nF9B1rGb5m9feEUOR3OKQox5VN
 Q/HB83bhvJZOLD2pOOSznKKi6XqzqCMuS/HwsLqi1sU6qC1NvDfdupTOqPN64xmJTRKg
 Uxj4ePug02LYzhTt0KRIeloMKuigRMiCRq0bxTah7b3VJKt2V/HAVk/LSlC3DlfCrOvK
 6SIbC9drhIvs6jk1NVSauM5S5HwQyUdWRjrTXBiH+fAJrKqk4Zba9eBGP9r0Ao8A/dMd
 iEaGpS5LoxKgrr22zrvMWF4fyKn/QHJ/4exThlvCi19XKYbgYq/HYbqI4e2FLoS5dkJn
 da4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0G4wOYVegWG72k6oGUeWPK9tZ0VMm8uCy6edjZslp4c=;
 b=hDaTTFo+Sw+QXNApUAHJulYZieyea1GDw2SCoDvczs6rtilT4cmBNBA9/vx7NDznbB
 kJxQZiHK83LfenLEKHnuUF2ryfyhXR4HZY86NAvIbVTv2CcGTA5m7OBu62ZtTp5gTchG
 nvMIeBIVe9B2qLxsKP5q/W+P+EzhCGnzslmI/EhiidDHYOhAvr/jiwCZh/opC7oCQJ2a
 iagJGkHCghLDnkO66oMQncpbSmH8pylYQXKImXnkDKQ5I/8eF53cbcoklzx0jDSsAUny
 pC8wHKJwK7idt99JHhUtvPdqPdmdBfvDneXKjEyd8UsBcUXPV1drNcDwF8cdNbGF8TXe
 HbEg==
X-Gm-Message-State: APjAAAUbkvyZkgfHsRt6r/ZXI+nZcHu1MoaEasta2s+kHyEPO1RBpKDM
 NMsi4tYAKEwHLpFfHgrmF2fIGw==
X-Google-Smtp-Source: APXvYqyQpwd1cHJy+7egGM9XZ830LpQuYxMo23YJ3RHaBifSxKeOu/wMGe2mnwjs/L5INtNlBUcVYA==
X-Received: by 2002:a05:620a:b:: with SMTP id
 j11mr18037810qki.352.1566846063737; 
 Mon, 26 Aug 2019 12:01:03 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:01:03 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 4/6] rqchip/gic-v3-its: move reset pending table outside of
 allocator
Date: Mon, 26 Aug 2019 15:00:54 -0400
Message-Id: <20190826190056.27854-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120104_808397_85A780E3 
X-CRM114-Status: GOOD (  10.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

Again, in preparation of adding a new allocator, move the reset function
outside of the current allocator.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 124e2cb890cd..d5f3508ca11f 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1999,15 +1999,7 @@ static void gic_reset_pending_table(void *va)
 
 static struct page *its_allocate_pending_table(gfp_t gfp_flags)
 {
-	struct page *pend_page;
-
-	pend_page = alloc_pages(gfp_flags, get_order(LPI_PENDBASE_SZ));
-	if (!pend_page)
-		return NULL;
-
-	gic_reset_pending_table(page_address(pend_page));
-
-	return pend_page;
+	return alloc_pages(gfp_flags, get_order(LPI_PENDBASE_SZ));
 }
 
 static void its_free_pending_table(struct page *pt)
@@ -2064,6 +2056,7 @@ static int __init allocate_lpi_tables(void)
 			pr_err("Failed to allocate PENDBASE for CPU%d\n", cpu);
 			return -ENOMEM;
 		}
+		gic_reset_pending_table(page_address(pend_page));
 
 		gic_data_rdist_cpu(cpu)->pend_page = pend_page;
 	}
@@ -3007,6 +3000,7 @@ static int its_vpe_init(struct its_vpe *vpe)
 		its_vpe_id_free(vpe_id);
 		return -ENOMEM;
 	}
+	gic_reset_pending_table(page_address(vpt_page));
 
 	if (!its_alloc_vpe_table(vpe_id)) {
 		its_vpe_id_free(vpe_id);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
