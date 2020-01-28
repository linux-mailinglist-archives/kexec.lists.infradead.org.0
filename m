Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516C014B283
	for <lists+kexec@lfdr.de>; Tue, 28 Jan 2020 11:23:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tbYyoMes1PQztgB6uuTO/EXDBilrN/i9AK5KCnMtWEM=; b=Axl8BGy7SPH7G3
	PlZGfP8CUW2aGXZhGkmC2FsVzuDsiSFdV9Bq66CMveSgPlHxJ7usTCNz+D9uy6/8ssL5V/0tJWm+q
	uWK8Zg5pmsSM+y68Ok2rDVSq4zl5wUQq468bfvzzDQDINwzUBGUBpY5CTBjDYBAewSnqiKpIopPJf
	sZUBC0cAC4LsFMJtfkuHi/Stl1H5bkrwT4E493CWUuIT7Xo3Ot5mnsprz0hwOGOeO2wIJVRpvcFKS
	lBnFExuRAnuklPvMncv9VJa4cEZu+87KSGz4kgpHYXhxrj9BW7hN2NceLceeC48/gLM6BygTwSCt1
	N0mSuin7Wc/40jaGyqPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwO1O-0007Q4-51; Tue, 28 Jan 2020 10:23:02 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwO1K-0007Lh-NA
 for kexec@lists.infradead.org; Tue, 28 Jan 2020 10:23:00 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00SAKxs6024512; Tue, 28 Jan 2020 02:22:55 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-type; s=pfpt0818;
 bh=vBoizTfwbnl5JRXaRcVosErYn0VqUwy/ivayMnsCSXI=;
 b=Y3q+nV0cfgLrdYQK51YyHgbgdhbdR7Mx9Yv8JmkBEzEVn3kGsYpU7PHWRUWoyYETbc5H
 KHf3SeKSo3QjvgwNrl+j4rrz+gwjVOzrPIp5wdffvqW9ErwMlMWKxYo0C+uLoEJooFN/
 sOVaueXpv/3DIQQznkcfTtjR1qv7B5+bRkAlq+Q6MASukNaioa7bTvI+oRdRus3bVpVs
 GC8/JTg2wjU693hnGdeUjUKg1YB9B2tArk/kw5bqIyJq/I3wR9px8oWYNT+fT8pQ4nNX
 iLXoibMVJKCfFI5BJl6fMmsWoMbrCi0qkoWNMCa5wgfFdYP6rjAaqzsbDIac65naB8w3 rQ== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2xrp2t3hu9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 28 Jan 2020 02:22:55 -0800
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Tue, 28 Jan
 2020 02:22:53 -0800
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 28 Jan 2020 02:22:53 -0800
Received: from dc5-eodlnx05.marvell.com (dc5-eodlnx05.marvell.com
 [10.69.113.147])
 by maili.marvell.com (Postfix) with ESMTP id 227573F7041;
 Tue, 28 Jan 2020 02:22:53 -0800 (PST)
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: <linux-ide@vger.kernel.org>, <axboe@kernel.dk>
Subject: [RESEND][PATCH][v2] ata: ahci: Add shutdown to freeze hardware
 resources of ahci
Date: Tue, 28 Jan 2020 02:22:51 -0800
Message-ID: <1580206971-29908-1-git-send-email-pkushwaha@marvell.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-28_03:2020-01-24,
 2020-01-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_022258_883786_BA12E004 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.156.173 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: gkulkarni@marvell.com, linux-pci@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, kamlakantp@marvell.com, helgaas@kernel.org,
 prabhakar.pkin@gmail.com, Prabhakar Kushwaha <pkushwaha@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

device_shutdown() called from reboot or power_shutdown expect
all devices to be shutdown. Same is true for even ahci pci driver.
As no ahci shutdown function is implemented, the ata subsystem
always remains alive with DMA & interrupt support. File system 
related calls should not be honored after device_shutdown().

So defining ahci pci driver shutdown to freeze hardware (mask
interrupt, stop DMA engine and free DMA resources).

Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
---
- Resending with linux-kernel@vger.kernel.org in CC
- Changes for v2: Incorporated Bjorn Helgaas's comments
   - Updated description
   - Removed Spurious whitespace change

Adding more details:
We are seeing an issue during kexec -e where SATA hard-disk is not
getting detected in second kernel. Lots of filesystem sync calls
can be seen even after device_shutdown(). 
Further invastigation revealed that pci_clear_master() causing this issue.
During device_shutdown() --> pci_device_shutdown() calls 
      --> ahci shutdown (not defined as of now, so device is still alive)
      --> pci_clear_master() 
pci_clear_master() disable DMA of device. Here filesystem calls after
device_shutdown() causing the issue. 

A device must implement shutdown() to stop/freeze before pcie_clear_master()
called from pci_device_shutdown(). Otherwise It can have weird effect.  
Refer  https://bugzilla.kernel.org/show_bug.cgi?id=63861#c24


 drivers/ata/ahci.c        |  7 +++++++
 drivers/ata/libata-core.c | 21 +++++++++++++++++++++
 include/linux/libata.h    |  1 +
 3 files changed, 29 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 4bfd1b14b390..11ea1aff40db 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -81,6 +81,7 @@ enum board_ids {
 
 static int ahci_init_one(struct pci_dev *pdev, const struct pci_device_id *ent);
 static void ahci_remove_one(struct pci_dev *dev);
+static void ahci_shutdown_one(struct pci_dev *dev);
 static int ahci_vt8251_hardreset(struct ata_link *link, unsigned int *class,
 				 unsigned long deadline);
 static int ahci_avn_hardreset(struct ata_link *link, unsigned int *class,
@@ -606,6 +607,7 @@ static struct pci_driver ahci_pci_driver = {
 	.id_table		= ahci_pci_tbl,
 	.probe			= ahci_init_one,
 	.remove			= ahci_remove_one,
+	.shutdown		= ahci_shutdown_one,
 	.driver = {
 		.pm		= &ahci_pci_pm_ops,
 	},
@@ -1877,6 +1879,11 @@ static int ahci_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
 	return 0;
 }
 
+static void ahci_shutdown_one(struct pci_dev *pdev)
+{
+	ata_pci_shutdown_one(pdev);
+}
+
 static void ahci_remove_one(struct pci_dev *pdev)
 {
 	pm_runtime_get_noresume(&pdev->dev);
diff --git a/drivers/ata/libata-core.c b/drivers/ata/libata-core.c
index 6f4ab5c5b52d..42c8728f6117 100644
--- a/drivers/ata/libata-core.c
+++ b/drivers/ata/libata-core.c
@@ -6767,6 +6767,26 @@ void ata_pci_remove_one(struct pci_dev *pdev)
 	ata_host_detach(host);
 }
 
+void ata_pci_shutdown_one(struct pci_dev *pdev)
+{
+	struct ata_host *host = pci_get_drvdata(pdev);
+	int i;
+
+	for (i = 0; i < host->n_ports; i++) {
+		struct ata_port *ap = host->ports[i];
+
+		ap->pflags |= ATA_PFLAG_FROZEN;
+
+		/* Disable port interrupts */
+		if (ap->ops->freeze)
+			ap->ops->freeze(ap);
+
+		/* Stop the port DMA engines */
+		if (ap->ops->port_stop)
+			ap->ops->port_stop(ap);
+	}
+}
+
 /* move to PCI subsystem */
 int pci_test_config_bits(struct pci_dev *pdev, const struct pci_bits *bits)
 {
@@ -7387,6 +7407,7 @@ EXPORT_SYMBOL_GPL(ata_timing_cycle2mode);
 
 #ifdef CONFIG_PCI
 EXPORT_SYMBOL_GPL(pci_test_config_bits);
+EXPORT_SYMBOL_GPL(ata_pci_shutdown_one);
 EXPORT_SYMBOL_GPL(ata_pci_remove_one);
 #ifdef CONFIG_PM
 EXPORT_SYMBOL_GPL(ata_pci_device_do_suspend);
diff --git a/include/linux/libata.h b/include/linux/libata.h
index 2dbde119721d..bff539918d82 100644
--- a/include/linux/libata.h
+++ b/include/linux/libata.h
@@ -1221,6 +1221,7 @@ struct pci_bits {
 };
 
 extern int pci_test_config_bits(struct pci_dev *pdev, const struct pci_bits *bits);
+extern void ata_pci_shutdown_one(struct pci_dev *pdev);
 extern void ata_pci_remove_one(struct pci_dev *pdev);
 
 #ifdef CONFIG_PM
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
