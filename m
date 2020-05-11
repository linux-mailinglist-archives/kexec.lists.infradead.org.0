Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 333D41CD613
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 12:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=91D2lYYhXOtkywWPKP3MLqlKUkzm57t27shZUHVxPe0=; b=UYbr39728X9mQG6HZLofU9c37S
	dpoiy2Wgoox+7M2iWUagLT8/LdTDiTmNtVSfEEZTmOcKVLRJSb7HZWuIuFrAKOfTMaPo9CqyNG99E
	hHYy+ALE0nOhbpJEP2mYbyCSiNCds70Fl1tkNq+pUW4N6qBhY4Sgm1XDnU+f6+RqBzQUzGwcW+a2L
	98+9KZiwzGxkcPNb5Ja4ludSpUGTLVm9g3l9zxwOkCj9dxSPxxWvM9ezvZXEWGQyPuNxyoKDDiyBI
	mKGQZcHKoxPvvO71dFTcyF0a2OY5eNVtljINzKLbjHGcwBrCEw6a8gXAqsrOmq7fY+vPGFSAfTcp2
	e/lVFaEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5Pl-0006JN-Jb; Mon, 11 May 2020 10:12:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5Ph-0006GD-Pw
 for kexec@lists.infradead.org; Mon, 11 May 2020 10:11:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589191916;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:in-reply-to:in-reply-to:
 references:references; bh=ZN7xwg5CWZvOzQGTmaByrLX25ajcsG3GF52exfugwgc=;
 b=cVppFKBLVW5jqbQLS6lKmDfSrLRvsyiKrAaVplcC+unYUPBoX3hp7GU08G+TGj566b+fJu
 Ihhq9aci86fz9WgyQbdKGELo9yUp2yOzjqUjDm54bwo37ZBFIE8ofJs0mIPIb1zPGIf1+f
 /iYd4rQfScV0RgwbvLbeDyTJIe1oxAI=
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com
 [209.85.210.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-MY1Bd_1kPxq8QW8XIAO7VQ-1; Mon, 11 May 2020 06:11:55 -0400
X-MC-Unique: MY1Bd_1kPxq8QW8XIAO7VQ-1
Received: by mail-pf1-f200.google.com with SMTP id t9so8395456pfq.14
 for <kexec@lists.infradead.org>; Mon, 11 May 2020 03:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZN7xwg5CWZvOzQGTmaByrLX25ajcsG3GF52exfugwgc=;
 b=cGABa+4l3ron/bGpdmZEEfxht3QNOg+kFEfsAioCQB4rWXul+24JzoizqhxbCt2iEJ
 5QwGPjKqWYF7BTvVrf7PBDhe52t6HtknPMCyvTXZqY1H9G5v1Lybs5TN1ZvqnnM/oBJN
 G/Zpl8IqaaXuCUazIAHc4KNhfjNN4IfJt/hlem5ECcU5h+7hdVOLmBXReYV3AemIwU1O
 Utc864RpjFQrG7NEKI5OJQXrYv0prNH02POhvha/BEb1DtHNC9axGhDI6Y8TOrhExBLw
 zQ5x/r57KV8OYVWOLIukivKfj/La3u/t1BfK1cEnCR4nDElD5CdVhvZd0pRph6hHQsV/
 kScw==
X-Gm-Message-State: AGi0PuZYvYAPuRHHg4MTdQWJHY4wzbKMTAB44gNrX7uqkyLobMifH9wS
 0syrggG8zsvcHyYr5yEFqSt7b567R5im6Rm2hE3o4b8BQ96s+Swwra8dAO5aWy6cgI++US1SUkn
 eAU6MnvhCLsYc9oAIx+yc
X-Received: by 2002:a17:902:32b:: with SMTP id
 40mr14128013pld.73.1589191913261; 
 Mon, 11 May 2020 03:11:53 -0700 (PDT)
X-Google-Smtp-Source: APiQypJWyWXGdAoto/0EXXwdx9Dr2HzYt8dFPCj8KebFaRpzS/r4xZule3kpAQxzMDRxJPy9o+z/rg==
X-Received: by 2002:a17:902:32b:: with SMTP id
 40mr14127998pld.73.1589191912970; 
 Mon, 11 May 2020 03:11:52 -0700 (PDT)
Received: from localhost ([223.235.87.110])
 by smtp.gmail.com with ESMTPSA id s136sm9033998pfc.29.2020.05.11.03.11.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 May 2020 03:11:52 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 2/2] net: qed: Disable SRIOV functionality inside kdump
 kernel
Date: Mon, 11 May 2020 15:41:42 +0530
Message-Id: <1589191902-958-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
References: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_031157_945251_600EAEF9 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: aelior@marvell.com, irusskikh@marvell.com, manishc@marvell.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
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
index 368e88565783..aabeaf03135e 100644
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
+#define IS_VF(cdev)             (is_kdump_kernel() ? \
+				 (0) : ((cdev)->b_is_vf))
+#define IS_PF(cdev)             (is_kdump_kernel() ? \
+				 (1) : !((cdev)->b_is_vf))
+#define IS_PF_SRIOV(p_hwfn)     (is_kdump_kernel() ? \
+				 (0) : !!((p_hwfn)->cdev->p_iov_info))
 #else
 #define IS_VF(cdev)             (0)
 #define IS_PF(cdev)             (1)
diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index 1a83d1fd8ccd..28afa0c49fe8 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -1194,7 +1194,7 @@ static int qede_probe(struct pci_dev *pdev, const struct pci_device_id *id)
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
