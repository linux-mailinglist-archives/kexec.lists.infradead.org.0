Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3241E9D62D
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 21:02:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0ZcZDZ7zwz2oNtfNVaKIZCP9BTR8iDzUFJpICNObQE=; b=l0DY2/R/NaqtJy
	4QxaEw5hwGXOx0A8tvGxIY1yTgyjsrQYnxYML+d9VWSGvkR0MlS/YyRTNvFdIv93UKWaCGYHKXSvX
	MfxqnIOvxrfVLrLSYQ1YxxBakBGGOmPM+lQVX2tbsSJ/qwgFDNVcksAD3SoWtUqkeKI5tC4sMlJdl
	+/cPFJi4oLZUN4hqcJxF2IZ1Y6+2xEPn4caBVgWtm30U9xcerWT/D91eoMOlru6vS7E3pXJPSqOY1
	drJTJ88mwRsldpiCZKm5uhzbIUC8Booz19nE/KdA9iv0GmYIfy+iv5hUwMUDybrpcWzwBk8kHLkBN
	oPExyU1tOhBYpGVqLBiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KFz-0000BJ-6q; Mon, 26 Aug 2019 19:02:23 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEi-0006zp-EE
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 19:01:05 +0000
Received: by mail-qk1-x741.google.com with SMTP id u190so14982023qkh.5
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 12:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CccJyJOMWnqZNze84cEuacicNWkxG2JBW1Co8t/7GHg=;
 b=I0284+UkE2KRe/Q87KW/ZDOZ0NRLyZ5y2WK3GF9B8oVeaMsu4inuS3OYe5XqIF1vCo
 eSOQX+eykZNjiDXyhXVlZ3NueKf7GCab1T0/xy1AKMvaD45089SUJauoau3gT/VqvXsn
 eNv3bynIT8Q0UOTvohhzTlq3c/vJHTpou9QSboH+3la93R7QO9Id6GACC4fhqFwMwPIz
 a/U20xXR+sBysdvk2sRmuZQ8HPJLe/+5kRs8lVPycQ+vJq3Is3jFq8XDJcq6sfw510xN
 6KbSpr1vDru+n59CnWFw4rgMw55N4Xcmh/+/tcGzAYti3jEjzdjllLOni6KaNu/sfJ7I
 ZHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CccJyJOMWnqZNze84cEuacicNWkxG2JBW1Co8t/7GHg=;
 b=fxCsJ/5PkSN6Qii+NO69dh7oEem8DN9YiFVh+Pdx/Z+Fjy95+v9lzLXJ0wjgv8IvYt
 DbHe6L0KU09cKF8QFSXYcGZhj9pmVYrt18eBFOATx4yq6tEAu3kNMDulHjPt96DG/MLi
 s2lPv59j2o7z4LC3xkSnGtxnQRRqz6bTKstMcj9RVre+MwSpcPNi9W7Gqrc9rNSgq9PU
 EijgpC2KV4vUAqLSYJw7m4V2d664DmGs18TperUxw4Og+iK3Eg2WRDftEJyGS64gwiYW
 fNPHN65KLnkRPzfl9ecsQkKd1HzwfZtHKlAjLPmHZJHL8W2fr0vv94Xl8Zkw7eqj9I+H
 E0aA==
X-Gm-Message-State: APjAAAXiy9UAMQtYPKQJsVrSS8b7jcq8XklENbPAJKfPTnrqhfctQTL6
 03K3ADZRPW/rXom5+9WeV/IJ+Q==
X-Google-Smtp-Source: APXvYqzkeM4d2xoox7UrW26qsfl9DIQeUgb3ebwIZYrqCOeIByY+iEP0xv1YBmkPy1xY46M7C9jK0w==
X-Received: by 2002:a05:620a:16dc:: with SMTP id
 a28mr16541779qkn.200.1566846062457; 
 Mon, 26 Aug 2019 12:01:02 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:01:01 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 3/6] rqchip/gic-v3-its: add reset pending table function
Date: Mon, 26 Aug 2019 15:00:53 -0400
Message-Id: <20190826190056.27854-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120104_500878_11752F8D 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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

Add function that is similar to gic_reset_prop_table but for pending
table.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 656b6c6e1bf8..124e2cb890cd 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -1989,17 +1989,23 @@ static int its_alloc_collections(struct its_node *its)
 	return 0;
 }
 
+static void gic_reset_pending_table(void *va)
+{
+	memset(va, 0, LPI_PENDBASE_SZ);
+
+	/* Make sure the GIC will observe the zero-ed page */
+	gic_flush_dcache_to_poc(va, LPI_PENDBASE_SZ);
+}
+
 static struct page *its_allocate_pending_table(gfp_t gfp_flags)
 {
 	struct page *pend_page;
 
-	pend_page = alloc_pages(gfp_flags | __GFP_ZERO,
-				get_order(LPI_PENDBASE_SZ));
+	pend_page = alloc_pages(gfp_flags, get_order(LPI_PENDBASE_SZ));
 	if (!pend_page)
 		return NULL;
 
-	/* Make sure the GIC will observe the zero-ed page */
-	gic_flush_dcache_to_poc(page_address(pend_page), LPI_PENDBASE_SZ);
+	gic_reset_pending_table(page_address(pend_page));
 
 	return pend_page;
 }
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
