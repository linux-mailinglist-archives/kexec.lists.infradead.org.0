Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 133B41CD611
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 12:12:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V5aLDPNMbtuSbmJtplk0dVVnBBoWPgl3kzCCs15h9ko=; b=PL5dUCmiSt787qiLiuRBGEZqIF
	YjkyuFBXYFoDy+DFb+Mpg+cFfrjtlONFD/4JCCE7WOvetYPnDtTel71tgBHXP9IzWze+jfdx+UPdR
	HyCWLMDd7M3l6DJdvZ/GCtaNqV8zYvf8FkCsTDC9GSPHq8c8If9905CLruMe7o106+5o83E5B2Q+/
	4ulNISTLxC+9puvtlU2h+z8q8z1+RGGV/3G1OPirDDmjhpp1Z/n5jH7QP0WtPAFLY6fhZH1I9n7AZ
	ryXadn8BNB7l/KWRi1xNERAt4mXilc0d612mTcqrBlS6nX693hMyQYqJZ42Rx0cjXIM0DSjwFcooT
	kk7GPeSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY5Pj-0006HZ-Hl; Mon, 11 May 2020 10:11:59 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY5Pf-0006FS-BM
 for kexec@lists.infradead.org; Mon, 11 May 2020 10:11:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589191912;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:in-reply-to:in-reply-to:
 references:references; bh=8rIJ/HCKqeDNuhBVCnARIXHuevQW0iI68fcfjw4hurk=;
 b=Tu8yPWRSVNq10Tfld/n91QMzwas6FpqxmHQwx4QORplfKbDGWczGHWcR0aG5O+uwchA9F6
 lEfRktVajXPtpIeohtiOA9KlBL2K0nmwXGiYDPb0Fqoq8akKpCrX+a58OkKUSMuWBOXpWT
 nSImbEo5P77XcKTsH0sNN6oa9Q3aKIw=
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-OazjkTpOMDWnmNs4oemyPw-1; Mon, 11 May 2020 06:11:51 -0400
X-MC-Unique: OazjkTpOMDWnmNs4oemyPw-1
Received: by mail-pj1-f71.google.com with SMTP id o6so16926170pjl.1
 for <kexec@lists.infradead.org>; Mon, 11 May 2020 03:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8rIJ/HCKqeDNuhBVCnARIXHuevQW0iI68fcfjw4hurk=;
 b=lpY6RSYERcBzU9VS7FZ1keVJDJsFERjZftB/m2MBlc8StqEiSPhbJ73I4/SqP+1WGE
 f5bzpvCnZCvxrgKcBc6tHL3Xob9wtqFjnEUkkjd2G7kGfDsebeXUH8AkgPL+gQINYpym
 9tAPReYz7ENciSkwVXVRt8tWuRsGr2cRlCNFd+21qORa9YjxlWqWgmT+XKmyCkumAW9U
 7TFQyxpYBzbDNK2DwO9uw4QLJDph0aGasge8L4gqveVyMf4CWcZdvqQgOZpRz2KZvIV2
 WASOo1338tqnbO1Zbwf7NbnDJXWIey6qrV781S13Gdrpdx2zPlPMy7N4lP9NiIz/7C8/
 jrew==
X-Gm-Message-State: AGi0Pubhk33oidl0YJQ5AQh944NNdAd+vpi/tom0saVKhqEiKz2au6se
 VRVGByL5uyGF3z0jjkjimvxQgOAxqDDUxLxqqd7NSZ+2yrlxuGS95s6OgKAlq1LMTVpTJ3g2bXw
 oiQq1jZDD63PkY2hdqEFb
X-Received: by 2002:a63:1a16:: with SMTP id a22mr14247245pga.264.1589191909949; 
 Mon, 11 May 2020 03:11:49 -0700 (PDT)
X-Google-Smtp-Source: APiQypIrWZlVCElZ4EiLMyjUtvtYVoLvegFRsAleXJFufyVTBZQHo6zM2eSohv7NXejuepQZbH+sDQ==
X-Received: by 2002:a63:1a16:: with SMTP id a22mr14247218pga.264.1589191909658; 
 Mon, 11 May 2020 03:11:49 -0700 (PDT)
Received: from localhost ([223.235.87.110])
 by smtp.gmail.com with ESMTPSA id q72sm9712037pjb.53.2020.05.11.03.11.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 May 2020 03:11:49 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: netdev@vger.kernel.org
Subject: [PATCH v2 1/2] net: qed*: Reduce RX and TX default ring count when
 running inside kdump kernel
Date: Mon, 11 May 2020 15:41:41 +0530
Message-Id: <1589191902-958-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
References: <1589191902-958-1-git-send-email-bhsharma@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_031155_464904_C1EB0503 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
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
 drivers/net/ethernet/qlogic/qede/qede.h      |  2 ++
 drivers/net/ethernet/qlogic/qede/qede_main.c | 11 +++++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/qlogic/qede/qede.h b/drivers/net/ethernet/qlogic/qede/qede.h
index 234c6f30effb..234c7e35ee1e 100644
--- a/drivers/net/ethernet/qlogic/qede/qede.h
+++ b/drivers/net/ethernet/qlogic/qede/qede.h
@@ -574,12 +574,14 @@ int qede_add_tc_flower_fltr(struct qede_dev *edev, __be16 proto,
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
index 34fa3917eb33..1a83d1fd8ccd 100644
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
@@ -707,8 +708,14 @@ static struct qede_dev *qede_alloc_etherdev(struct qed_dev *cdev,
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
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
