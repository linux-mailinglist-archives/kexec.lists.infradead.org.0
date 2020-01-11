Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA08B137CA5
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 10:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X9gRAmrvbUHo8z3g1wjW3/fQ0Jj1mOOnrIm01SSsBe8=; b=alTTlm/RppvjPE
	F8JZce+aoxu/bybWcuD4WIAPhq7uNj5FpHqG0f2VRAICImwyiY6LWqXcmbs0YCz94lHTQ2HCL4RC2
	0GMAtvmydjJgiBdkRRdkV09+y4n5DFREQLHau6i7h4s2dy3wz2zKpD9ZpC4NmKLJYONEYs4dFQL3C
	8bLTfuxK5jOCrr0MW+gbitnHFmXcYdDkvqJ+w+lHsLUSPUdGNB0dmZ6mNrVoZZu6JCiurxZhrfMvR
	qZ0G6mBqAN7+WNsys+QVRW47UASrbMMBqvt3pUG2zebnchLpGpCmLqhh72nBCQt/s5HvslKwGu2u1
	rgQgCw9bGaG9OWC3u9pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqDBh-0003XO-M1; Sat, 11 Jan 2020 09:36:09 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqDBd-0003Wo-LU
 for kexec@lists.infradead.org; Sat, 11 Jan 2020 09:36:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578735362;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6kszU/NvshNyNc24ejg8kTFpB+W87P/6Y4s9nFWnvFA=;
 b=aFRkeIyKfCt0NfbYN2SD/VxvPHzrELUIT1SlapmdpJG/LOcTOlP23AFWoUu6qtwwYh2Yby
 wvFkLOCci5naWGxLK4apJZ3S14f6amI2O/D/FSUz9Bd4TvAypFJaHi+h/zV9f80xDljHTn
 Xzss56o2BsPUbK+lAwpnc99RORJd+4k=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-168-WRgqcT91OcecREHqIfrCAQ-1; Sat, 11 Jan 2020 04:36:01 -0500
Received: by mail-io1-f70.google.com with SMTP id u6so3059941iog.21
 for <kexec@lists.infradead.org>; Sat, 11 Jan 2020 01:36:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=raquESQG+I5khJ1hkdzWbyI9ahA7o/hvNFJshfHG5h8=;
 b=TT8uL5HDtQhmLvkWPo5p70ftRrlBLGIxGyc3p34tn3OzBb/eL/hL8nhvvd94bbO1us
 O2KagcjcBIoU7DnN1eiEsA5z43Zf9LgG8K+/IWeZXRkos/femsuVteHr5SdthP1QT25R
 ZRc8PDmo7CL3r0gF/2ZDVQuT8N05g8HgsabTaHIo/PSY5mZMEPmamUgykLOjhtWJ3l8J
 VuFh1BAuGkz5EZN+Wg4wOWKpiwivKfIiD7a+qoOZ/qbARMMji2hgLHaN3tOtkffwtQQK
 f8QGGh/IJwOU0gPLzLthUX3naVsbUtCzBWJufGaz5pypHe+3CEnz/t4TswIiXIFTZp+b
 1Y3A==
X-Gm-Message-State: APjAAAW1UVv/9UjVE73dxwI24XA5QvPv57LvS3dvslbR616nkoHyKepn
 p3YkIKwaUDDuie08bnQM9LVVw+EhwXnH+6un5arpRLZ84B/KbxJiFjegcTWL9MEp4dkjX8S0Eab
 EdXOs8NFqAayJSEV3B/AleqeN0iyfCyli0IGQ
X-Received: by 2002:a92:b11:: with SMTP id b17mr6572499ilf.202.1578735360379; 
 Sat, 11 Jan 2020 01:36:00 -0800 (PST)
X-Google-Smtp-Source: APXvYqyyomTlT7wgn1HHUwpr5NfjTCRw7HSs0oqFvATDnoSdFujPB7iTMZ+8LN4CNrLRX6TleaPzj+DiEWQujdRXHZw=
X-Received: by 2002:a92:b11:: with SMTP id b17mr6572487ilf.202.1578735360105; 
 Sat, 11 Jan 2020 01:36:00 -0800 (PST)
MIME-Version: 1.0
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <d2715683-f171-a825-3c0b-678b6c5c1a79@gonehiking.org>
 <20200111005041.GB19291@MiWiFi-R3L-srv>
 <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
In-Reply-To: <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
From: Kairui Song <kasong@redhat.com>
Date: Sat, 11 Jan 2020 17:35:48 +0800
Message-ID: <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Khalid Aziz <khalid@gonehiking.org>
X-MC-Unique: WRgqcT91OcecREHqIfrCAQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_013605_849248_C0D8A622 
X-CRM114-Status: GOOD (  43.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Baoquan He <bhe@redhat.com>, linux-pci@vger.kernel.org,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Randy Wright <rwright@hpe.com>, Jerry Hoemann <Jerry.Hoemann@hpe.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 11:46 AM Khalid Aziz <khalid@gonehiking.org> wrote:
>
> On 1/10/20 5:50 PM, Baoquan He wrote:
> > On 01/10/20 at 05:18pm, Khalid Aziz wrote:
> >> On 1/10/20 4:00 PM, Jerry Hoemann wrote:
> >>> On Fri, Jan 10, 2020 at 03:25:36PM -0700, Khalid Aziz and Shuah Khan wrote:
> >>>> On 1/10/20 2:42 PM, Bjorn Helgaas wrote:
> >>>>> [+cc Deepa (also working in this area)]
> >>>>>
> >>>>> On Thu, Dec 26, 2019 at 03:21:18AM +0800, Kairui Song wrote:
> >>>>>> There are reports about kdump hang upon reboot on some HPE machines,
> >>>>>> kernel hanged when trying to shutdown a PCIe port, an uncorrectable
> >>>>>> error occurred and crashed the system.
> >>>>>
> >>>>> Details?  Do you have URLs for bug reports, dmesg logs, etc?
> >>>>>
> >>>>>> On the machine I can reproduce this issue, part of the topology
> >>>>>> looks like this:
> >>>>>>
> >>>>>> [0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
> >>>>>>           +-01.0-[02]--
> >>>>>>           +-01.1-[05]--
> >>>>>>           +-02.0-[06]--+-00.0  tEmulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
> >>>>>>           +-02.1-[0f]--
> >>>>>>           +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array Gen9 Controllers
> >>>>>>
> >>>>>> When shutting down PCIe port 0000:00:02.2 or 0000:00:02.0, the machine
> >>>>>> will hang, depend on which device is reinitialized in kdump kernel.
> >>>>>>
> >>>>>> If force remove unused device then trigger kdump, the problem will never
> >>>>>> happen:
> >>>>>>
> >>>>>>     echo 1 > /sys/bus/pci/devices/0000\:00\:02.2/0000\:07\:00.0/remove
> >>>>>>     echo c > /proc/sysrq-trigger
> >>>>>>
> >>>>>>     ... Kdump save vmcore through network, the NIC get reinitialized and
> >>>>>>     hpsa is untouched. Then reboot with no problem. (If hpsa is used
> >>>>>>     instead, shutdown the NIC in first kernel will help)
> >>>>>>
> >>>>>> The cause is that some devices are enabled by the first kernel, but it
> >>>>>> don't have the chance to shutdown the device, and kdump kernel is not
> >>>>>> aware of it, unless it reinitialize the device.
> >>>>>>
> >>>>>> Upon reboot, kdump kernel will skip downstream device shutdown and
> >>>>>> clears its bridge's master bit directly. The downstream device could
> >>>>>> error out as it can still send requests but upstream refuses it.
> >>>>>
> >>>>> Can you help me understand the sequence of events?  If I understand
> >>>>> correctly, the desired sequence is:
> >>>>>
> >>>>>   - user kernel boots
> >>>>>   - user kernel panics and kexecs to kdump kernel
> >>>>>   - kdump kernel writes vmcore to network or disk
> >>>>>   - kdump kernel reboots
> >>>>>   - user kernel boots
> >>>>>
> >>>>> But the problem is that as part of the kdump kernel reboot,
> >>>>>
> >>>>>   - kdump kernel disables bus mastering for a Root Port
> >>>>>   - device below the Root Port attempts DMA
> >>>>>   - Root Port receives DMA transaction, handles it as Unsupported
> >>>>>     Request, sends UR Completion to device
> >>>>>   - device signals uncorrectable error
> >>>>>   - uncorrectable error causes a crash (Or a hang?  You mention both
> >>>>>     and I'm not sure which it is)
> >>>>>
> >>>>> Is that right so far?
> >>>>>
> >>>>>> So for kdump, let kernel read the correct hardware power state on boot,
> >>>>>> and always clear the bus master bit of PCI device upon shutdown if the
> >>>>>> device is on. PCIe port driver will always shutdown all downstream
> >>>>>> devices first, so this should ensure all downstream devices have bus
> >>>>>> master bit off before clearing the bridge's bus master bit.
> >>>>>>
> >>>>>> Signed-off-by: Kairui Song <kasong@redhat.com>
> >>>>>> ---
> >>>>>>  drivers/pci/pci-driver.c | 11 ++++++++---
> >>>>>>  drivers/pci/quirks.c     | 20 ++++++++++++++++++++
> >>>>>>  2 files changed, 28 insertions(+), 3 deletions(-)
> >>>>>>
> >>>>>> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> >>>>>> index 0454ca0e4e3f..84a7fd643b4d 100644
> >>>>>> --- a/drivers/pci/pci-driver.c
> >>>>>> +++ b/drivers/pci/pci-driver.c
> >>>>>> @@ -18,6 +18,7 @@
> >>>>>>  #include <linux/kexec.h>
> >>>>>>  #include <linux/of_device.h>
> >>>>>>  #include <linux/acpi.h>
> >>>>>> +#include <linux/crash_dump.h>
> >>>>>>  #include "pci.h"
> >>>>>>  #include "pcie/portdrv.h"
> >>>>>>
> >>>>>> @@ -488,10 +489,14 @@ static void pci_device_shutdown(struct device *dev)
> >>>>>>           * If this is a kexec reboot, turn off Bus Master bit on the
> >>>>>>           * device to tell it to not continue to do DMA. Don't touch
> >>>>>>           * devices in D3cold or unknown states.
> >>>>>> -         * If it is not a kexec reboot, firmware will hit the PCI
> >>>>>> -         * devices with big hammer and stop their DMA any way.
> >>>>>> +         * If this is kdump kernel, also turn off Bus Master, the device
> >>>>>> +         * could be activated by previous crashed kernel and may block
> >>>>>> +         * it's upstream from shutting down.
> >>>>>> +         * Else, firmware will hit the PCI devices with big hammer
> >>>>>> +         * and stop their DMA any way.
> >>>>>>           */
> >>>>>> -        if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
> >>>>>> +        if ((kexec_in_progress || is_kdump_kernel()) &&
> >>>>>> +                        pci_dev->current_state <= PCI_D3hot)
> >>>>>>                  pci_clear_master(pci_dev);
> >>>>>
> >>>>> I'm clearly missing something because this will turn off bus mastering
> >>>>> in cases where we previously left it enabled.
> >>>>>
> >>>>> I was assuming the crash was related to a device doing DMA when the
> >>>>> Root Port had bus mastering disabled.  But that must be wrong.
> >>>>>
> >>>>> I'd like to understand the crash/hang better because the quirk
> >>>>> especially is hard to connect to anything.  If the crash is because of
> >>>>> an AER or other PCIe error, maybe another possibility is that we could
> >>>>> handle it better or disable signaling of it or something.
> >>>>>
> >>>>
> >>>> I am not understanding this failure mode either. That code in
> >>>> pci_device_shutdown() was added originally to address this very issue.
> >>>> The patch 4fc9bbf98fd6 ("PCI: Disable Bus Master only on kexec reboot")
> >>>> shut down any errant DMAs from PCI devices as we kexec a new kernel. In
> >>>> this new patch, this is the same code path that will be taken again when
> >>>> kdump kernel is shutting down. If the errant DMA problem was not fixed
> >>>> by clearing Bus Master bit in this path when kdump kernel was being
> >>>> kexec'd, why does the same code path work the second time around when
> >>>> kdump kernel is shutting down? Is there more going on that we don't
> >>>> understand?
> >>>>
> >>>
> >>>   Khalid,
> >>>
> >>>   I don't believe we execute that code path in the crash case.
> >>>
> >>>   The variable kexec_in_progress is set true in kernel_kexec() before calling
> >>>   machine_kexec().  This is the fast reboot case.
> >>>
> >>>   I don't see kexec_in_progress set true elsewhere.
> >>>
> >>>
> >>>   The code path for crash is different.
> >>>
> >>>   For instance, panic() will call
> >>>     -> __crash_kexec()  which calls
> >>>             -> machine_kexec().
> >>>
> >>>  So the setting of kexec_in_progress is bypassed.
> >>>
> >>
> >> True, but what that means is if it is an errant DMA causing the issue
> >> you are seeing, that errant DMA can happen any time between when we
> >
> > Here, there could be misunderstanding. It's not an errant DMA, it's an
> > device which may be in DMA transporting state in normal kernel, but in
> > kdump kernel it's not manipulated by its driver because we don't use it
> > to dump, so exlucde its driver from kdump initramfs for saving space.
> >
>
> Errant DMA as in currently running kernel did not enable the device to
> do DMA and is not ready for it. If a device can issue DMA request in
> this state, it could do it well before kdump kernel starts shutting
> down. Don't we need to fix this before we start shutting down kdump in
> preparation for reboot? I can see the need for this fix, but I am not
> sure if this patch places the fix in right place.
>
> --
> Khalid
>

Hi, there are some previous works about this issue, reset PCI devices
in kdump kernel to stop ongoing DMA:

[v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
https://lore.kernel.org/patchwork/cover/343767/

[v2] PCI: Reset PCIe devices to stop ongoing DMA
https://lore.kernel.org/patchwork/patch/379191/

And didn't get merged, that patch are trying to fix some DMAR error
problem, but resetting devices is a bit too destructive, and the
problem is later fixed in IOMMU side. And in most case the DMA seems
harmless, as they targets first kernel's memory and kdump kernel only
live in crash memory.

Also, by the time kdump kernel is able to scan and reset devices,
there are already a very large time window where things could go
wrong.

The currently problem observed only happens upon kdump kernel
shutdown, as the upper bridge is disabled before the device is
disabledm so DMA will raise error. It's more like a problem of wrong
device shutting down order.

-- 
Best Regards,
Kairui Song


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
