Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F04B12F526
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 08:59:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jN7vhkh58Ho+4nAZwaxwVuMRngo0npm9kIW3W2vEXI=; b=byLd3mgbDz7ohE
	nk25aeOFR77VK3akSyQKAxwgRWvTo9hQ44e4UKhDl3VavVtjMAFTthKFIzuzYgr6vyD0fjfdey5l8
	lXB5jSIAzasFR40KaqEHqnBQWWz9E8z4xziJuucsyFq3LOPluU8axJlnOll6rhdbxYq3XBxN/OIc0
	l5xD/qMSUyNDImteByqe88MyljhtobV60o8+keBhIdOeU6cjeZ7JNiEycZJiUwUI571fdgKGk7sm7
	2NR1APdqUT++72RMFYGFjKNkzezSPgPd0qaRlXwxVcDg5ovXcGN/fiAOR8V8bXH/oArShH76PTSdy
	YkAeMe5FVCllhBFa6vRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inHrc-0005ld-QN; Fri, 03 Jan 2020 07:59:20 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inHrU-0005jq-U5
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 07:59:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578038346;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=yC/c9COZb7HIZxmHvwPIV+XfjM96XzhIJE0WlNIJwmA=;
 b=ZI1QFI0l2fOW/J7kcSIXJZmDGkpbAdREmMr6sslkNfBzBg0NJ4i44HIRFw6CdAewokfT9L
 llnRCJsETq3QCnNNE+1bsokxNWlRKtCTnX072B0uRODaEuoJ2QFiL5KAqWdxGYxm8OWgvR
 7h+6Z2woA93jBffKzotiPdq1LQBksLc=
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com
 [209.85.166.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-rjWZd4RvOfadNx87jJlhGQ-1; Fri, 03 Jan 2020 02:59:02 -0500
Received: by mail-il1-f199.google.com with SMTP id e4so24976836ilm.7
 for <kexec@lists.infradead.org>; Thu, 02 Jan 2020 23:59:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oTkOJXYtsJl5gqpboh4tFkRUS1dSPk+5aoyVvRoTwh8=;
 b=Gv4Df5I0iqqIQOnsk7gmcvjHd4HA4bkjDqhGDDrkYshwMLnkXXnsuy/29d0Not71kv
 Z8CNjukww8ZLd+Mr1WbDwUrkqNNnS/l81utMNG8BuLW+wTUJA1FZjEeGqi6DOldXIgnZ
 2R2erVULpuLSbS9+9i2ylVRhDpiGpHp+d/Vhn5zfOHTLibHkEIt71Je7QPg2RZG/LDGd
 iwY/PkCp4ucPCAO51Gt6a3G/iZjs9If1sowPXUPnOAGHTWUEdAr7Zi7/B+3tHwZUF4fU
 N0NPcm1HjbrHB7b1fMtJNJ9lmW83F8j6IMXN/vqZ/8jg1Wp65Iid77W8zG4XGGGDuUjR
 9G+A==
X-Gm-Message-State: APjAAAU9nMz5g8rwHeChL9DAc1/XnVqJEUCUePPItGyiyS+eFAl209Gn
 f9xd20UomjAl17eVHad4gB5roIe51NxtHhSh/FVY+mF2tyKxUCopnpZHTfnHwXbrYS6Sq0gtsnl
 rNTOsyhhtjHI+UHX24i8s6Jy8F68hkQ1Nkipm
X-Received: by 2002:a6b:c742:: with SMTP id x63mr54288771iof.162.1578038342043; 
 Thu, 02 Jan 2020 23:59:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqyGWwoijUrNk3lGb3yHH/OCxGOXCznRhuHJk2kwDaGgB0t1My6xVR0q3HfVpf6GINrQtXIpyWOg9OkGyajeljY=
X-Received: by 2002:a6b:c742:: with SMTP id x63mr54288762iof.162.1578038341758; 
 Thu, 02 Jan 2020 23:59:01 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
In-Reply-To: <20191225192118.283637-1-kasong@redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Fri, 3 Jan 2020 15:58:50 +0800
Message-ID: <CACPcB9frcWN5vMOtZb4x1FiiyvQYXCyJoRNGeexayuCsKdVZMw@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pci@vger.kernel.org
X-MC-Unique: rjWZd4RvOfadNx87jJlhGQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_235913_054170_32586D6B 
X-CRM114-Status: GOOD (  29.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, kexec@lists.infradead.org,
 Jerry Hoemann <jerry.hoemann@hpe.com>, Baoquan He <bhe@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Dec 26, 2019 at 3:21 AM Kairui Song <kasong@redhat.com> wrote:
>
> There are reports about kdump hang upon reboot on some HPE machines,
> kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> error occurred and crashed the system.
>
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
>          * If this is a kexec reboot, turn off Bus Master bit on the
>          * device to tell it to not continue to do DMA. Don't touch
>          * devices in D3cold or unknown states.
> -        * If it is not a kexec reboot, firmware will hit the PCI
> -        * devices with big hammer and stop their DMA any way.
> +        * If this is kdump kernel, also turn off Bus Master, the device
> +        * could be activated by previous crashed kernel and may block
> +        * it's upstream from shutting down.
> +        * Else, firmware will hit the PCI devices with big hammer
> +        * and stop their DMA any way.
>          */
> -       if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
> +       if ((kexec_in_progress || is_kdump_kernel()) &&
> +                       pci_dev->current_state <= PCI_D3hot)
>                 pci_clear_master(pci_dev);
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
>  #include <asm/dma.h>   /* isa_dma_bridge_buggy */
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
> +       u16 pmcsr;
> +
> +       if (!is_kdump_kernel())
> +               return;
> +
> +       if (dev->pm_cap) {
> +               pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
> +               dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
> +       }
> +}
> +DECLARE_PCI_FIXUP_FINAL(PCI_ANY_ID, PCI_ANY_ID, quirk_read_pm_state_in_kdump);
> +
>  /*
>   * Decoding should be disabled for a PCI device during BAR sizing to avoid
>   * conflict. But doing so may cause problems on host bridge and perhaps other
> --
> 2.24.1
>

Let me make a simplified version of the commit message:

On some HPE machines, If kernel clears the bus master bit of a PCI
bridge, but some downstream device of it is still alive, the
downstream device could error out and crash the system.

Usually this never happen, as PCI devices are always shutdown before
their upstream bridge is shutdown. But in kdump kernel, the real
hardware state is out of sync with the data in kernel, as previous
kernel could enable some hardware and kdump kernel is unaware of it,
so kdump kernel just skipped the downstream device shutdown.

This patch is trying to fix this issue.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
