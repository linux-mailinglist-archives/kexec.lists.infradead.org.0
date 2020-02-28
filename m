Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE4E1730AA
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 06:55:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xMDnZbMsIKJCd4LzmkJwSq9hr7UGY6sX1NNepMp4Mio=; b=u1aZJ0SK9Bq0MSHMdWhj3Q2U1Q
	3DebIzJ3DUdom5RRBUxP34OquJppmGs+149pL7+0qZKL1dOaxtSoj75w4yJfBjyn+jp2stQXpEbKG
	eWzuYUOTcrTU8gble0jOuahfSs1r4tVqJzdIylHxbvZjYtcDTw3LtWrpfwMISIvOxhqAcxvXrE3o0
	4h99cjuy8lG/7ZemHdiag+IwuO/jTMZBVlR3xF26d1/5bT+zkRUCNBSdf/ukLN4XgJyLV9wFe+FeY
	TdMEHHcIRISH6sYOOkpUdOeHMWEMv8C88Vc23KjOXtFtaFn9KJlNy4jdn9rw+cpCicJyN2xTMq6Tl
	fJBOb8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Ycs-0003gV-Cq; Fri, 28 Feb 2020 05:55:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yco-0003fC-VV
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 05:55:52 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so817955plt.2
 for <kexec@lists.infradead.org>; Thu, 27 Feb 2020 21:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L8rGUYxhbypjgSuuIwwUeSExzDpL04oqm+fwGUs0R9U=;
 b=CoxK1KT9bOnSWt7BQrt75JH8qlI42ZG3ynJfTwsJ8hCmNHdFuFQZSSo9Zsoj1Yf9pP
 rS4lxpNkwnLyaUT7XALzYuoo3qYeCbNy+1EfFBEYOmOx30d95+TfRP3A0Y/EJ2tdKjgD
 5iVxXAK6MSTXT2oZg9jKz7imssMhL174KPDECBPlo8payhOpWvudvGvh6MMtwV3L7CiH
 fOpNQVjfakykF/Mr1dexK0M3nMj7kiW031L9GGCvJrR+STvt1ldyXrB5sJHw1kowGxr7
 omNTsNZY1IxdK1uI0oj7al70eoMYdalx6h67jcloiv89j9+cn/d/H0s8+lioW5JThhbL
 9hUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L8rGUYxhbypjgSuuIwwUeSExzDpL04oqm+fwGUs0R9U=;
 b=fcZLuNt1fu0xL/qCrKSHTvheb+Fy/P7fJ+k6LPHhDfPadAJX8WCWYb0g4hIWBeecPW
 0HF+ivTxAOpk13R4kl4TnWDeKSMEJxPGgeWiiNq5HlZl1sCHBEF7hjnGiJCTfQ4m453x
 RiZdd47mQsu9G+3bf0e4Id6uNSzjqBMIK5ZiCxtd/TG+1rqD2ijCM7leydHZJNLKvJw0
 uQUuqzUxDCgSurIXtDCbVK/K0Uo+tprXuHSXl3li1Hl+OTGtP3a2EKjKnvXgITtvJWW6
 WwgE4lrqZiU6WlKal5v7eswtFToROExezbJ2ipx1WaPCmk1o+IxITWBx2u6OsF9TVC1x
 kG4w==
X-Gm-Message-State: APjAAAVeCBX9flyCynaOGk6lJs3uyKn3Sy1zzSA/wY3h+Q6tNC/bHv+c
 nEXGeguhMKq3xi1Ke0qFiw==
X-Google-Smtp-Source: APXvYqzwcXYAp67+/xKPPogA1TY3PSVtYXrYxv0yFYHgKcieO9TGH6hdxAOH4xIdhwPLO43S1+o6ow==
X-Received: by 2002:a17:902:db83:: with SMTP id
 m3mr2633318pld.166.1582869350518; 
 Thu, 27 Feb 2020 21:55:50 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id h4sm4350370pgq.20.2020.02.27.21.55.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 21:55:50 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 3/3] pseries/scm: buffer pmem's bound addr in dt for kexec
 kernel
Date: Fri, 28 Feb 2020 13:53:12 +0800
Message-Id: <1582869192-9284-3-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
References: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_215551_012784_B3A56761 
X-CRM114-Status: GOOD (  16.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 kexec@lists.infradead.org, Pingfan Liu <kernelfans@gmail.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
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
Cc: kexec@lists.infradead.org
---
note: I can not find such a pseries machine, and not finish it yet.
---
 arch/powerpc/platforms/pseries/papr_scm.c | 32 +++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/arch/powerpc/platforms/pseries/papr_scm.c b/arch/powerpc/platforms/pseries/papr_scm.c
index c2ef320..555e746 100644
--- a/arch/powerpc/platforms/pseries/papr_scm.c
+++ b/arch/powerpc/platforms/pseries/papr_scm.c
@@ -382,7 +382,7 @@ static int papr_scm_probe(struct platform_device *pdev)
 {
 	struct device_node *dn = pdev->dev.of_node;
 	u32 drc_index, metadata_size;
-	u64 blocks, block_size;
+	u64 blocks, block_size, bound_addr = 0;
 	struct papr_scm_priv *p;
 	const char *uuid_str;
 	u64 uuid[2];
@@ -439,17 +439,29 @@ static int papr_scm_probe(struct platform_device *pdev)
 	p->metadata_size = metadata_size;
 	p->pdev = pdev;
 
-	/* request the hypervisor to bind this region to somewhere in memory */
-	rc = drc_pmem_bind(p);
+	of_property_read_u64(dn, "bound-addr", &bound_addr);
+	if (bound_addr)
+		p->bound_addr = bound_addr;
+	else {
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
+		property = new_property("bound-addr", sizeof(u64), &big,
+			NULL);
+		of_add_property(dn, property);
 	}
 
 	/* setup the resource for the newly bound range */
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
