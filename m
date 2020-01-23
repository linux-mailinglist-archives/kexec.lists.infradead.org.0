Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A1A1465EC
	for <lists+kexec@lfdr.de>; Thu, 23 Jan 2020 11:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=byHIEpBC4PXnAdDhJonLPhcOlFHaJEY6gOmChhCpWxY=; b=l5xudlqz/hyPTD
	BLv+VI+KEBr3KcI0xPqp805g0/5rZaLGDH7/teXfJBLUEVwoMoHbYgMxtKnWTqdee7sYK6upsPumH
	Yuu/1/na/863RLRwEpvXleA4YF+btVTU4W2lBEvPLVsUq1lDsEewQ5/2LaoEKonmC7QSTVUkLTwCE
	I9t/r1MT7vb6U71MA22yBZNwihlIbQHu2ev4zDNiTyQMMqR/pHkWH/lLdB8IqEpKLxzsoTOOFsdjM
	kVVS09bVRZTjc8ict40xHJpBh7UUBH8ZIRKqgnyijvWjNazSc1jZQMZM9wnI0tWEq2dVbO3UMp+i2
	qX9hKEnbWKmMi3JYP+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuZwC-000092-Dq; Thu, 23 Jan 2020 10:42:12 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuZw6-00008V-B4
 for kexec@lists.infradead.org; Thu, 23 Jan 2020 10:42:07 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00NAf50t010733; Thu, 23 Jan 2020 02:42:02 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=YLtpOhB2+9LZS+o+eTRWu+3snhiZTjHfAuRY2Ch0l44=;
 b=TvRWZgkKe4G2yUxL4FH83Ur7HtGnSW3rbaIeavXiC/TRGCt34LvfL9QM6pFl7I/6ICIR
 uLWvR6w4IbXU+fJ6fHPtdiBUtZZ2qcU3ozG6t8A+b2we+9i4iHKUSWB/7R5IqahX3KIl
 zl0g253u0q7kW+SojI4SmxM8puxmRGwwJgvTU3ucGpx+mOaa/ccYty9g4p6RJ9t0+b1N
 CaEedcIpyzWQyTUIjXM2AnHzEPfjVA+La6oaeTHPswnynRe44ibR0UpUf9NDkuybslTZ
 Qzt+yysTHQO5axxJqu3hHa2TN9gpadYYN1+gqzQNmbQGJC5xzkT1ZJrbqdQF4mmR5NQF /w== 
Received: from sc-exch03.marvell.com ([199.233.58.183])
 by mx0b-0016f401.pphosted.com with ESMTP id 2xm2dtbbtc-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 02:42:01 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Thu, 23 Jan
 2020 02:42:00 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Thu, 23 Jan 2020 02:41:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Now95mjoGx0Ze7UvuXLVBUuG7XhoLp90VstJ+3AdMit/bQLqhAAmyN/2iSvT3C2LaGVksNuWo3d//8/JTAL7Y5+P+yUWD8svVzeAaRdU4QyeVwJLpLsZ7NjUNCffJaKEQ7tHjksS5NAKxgyLAnVmUZQHMF1gEZx/0uZaUHNOP5IV+lMMfVfG1usLF1+Xe9FGbJG1zunxyVP5VvcFiPzj3Q0uGGRm2uiMKl/A5qyODZlH9TDldts3Lp0MKYk6ndfDFef0yCnikpow/SKdw3zqrwf7gLVgFOWDq8veuxyp70hgz72j9rnQZ2Q7n840/KlrddDO1hlG7D3nTQnD8Q/iCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YLtpOhB2+9LZS+o+eTRWu+3snhiZTjHfAuRY2Ch0l44=;
 b=UyRHtCDzTKB6sX29xdwKr4tL+o9NnBNuoZGeQd5Z8pJYvJP8o4Gbp0j21LT12tNfgLXrzCqzl3lyinq2v+pqmqDM+5/E5SNTuV8wNzY1C0gA+cl7urvgxwYsAQwwic514ZwkIPdW112qb4M4UHaGGSlYf3IB8Lym4JEVqm5dlpi6KACuduyVj8NemJ/198gg0wNZzs3nrba1cRrD/lIrRXh28sPmd1O30rFBgN1MZ4O5S09KTcNkkP7I/aPSINJz+xOaiXge9CRXRUpGLWfp8r1hy/I0b76g9bf/vRmk5ivbPdjwf4LDD7GNRqFimmi9ZtWNHPFj2cExSgSwEuYWTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YLtpOhB2+9LZS+o+eTRWu+3snhiZTjHfAuRY2Ch0l44=;
 b=OR1QBEkmyeibVAsmizHsfIn/8ZmnozIe8uNqfmMFC4/XSjLGNyOWtQKsW+Toz0xuM+TLHLziuvpuRLPPGZzd4yRUrxPE9o6XFJaGJKn/HDehHbW2l+a++Z2nzyQayj7ZBYE6JDYwPtD/e0A5VwK5jsHcy0JUND43jK4cmJVyMdQ=
Received: from CY4PR18MB1431.namprd18.prod.outlook.com (10.172.175.148) by
 CY4PR18MB1031.namprd18.prod.outlook.com (10.173.182.137) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23; Thu, 23 Jan 2020 10:41:58 +0000
Received: from CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::2171:ec6b:bc83:f9e4]) by CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::2171:ec6b:bc83:f9e4%9]) with mapi id 15.20.2644.027; Thu, 23 Jan 2020
 10:41:57 +0000
Received: from dc5-eodlnx05.marvell.com (199.233.59.128) by
 BYAPR04CA0031.namprd04.prod.outlook.com (2603:10b6:a03:40::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20 via Frontend Transport; Thu, 23 Jan 2020 10:41:57 +0000
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>, "axboe@kernel.dk"
 <axboe@kernel.dk>
Subject: [PATCH] ata: ahci: Add shutdown to freeze hardware resources of ahci
Thread-Topic: [PATCH] ata: ahci: Add shutdown to freeze hardware resources of
 ahci
Thread-Index: AQHV0dm8kir5dTaBb0aPm920K1k/gQ==
Date: Thu, 23 Jan 2020 10:41:57 +0000
Message-ID: <1579776109-31578-1-git-send-email-pkushwaha@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR04CA0031.namprd04.prod.outlook.com
 (2603:10b6:a03:40::44) To CY4PR18MB1431.namprd18.prod.outlook.com
 (2603:10b6:903:107::20)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d90d595-9522-42de-671e-08d79ff0ded2
x-ms-traffictypediagnostic: CY4PR18MB1031:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR18MB1031803F07CC7C422F0FE2E4B20F0@CY4PR18MB1031.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 029174C036
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(136003)(39850400004)(396003)(199004)(189003)(66946007)(66556008)(64756008)(66446008)(66476007)(81156014)(81166006)(8676002)(7696005)(52116002)(8936002)(6486002)(4326008)(107886003)(5660300002)(316002)(36756003)(26005)(478600001)(16526019)(186003)(71200400001)(86362001)(2906002)(54906003)(110136005)(2616005)(956004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR18MB1031;
 H:CY4PR18MB1431.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pNdEy8g7yvDWH+p/D+OWvZZGgEXgbKQJvU8pEUKmBJ4we+vesEuBAa8zGgPLeMHxECNS0pqXfrR0/QYeinHaII04XTWAlyjqmd9DfJqb+1kMh6Kzq9jdY6j9+ughF5V52o7Y+AyKn8WaAAjtaqwV8uerP/Gkl4M4Xojxiz7Zu9+5UDwQKgmA20ALxGg6nzm9X1INagP39AR+aKMJFEFvjgIC8e4o7s48ZX+YGI6kRCqMz01vZkarccrfK3AMBCYlil/mV3XGrlOWW0zLFPprqZu9O3XAK409DpECR4Uz+Eu4ECwrW2f6GM86VPC4fBTS4pkRgGxJZb7rpahF7W30eKAAtML91GM7zsRNEvoaU9jRAvCVqQGBmm055yaGXRSuxlcPor0eH//NJgbO1xCt0sI9j7xPe8NL5nd5Iqf2C49PjSVpSsChYKQGyUc5ASpW
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d90d595-9522-42de-671e-08d79ff0ded2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2020 10:41:57.7811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XF8Mo8pFiiUxt38wKhI35xWdpaxtDOkl0stxrzTyI2lbgrdYe3D7WDkUtaDZo7ifh/7BoY9lHOc/qnHLPwP9Dg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB1031
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_08:2020-01-23,
 2020-01-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_024206_565044_D3173E20 
X-CRM114-Status: GOOD (  16.01  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 "helgaas@kernel.org" <helgaas@kernel.org>,
 "prabhakar.pkin@gmail.com" <prabhakar.pkin@gmail.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

device_shutdown() called from reboot/power_shutdown expect all
devices to be shutdown. Same is true for ahci pci driver.
As no shutdown function was implemented ata subsystem remains
always alive and DMA/interrupt still active.

It creates problem during kexec, here "M" bit is cleared to stop
DMA usage. Any further DMA transaction may cause instability and
the hard-disk may even not get detected for second kernel.
One of possible case is periodic file system sync.

So defining ahci pci driver shutdown to freeze hardware (mask
interrupt, stop DMA engine and free DMA resources).

Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
---
 drivers/ata/ahci.c        |  8 ++++++++
 drivers/ata/libata-core.c | 21 +++++++++++++++++++++
 include/linux/libata.h    |  1 +
 3 files changed, 30 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 4bfd1b14b390..31fc934740b6 100644
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
@@ -626,6 +628,7 @@ MODULE_PARM_DESC(mobile_lpm_policy, "Default LPM policy for mobile chipsets");
 static void ahci_pci_save_initial_config(struct pci_dev *pdev,
 					 struct ahci_host_priv *hpriv)
 {
+
 	if (pdev->vendor == PCI_VENDOR_ID_JMICRON && pdev->device == 0x2361) {
 		dev_info(&pdev->dev, "JMB361 has only one port\n");
 		hpriv->force_port_map = 1;
@@ -1877,6 +1880,11 @@ static int ahci_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
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
