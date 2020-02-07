Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D61B2155428
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 10:00:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wDLtZccVxywn1YB0ckPyPrCFIf0vAQR17xoXH0Ol1xw=; b=o79OiCz/yGkEZ/
	iQx/5O9tjIvf80nDnUI0nqjJjzsiwrQk7NEN9BPLK5wqQicDGpZjN9IOeVVjDIxL4xloSt/qiJjEO
	ByrCSsZSYyIPAO6N3WhoByz3xydQ80XUyLt9tex3KQcIgX9V9jaEbqY4HiI5kXmjs6UWhQCn++6su
	4PKjTndH60jp7TOi+psDZXplxEATql2AZqNvR7llllTadNTESX+BbIXEKmiU/zXD5Q5CNTZk+tWLd
	YVo8T20g1Xbtw0uhMvacIrzCmhUZ5g2jghgAjhBbe21lAZqKJLVZjAr7qswcxQ7+9RfZWdzslmqQY
	CSlN/xUqizA2hOiiQaRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izzVR-0005Qu-Dv; Fri, 07 Feb 2020 09:00:57 +0000
Received: from smtp-fw-9101.amazon.com ([207.171.184.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izzVN-0005OI-Lt
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 09:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.de; i=@amazon.de; q=dns/txt; s=amazon201209;
 t=1581066053; x=1612602053;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=HRRAJIMUSJScPJ0z+87ep53VPMm3orjVKWifK2gyUFw=;
 b=sddsYVN2zF10EA30oznu7YjIuiRk1j1mmv6MXXk6H5W0uLyJ4BhFP2tt
 m6B0eE3iymZEXfWGQwc+FqpNdo0ux3vKcQLTrc4m3bwWsAFFkGSB1G6hn
 cj/r4rOBeTuPgYCQcyKI0sMHclKGB0iMJG9q6vDzVkWxUMCT2XizY58lO 8=;
IronPort-SDR: grJYtEAkEEiC+LVmsfPukq2tu6yXY54bXSQ664gidQ0ceiRseiHvO6wU0B07C0fXL7ehyRdSOp
 Bt7iQRNyOZjA==
X-IronPort-AV: E=Sophos;i="5.70,412,1574121600"; d="scan'208";a="15238053"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-1a-67b371d8.us-east-1.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-9101.sea19.amazon.com with ESMTP;
 07 Feb 2020 09:00:38 +0000
Received: from EX13MTAUEE002.ant.amazon.com
 (iad55-ws-svc-p15-lb9-vlan3.iad.amazon.com [10.40.159.166])
 by email-inbound-relay-1a-67b371d8.us-east-1.amazon.com (Postfix) with ESMTPS
 id 2EE86A249F
 for <kexec@lists.infradead.org>; Fri,  7 Feb 2020 09:00:37 +0000 (UTC)
Received: from EX13D08UEE004.ant.amazon.com (10.43.62.182) by
 EX13MTAUEE002.ant.amazon.com (10.43.62.24) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Feb 2020 09:00:37 +0000
Received: from EX13MTAUEA001.ant.amazon.com (10.43.61.82) by
 EX13D08UEE004.ant.amazon.com (10.43.62.182) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 7 Feb 2020 09:00:37 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.28.86.33) by
 mail-relay.amazon.com (10.43.61.243) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Fri, 7 Feb 2020 09:00:36 +0000
From: Varad Gautam <vrd@amazon.de>
To: <kexec@lists.infradead.org>
Subject: [PATCH 1/3] kexec-xen: Introduce xen_get_kexec_range to wrap
 xc_kexec_get_range
Date: Fri, 7 Feb 2020 10:00:31 +0100
Message-ID: <1581066033-25120-1-git-send-email-vrd@amazon.de>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_010053_767795_A7CD48B3 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [207.171.184.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Varad Gautam <vrd@amazon.de>, David Woodhouse <dwmw@amazon.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

And convert all callers of xc_kexec_get_range to use this. This allows reusing
sanity checks for other KEXEC_RANGEs that get added in the future.

Signed-off-by: Varad Gautam <vrd@amazon.de>
CC: David Woodhouse <dwmw@amazon.co.uk>
---
 kexec/crashdump-xen.c | 38 +++++---------------------------------
 kexec/kexec-xen.c     | 32 ++++++++++++++++++++++++++++++++
 kexec/kexec-xen.h     |  3 +++
 3 files changed, 40 insertions(+), 33 deletions(-)

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
index ae67393..603ac94 100644
--- a/kexec/kexec-xen.h
+++ b/kexec/kexec-xen.h
@@ -63,6 +63,9 @@ extern int __xc_interface_close(xc_interface *xch);
 	__xc_call(void *, xc_hypercall_buffer_array_destroy, args)
 
 #endif /* CONFIG_LIBXENCTRL_DL */
+
+int xen_get_kexec_range(int range, uint64_t *start, uint64_t *end);
+
 #endif /* HAVE_LIBXENCTRL */
 
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
