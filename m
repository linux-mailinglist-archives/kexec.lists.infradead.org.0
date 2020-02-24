Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD7416AD79
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 18:30:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WpZA3aj1hYQzcqFS35xrIdUdD0XvHfO3BY8Rxw9cLg=; b=MiOJbkjZ6FmXOe
	ApXccuTG0WUH9zSBEGNoRyPkxcb+xT8wxVl2NkWCjE6eVePCJ008S2DGPlpd69YCbh7PY0drsDLFT
	i/kL7QRA6o7550Nia5KC9Kb+4JJJeQV8xD7WZdLDs7eXSr28hEiVlpOmym8Yg40+vsSfPegZELByU
	LKWQBcpErolhmJ438wBMLKQ35B1nN5FTEIpslceR5k7TDS3GvMqFs51C8RUHs9EsgMNGqkP3GIGxk
	RfHryI5x5EjDAoSBotF9hL/wK5+zJ6vT42IDPuz9deQZP1U7JLLzLkspyc9WpsUuj3jHaMEbp0B2O
	/IlIV8LtK58YwZOE9/jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6HZE-00043X-Ir; Mon, 24 Feb 2020 17:30:52 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6HZA-00040x-EI
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 17:30:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582565445;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FHtSr2FoffKbcmA3UQGCSx6F1iasDABu6m23H9uFA3U=;
 b=gphnrUYaLgvaYJpdqkA4upQfKf9AIrjwwYr70MIf5Gb0O8c8l1XxqzBm7l6AIEKhTyC7yZ
 U/Yz07RQcPA20w7FkkeiDnYV8NqrWPxNFzBUp3a4U7WYncJqM3LviJz2IabhzK1+bkg9n1
 ruZNDGCB18Tps0GCn+0qdH9RcqXs+SA=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-rvnWw2k0PJmDnYKyGQsBjw-1; Mon, 24 Feb 2020 12:30:43 -0500
X-MC-Unique: rvnWw2k0PJmDnYKyGQsBjw-1
Received: by mail-io1-f72.google.com with SMTP id i8so16268313ioi.0
 for <kexec@lists.infradead.org>; Mon, 24 Feb 2020 09:30:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jBUQXvyIT0NRGeVlKfYzxCNd6VTs5c/rTotbnjQlyHg=;
 b=OsJWpBcARfVt8OjOsiCsf6c3Cd6wqbsI/UvvJf3DPlgxF0M0cEGqamGZp2wlF+ljHp
 VHSQFIs74Zkha8L+A5a2SV3/PwbFnLZEV764SrRvfUokDnOHXK668jr7AellzwAVIZC9
 qYN3RdxCBBxBwyetio1SsKOXnzakjaagPBz3B6wnMQCJvoTXX/gsUo2+pIfdgsnKa+Hp
 1jQanXE6M9moLPJb6KHU044QVQKF/56umE+L4hiMO7DIqqRoAmI0DqMz6m44z7yS5ILo
 +Xgx60BaDj8y7JrlICGN32wUzQFAkShYjPyoFO4zMDKf5ROQIjv6P/eHgCSPPdRZm35q
 NV1Q==
X-Gm-Message-State: APjAAAU8MEDETeeaBwwaAZRmgqlKU/JNH3GoFh/PqkoonyEBXhu8UeM5
 zdZzmnw6bB8vSTczc+WVzohflhlBHFSKuvSrwYYDq9XGsP2WDbwilryMi4SNJt0h5cBdIhXtsDr
 I/UMmCS27/Zje/jURzZUCUina6l9Ag74bu+aD
X-Received: by 2002:a92:3a95:: with SMTP id i21mr62650039ilf.249.1582565442532; 
 Mon, 24 Feb 2020 09:30:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqyqzh9CyJ1U9k2mrY0h0+BdZxlgI3BRos8HplHL7d4dWc2+DjxZb0RyDzWWanrk9NL3aDvaxkGg8UaqFzTR+WU=
X-Received: by 2002:a92:3a95:: with SMTP id i21mr62649926ilf.249.1582565441513; 
 Mon, 24 Feb 2020 09:30:41 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
In-Reply-To: <20200222165631.GA213225@google.com>
From: Kairui Song <kasong@redhat.com>
Date: Tue, 25 Feb 2020 01:30:30 +0800
Message-ID: <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Bjorn Helgaas <helgaas@kernel.org>, Khalid Aziz <khalid@gonehiking.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_093048_556336_13201152 
X-CRM114-Status: GOOD (  35.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Randy Wright <rwright@hpe.com>, Jerry Hoemann <jerry.hoemann@hpe.com>,
 Deepa Dinamani <deepa.kernel@gmail.com>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

Thanks for the reply, I don't have any better idea than this RFC patch
yet. The patch is hold as previous discussion suggests this just work
around the problem, the real fix should be let crash kernel load every
required kernel module and reset whichever hardware that is not in a
good status. However, user may struggle to find out which driver is
actually needed, and it's not practical to load all drivers in kdump
kernel. (actually kdump have been trying to load as less driver as
possible to save memory).

So as Dave Y suggested in another reply, will it better to apply this
quirk with a kernel param controlling it? If such problem happens, the
option could be turned on as a fix.


On Sun, Feb 23, 2020 at 12:59 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> [+cc Khalid, Deepa, Randy, Dave, Myron]
>
> On Thu, Dec 26, 2019 at 03:21:18AM +0800, Kairui Song wrote:
> > There are reports about kdump hang upon reboot on some HPE machines,
> > kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> > error occurred and crashed the system.
>
> Did we ever make progress on this?  This definitely sounds like a
> problem that needs to be fixed, but I don't see a resolution here.
>
> > On the machine I can reproduce this issue, part of the topology
> > looks like this:
> >
> > [0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
> >           +-01.0-[02]--
> >           +-01.1-[05]--
> >           +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
> >           |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
> >           +-02.1-[0f]--
> >           +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array Gen9 Controllers
> >
> > When shuting down PCIe port 0000:00:02.2 or 0000:00:02.0, the machine
> > will hang, depend on which device is reinitialized in kdump kernel.
> >
> > If force remove unused device then trigger kdump, the problem will never
> > happen:
> >
> >     echo 1 > /sys/bus/pci/devices/0000\:00\:02.2/0000\:07\:00.0/remove
> >     echo c > /proc/sysrq-trigger
> >
> >     ... Kdump save vmcore through network, the NIC get reinitialized and
> >     hpsa is untouched. Then reboot with no problem. (If hpsa is used
> >     instead, shutdown the NIC in first kernel will help)
> >
> > The cause is that some devices are enabled by the first kernel, but it
> > don't have the chance to shutdown the device, and kdump kernel is not
> > aware of it, unless it reinitialize the device.
> >
> > Upon reboot, kdump kernel will skip downstream device shutdown and
> > clears its bridge's master bit directly. The downstream device could
> > error out as it can still send requests but upstream refuses it.
> >
> > So for kdump, let kernel read the correct hardware power state on boot,
> > and always clear the bus master bit of PCI device upon shutdown if the
> > device is on. PCIe port driver will always shutdown all downstream
> > devices first, so this should ensure all downstream devices have bus
> > master bit off before clearing the bridge's bus master bit.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >  drivers/pci/pci-driver.c | 11 ++++++++---
> >  drivers/pci/quirks.c     | 20 ++++++++++++++++++++
> >  2 files changed, 28 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> > index 0454ca0e4e3f..84a7fd643b4d 100644
> > --- a/drivers/pci/pci-driver.c
> > +++ b/drivers/pci/pci-driver.c
> > @@ -18,6 +18,7 @@
> >  #include <linux/kexec.h>
> >  #include <linux/of_device.h>
> >  #include <linux/acpi.h>
> > +#include <linux/crash_dump.h>
> >  #include "pci.h"
> >  #include "pcie/portdrv.h"
> >
> > @@ -488,10 +489,14 @@ static void pci_device_shutdown(struct device *dev)
> >        * If this is a kexec reboot, turn off Bus Master bit on the
> >        * device to tell it to not continue to do DMA. Don't touch
> >        * devices in D3cold or unknown states.
> > -      * If it is not a kexec reboot, firmware will hit the PCI
> > -      * devices with big hammer and stop their DMA any way.
> > +      * If this is kdump kernel, also turn off Bus Master, the device
> > +      * could be activated by previous crashed kernel and may block
> > +      * it's upstream from shutting down.
> > +      * Else, firmware will hit the PCI devices with big hammer
> > +      * and stop their DMA any way.
> >        */
> > -     if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
> > +     if ((kexec_in_progress || is_kdump_kernel()) &&
> > +                     pci_dev->current_state <= PCI_D3hot)
> >               pci_clear_master(pci_dev);
> >  }
> >
> > diff --git a/drivers/pci/quirks.c b/drivers/pci/quirks.c
> > index 4937a088d7d8..c65d11ab3939 100644
> > --- a/drivers/pci/quirks.c
> > +++ b/drivers/pci/quirks.c
> > @@ -28,6 +28,7 @@
> >  #include <linux/platform_data/x86/apple.h>
> >  #include <linux/pm_runtime.h>
> >  #include <linux/switchtec.h>
> > +#include <linux/crash_dump.h>
> >  #include <asm/dma.h> /* isa_dma_bridge_buggy */
> >  #include "pci.h"
> >
> > @@ -192,6 +193,25 @@ static int __init pci_apply_final_quirks(void)
> >  }
> >  fs_initcall_sync(pci_apply_final_quirks);
> >
> > +/*
> > + * Read the device state even if it's not enabled. The device could be
> > + * activated by previous crashed kernel, this will read and correct the
> > + * cached state.
> > + */
> > +static void quirk_read_pm_state_in_kdump(struct pci_dev *dev)
> > +{
> > +     u16 pmcsr;
> > +
> > +     if (!is_kdump_kernel())
> > +             return;
> > +
> > +     if (dev->pm_cap) {
> > +             pci_read_config_word(dev, dev->pm_cap + PCI_PM_CTRL, &pmcsr);
> > +             dev->current_state = (pmcsr & PCI_PM_CTRL_STATE_MASK);
> > +     }
> > +}
> > +DECLARE_PCI_FIXUP_FINAL(PCI_ANY_ID, PCI_ANY_ID, quirk_read_pm_state_in_kdump);
> > +
> >  /*
> >   * Decoding should be disabled for a PCI device during BAR sizing to avoid
> >   * conflict. But doing so may cause problems on host bridge and perhaps other
> > --
> > 2.24.1
> >
>


--
Best Regards,
Kairui Song


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
