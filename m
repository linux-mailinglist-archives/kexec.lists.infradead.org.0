Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1B7178CCF
	for <lists+kexec@lfdr.de>; Wed,  4 Mar 2020 09:50:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HwuShstWGnU8uhCHGPNYViZ913Z/o9ZdPC7osxh0yx4=; b=P9O90HSbKIoz/+ek4FDPcSpJRI
	hQRUW6/WhR0UJ6OzuIi1ITcBQ/+Og3bxsRc+MH4Tk9TS6QXZDeMmGoWVY1rBAYnYSGCWwXAP6djaJ
	D9yd7Xl79ruFUektYP4IFeHBPDtyh71D8yUYZnKg3Jae3R+eBYSrV/zrZGEncofSuKqTo1nTMNNIJ
	HKA060nYDeOaafAAAp6c8kPzQ79wfJrHijozARgaXExgh+YETSVIs71Ir5GFZv7yasnNlOhLTDjpi
	6exhQIpilWvclBDAtNM5JD3Rw5JT/wrlugeQAAyaetRATbajxs3DWjHLL2XclPtpqjHDviXLXyRWF
	hF/MXr0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Pja-0004jZ-Jx; Wed, 04 Mar 2020 08:50:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9PjX-0004iO-OC
 for kexec@lists.infradead.org; Wed, 04 Mar 2020 08:50:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id h8so659130pgs.9
 for <kexec@lists.infradead.org>; Wed, 04 Mar 2020 00:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TiIql+hW6vhy0nku7tSxH1zd1ke9Ma9eE04Z6saZ0pI=;
 b=Bs+piawutlma6+60B2UgAJv10zwf7Erndy8kh5SNp+Gf7/k9vbgZ/T94ITGhbxCZip
 vytj8bE59j/lzS8CxKPckuGDcJo0VDvDuQrLCkX3IEQclOuPfHByyeqontuS222iowv0
 TK+ewVwE8m1+dn1G+npFk169BQ5+UR2OxvbFVoA4GVUc4kpDeZpCgVRcaP6ISN6BS/5w
 Wty0RppaocpgFv6woqCYIVNo8u0rVVDUm9WkXNWivt/HlLTYq1mGVg3bpJhgTcn69G5C
 Cc8Bd/5vECbIh3vpcRLxttQToYsdKA0q7WxDG3Gz4PI1zwgWdS6gGeJS2DJTX92tPKMN
 OW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TiIql+hW6vhy0nku7tSxH1zd1ke9Ma9eE04Z6saZ0pI=;
 b=c60h9lumfv+JtVF2eg8Bdx4LB85ThuiChExYxZCXCE1fdIqZDpcLXtfhU6gy/OSocb
 vCOnhwkmgIg5TS4UiiYJvuIV0VASPHwC1MOQ7DZVA7ReGP2AuKAFWE3Fk/B5yOzxpOg9
 g1QOwekkLFF9ZgKjsRarfWKLui1QRzzzvxdfMB/yzMgNX3OpyUlxhMXkPrJ/OhJFPmK5
 gqXd8XEN8oAgJIJ9zILxhevimyrwDIACAfzWehGBIJDFv9KiyueTHHS4M5AZAoJ7fWKO
 wUfWvrtVc7g3Rg4Ybl//Mxwl7D9iJpI6RX2MTxIN/txwcF147hjQeyJZgnRhxefr39fh
 7xdA==
X-Gm-Message-State: ANhLgQ1Xsvh9YpXr++CViJU3aq4NGzyaWTfPvngCl+Rjf1zEx7vGpO76
 nfXYcz5E1zffhT4uuDKxnw==
X-Google-Smtp-Source: ADFU+vth/c3FMVXP227g9RnMbHBW7Dm4LTTbiytp5WE1VmF47AAiylu4k1WqHrEUK9kBj5dgmHDpWA==
X-Received: by 2002:a62:6807:: with SMTP id d7mr2043056pfc.230.1583311827109; 
 Wed, 04 Mar 2020 00:50:27 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v123sm463085pfb.85.2020.03.04.00.50.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Mar 2020 00:50:26 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv3 2/2] pseries/scm: buffer pmem's bound addr in dt for kexec
 kernel
Date: Wed,  4 Mar 2020 16:47:30 +0800
Message-Id: <1583311651-29310-3-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
 <1583311651-29310-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_005027_786037_8B1007A8 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Andrew Donnellan <ajd@linux.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Frank Rowand <frowand.list@gmail.com>, Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

At present, plpar_hcall(H_SCM_BIND_MEM, ...) takes a very long time, so
if dumping to fsdax, it will take a very long time.

Take a closer look, during the papr_scm initialization, the only
configuration is through drc_pmem_bind()-> plpar_hcall(H_SCM_BIND_MEM,
...), which helps to set up the bound address.

On pseries, for kexec -l/-p kernel, there is no reset of hardware, and this
step can be stepped around to save times.  So the pmem bound address can be
passed to the 2nd kernel through a dynamic added property "bound-addr" in
dt node 'ibm,pmemory'.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
Cc: Oliver O'Halloran <oohall@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Andrew Donnellan <ajd@linux.ibm.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: kexec@lists.infradead.org
---
note: This patch has not been tested since I can not get such a pseries with pmem.
      Please kindly to give some suggestion, thanks.
---
 arch/powerpc/platforms/pseries/of_helpers.c |  1 +
 arch/powerpc/platforms/pseries/papr_scm.c   | 33 ++++++++++++++++++++---------
 drivers/of/base.c                           |  1 +
 3 files changed, 25 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/of_helpers.c b/arch/powerpc/platforms/pseries/of_helpers.c
index 1022e0f..2c7bab4 100644
--- a/arch/powerpc/platforms/pseries/of_helpers.c
+++ b/arch/powerpc/platforms/pseries/of_helpers.c
@@ -34,6 +34,7 @@ struct property *new_property(const char *name, const int length,
 	kfree(new);
 	return NULL;
 }
+EXPORT_SYMBOL(new_property);
 
 /**
  * pseries_of_derive_parent - basically like dirname(1)
diff --git a/arch/powerpc/platforms/pseries/papr_scm.c b/arch/powerpc/platforms/pseries/papr_scm.c
index 0b4467e..54ae903 100644
--- a/arch/powerpc/platforms/pseries/papr_scm.c
+++ b/arch/powerpc/platforms/pseries/papr_scm.c
@@ -14,6 +14,7 @@
 #include <linux/delay.h>
 
 #include <asm/plpar_wrappers.h>
+#include "of_helpers.h"
 
 #define BIND_ANY_ADDR (~0ul)
 
@@ -383,7 +384,7 @@ static int papr_scm_probe(struct platform_device *pdev)
 {
 	struct device_node *dn = pdev->dev.of_node;
 	u32 drc_index, metadata_size;
-	u64 blocks, block_size;
+	u64 blocks, block_size, bound_addr = 0;
 	struct papr_scm_priv *p;
 	const char *uuid_str;
 	u64 uuid[2];
@@ -440,17 +441,29 @@ static int papr_scm_probe(struct platform_device *pdev)
 	p->metadata_size = metadata_size;
 	p->pdev = pdev;
 
-	/* request the hypervisor to bind this region to somewhere in memory */
-	rc = drc_pmem_bind(p);
+	of_property_read_u64(dn, "bound-addr", &bound_addr);
+	if (bound_addr) {
+		p->bound_addr = bound_addr;
+	} else {
+		struct property *property;
+		u64 big;
 
-	/* If phyp says drc memory still bound then force unbound and retry */
-	if (rc == H_OVERLAP)
-		rc = drc_pmem_query_n_bind(p);
+		/* request the hypervisor to bind this region to somewhere in memory */
+		rc = drc_pmem_bind(p);
 
-	if (rc != H_SUCCESS) {
-		dev_err(&p->pdev->dev, "bind err: %d\n", rc);
-		rc = -ENXIO;
-		goto err;
+		/* If phyp says drc memory still bound then force unbound and retry */
+		if (rc == H_OVERLAP)
+			rc = drc_pmem_query_n_bind(p);
+
+		if (rc != H_SUCCESS) {
+			dev_err(&p->pdev->dev, "bind err: %d\n", rc);
+			rc = -ENXIO;
+			goto err;
+		}
+		big = cpu_to_be64(p->bound_addr);
+		property = new_property("bound-addr", sizeof(u64), (const unsigned char *)&big,
+			NULL);
+		of_add_property(dn, property);
 	}
 
 	/* setup the resource for the newly bound range */
diff --git a/drivers/of/base.c b/drivers/of/base.c
index ae03b12..602d2a9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1817,6 +1817,7 @@ int of_add_property(struct device_node *np, struct property *prop)
 
 	return rc;
 }
+EXPORT_SYMBOL_GPL(of_add_property);
 
 int __of_remove_property(struct device_node *np, struct property *prop)
 {
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
