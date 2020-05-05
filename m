Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026E81C60B3
	for <lists+kexec@lfdr.de>; Tue,  5 May 2020 21:05:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YUg3vOd89btsRJYi5kICRHL6uX113US7taMmc3BPMlk=; b=F3ezw5Jb0r+TPuz0oFDUugjJuJ
	sJrW9q0G/UUoZhlQHf+d/X4OgckFmidszYKJdR/Li1vVkMjRExJiNHbMARnK1jw95WcC4r6o1TTfY
	8s/lLdPzBzGKd/0ctn2Ee9kHWdaJkGJ0eqVGGrRPEih4sw/XpMZowqvoq3euXVHaUL9kiCWTcYZf5
	SaPqZClzu99HRWnJo5K5ZCW5tctGXT5Qst2zGn3X5tHfgZInhrYG+tEQyUV39XYlD6r4D0lTUB2fl
	dVE+GnFyYn5Xs//RBV9NyrFOAGtu9guYeZdhxdcrm5BWyZSXne/9DdegbTTR0OZtXn0OYH1heXYMG
	iYs/Gm+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW2sM-00021O-9m; Tue, 05 May 2020 19:05:06 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW2sG-0001vg-Cv
 for kexec@lists.infradead.org; Tue, 05 May 2020 19:05:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588705498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jQpbFgx161wyv2XmnAG7nlJcOrEWAoYEIoUCFWK9BM0=;
 b=dXs9SGm60sq5DePJB1+eI2EHzWP1Q8VRzDIB5kITpTYlg5Q2mNn6KA4326+pansamgnYLa
 80PnGNaTwD4oW5synCn9N34CRPz31Q5OFEq8NrNqlTlIDL2BY4dKmbM2iUerhiqpY/UaFh
 4tz6rSiar3+6ZSs7DME7kKowsHbp5/I=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-sd5ld-glO_mapMMFeb5Tyg-1; Tue, 05 May 2020 15:04:57 -0400
X-MC-Unique: sd5ld-glO_mapMMFeb5Tyg-1
Received: by mail-pl1-f200.google.com with SMTP id s9so2664321plq.18
 for <kexec@lists.infradead.org>; Tue, 05 May 2020 12:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C87013T7miUBeS+mUtqzih667NdnaLshNDFWgAVS/zE=;
 b=D7TYnYekv5fqhh9NsjqDAPk/3tPy0+vq5vkB3YsO+5jhEVGCeKOtIu3RCCeUSAdMxU
 hd5EHyfx7HSfYSZSxuhI+is0y4eE0DP3Ph7GO1cg5M3rro4TRZOPtouf2vSQ2Yina1P+
 WOsBVXR+GNynbNP/wNff08e7HF3DYZnVILTWuhcR1Et+Ls+c1fPqFTKUaBLRxTExBdkz
 Hxmz4vXjxg+kw6822CeK85ByfkDxFLutkhIgLbir3Ty7VaJLK1V3X3NsDsYOYuuOfD1p
 TYzUgqBo0E8IeUAi89h3lN+4j/k0dc2HDXOdG0GzvJQG7hbNcrvk0vuIbLesj8Vg9/j1
 0bWg==
X-Gm-Message-State: AGi0PuYI9e4sk2mxjCI2UCobNF4Fla4yAexd9lmT8vm4NxNGJlD67Kf9
 zL2TQzn06Xg3H866nwcUgStrTJm52k+P7H0lCk3Hj27p0W2gHbvwpne7TX47P6MYZpIfgYb0DCk
 nSIAHTzwE9/B5PVQjqil1
X-Received: by 2002:a17:90a:df88:: with SMTP id
 p8mr4983053pjv.119.1588705496154; 
 Tue, 05 May 2020 12:04:56 -0700 (PDT)
X-Google-Smtp-Source: APiQypLwXIzFhMOEAmtg5EmEQVlz9X54oc4x7EGYUYTrtCU3knTF3F6bb9GuvSBLVF9k0mBLGbO7fQ==
X-Received: by 2002:a17:90a:df88:: with SMTP id
 p8mr4983026pjv.119.1588705495869; 
 Tue, 05 May 2020 12:04:55 -0700 (PDT)
Received: from localhost ([122.177.124.216])
 by smtp.gmail.com with ESMTPSA id h26sm2654823pfk.35.2020.05.05.12.04.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 May 2020 12:04:55 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: netdev@vger.kernel.org
Subject: [PATCH 1/2] net: qed*: Reduce RX and TX default ring count when
 running inside kdump kernel
Date: Wed,  6 May 2020 00:34:40 +0530
Message-Id: <1588705481-18385-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
References: <1588705481-18385-1-git-send-email-bhsharma@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_120500_512642_E012D9FE 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

Normally kdump kernel(s) run under severe memory constraint with the
basic idea being to save the crashdump vmcore reliably when the primary
kernel panics/hangs.

Currently the qed* ethernet driver ends up consuming a lot of memory in
the kdump kernel, leading to kdump kernel panic when one tries to save
the vmcore via ssh/nfs (thus utilizing the services of the underlying
qed* network interfaces).

An example OOM message log seen in the kdump kernel can be seen here
[1], with crashkernel size reservation of 512M.

Using tools like memstrack (see [2]), we can track the modules taking up
the bulk of memory in the kdump kernel and organize the memory usage
output as per 'highest allocator first'. An example log for the OOM case
indicates that the qed* modules end up allocating approximately 216M
memory, which is a large part of the total crashkernel size:

 dracut-pre-pivot[676]: ======== Report format module_summary: ========
 dracut-pre-pivot[676]: Module qed using 149.6MB (2394 pages), peak allocation 149.6MB (2394 pages)
 dracut-pre-pivot[676]: Module qede using 65.3MB (1045 pages), peak allocation 65.3MB (1045 pages)

This patch reduces the default RX and TX ring count from 1024 to 64
when running inside kdump kernel, which leads to a significant memory
saving.

An example log with the patch applied shows the reduced memory
allocation in the kdump kernel:
 dracut-pre-pivot[674]: ======== Report format module_summary: ========
 dracut-pre-pivot[674]: Module qed using 141.8MB (2268 pages), peak allocation 141.8MB (2268 pages)
 <..snip..>
[dracut-pre-pivot[674]: Module qede using 4.8MB (76 pages), peak allocation 4.9MB (78 pages)

Tested crashdump vmcore save via ssh/nfs protocol using underlying qed*
network interface after applying this patch.

[1] OOM log:
------------

 kworker/0:6: page allocation failure: order:6,
 mode:0x60c0c0(GFP_KERNEL|__GFP_COMP|__GFP_ZERO), nodemask=(null)
 kworker/0:6 cpuset=/ mems_allowed=0
 CPU: 0 PID: 145 Comm: kworker/0:6 Not tainted 4.18.0-109.el8.aarch64 #1
 Hardware name: To be filled by O.E.M. Saber/Saber, BIOS 0ACKL025
 01/18/2019
 Workqueue: events work_for_cpu_fn
 Call trace:
  dump_backtrace+0x0/0x188
  show_stack+0x24/0x30
  dump_stack+0x90/0xb4
  warn_alloc+0xf4/0x178
  __alloc_pages_nodemask+0xcac/0xd58
  alloc_pages_current+0x8c/0xf8
  kmalloc_order_trace+0x38/0x108
  qed_iov_alloc+0x40/0x248 [qed]
  qed_resc_alloc+0x224/0x518 [qed]
  qed_slowpath_start+0x254/0x928 [qed]
   __qede_probe+0xf8/0x5e0 [qede]
  qede_probe+0x68/0xd8 [qede]
  local_pci_probe+0x44/0xa8
  work_for_cpu_fn+0x20/0x30
  process_one_work+0x1ac/0x3e8
  worker_thread+0x44/0x448
  kthread+0x130/0x138
  ret_from_fork+0x10/0x18
  Cannot start slowpath
  qede: probe of 0000:05:00.1 failed with error -12

[2]. Memstrack tool: https://github.com/ryncsn/memstrack

Cc: kexec@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Ariel Elior <aelior@marvell.com>
Cc: GR-everest-linux-l2@marvell.com
Cc: Manish Chopra <manishc@marvell.com>
Cc: David S. Miller <davem@davemloft.net>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 drivers/net/ethernet/qlogic/qede/qede.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede.h b/drivers/net/ethernet/qlogic/qede/qede.h
index 234c6f30effb..b55ab32ef0b3 100644
--- a/drivers/net/ethernet/qlogic/qede/qede.h
+++ b/drivers/net/ethernet/qlogic/qede/qede.h
@@ -32,6 +32,7 @@
 #ifndef _QEDE_H_
 #define _QEDE_H_
 #include <linux/compiler.h>
+#include <linux/crash_dump.h>
 #include <linux/version.h>
 #include <linux/workqueue.h>
 #include <linux/netdevice.h>
@@ -574,13 +575,13 @@ int qede_add_tc_flower_fltr(struct qede_dev *edev, __be16 proto,
 #define RX_RING_SIZE		((u16)BIT(RX_RING_SIZE_POW))
 #define NUM_RX_BDS_MAX		(RX_RING_SIZE - 1)
 #define NUM_RX_BDS_MIN		128
-#define NUM_RX_BDS_DEF		((u16)BIT(10) - 1)
+#define NUM_RX_BDS_DEF		((is_kdump_kernel()) ? ((u16)BIT(6) - 1) : ((u16)BIT(10) - 1))
 
 #define TX_RING_SIZE_POW	13
 #define TX_RING_SIZE		((u16)BIT(TX_RING_SIZE_POW))
 #define NUM_TX_BDS_MAX		(TX_RING_SIZE - 1)
 #define NUM_TX_BDS_MIN		128
-#define NUM_TX_BDS_DEF		NUM_TX_BDS_MAX
+#define NUM_TX_BDS_DEF		((is_kdump_kernel()) ? ((u16)BIT(6) - 1) : NUM_TX_BDS_MAX)
 
 #define QEDE_MIN_PKT_LEN		64
 #define QEDE_RX_HDR_SIZE		256
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
