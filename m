Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F150F1311A5
	for <lists+kexec@lfdr.de>; Mon,  6 Jan 2020 12:55:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MReFDRcuCRPgOZyN2gYwXt8yBjTdfcbWTXgIOvAuKB0=; b=hVH
	2ENogbJGSOAsLz3/KqxkTqcCwJyXDsjI3jJsdAnSxmA4w3olFxPqblU09Zz8Ap7N5H7gQRR7VavVR
	CQriQpTqaHwfC7L8ecWUJpqDpIiTcJrKqs05PVIbgGXNoOvaNY6PK9BwmwlAKDOlrkc43za0VrkUt
	G0GvcourvAHe8bnEvdIVcJolXgesJjWzRUeYcwxjBxnMQTISuuvX7pFooVEmT0vFKS6js95yNrFnK
	4shlEH3bqjEFAO44njyqEFbp8IRNHh+LbmL3buCUzvpsyC6MVpR5SeBOEtuGQvEYmRQGRVJGRGWKe
	q59BDTGGF5YDYfyObs4tMlsSokE3VYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioQyl-0000lr-MB; Mon, 06 Jan 2020 11:55:27 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioQyf-0000kk-Fp
 for kexec@lists.infradead.org; Mon, 06 Jan 2020 11:55:22 +0000
Received: by mail-io1-xd44.google.com with SMTP id d15so4864685iog.3
 for <kexec@lists.infradead.org>; Mon, 06 Jan 2020 03:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=6Di6ffajBH2cZR+pVdW7IOpKkZDUHrowT9et6cWo7uY=;
 b=L8gc2XfmZbBDtaLDePZyXvUltjzM6ScSH0/znKIKaMCtMCibv+eO04IaTmDlBTGhbT
 1rWQ6Vxtd+o4e39T+uUEzmVcl6tC6lTKZECYTG3ADyckeJ2TKRJsyelTSAZPGKez8D1u
 m9AV1p7UxTh7bcRIN24V638UW6qgwex5yhHpV1oBPHLuyL16FphzTKID3dnJ402mwY7T
 fNA+T9uDhZOQbhiwhChgDX/xjmgG4zPj25Gy6KRmUXp8XXJJSewwhBEmcXUuqTv8EAue
 UdDLrzLHpxFMpL4MJqK4cUngKwqznMSJAKFLCIvYGaknkBlUacMMgm2Nm416NF7SRbZg
 mAYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=6Di6ffajBH2cZR+pVdW7IOpKkZDUHrowT9et6cWo7uY=;
 b=Z6bwgBnkln50kus3+i68PkkbWbjHMIDl8nAr7fOCjTloYX6AYROOt07iprUt68siOQ
 2iPbpbp8GW/WyuayAdhe887ihfRNgJNlWo6MOAddxIIWrhaIkQ3SdPrmvVo1x41/MZ2i
 pIPnUBW/LGty2lxEeeGpBOh8soKQqf7vnW7ajTcwEsNgvNH7QQMmEOmcJNjeWxaShg50
 upNtYt66EN20XK9dU/FnAOxiI7kBZBKfz9KI0ypDt39Y55jmHSnSYnE2YBfSgqjVYJOE
 RXFwbGQylFCxfH+fJ2GlILeLIq27V+qxYgDevHZphiEV15KtCqhm3XSVlgSjhP1FvP9X
 +dqQ==
X-Gm-Message-State: APjAAAXujBwDzIHIMloYc2F19MbhoxNVCGKDeaU3hqe3UI3Ht3djbLzS
 ecIdM6w74LKHOahZ0ZZiCs6mn81tJNL5ksv6GZY=
X-Google-Smtp-Source: APXvYqyK5B13r8HZFUhRRLwCjL031uyNVHRJy14fnkwQW+NME79KYnHpYoaVPSOY+KwNL7GKReAVKzghVs3O6n2eRC8=
X-Received: by 2002:a02:c90a:: with SMTP id t10mr77309211jao.25.1578311720271; 
 Mon, 06 Jan 2020 03:55:20 -0800 (PST)
MIME-Version: 1.0
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 6 Jan 2020 17:24:44 +0530
Message-ID: <CAJ2QiJ+MVVztHONagmYc2-BzbtdGQhABRKO7h4+kOE9cCK=CxA@mail.gmail.com>
Subject: kexec -e not working: root disk not able to detect
To: linux-pci@vger.kernel.org, linux-ide@vger.kernel.org, 
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Kamlakant Patel <kamlakantp@marvell.com>, 
 kexec mailing list <kexec@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_035521_553886_4C2284B7 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi All,

I am trying kexec -e with latest kernel i.e. Linux-5.5.0-rc4.  Here
second kernel is not able to detect/mount hard-disk having root file
system (INTEL SSDSC2BB240G7).

[  279.690575] ata1: softreset failed (1st FIS failed)
[  279.695446] ata1: limiting SATA link speed to 3.0 Gbps
[  280.910020] ata1: SATA link down (SStatus 0 SControl 320)
[  282.626018] ata1: SATA link down (SStatus 0 SControl 300)
[  282.631409] ata1: link online but 1 devices misclassified, retrying
[  282.637665] ata1: reset failed (errno=-11), retrying in 9 secs
[  298.294546] ata1: failed to reset engine (errno=-5)
[  302.042967] ata1: softreset failed (1st FIS failed)
[  308.798609] ata1: failed to reset engine (errno=-5)
[  337.546605] ata1: softreset failed (1st FIS failed)
[  337.551475] ata1: limiting SATA link speed to 3.0 Gbps
[  338.766022] ata1: SATA link down (SStatus 0 SControl 320)
[  339.270943] ata1: EH pending after 5 tries, giving up

I found following two workaround for this issue.
A) Define ".shutdown" in driver/ata/ahci.c.

reboot --> kernel_kexec() --> kernel_restart_prepare() -->
device_shutdown() --> pci_device_shutdown() --> ahci_shutdown_one()
--> new function

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 4bfd1b14b390..50a101002885 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -81,6 +81,7 @@ enum board_ids {

 static int ahci_init_one(struct pci_dev *pdev, const struct
pci_device_id *ent);
 static void ahci_remove_one(struct pci_dev *dev);
 +static void ahci_shutdown_one(struct pci_dev *dev);
 static int ahci_vt8251_hardreset(struct ata_link *link, unsigned int *class,
                                  unsigned long deadline);
  static int ahci_avn_hardreset(struct ata_link *link, unsigned int *class,
 @@ -606,6 +607,7 @@ static struct pci_driver ahci_pci_driver = {
         .id_table               = ahci_pci_tbl,
         .probe                  = ahci_init_one,
         .remove                 = ahci_remove_one,
 +       .shutdown               = ahci_shutdown_one,
         .driver = {
                 .pm             = &ahci_pci_pm_ops,
         },

 +static void ahci_shutdown_one(struct pci_dev *pdev)
 +{
 +       pm_runtime_get_noresume(&pdev->dev);
 +       ata_pci_remove_one(pdev);
 +}
 +
Note: After defining shutdown, error related to file-system write
seen. Looks like even after device_shutdown, file system related
transaction goes to disk.

B)) Commenting of pci_clear_master() from pci_device_shutdown()
reboot --> kernel_kexec() --> kernel_restart_prepare() -->
device_shutdown() --> pci_device_shutdown()

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index 0454ca0e4e3f..ddffaa9321bb 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -481,8 +481,10 @@ static void pci_device_shutdown(struct device *dev)
        /*
         * If this is a kexec reboot, turn off Bus Master bit on the
@@ -491,8 +493,16 @@ static void pci_device_shutdown(struct device *dev)
         * If it is not a kexec reboot, firmware will hit the PCI
         * devices with big hammer and stop their DMA any way.
         */

 - if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
 -                pci_clear_master(pci_dev);

Here pci_dev current_state. It is "0" i.e. D0.

From A and B. Looks like even after pci_clear_master(), Some DMA
transactions going on PCIe device  causing device in unstable.
Not sure if this is the reason and how to solve this problem.

Any help/guidance will help me in moving forward.

Thanks!!

--prabhakar (pk)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
