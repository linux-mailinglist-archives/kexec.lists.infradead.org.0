Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9EAF9D62C
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 21:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ckn6X0se00xzG1Kr/GQtH3X8+lo48jA442zcwcEIgC4=; b=bYTtQ42WkJB8me
	AcJiU/6wcGC1rPGNCpKv2VaXk9GZWFvH8D/39JyheGKKCHQi4f1H8tB25HcGOqLty0q+lrqp2Gx6z
	mB5eVkAlp9uZ8jp1APla56qhK1tIzpf7eTarkygwTqHkl5ZA81dyf9anX/mZ5wztFZuZBHz/Y6RG8
	QLf40CFwTuEdCWVbshM9KKItXYwth/4GYD2jHDC9n2ct71DP4wPXJH2WTyyKYdGY30W/GXmEmlv44
	eh0ufsXVjbVwW9SCDMuOndaDYuzVXVnmJrE8A0ofBnvbsg/xXdd0/AEihzafPhwhLg/g8qPYGiSaO
	rckpxFx4PvYMHnjWkW/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KFh-0008Gv-Jo; Mon, 26 Aug 2019 19:02:05 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEg-0006z0-7z
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 19:01:03 +0000
Received: by mail-qt1-x844.google.com with SMTP id j15so18901779qtl.13
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 12:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2Iyu8V2mhRgac8+S13ID8s2986xy5pxZvhk9T7S5rNU=;
 b=UFXzaaLCAVwRSz6XEcr9mJF5kHCBrdjGe3QkcYu3MGkKN44wfFfrzlG0jc7ANzJ77n
 9EoRiykDzx5lyexiZKGga2j3mHmXj7jLWKeImUzAxoVVED14tv/gZEJHmCbMexLFIPAF
 5ZytoKvyGY0XeEXjN9ofyjZRs3CXeuzBSR6meTOyX137+CHIWynDofBLwZgxFIeOEuwU
 OK7JwW7xuggSckOozTZhHrg1yHzheQ686DtTHSePs2X0r2pswsBkvl7gwF6Fso0bHiKp
 JpJ0aXsoIgjae8qYFNMcuLsCVjUn7vzSman7d/ATv3DURMO5i0LYjOOZX24xNTqRoQ4o
 0w0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Iyu8V2mhRgac8+S13ID8s2986xy5pxZvhk9T7S5rNU=;
 b=N7vC2gJs0U/2HG5icpIBpO3EqXAB4T/JQdPQlzM9egfHq92urwvphY4jlmyInaz2Of
 VCAnXMtYPH0MwnA1i+fG2VTuTX7g8d7HzDa+26EaQLepLlm4oCpMoe1Dk4vMANTTg0xh
 jqA1dPpzInv3xUpytUPaZBUCJtVsBERGGJ6IKAs+0BbyOocs5WviupoTTvso9l436yhu
 6RRdVmqkzdhngrXm9SxwAGweRGKB4wJdSn9smk7gblj9xfzyDpkqWuby/OFvO6BdJ0zY
 lVU/b11QNhQybU4ho9c/NVv3cBdriqCu6naTL46WkW4T3ezlGxoULPWn548MdSFuWPiS
 HnDQ==
X-Gm-Message-State: APjAAAXRzH9/aEj8+ouABhAUijcs78SoGskK8gVOoX/foghFsnbl5uR+
 HSltWMqd4m/0RtpCNpndIIRy5A==
X-Google-Smtp-Source: APXvYqwJEoLilU8DEOh3KuHyqH0S1JmiSp9yFcsGVAyDCCyoqq7RSrfnW4/Garo6AgPuH9RBmHyTWg==
X-Received: by 2002:ac8:317a:: with SMTP id h55mr19163671qtb.105.1566846061160; 
 Mon, 26 Aug 2019 12:01:01 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.00.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:01:00 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 2/6] rqchip/gic-v3-its: use temporary va / pa variables
Date: Mon, 26 Aug 2019 15:00:52 -0400
Message-Id: <20190826190056.27854-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120102_282020_055EE027 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

This is a cleanup, that will help later when a variant that does not
require memremap is added.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index ada18748ed1c..656b6c6e1bf8 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1668,15 +1668,17 @@ static int gic_reserve_range(phys_addr_t addr, unsigned long size)
 static int __init its_setup_lpi_prop_table(void)
 {
 	if (gic_rdists->flags & RDIST_FLAGS_RD_TABLES_PREALLOCATED) {
+		unsigned long pa;
 		u64 val;
+		void *va;
 
 		val = gicr_read_propbaser(gic_data_rdist_rd_base() + GICR_PROPBASER);
 		lpi_id_bits = (val & GICR_PROPBASER_IDBITS_MASK) + 1;
 
-		gic_rdists->prop_table_pa = val & GENMASK_ULL(51, 12);
-		gic_rdists->prop_table_va = memremap(gic_rdists->prop_table_pa,
-						     LPI_PROPBASE_SZ,
-						     MEMREMAP_WB);
+		pa = val & GENMASK_ULL(51, 12);
+		va = memremap(pa, LPI_PROPBASE_SZ, MEMREMAP_WB);
+		gic_rdists->prop_table_pa = pa;
+		gic_rdists->prop_table_va = va;
 	} else {
 		struct page *page;
 
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
