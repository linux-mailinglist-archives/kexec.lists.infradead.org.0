Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EDF19B427
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 18:57:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VV1JkKdBuzy5lQrD3O9Ln47eq2ZtQUxX2aFqyKGjdt0=; b=m07z0v/X8GrUPo
	ogI+503Z3IEv1lZbB1hNe848u8I7be2pgryvwg7w1MbaX4/adXLqJFLjhMlPS1pVLmU+vDOEP1/jG
	/BblnclABA+G1ESyn4rTeLIY3O3r+xFqAo30wgyeLgOg4NhUjiDq0ZaRToO6BhgCNsi1zmYwQM/Wc
	vth0mYuyDB2Ug1ArYHtkrJ+qeMA0io/+Vrj1YNyxXCSR4OixPUv6C4MfZqjKqwdPIktTquCs9Skfu
	ckdRq5fZtvJg1xeT4y7k25EAscuTgKDR3YLv0x/ULNW+OadMY/51+iVll4ev2UkDYPJVVNxcnspE0
	BK8lrKnpMSQB6WpW98UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJggP-0006q2-IE; Wed, 01 Apr 2020 16:57:41 +0000
Received: from smtp-fw-6002.amazon.com ([52.95.49.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJggM-0006oA-OC
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 16:57:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1585760259; x=1617296259;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=7dZqS5KudLpK33WObjvtLfoxUnS3jQRtCRvgfzotbFo=;
 b=nUKvElqibrWdvmotxfLPmnsI1KMX687Twn0RHzwNplpormU8o2F/Xama
 He5OFjt+lp67q7q8PCsI5x/TNFGa3p8Dev5F+opr1Ei74pRSdkPMaJBhF
 E+YjdRrXlgf2w0NYaPpL3aSdwaGTZFuRIyrpXYGII71EoWvleM3zXQZWq A=;
IronPort-SDR: uBEe2U/accfZCFwM3pfnshWwyFFkmZG+flXbWcd2MKJYcPdVsqjjwXfWlBZTgsbHKyM5/5eTvA
 BAmFlkhp3SLA==
X-IronPort-AV: E=Sophos;i="5.72,332,1580774400"; d="scan'208";a="23687960"
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2a-d0be17ee.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6002.iad6.amazon.com with ESMTP;
 01 Apr 2020 16:57:24 +0000
Received: from EX13MTAUEB002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan3.pdx.amazon.com [10.170.41.166])
 by email-inbound-relay-2a-d0be17ee.us-west-2.amazon.com (Postfix) with ESMTPS
 id 8836DA305F
 for <kexec@lists.infradead.org>; Wed,  1 Apr 2020 16:57:23 +0000 (UTC)
Received: from EX13D08UEB002.ant.amazon.com (10.43.60.107) by
 EX13MTAUEB002.ant.amazon.com (10.43.60.12) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Wed, 1 Apr 2020 16:57:23 +0000
Received: from EX13MTAUWB001.ant.amazon.com (10.43.161.207) by
 EX13D08UEB002.ant.amazon.com (10.43.60.107) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 1 Apr 2020 16:57:22 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.1.213.21) by
 mail-relay.amazon.com (10.43.161.249) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Wed, 1 Apr 2020 16:57:20 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH v2 1/3] kexec-xen: Introduce xen_get_kexec_range to wrap
 xc_kexec_get_range
Date: Wed, 1 Apr 2020 18:57:15 +0200
Message-ID: <1585760237-26924-1-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_095738_923677_4C73DAE2 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.49.90 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Varad Gautam <vrd@amazon.de>, dwmw@amazon.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

And convert all callers of xc_kexec_get_range to use this. Allows reusing
sanity checks for other KEXEC_RANGEs

v2: define xen_get_kexec_range outside of HAVE_LIBXENCTRL

Signed-off-by: Varad Gautam <vrd@amazon.de>
---
 kexec/crashdump-xen.c | 38 +++++---------------------------------
 kexec/kexec-xen.c     | 32 ++++++++++++++++++++++++++++++++
 kexec/kexec-xen.h     |  4 ++++
 3 files changed, 41 insertions(+), 33 deletions(-)

diff --git a/kexec/crashdump-xen.c b/kexec/crashdump-xen.c
index 2d6b2f9..3f59a0d 100644
--- a/kexec/crashdump-xen.c
+++ b/kexec/crashdump-xen.c
@@ -162,21 +162,15 @@ unsigned long xen_architecture(struct crash_elf_info *elf_info)
 #ifdef HAVE_LIBXENCTRL
 int get_xen_vmcoreinfo(uint64_t *addr, uint64_t *len)
 {
-	xc_interface *xc;
+	uint64_t end;
 	int ret = 0;
 
-	xc = xc_interface_open(NULL, NULL, 0);
-	if (!xc) {
-	        fprintf(stderr, "failed to open xen control interface.\n");
+	ret = xen_get_kexec_range(KEXEC_RANGE_MA_VMCOREINFO, addr, &end);
+	if (ret < 0)
 	        return -1;
-	}
-
-	ret = xc_kexec_get_range(xc, KEXEC_RANGE_MA_VMCOREINFO, 0, len, addr);
 
-	xc_interface_close(xc);
+	*len = end - *addr + 1;
 
-	if (ret < 0)
-	        return -1;
 	return 0;
 }
 
@@ -252,29 +246,7 @@ int xen_get_note(int cpu, uint64_t *addr, uint64_t *len)
 #ifdef HAVE_LIBXENCTRL
 int xen_get_crashkernel_region(uint64_t *start, uint64_t *end)
 {
-	uint64_t size;
-	xc_interface *xc;
-	int rc = -1;
-
-	xc = xc_interface_open(NULL, NULL, 0);
-	if (!xc) {
-		fprintf(stderr, "failed to open xen control interface.\n");
-		goto out;
-	}
-
-	rc = xc_kexec_get_range(xc, KEXEC_RANGE_MA_CRASH, 0, &size, start);
-	if (rc < 0) {
-		fprintf(stderr, "failed to get crash region from hypervisor.\n");
-		goto out_close;
-	}
-
-	*end = *start + size - 1;
-
-out_close:
-	xc_interface_close(xc);
-
-out:
-	return rc;
+	return xen_get_kexec_range(KEXEC_RANGE_MA_CRASH, start, end);
 }
 #else
 int xen_get_crashkernel_region(uint64_t *start, uint64_t *end)
diff --git a/kexec/kexec-xen.c b/kexec/kexec-xen.c
index c326955..afcfc5b 100644
--- a/kexec/kexec-xen.c
+++ b/kexec/kexec-xen.c
@@ -64,6 +64,33 @@ int __xc_interface_close(xc_interface *xch)
 }
 #endif /* CONFIG_LIBXENCTRL_DL */
 
+int xen_get_kexec_range(int range, uint64_t *start, uint64_t *end)
+{
+	uint64_t size;
+	xc_interface *xc;
+	int rc = -1;
+
+	xc = xc_interface_open(NULL, NULL, 0);
+	if (!xc) {
+		fprintf(stderr, "failed to open xen control interface.\n");
+		goto out;
+	}
+
+	rc = xc_kexec_get_range(xc, range, 0, &size, start);
+	if (rc < 0) {
+		fprintf(stderr, "failed to get range=%d from hypervisor.\n", range);
+		goto out_close;
+	}
+
+	*end = *start + size - 1;
+
+out_close:
+	xc_interface_close(xc);
+
+out:
+	return rc;
+}
+
 #define IDENTMAP_1MiB (1024 * 1024)
 
 int xen_kexec_load(struct kexec_info *info)
@@ -226,6 +253,11 @@ void xen_kexec_exec(void)
 
 #else /* ! HAVE_LIBXENCTRL */
 
+int xen_get_kexec_range(int range, uint64_t *start, uint64_t *end)
+{
+	return -1;
+}
+
 int xen_kexec_load(struct kexec_info *UNUSED(info))
 {
 	return -1;
diff --git a/kexec/kexec-xen.h b/kexec/kexec-xen.h
index ae67393..94d22cd 100644
--- a/kexec/kexec-xen.h
+++ b/kexec/kexec-xen.h
@@ -63,6 +63,10 @@ extern int __xc_interface_close(xc_interface *xch);
 	__xc_call(void *, xc_hypercall_buffer_array_destroy, args)
 
 #endif /* CONFIG_LIBXENCTRL_DL */
+
+
 #endif /* HAVE_LIBXENCTRL */
 
+int xen_get_kexec_range(int range, uint64_t *start, uint64_t *end);
+
 #endif /* KEXEC_XEN_H */
-- 
2.7.4




Amazon Development Center Germany GmbH
Krausenstr. 38
10117 Berlin
Geschaeftsfuehrung: Christian Schlaeger, Jonathan Weiss
Eingetragen am Amtsgericht Charlottenburg unter HRB 149173 B
Sitz: Berlin
Ust-ID: DE 289 237 879




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
