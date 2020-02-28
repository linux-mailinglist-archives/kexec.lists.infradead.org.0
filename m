Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9002017346C
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 10:44:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FfY28HGTyJVTd8pE+V9NLpwNqD7zNCQRUCrJ5zcE0yE=; b=g0uIwMlDT/oeNwBU+KZpfj8OFm
	9ekjte6rFV8RIldImMWh0hMED0O2s162m1FRfhRPvpnOCBXD510hptrpAqGtglGveZi7uioYVcTx4
	+uqQfajzA5aJiy3IVSuyslYkik1WcMnAMI+VHqh/wPz+2S+buw90PhhpBU1pVi6Du/00bH1vFeQRA
	mAKiTZ6IrhUfmelnW/3fC+37rvlXZwfLeM076OzReTE0q/+cm08+Dz1WSvenZb63+eUjXHyE3N1WB
	znA4tygAwcci1sMEak9SCloVwJUk0tyiOhAzoRGj7ByEEK5oJsEdP+3uLFz/YxGN+6elT9gSE5la2
	XUX8LnIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7cBm-0003rG-D9; Fri, 28 Feb 2020 09:44:10 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cBf-0003l0-6F
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 09:44:04 +0000
Received: by mail-pg1-x543.google.com with SMTP id 6so1244635pgk.0
 for <kexec@lists.infradead.org>; Fri, 28 Feb 2020 01:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wWdhgB/PDGV0PP2Q0tID/JmqriQZD0sF033uwRiSeoc=;
 b=fpC+6iLRzhrsdDEgptCfRQB9cnLs/TGVhNTEL5htfzhLxCATFKkdEtopbzwDe+mhgl
 OfB/OSnvrMXzjXR8ZySnkEHWtLYSgvqT12XRqmsMR9cQ/hS/FsDWVzwW1iwkeNExYACf
 TUlC+VgQyYgZey4v469aKEtXyzsFQLliP1xlOw48nLHHOXndH3FSi/4Xw2A/MeLPMloB
 RISFkzLgQbYTTgi8br+705O/X2lwk1hARCWlmjHUvDotjvt4x7t8uHtUMD6p+3Gw6Ey6
 +pODjSRGDd8kb0T3hf9vAFKBL/up/6Gn4YQpuRGX5oF0YFZbguw5ywLSq987iS6rpTEN
 bJPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wWdhgB/PDGV0PP2Q0tID/JmqriQZD0sF033uwRiSeoc=;
 b=fdKZ8RVkQ1p9OgNngAhCt1Vzck2Qy5jnt/ClzvTTB4jWOaP2N7z/QNL02hjCrOYXPW
 UB7CWAFKpT9KBbAqplEoNFkC+JGiAbWbqxYparRcJkEvitGAekMklGXmdKKLGTuVIwvc
 ravXPLLZyfLwihwquNHPrumqQH35/0q8ghnaVk757jSrTl21dWG+Ylwc1zdzIMttxMNI
 ROaVMLjsX3tI9+LplBnAF1QH/WXgFCerA1yCp8lamC0vQnNOWpJ2bG1sIb2CTJXTEyfx
 hqMctYyAdLy9tcxRiULNxhkRPP7UyHoBf5LCQ90pen9mx03eyFqazFCE89G6/eXq14A2
 ZD2g==
X-Gm-Message-State: APjAAAWCIKhbpBXCIDDGZof13ccNRhjKg6urywlGVB3UMQzCmUT8SX8B
 gvA+8/6m36TdAeEoKtwJ2w==
X-Google-Smtp-Source: APXvYqz2MfKu7l6HTVd+P0hvLe5Pb4QGOSdRWQrIeeW4KSqtMb7m2sTaJsZ1mJ+OiXB7O25pHH+i5w==
X-Received: by 2002:a63:ee12:: with SMTP id e18mr3680046pgi.33.1582883042504; 
 Fri, 28 Feb 2020 01:44:02 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id j4sm10426460pfh.152.2020.02.28.01.43.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Feb 2020 01:44:02 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCHv2 2/2] pSeries/papr_scm: buffer pmem's bound addr in dt for
 kexec kernel
Date: Fri, 28 Feb 2020 17:41:35 +0800
Message-Id: <1582882895-3142-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
References: <1582882895-3142-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_014403_234323_0F580D49 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pingfan Liu <kernelfans@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>
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
Cc: kexec@lists.infradead.org
---
note: This patch has not been tested since I can not get such a pseries with pmem.
      Please kindly to give some suggestion, thanks.

 arch/powerpc/platforms/pseries/papr_scm.c | 32 +++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/papr_scm.c b/arch/powerpc/platforms/pseries/papr_scm.c
index 0b4467e..40cd214 100644
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
@@ -440,17 +441,28 @@ static int papr_scm_probe(struct platform_device *pdev)
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
+		property = new_property("bound-addr", sizeof(u64), &big, NULL);
+		of_add_property(dn, property);
 	}
 
 	/* setup the resource for the newly bound range */
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
