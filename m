Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D70B16908B
	for <lists+kexec@lfdr.de>; Sat, 22 Feb 2020 17:56:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=r9YVdFanBkEZY4N4YOqlIRdChEQbsyQ/oZ2g11zSGh0=; b=phMf11J1RKX8Vl
	3ZNjEYLvy3yBK37vQblsNvY3dAIBSw7TLaWjadQT91iAjEf6R9vDkdMI3DV+7N7bAowTJSiFDGLfi
	sNCa0Gd88oYeeeAzZQLlqN91Eh7cCwgGHojK5rKqZk/utrjlhJubGPUYGq2slhqW/GOkV9YrZ1fdc
	A0PUzLsuNNT1ziPVQLXbij2h1HZlfQjsrXat/2AuAMXdgnzulEdEm4UbBuDHSnFcLThKr57oWc6hr
	J0Rieev9vbMPaubVOm/0LRQn7vJsOZX2WdsdR5z0DSW8RLAuFMDzeDoFbsqc2xUhCRj8hvw6oNtgI
	pM5j36tvH7V9S1Aj4fBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Y53-0003kc-S0; Sat, 22 Feb 2020 16:56:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Y4w-0003kG-SL
 for kexec@lists.infradead.org; Sat, 22 Feb 2020 16:56:36 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 55EEA20707;
 Sat, 22 Feb 2020 16:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582390593;
 bh=98ab+zFtjpRV2/2XwjgNDpcfq7s8dB9xZ51dSQ4UUdc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=RpTAVEh3HRsVrFVosUYVg3uSxrUkXCNyfNQ/LQAje769YVu6i57ohkDxwAkXJI424
 xnxMU9g2yXNPJkgcq6jBqXYI/BMBCucFB3QDcwVu/jP5JM1yp8IWsqYK44FzCrJUyI
 e+mcyMIGw0+s42hhanEruxDO1tLo/glA1YEPABTQ=
Date: Sat, 22 Feb 2020 10:56:31 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200222165631.GA213225@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191225192118.283637-1-kasong@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_085634_972248_C1B35FDE 
X-CRM114-Status: GOOD (  27.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Myron Stowe <myron.stowe@redhat.com>, Baoquan He <bhe@redhat.com>,
 linux-pci@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Randy Wright <rwright@hpe.com>,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Deepa Dinamani <deepa.kernel@gmail.com>,
 Dave Young <dyoung@redhat.com>, Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

[+cc Khalid, Deepa, Randy, Dave, Myron]

On Thu, Dec 26, 2019 at 03:21:18AM +0800, Kairui Song wrote:
> There are reports about kdump hang upon reboot on some HPE machines,
> kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> error occurred and crashed the system.

Did we ever make progress on this?  This definitely sounds like a
problem that needs to be fixed, but I don't see a resolution here.

> On the machine I can reproduce this issue, part of the topology
> looks like this:
> 
> [0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
>           +-01.0-[02]--
>           +-01.1-[05]--
>           +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
>           +-02.1-[0f]--
>           +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array Gen9 Controllers
> 
> When shuting down PCIe port 0000:00:02.2 or 0000:00:02.0, the machine
> will hang, depend on which device is reinitialized in kdump kernel.
> 
> If force remove unused device then trigger kdump, the problem will never
> happen:
> 
>     echo 1 > /sys/bus/pci/devices/0000\:00\:02.2/0000\:07\:00.0/remove
>     echo c > /proc/sysrq-trigger
> 
>     ... Kdump save vmcore through network, the NIC get reinitialized and
>     hpsa is untouched. Then reboot with no problem. (If hpsa is used
>     instead, shutdown the NIC in first kernel will help)
> 
> The cause is that some devices are enabled by the first kernel, but it
> don't have the chance to shutdown the device, and kdump kernel is not
> aware of it, unless it reinitialize the device.
> 
> Upon reboot, kdump kernel will skip downstream device shutdown and
> clears its bridge's master bit directly. The downstream device could
> error out as it can still send requests but upstream refuses it.
> 
> So for kdump, let kernel read the correct hardware power state on boot,
> and always clear the bus master bit of PCI device upon shutdown if the
> device is on. PCIe port driver will always shutdown all downstream
> devices first, so this should ensure all downstream devices have bus
> master bit off before clearing the bridge's bus master bit.
> 
> Signed-off-by: Kairui Song <kasong@redhat.com>
> ---
>  drivers/pci/pci-driver.c | 11 ++++++++---
>  drivers/pci/quirks.c     | 20 ++++++++++++++++++++
>  2 files changed, 28 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index 0454ca0e4e3f..84a7fd643b4d 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -18,6 +18,7 @@
>  #include <linux/kexec.h>
>  #include <linux/of_device.h>
>  #include <linux/acpi.h>
> +#include <linux/crash_dump.h>
>  #include "pci.h"
>  #include "pcie/portdrv.h"
>  
> @@ -488,10 +489,14 @@ static void pci_device_shutdown(struct device *dev)
>  	 * If this is a kexec reboot, turn off Bus Master bit on the
>  	 * device to tell it to not continue to do DMA. Don't touch
>  	 * devices in D3cold or unknown states.
> -	 * If it is not a kexec reboot, firmware will hit the PCI
> -	 * devices with big hammer and stop their DMA any way.
> +	 * If this is kdump kernel, also turn off Bus Master, the device
> +	 * could be activated by previous crashed kernel and may block
> +	 * it's upstream from shutting down.
> +	 * Else, firmware will hit the PCI devices with big hammer
> +	 * and stop their DMA any way.
>  	 */
> -	if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
> +	if ((kexec_in_progress || is_kdump_kernel()) &&
> +			pci_dev->current_state <= PCI_D3hot)
>  		pci_clear_master(pci_dev);
>  }
>  
> diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> index 4937a088d7d8..c65d11ab3939 100644
> --- a/drivers/pci/quirks.c
> +++ b/drivers/pci/quirks.c
> @@ -28,6 +28,7 @@
>  #include <linux/platform_data/x86/apple.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/switchtec.h>
> +#include <linux/crash_dump.h>
>  #include <asm/dma.h>	/* isa_dma_bridge_buggy */
>  #include "pci.h"
>  
> @@ -192,6 +193,25 @@ static int __init pci_apply_final_quirks(void)
>  }
>  fs_initcall_sync(pci_apply_final_quirks);
>  
> +/*
> + * Read the device state even if it's not enabled. The device could be
> + * activated by previous crashed kernel, this will read and correct the
> + * cached state.
> + */
> +static void quirk_read_pm_state_in_kdump(struct pci_dev *dev)
> +{
> +	u16 pmcsr;
> +
> +	if (!is_kdump_kernel())
> +		return;
> +
> +	if (dev->pm_cap) {
> +		pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
> +		dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
> +	}
> +}
> +DECLARE_PCI_FIXUP_FINAL(PCI_ANY_ID, PCI_ANY_ID, quirk_read_pm_state_in_kdump);
> +
>  /*
>   * Decoding should be disabled for a PCI device during BAR sizing to avoid
>   * conflict. But doing so may cause problems on host bridge and perhaps other
> -- 
> 2.24.1
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
