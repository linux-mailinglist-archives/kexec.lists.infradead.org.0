Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF1A200CA0
	for <lists+kexec@lfdr.de>; Fri, 19 Jun 2020 16:50:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCZIEF9Wi/ixHyaaYCazbg3yuuD1CsN8aXQGCUNM6Kg=; b=hL4pwpxMWERLBz
	nR0lJwKoFbcwfrL1NhBWlivFUO5hShKzQb0qe67Hy+qllHv4hFsitmV9Tp05F3006kiVykJf2vcGN
	G4o9VpCZeefQgC9DnhRotyTMCDyiYpbZ9IisWiGkUq1ml6dUH4Cu6VS7VsarGJVR2pV9XJc6ViG9Q
	gX2FVP5dO0+W+NNJb9fQyl9iSHK6EG0EV1gY1ynk6Tbg0UboSxiy1YhhIqwDCU7q7Ku7hw3g9nccM
	nyUYC2XiRZYrRR4CordMyYQFrvUDBDOmpSAwwgF5i/ziRapVPOV67SUPydodap1I6zzPxkH852jiB
	Eq3g3LtZ/B8gs0l1vOrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmILA-0001PE-5H; Fri, 19 Jun 2020 14:50:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmIL6-0001OZ-8d
 for kexec@lists.infradead.org; Fri, 19 Jun 2020 14:49:57 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 196F52158C;
 Fri, 19 Jun 2020 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592578194;
 bh=KeY8v4RJ7yN+WDz+J0DVALBSxCJOqAb2txDykQhp+Vw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GlxEwThBJmzW7LE4SO6aozeBcJEbu1bXNub5PqKAHiur6OE36Fg8sXYtoRhJVpxxS
 qmdS/E2K3Wu+o/VKdNIbzhyG8AWvLVaKOK4a0Zbi/VUPvGP/qvimdQkoAOkVqDfdm1
 7yzSuw06a8C/wDcMpbbodFFsongc+ZGaErlINDo0=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.14 119/190] net: qed*: Reduce RX and TX default ring count
 when running inside kdump kernel
Date: Fri, 19 Jun 2020 16:32:44 +0200
Message-Id: <20200619141639.584026001@linuxfoundation.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619141633.446429600@linuxfoundation.org>
References: <20200619141633.446429600@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_074956_344344_A2105BF0 
X-CRM114-Status: GOOD (  15.62  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Ariel Elior <aelior@marvell.com>,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 stable@vger.kernel.org, GR-everest-linux-l2@marvell.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Bhupesh Sharma <bhsharma@redhat.com>

[ Upstream commit 73e030977f7884dbe1be0018bab517e8d02760f8 ]

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
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/qlogic/qede/qede.h      |  2 ++
 drivers/net/ethernet/qlogic/qede/qede_main.c | 11 +++++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede.h b/drivers/net/ethernet/qlogic/qede/qede.h
index a80531b5aecc..c132b08cefde 100644
--- a/drivers/net/ethernet/qlogic/qede/qede.h
+++ b/drivers/net/ethernet/qlogic/qede/qede.h
@@ -528,12 +528,14 @@ void qede_update_rx_prod(struct qede_dev *edev, struct qede_rx_queue *rxq);
 #define RX_RING_SIZE		((u16)BIT(RX_RING_SIZE_POW))
 #define NUM_RX_BDS_MAX		(RX_RING_SIZE - 1)
 #define NUM_RX_BDS_MIN		128
+#define NUM_RX_BDS_KDUMP_MIN	63
 #define NUM_RX_BDS_DEF		((u16)BIT(10) - 1)
 
 #define TX_RING_SIZE_POW	13
 #define TX_RING_SIZE		((u16)BIT(TX_RING_SIZE_POW))
 #define NUM_TX_BDS_MAX		(TX_RING_SIZE - 1)
 #define NUM_TX_BDS_MIN		128
+#define NUM_TX_BDS_KDUMP_MIN	63
 #define NUM_TX_BDS_DEF		NUM_TX_BDS_MAX
 
 #define QEDE_MIN_PKT_LEN		64
diff --git a/drivers/net/ethernet/qlogic/qede/qede_main.c b/drivers/net/ethernet/qlogic/qede/qede_main.c
index dab202f343c6..8bb734486bf3 100644
--- a/drivers/net/ethernet/qlogic/qede/qede_main.c
+++ b/drivers/net/ethernet/qlogic/qede/qede_main.c
@@ -29,6 +29,7 @@
  * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
  * SOFTWARE.
  */
+#include <linux/crash_dump.h>
 #include <linux/module.h>
 #include <linux/pci.h>
 #include <linux/version.h>
@@ -624,8 +625,14 @@ static struct qede_dev *qede_alloc_etherdev(struct qed_dev *cdev,
 	edev->dp_module = dp_module;
 	edev->dp_level = dp_level;
 	edev->ops = qed_ops;
-	edev->q_num_rx_buffers = NUM_RX_BDS_DEF;
-	edev->q_num_tx_buffers = NUM_TX_BDS_DEF;
+
+	if (is_kdump_kernel()) {
+		edev->q_num_rx_buffers = NUM_RX_BDS_KDUMP_MIN;
+		edev->q_num_tx_buffers = NUM_TX_BDS_KDUMP_MIN;
+	} else {
+		edev->q_num_rx_buffers = NUM_RX_BDS_DEF;
+		edev->q_num_tx_buffers = NUM_TX_BDS_DEF;
+	}
 
 	DP_INFO(edev, "Allocated netdev with %d tx queues and %d rx queues\n",
 		info->num_queues, info->num_queues);
-- 
2.25.1




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
