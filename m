Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DEF14931F
	for <lists+kexec@lfdr.de>; Sat, 25 Jan 2020 04:37:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3UilBNo7tp6gVGalU6Y9vpVK+Y90BkJnbq0KzMJZJjs=; b=BHB6rBvI3C9BV3
	LbFjybKFhDokqPZSeWMt9qOb3ks6tLNdBX38j8iYC4T0xVCRvKRrGrgcoID4W+lZJuRDHuWjy6qQK
	lMsdXdrG9V3SEIXiHRsKqqvE1ElWrljrx96irFFgDO+/2cRfO9BtXASHfjgj2rlRR4cx/Zrr6GB+5
	XePSErXDsjcgQkYPHc20brlfvXn0pXKGK1ygBLtFAZhcmKl2Wg29oNzBGLqc0V3w7Q1fMcTOaAQg2
	pGLLq2OTgaoZZqzvDTAum1SGPqddJwkcobtUZsGbSu1Fi5y/IGS+zAd3F+LfR1vy6ffxZL914B5eR
	Sn8GK5JRSC/D6bBMeL6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivCGX-0001Ym-HD; Sat, 25 Jan 2020 03:37:45 +0000
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivCGT-0001YM-7I
 for kexec@lists.infradead.org; Sat, 25 Jan 2020 03:37:43 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00P3bXBf017875; Fri, 24 Jan 2020 19:37:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=Wm2c63fR6zoMHgIPNFzF54R2/3EBSofuMfxiChOD5So=;
 b=vY+C+KB0R4VJS+QXwjps5Hx8Fc+UX3HM2uaUaxt1Jq3bZkuYEiOeJ1BxsW/SbCZ7+7Gt
 kzs4NN5m1ZG9k7lRQXvUvoPRU0tdO7a+JNGhXQDTYC3+cMmdcoJhr6KUlj/UczNBd2Jd
 /lMU09CjwhRdbL+C5WRgExIfyJ6rIcGTwByi1DyjmzZIlKZhvyb+t1KubzJsbLn3zBPa
 2jZvJJKfqI7rTdBvPA3tjJfJGrPF9iBLA6OyACdUgzlOiZ7ioN0FIcpZ/Fsz6zEXarRz
 +CxCNR8WPpWzAB0vezheowsY9ZAbWd4bNdtBsTEsdJgg3QNTECKfiSWdJ1d2AUSLTMHN Hg== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0a-0016f401.pphosted.com with ESMTP id 2xrcyjg523-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 24 Jan 2020 19:37:33 -0800
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 24 Jan
 2020 19:37:32 -0800
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.57) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1497.2 via Frontend Transport; Fri, 24 Jan 2020 19:37:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmyLYqYxKSOyd8rX8MXhtEvNyICj2WJZtWPQ/iN7pwcghTd2Qv2mwpO1E7jENLgxtndi/hjZChRzEMxw25ArOf5DJY6DeAB4RuWSHeXlFag+rHoyG4Jvh7r0YTtiAP+KktUcWEmDqKsflwFpUStawLGinMPYZ5ynFczVTgfa53wAD4pcHRoqZOz05ogwl1xtYCIzDHWmlviLrgn2FGfINUU8Zioqo/ZVMyIWeFGujFfzDHu2mUIFodM1W2HZFeIcym/MNO7XVFHLumW0H/F9cnWyWCRt+ayu/HxSHHzKHMKUfC/OrV74ubr5ez1Itbre6YTF5azM2G1TzC/PQs6YgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wm2c63fR6zoMHgIPNFzF54R2/3EBSofuMfxiChOD5So=;
 b=OgHp8Z05kx0/iBEmsi8V/7jN5dNqQ1rAMiEk6ptf/GYZYNoLOWM7ENpwSS0rL7Fsm7wfGpQgsE3FPcwvdE90YDhfmjlawZoxFrZKmxmxMpPqXwOiBVMLDfvSmFaTX053UH7YcqGYs36Op/i7gAivPPWarYARz9gV6guvtI/u3izPXLxztuqUXvXuD1KdwGIdmvqke/Ltc9RUZd3/Tgm7CTrCziCUQmYfQFAyZZUHYW9adIv5s1wZGlXH0Br/TDV08/XpCZrQTZXFLOD9xtdyBMM9PSbmAFo8rzxPIgh/TjgR6A3KbTL9HKmqWeuyraFMRh13b+oEXhPfsoJn8ZgOAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector1-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wm2c63fR6zoMHgIPNFzF54R2/3EBSofuMfxiChOD5So=;
 b=HEGirVbItQ1zY5phz9CM817JLoDVeIN3sV6VgiEZAfcpF8kdr8IDC+CFNvI5jlh3y3iUmUAR3wru/SGU9dvuYIFaAXhskLHIoFIKS4TGzBsaEA4dzdgjcYbIFZR5iCKV4vhFdjjdHF+Q1KTn4hZ5CteB+kfA1rW9K0Nom4Mo2fI=
Received: from CY4PR18MB1431.namprd18.prod.outlook.com (10.172.175.148) by
 CY4PR18MB1237.namprd18.prod.outlook.com (10.172.177.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Sat, 25 Jan 2020 03:37:30 +0000
Received: from CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::2171:ec6b:bc83:f9e4]) by CY4PR18MB1431.namprd18.prod.outlook.com
 ([fe80::2171:ec6b:bc83:f9e4%9]) with mapi id 15.20.2665.017; Sat, 25 Jan 2020
 03:37:29 +0000
Received: from dc5-eodlnx05.marvell.com (199.233.59.128) by
 BYAPR11CA0040.namprd11.prod.outlook.com (2603:10b6:a03:80::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.19 via Frontend Transport; Sat, 25 Jan 2020 03:37:29 +0000
From: Prabhakar Kushwaha <pkushwaha@marvell.com>
To: "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>, "axboe@kernel.dk"
 <axboe@kernel.dk>
Subject: [PATCH][v2] ata: ahci: Add shutdown to freeze hardware resources of
 ahci
Thread-Topic: [PATCH][v2] ata: ahci: Add shutdown to freeze hardware resources
 of ahci
Thread-Index: AQHV0zDFIc+1qHkD6kyTCvBr6/M5VQ==
Date: Sat, 25 Jan 2020 03:37:29 +0000
Message-ID: <1579923437-12983-1-git-send-email-pkushwaha@marvell.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR11CA0040.namprd11.prod.outlook.com
 (2603:10b6:a03:80::17) To CY4PR18MB1431.namprd18.prod.outlook.com
 (2603:10b6:903:107::20)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b341e5a-6ae5-4116-90d0-08d7a147e783
x-ms-traffictypediagnostic: CY4PR18MB1237:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR18MB12374F80EA85B9A68DE1285EB2090@CY4PR18MB1237.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0293D40691
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39850400004)(366004)(136003)(346002)(376002)(189003)(199004)(81166006)(81156014)(966005)(6486002)(8936002)(71200400001)(8676002)(5660300002)(4326008)(66476007)(478600001)(64756008)(66446008)(66556008)(26005)(66946007)(316002)(2616005)(956004)(110136005)(36756003)(16526019)(186003)(2906002)(86362001)(107886003)(52116002)(7696005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR18MB1237;
 H:CY4PR18MB1431.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: K8N+T+k4en5BLjUm7swj8KFYFwY8bHOYaS7IWUVIUe5JPRHcXuD3VwJh0wldaeXu87ha4xMfv04Qa/MWcm9PGYm+owZcDaIw4EebiAsJ97yWkvkBQXvSv1e5hxRaOjdR6rsimVL8tvLkFFdcH21TXrG0aHdMbiupESMlbIr7pnQZPo4Lcs3VmoThsQ2sEs46TBfAizZob5uOMMFbKRY5yEES9ewF/GoGqCdZpIHZUgGpKfXauNanKpyWUmD5H1bo6gXa8B2q5ABNJI0cmQd4Y39tuumVNOz9MSlMl1A5pZKlo47sx/ZoBkTpRHsdL6dG4gJM2VzGsxhubH2PUEWk1DFAliJ2BhoncDeFXRXwddgHF620c+so3kDvjQ+TP9cqVQPYpAD3Vh/7gRgLf9wxi6IwSZlfisOSqMTRL5eK5JI5JDoZT9Gu43frLhoTjHiLP6+lWBtOtMcG3yFiaKB/AJgrpHm0Uzzp8NR2lSwjjy4=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b341e5a-6ae5-4116-90d0-08d7a147e783
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jan 2020 03:37:29.8062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wgYEqSBMyVVwKd9bjV41Yju765kwXLXIpMD0nio5BtPI0SNjLhPwJFc/wMNUiJM6UpSg4uxTxbXkzmCQ+wLsNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR18MB1237
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_08:2020-01-24,
 2020-01-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_193741_418084_3EA7C7AD 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
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

device_shutdown() called from reboot or power_shutdown expect
all devices to be shutdown. Same is true for even ahci pci driver.
As no ahci shutdown function is implemented, the ata subsystem
always remains alive with DMA & interrupt support. File system 
related calls should not be honored after device_shutdown().

So defining ahci pci driver shutdown to freeze hardware (mask
interrupt, stop DMA engine and free DMA resources).

Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
---
Changes for v2: Incorporated Bjorn Helgaas's comments
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
