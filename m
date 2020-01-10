Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF5E13645B
	for <lists+kexec@lfdr.de>; Fri, 10 Jan 2020 01:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=IOZQqf883LmH4o9+oJCKMku+67DPnsPgCpn+g3MLsY4=; b=F0aQLiJnBvc/fG
	NagPqkfAvJNEOogZAFOO6VaU7eGFw+Pyi20BYO/sbiaLUoT0NRNpyc3Tgqlz+xeDrSI5Q/KcUr4RS
	7yJdImKTmaEMaJZNznZl7kvpaOBHfj/lxVm0xFr80K34V8/miSzd6GiFlOBckfZRxsQPzn9ufiaWU
	0p0h5QuUEkg6nK1BpS1HZCuXP+D/MEgucBCU9M0+DK3jfuUEkeC/SzmoMBKaPvackdWdOZBOEywta
	AZKDb8rvd/XlQa41mpWDbJGFXCWVHzS92qPmJ/ZCFsKTl+7eH5EoSJgLiBhrvn0lIuY0MROSVMGuE
	VUlo4KfXgHkxMOLP5S6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipi8R-0005hT-U3; Fri, 10 Jan 2020 00:26:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipi8O-0005h6-Sm
 for kexec@lists.infradead.org; Fri, 10 Jan 2020 00:26:42 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2413E2077C;
 Fri, 10 Jan 2020 00:26:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578616000;
 bh=BKjjtf2404wIS4uuPokpSCmLc/x9thxgYjubQ6r/IE0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=TpdbEBnn59RLYGy+FOtIBRMt4WTJmeIRrQCCx7xFmLoYAVjj3mVVTyZ4fwE/XCyfV
 DyKBZQ+XortqThr+iFj7UcNlbIf+lXwipxhZ6WWfDyaH7owxMgWkEiCy7iGjSfFPL6
 QDObs1miuCuaN946p9cOeIsgV8eAKhYMjQbYD8QU=
Date: Thu, 9 Jan 2020 18:26:38 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>, Jens Axboe <axboe@kernel.dk>
Subject: Re: kexec -e not working: root disk not able to detect
Message-ID: <20200110002638.GA50413@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2QiJ+MVVztHONagmYc2-BzbtdGQhABRKO7h4+kOE9cCK=CxA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_162640_972462_75D5FCE4 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-pci@vger.kernel.org, Kamlakant Patel <kamlakantp@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 linux-ide@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

[+cc Jens, ahci.c maintainer]

On Mon, Jan 06, 2020 at 05:24:44PM +0530, Prabhakar Kushwaha wrote:
> Hi All,
> 
> I am trying kexec -e with latest kernel i.e. Linux-5.5.0-rc4.  Here
> second kernel is not able to detect/mount hard-disk having root file
> system (INTEL SSDSC2BB240G7).
> 
> [  279.690575] ata1: softreset failed (1st FIS failed)
> [  279.695446] ata1: limiting SATA link speed to 3.0 Gbps
> [  280.910020] ata1: SATA link down (SStatus 0 SControl 320)
> [  282.626018] ata1: SATA link down (SStatus 0 SControl 300)
> [  282.631409] ata1: link online but 1 devices misclassified, retrying
> [  282.637665] ata1: reset failed (errno=-11), retrying in 9 secs
> [  298.294546] ata1: failed to reset engine (errno=-5)
> [  302.042967] ata1: softreset failed (1st FIS failed)
> [  308.798609] ata1: failed to reset engine (errno=-5)
> [  337.546605] ata1: softreset failed (1st FIS failed)
> [  337.551475] ata1: limiting SATA link speed to 3.0 Gbps
> [  338.766022] ata1: SATA link down (SStatus 0 SControl 320)
> [  339.270943] ata1: EH pending after 5 tries, giving up
> 
> I found following two workaround for this issue.
> A) Define ".shutdown" in driver/ata/ahci.c.
> 
> reboot --> kernel_kexec() --> kernel_restart_prepare() -->
> device_shutdown() --> pci_device_shutdown() --> ahci_shutdown_one()
> --> new function
> 
> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> index 4bfd1b14b390..50a101002885 100644
> --- a/drivers/ata/ahci.c
> +++ b/drivers/ata/ahci.c
> @@ -81,6 +81,7 @@ enum board_ids {
> 
>  static int ahci_init_one(struct pci_dev *pdev, const struct
> pci_device_id *ent);
>  static void ahci_remove_one(struct pci_dev *dev);
>  +static void ahci_shutdown_one(struct pci_dev *dev);
>  static int ahci_vt8251_hardreset(struct ata_link *link, unsigned int *class,
>                                   unsigned long deadline);
>   static int ahci_avn_hardreset(struct ata_link *link, unsigned int *class,
>  @@ -606,6 +607,7 @@ static struct pci_driver ahci_pci_driver = {
>          .id_table               = ahci_pci_tbl,
>          .probe                  = ahci_init_one,
>          .remove                 = ahci_remove_one,
>  +       .shutdown               = ahci_shutdown_one,
>          .driver = {
>                  .pm             = &ahci_pci_pm_ops,
>          },
> 
>  +static void ahci_shutdown_one(struct pci_dev *pdev)
>  +{
>  +       pm_runtime_get_noresume(&pdev->dev);
>  +       ata_pci_remove_one(pdev);
>  +}
>  +
> Note: After defining shutdown, error related to file-system write
> seen. Looks like even after device_shutdown, file system related
> transaction goes to disk.
> 
> B)) Commenting of pci_clear_master() from pci_device_shutdown()
> reboot --> kernel_kexec() --> kernel_restart_prepare() -->
> device_shutdown() --> pci_device_shutdown()
> 
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index 0454ca0e4e3f..ddffaa9321bb 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -481,8 +481,10 @@ static void pci_device_shutdown(struct device *dev)
>         /*
>          * If this is a kexec reboot, turn off Bus Master bit on the
> @@ -491,8 +493,16 @@ static void pci_device_shutdown(struct device *dev)
>          * If it is not a kexec reboot, firmware will hit the PCI
>          * devices with big hammer and stop their DMA any way.
>          */
> 
>  - if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
>  -                pci_clear_master(pci_dev);

I doubt we would remove this without a much clearer justification.

> Here pci_dev current_state. It is "0" i.e. D0.
> 
> From A and B. Looks like even after pci_clear_master(), Some DMA
> transactions going on PCIe device  causing device in unstable.
> Not sure if this is the reason and how to solve this problem.

Is it possible the ahci driver depends on receiving the device with
bus mastering already enabled?  I would guess that would be the common
case in a non-kexec boot -- the BIOS probably hands off the device
with bus mastering enabled.

ahci_init_one() does turn on bus mastering itself (it calls
pci_set_master()), but it's near the end, do if anything before that
depends on DMA, it wouldn't work.

And I don't know how adding a shutdown method would also be a
workaround.

Bjorn

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
