Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E12DE1469EC
	for <lists+kexec@lfdr.de>; Thu, 23 Jan 2020 14:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=8wMQolNwMLn3riDL7oH9JVLLdCLCr+6DnbfY15DGQ58=; b=DAqpZTJDHoGrC0
	9WVIFivlFNPfNjYjpt+RnhkVOXUoFoSK1nwQkUzPRqCuDXTaG3k+6PcQK8OwGUFD8IJW4LtsZj09P
	Pn1G7IXGP/1z+aXIF6ucr1WbVf2zwAxNZ25ad8Oc8YgHahYYHDy7w9i2726qo0uSNRVPU95Rlqh1A
	07o1kTAnJJXr+E/4rQ+gcsjUayvbIxqopy3VatdfRRodUJhZqaqIN5erJDtcsjRF7KkWpa2Ddv+TR
	DEP8fX0qRc7Y4y5WUH719VfWYMN0zgYBhD/YFLUPi8QvP7btISfM28/Odq2Q5stSyCsiyziKN2ij7
	10DsWK3OWf4eIxeYQUKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucwB-0002Hf-R8; Thu, 23 Jan 2020 13:54:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucw4-0002Ae-N2
 for kexec@lists.infradead.org; Thu, 23 Jan 2020 13:54:20 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7545C217F4;
 Thu, 23 Jan 2020 13:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579787654;
 bh=YBOdkpX3/7VZ9p1SNELglQVwxf7us5kSkFFMsE9oaD8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=Ss/0hO3H8ff/EV8TF3zh8MTjkmvC2FGEZecraEZCkppMC32HmsVCPE/MbYGFAJjyy
 If/Rxy428Bi9ZOQBJsnsmcoWMT0P5ldxCSWUfoLf+KmYpOTcI9eMO0j+pmcA51xyXE
 a3q4lBZxLiIyNEWNsS3i1k7XDE8k8qg9agp6WKcs=
Date: Thu, 23 Jan 2020 07:54:13 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Prabhakar Kushwaha <pkushwaha@marvell.com>
Subject: Re: [PATCH] ata: ahci: Add shutdown to freeze hardware resources of
 ahci
Message-ID: <20200123135413.GA90883@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579776109-31578-1-git-send-email-pkushwaha@marvell.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_055416_887326_C13AF342 
X-CRM114-Status: GOOD (  21.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>,
 Kamlakant Patel <kamlakantp@marvell.com>,
 "prabhakar.pkin@gmail.com" <prabhakar.pkin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 23, 2020 at 10:41:57AM +0000, Prabhakar Kushwaha wrote:
> device_shutdown() called from reboot/power_shutdown expect all
> devices to be shutdown. Same is true for ahci pci driver.
> As no shutdown function was implemented ata subsystem remains
> always alive and DMA/interrupt still active.
> 
> It creates problem during kexec, here "M" bit is cleared to stop
> DMA usage.

Maybe this is obvious to AHCI folks, but I don't know what "M" bit you
are referring to, and I don't see anything in the patch itself that
looks like an "M" bit.  I thought maybe you meant the "Bus Master
Enable" bit (PCI_COMMAND_MASTER), but I don't see an obvious
connection to that either.

> Any further DMA transaction may cause instability and
> the hard-disk may even not get detected for second kernel.
> One of possible case is periodic file system sync.

I think "may cause instability" and "disk may even not get detected"
is too vague and hand-wavy to really add useful information to the
commit log.

> So defining ahci pci driver shutdown to freeze hardware (mask
> interrupt, stop DMA engine and free DMA resources).
> 
> Signed-off-by: Prabhakar Kushwaha <pkushwaha@marvell.com>
> ---
>  drivers/ata/ahci.c        |  8 ++++++++
>  drivers/ata/libata-core.c | 21 +++++++++++++++++++++
>  include/linux/libata.h    |  1 +
>  3 files changed, 30 insertions(+)
> 
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 4bfd1b14b390..31fc934740b6 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -81,6 +81,7 @@ enum board_ids {
>  
>  static int ahci_init_one(struct pci_dev *pdev, const struct pci_device_id *ent);
>  static void ahci_remove_one(struct pci_dev *dev);
> +static void ahci_shutdown_one(struct pci_dev *dev);
>  static int ahci_vt8251_hardreset(struct ata_link *link, unsigned int *class,
>  				 unsigned long deadline);
>  static int ahci_avn_hardreset(struct ata_link *link, unsigned int *class,
> @@ -606,6 +607,7 @@ static struct pci_driver ahci_pci_driver = {
>  	.id_table		= ahci_pci_tbl,
>  	.probe			= ahci_init_one,
>  	.remove			= ahci_remove_one,
> +	.shutdown		= ahci_shutdown_one,
>  	.driver = {
>  		.pm		= &ahci_pci_pm_ops,
>  	},
> @@ -626,6 +628,7 @@ MODULE_PARM_DESC(mobile_lpm_policy, "Default LPM policy for mobile chipsets");
>  static void ahci_pci_save_initial_config(struct pci_dev *pdev,
>  					 struct ahci_host_priv *hpriv)
>  {
> +

Spurious whitespace change, please remove.

>  	if (pdev->vendor == PCI_VENDOR_ID_JMICRON && pdev->device == 0x2361) {
>  		dev_info(&pdev->dev, "JMB361 has only one port\n");
>  		hpriv->force_port_map = 1;
> @@ -1877,6 +1880,11 @@ static int ahci_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	return 0;
>  }
>  
> +static void ahci_shutdown_one(struct pci_dev *pdev)
> +{
> +	ata_pci_shutdown_one(pdev);
> +}
> +
>  static void ahci_remove_one(struct pci_dev *pdev)
>  {
>  	pm_runtime_get_noresume(&pdev->dev);
> diff --git a/drivers/ata/libata-core.c b/drivers/ata/libata-core.c
> index 6f4ab5c5b52d..42c8728f6117 100644
> --- a/drivers/ata/libata-core.c
> +++ b/drivers/ata/libata-core.c
> @@ -6767,6 +6767,26 @@ void ata_pci_remove_one(struct pci_dev *pdev)
>  	ata_host_detach(host);
>  }
>  
> +void ata_pci_shutdown_one(struct pci_dev *pdev)
> +{
> +	struct ata_host *host = pci_get_drvdata(pdev);
> +	int i;
> +
> +	for (i = 0; i < host->n_ports; i++) {
> +		struct ata_port *ap = host->ports[i];
> +
> +		ap->pflags |= ATA_PFLAG_FROZEN;
> +
> +		/* Disable port interrupts */
> +		if (ap->ops->freeze)
> +			ap->ops->freeze(ap);
> +
> +		/* Stop the port DMA engines */
> +		if (ap->ops->port_stop)
> +			ap->ops->port_stop(ap);
> +	}
> +}
> +
>  /* move to PCI subsystem */
>  int pci_test_config_bits(struct pci_dev *pdev, const struct pci_bits *bits)
>  {
> @@ -7387,6 +7407,7 @@ EXPORT_SYMBOL_GPL(ata_timing_cycle2mode);
>  
>  #ifdef CONFIG_PCI
>  EXPORT_SYMBOL_GPL(pci_test_config_bits);
> +EXPORT_SYMBOL_GPL(ata_pci_shutdown_one);
>  EXPORT_SYMBOL_GPL(ata_pci_remove_one);
>  #ifdef CONFIG_PM
>  EXPORT_SYMBOL_GPL(ata_pci_device_do_suspend);
> diff --git a/include/linux/libata.h b/include/linux/libata.h
> index 2dbde119721d..bff539918d82 100644
> --- a/include/linux/libata.h
> +++ b/include/linux/libata.h
> @@ -1221,6 +1221,7 @@ struct pci_bits {
>  };
>  
>  extern int pci_test_config_bits(struct pci_dev *pdev, const struct pci_bits *bits);
> +extern void ata_pci_shutdown_one(struct pci_dev *pdev);
>  extern void ata_pci_remove_one(struct pci_dev *pdev);
>  
>  #ifdef CONFIG_PM
> -- 
> 2.17.1
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
