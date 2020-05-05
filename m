Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A14431C60B4
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 21:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mo7n9sNLMOHbbceFGOUSB4/hI+RLJWM2DPHmWmAM5J8=; b=II4Cj1VIUg5LnqCOGquU18wK7F
	l3JqJXzkvw5poz/Nf0pE1RMxy2DYk/q5U6YultfsigiwkLW79dmxTBZBgWuCUdgNcaoNHrxfirosB
	RZoejOw3tgi9jIZM7v3Ga021xHqSJYEaT9d5CUKHealnQtm4apG5imemVqpK7GUZ7yECF9FQceewF
	ib0gAQuMgEDA76hcu6Px1C9lFHTVM9WDmFOCXfOe/K77IJUjC1NvLIJRJHcIfFDFIOGPtzd0PkaHL
	z7izgoQSiHAmUH+KgY9ttlkhY74KN6KjiTeFgEIyFL73efs2d8LcfqdMVkmwEJjU1eJbe7UfoMhKh
	hye4dvsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2sS-0003Gg-CL; Tue, 05 May 2020 19:05:12 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2sL-000203-2V
 for kexec@lists.infradead.org; Tue, 05 May 2020 19:05:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588705502;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lhe5m2R7Jc7n9dJhJ15iCJKyLgZyFqCNMg/v94bmURc=;
 b=XfPQutqSL5hNAJ5WrYX8PD7e4og9AIwMrv3lO/bsViINJXJryfaHRKJWo1/QT8l15/aOXF
 ZB/yirEaKGTDKsOtTxw8J4U4bxa8BEizQmkDr6gLeX5eFSoVmnznI5IxZ070bjZSWdvUF6
 Iyva88LH9DtPPqyIWAeluoI41Vn7qSo=
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com
 [209.85.214.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-izuFjAhOPciHmzQEGKYNXg-1; Tue, 05 May 2020 15:05:01 -0400
X-MC-Unique: izuFjAhOPciHmzQEGKYNXg-1
Received: by mail-pl1-f198.google.com with SMTP id j23so2671486pll.16
 for <kexec@lists.infradead.org>; Tue, 05 May 2020 12:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=U4GrP7XNU8L0g24slP3Y9dEDs+NkxIqN98lAYXvDGmU=;
 b=ivCNHZHWvURXv7GtKjHTs7AFcxFdy5jk7ZaBaV+7YUbOUGWoRmRhQyDeVCvxjo11so
 l1n8MV+swmhEWYD2/nvnLmrlQfJm1CJU8D2eNLhimrS8Y6UcKU2Ohx2GY57KDvuEYixa
 FyXyIASv5YULn/SLqkJpJ6tpL3njq84jJAkWh8+6kPvzQDYNZ1f/dMB5meDCUw7+gIRF
 OIzCdnwiYOTfNClW3ZlWNpvzMmMOH2cEmRaIYcpZoWnOkyFVPceVsMt4P5Ac2WoGykOi
 hnBMplJOHlOluuMGEeieROG5eMdopEUPWi6QzAlh62ZWEWos34PFCloveD3RPLYXeqvM
 7kcA==
X-Gm-Message-State: AGi0PuYwJaHuPHSkMX68Nx/E2shrBmYsnuVWUBEY0sXTS38Ff2rG5uGQ
 LLdjF2HN1QjW8zFhXeVjCUqis1yNPWeftLH/VVXk/34U2fRQOm0JyQOQMBFcFPTwUY3joKSHpLf
 Bdmzt7IoaLZ7Rhs+uXry9
X-Received: by 2002:a17:90a:2fc8:: with SMTP id
 n8mr4931050pjm.159.1588705499333; 
 Tue, 05 May 2020 12:04:59 -0700 (PDT)
X-Google-Smtp-Source: APiQypKasw2T0vbZ5atQn/rNAI6ZBPg7B5A29a3CWSro3nVzE6UVzU461CDw6k/5yIaqczr2W1pqXg==
X-Received: by 2002:a17:90a:2fc8:: with SMTP id
 n8mr4931017pjm.159.1588705499081; 
 Tue, 05 May 2020 12:04:59 -0700 (PDT)
Received: from localhost ([122.177.124.216])
 by smtp.gmail.com with ESMTPSA id i128sm2494555pfc.149.2020.05.05.12.04.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 12:04:58 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: netdev@vger.kernel.org
Subject: [PATCH 2/2] net: qed: Disable SRIOV functionality inside kdump kernel
Date: Wed,  6 May 2020 00:34:41 +0530
Message-Id: <1588705481-18385-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
References: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_120505_290293_C68F9314 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aelior@marvell.com, manishc@marvell.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 GR-everest-linux-l2@marvell.com, bhupesh.linux@gmail.com, davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Since we have kdump kernel(s) running under severe memory constraint
it makes sense to disable the qed SRIOV functionality when running the
kdump kernel as kdump configurations on several distributions don't
support SRIOV targets for saving the vmcore (see [1] for example).

Currently the qed SRIOV functionality ends up consuming memory in
the kdump kernel, when we don't really use the same.

An example log seen in the kdump kernel with the SRIOV functionality
enabled can be seen below (obtained via memstrack tool, see [2]):
 dracut-pre-pivot[676]: ======== Report format module_summary: ========
 dracut-pre-pivot[676]: Module qed using 149.6MB (2394 pages), peak allocation 149.6MB (2394 pages)

This patch disables the SRIOV functionality inside kdump kernel and with
the same applied the memory consumption goes down:
 dracut-pre-pivot[671]: ======== Report format module_summary: ========
 dracut-pre-pivot[671]: Module qed using 124.6MB (1993 pages), peak allocation 124.7MB (1995 pages)

[1]. https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/managing_monitoring_and_updating_the_kernel/installing-and-configuring-kdump_managing-monitoring-and-updating-the-kernel#supported-kdump-targets_supported-kdump-configurations-and-targets
[2]. Memstrack tool: https://github.com/ryncsn/memstrack

Cc: kexec@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Ariel Elior <aelior@marvell.com>
Cc: GR-everest-linux-l2@marvell.com
Cc: Manish Chopra <manishc@marvell.com>
Cc: David S. Miller <davem@davemloft.net>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 drivers/net/ethernet/qlogic/qed/qed_sriov.h  | 10 +++++++---
 drivers/net/ethernet/qlogic/qede/qede_main.c |  2 +-
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qed/qed_sriov.h b/drivers/net/ethernet/qlogic/qed/qed_sriov.h
index 368e88565783..f2ebd9a76e20 100644
--- a/drivers/net/ethernet/qlogic/qed/qed_sriov.h
+++ b/drivers/net/ethernet/qlogic/qed/qed_sriov.h
@@ -32,6 +32,7 @@
 
 #ifndef _QED_SRIOV_H
 #define _QED_SRIOV_H
+#include <linux/crash_dump.h>
 #include <linux/types.h>
 #include "qed_vf.h"
 
@@ -40,9 +41,12 @@
 #define QED_VF_ARRAY_LENGTH (3)
 
 #ifdef CONFIG_QED_SRIOV
-#define IS_VF(cdev)             ((cdev)->b_is_vf)
-#define IS_PF(cdev)             (!((cdev)->b_is_vf))
-#define IS_PF_SRIOV(p_hwfn)     (!!((p_hwfn)->cdev->p_iov_info))
+#define IS_VF(cdev)             ((is_kdump_kernel()) ? \
+				 (0) : ((cdev)->b_is_vf))
+#define IS_PF(cdev)             ((is_kdump_kernel()) ? \
+				 (1) : !((cdev)->b_is_vf))
+#define IS_PF_SRIOV(p_hwfn)     ((is_kdump_kernel()) ? \
+				 (0) : !!((p_hwfn)->cdev->p_iov_info))
 #else
 #define IS_VF(cdev)             (0)
 #define IS_PF(cdev)             (1)
diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index 34fa3917eb33..f557ae90ce7c 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -1187,7 +1187,7 @@ static int qede_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	case QEDE_PRIVATE_VF:
 		if (debug & QED_LOG_VERBOSE_MASK)
 			dev_err(&pdev->dev, "Probing a VF\n");
-		is_vf = true;
+		is_vf = is_kdump_kernel() ? false : true;
 		break;
 	default:
 		if (debug & QED_LOG_VERBOSE_MASK)
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
