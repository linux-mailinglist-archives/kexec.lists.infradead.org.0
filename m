Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01812A908
	for <lists+kexec@lfdr.de>; Wed, 25 Dec 2019 20:24:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sCEWQKpCUakijQhKeJc7ifBO68JmQyLA84+lQBovKk4=; b=Fo2kwtrL76KCm0
	oByDZyCzyPGFW62jELsPSDMqmkZsRgBCCWg9JQYpWkrt5gSxfLsCRtPbFzwvZ7aXkg/GHerPytMDz
	QkF7JhhaZe4k6pT84hcNpuJYJAqRzsuLX61lYv6T43md/GjVZ8psPG0k+STAUX4k46cHzya56bP5k
	I6PP8DkZLbv1+Zm5fZNzjrgrasdcALm/HLztCekiWj9ankMLUN5Oq5UClCrvZJc2JO9KHGRLhije3
	chSxe0E768ZPD6v17P/qntwhthaiA0s2I1TNKX7jXOvpTRjUbus/n437mlvEY1wG/NBUptWPwELiJ
	nEDloPTnHJavnxAfUbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikCGM-0000zW-Kr; Wed, 25 Dec 2019 19:24:06 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikCGJ-0000zB-Rf
 for kexec@lists.infradead.org; Wed, 25 Dec 2019 19:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577301841;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=OKuMH7cOPk6Y3exCZSCpC68iVYRRyyM9yHlIxnQYc5Q=;
 b=Cud/uelGfdjsoyc0DMeJdH3uOJ8oqMS9ZK5ldg5roe3Ux3AvVaNibQmX9UFyW+OgCXFeNr
 GcnGO+Fhs/3n4qQf8K3aJ+tkDsm2znq2dbwonCFJD9/6wroBOJZ4wuxxSrpeksF64wAFwv
 whuf2zTnUg1QB+kiIKWUABn9Gfw/MjI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-228-f0m36YqNNayB1z6IGVRPqw-1; Wed, 25 Dec 2019 14:21:44 -0500
X-MC-Unique: f0m36YqNNayB1z6IGVRPqw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 533DD801E70;
 Wed, 25 Dec 2019 19:21:43 +0000 (UTC)
Received: from kasong-rh-laptop.redhat.com (ovpn-12-152.pek2.redhat.com
 [10.72.12.152])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6C8AF101F6CF;
 Wed, 25 Dec 2019 19:21:40 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [RFC PATCH] PCI,
 kdump: Clear bus master bit upon shutdown in kdump kernel
Date: Thu, 26 Dec 2019 03:21:18 +0800
Message-Id: <20191225192118.283637-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_112404_022220_48DE6513 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, kexec@lists.infradead.org,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Baoquan He <bhe@redhat.com>,
 Kairui Song <kasong@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

There are reports about kdump hang upon reboot on some HPE machines,
kernel hanged when trying to shutdown a PCIe port, an uncorrectable
error occurred and crashed the system.

On the machine I can reproduce this issue, part of the topology
looks like this:

[0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
          +-01.0-[02]--
          +-01.1-[05]--
          +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
          |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
          +-02.1-[0f]--
          +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array Gen9 Controllers

When shuting down PCIe port 0000:00:02.2 or 0000:00:02.0, the machine
will hang, depend on which device is reinitialized in kdump kernel.

If force remove unused device then trigger kdump, the problem will never
happen:

    echo 1 > /sys/bus/pci/devices/0000\:00\:02.2/0000\:07\:00.0/remove
    echo c > /proc/sysrq-trigger

    ... Kdump save vmcore through network, the NIC get reinitialized and
    hpsa is untouched. Then reboot with no problem. (If hpsa is used
    instead, shutdown the NIC in first kernel will help)

The cause is that some devices are enabled by the first kernel, but it
don't have the chance to shutdown the device, and kdump kernel is not
aware of it, unless it reinitialize the device.

Upon reboot, kdump kernel will skip downstream device shutdown and
clears its bridge's master bit directly. The downstream device could
error out as it can still send requests but upstream refuses it.

So for kdump, let kernel read the correct hardware power state on boot,
and always clear the bus master bit of PCI device upon shutdown if the
device is on. PCIe port driver will always shutdown all downstream
devices first, so this should ensure all downstream devices have bus
master bit off before clearing the bridge's bus master bit.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 drivers/pci/pci-driver.c | 11 ++++++++---
 drivers/pci/quirks.c     | 20 ++++++++++++++++++++
 2 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index 0454ca0e4e3f..84a7fd643b4d 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -18,6 +18,7 @@
 #include <linux/kexec.h>
 #include <linux/of_device.h>
 #include <linux/acpi.h>
+#include <linux/crash_dump.h>
 #include "pci.h"
 #include "pcie/portdrv.h"
 
@@ -488,10 +489,14 @@ static void pci_device_shutdown(struct device *dev)
 	 * If this is a kexec reboot, turn off Bus Master bit on the
 	 * device to tell it to not continue to do DMA. Don't touch
 	 * devices in D3cold or unknown states.
-	 * If it is not a kexec reboot, firmware will hit the PCI
-	 * devices with big hammer and stop their DMA any way.
+	 * If this is kdump kernel, also turn off Bus Master, the device
+	 * could be activated by previous crashed kernel and may block
+	 * it's upstream from shutting down.
+	 * Else, firmware will hit the PCI devices with big hammer
+	 * and stop their DMA any way.
 	 */
-	if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
+	if ((kexec_in_progress || is_kdump_kernel()) &&
+			pci_dev->current_state <= PCI_D3hot)
 		pci_clear_master(pci_dev);
 }
 
diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
index 4937a088d7d8..c65d11ab3939 100644
--- a/drivers/pci/quirks.c
+++ b/drivers/pci/quirks.c
@@ -28,6 +28,7 @@
 #include <linux/platform_data/x86/apple.h>
 #include <linux/pm_runtime.h>
 #include <linux/switchtec.h>
+#include <linux/crash_dump.h>
 #include <asm/dma.h>	/* isa_dma_bridge_buggy */
 #include "pci.h"
 
@@ -192,6 +193,25 @@ static int __init pci_apply_final_quirks(void)
 }
 fs_initcall_sync(pci_apply_final_quirks);
 
+/*
+ * Read the device state even if it's not enabled. The device could be
+ * activated by previous crashed kernel, this will read and correct the
+ * cached state.
+ */
+static void quirk_read_pm_state_in_kdump(struct pci_dev *dev)
+{
+	u16 pmcsr;
+
+	if (!is_kdump_kernel())
+		return;
+
+	if (dev->pm_cap) {
+		pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
+		dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
+	}
+}
+DECLARE_PCI_FIXUP_FINAL(PCI_ANY_ID, PCI_ANY_ID, quirk_read_pm_state_in_kdump);
+
 /*
  * Decoding should be disabled for a PCI device during BAR sizing to avoid
  * conflict. But doing so may cause problems on host bridge and perhaps other
-- 
2.24.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
