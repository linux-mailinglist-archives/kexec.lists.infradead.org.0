Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93579137C73
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 09:46:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hClNwlQZmrHb3bUP5vo2RMhfAIHrba4D9lj/66ZXGtU=; b=Me902G35VLQKGK
	GY2Woi7Qx0/BMkvfWZlds5zlaJEXuBaXC91g9VPDRLyzB5FxPm4qhnGQaNbSvsY/SfqAuOYgNmiW1
	28nspacsEYvEHxaYGNH+rR9s3P3TuTX0TcNudv/zeY9Sn1qwP01xeRnNwXrNWb4Zakis814m28/2M
	vaMzysYKSliHS90XeSxCpSwFfWqeY2mR1xVqKlSXGHHT2DoZhrBlJfyO3JufaegdyzC7fVsYJscYP
	DT7PfhzOXtWIYQhgbrFBc0YtSoy4DdTZMzFRAhXCjLzBuRY6ZqJ6UoZJu7mzO80cko32eI5H8Yr3I
	MhRi4MflnCrJwHWdGF9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqCPs-0003Hx-MD; Sat, 11 Jan 2020 08:46:44 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqCPp-0003GO-5u
 for kexec@lists.infradead.org; Sat, 11 Jan 2020 08:46:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578732397;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0aHvJXYZzcJCz7vPY424q+D8y+hWrSbdS4ktK7C1ZMc=;
 b=apYhxl3x/XRAUsEz7wF5hMX4T5D7dm39xOJXPP0Cz/U/s706i2I4/HGzmVvnCFjv3qF5E+
 08NT3L9H92+ldRNXPTWxG1ClEBABd8141Gne8gkuueqedMXcxNUcXX0pik2WjOuv0oxJP3
 k3c83kqF6TWXusY8LsyYpzDKefu5IjM=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-Vtr9zh8WNheXBKF2lG1FAQ-1; Sat, 11 Jan 2020 03:46:34 -0500
Received: by mail-il1-f197.google.com with SMTP id z12so3420891ilh.17
 for <kexec@lists.infradead.org>; Sat, 11 Jan 2020 00:46:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ryPwgX4h0fv0PqQURJdtqBJqmMzlmxt0UnN1Eaml9k8=;
 b=gexf7vnYjb9IjiAgXClg22kTrRHWnrxi89sPfOEyLR1PT4DJreWk8FPQtlUxieU168
 LoSUqcZY/gE3UK4rVH6/DUgWKGA34NQ07TJbbdW8bbshTaV06f7HoB9houCWF3TMlmwF
 PKzzkt+OvQVQ8e2Z3farx0PGx4W+nxt/I3EdwIsf6TA9h0qaHR8Qbm7j3tx/GaSM8zf+
 tPOGRTSPHU/bwRbdyKgcAwyDe+yBX7z7WO0GA+jdq99jpZ7PZf1CeGQv1tkYgHGc50Oo
 FH37xGVJFA4MVZED3gFiQ61eyPa5wmf40zzZGjUBAZJStJQ910ZlLBfsu7nE5ROvrCIP
 PzZQ==
X-Gm-Message-State: APjAAAV7NDse9xX4wCSmGzHTaCOqMlc3ssq1VPlcUj1S3hEj7DCQgcuu
 tUWMvzE3UM8jghfOHI29ymgsGDXR8t+MePpXc3xFUsQZ5rTkQE1mf07U/nMxYMdRwYit2+bjcfs
 WKzLNhrY4qSnXpNz7VBXdYBI8U8dN3xqMogIe
X-Received: by 2002:a92:5e46:: with SMTP id s67mr6481960ilb.162.1578732393598; 
 Sat, 11 Jan 2020 00:46:33 -0800 (PST)
X-Google-Smtp-Source: APXvYqwEEuR6hFZaMskU7KT02zTWtoS0CzMF6B3DJtVuJAC7rZjKipG3HRyG1I0FgcNnqA1itY5dyMn7CzfpmIrj1BQ=
X-Received: by 2002:a92:5e46:: with SMTP id s67mr6481943ilb.162.1578732393346; 
 Sat, 11 Jan 2020 00:46:33 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200110214217.GA88274@google.com>
In-Reply-To: <20200110214217.GA88274@google.com>
From: Kairui Song <kasong@redhat.com>
Date: Sat, 11 Jan 2020 16:46:22 +0800
Message-ID: <CACPcB9d7Fq=6Fvz_Tjsq_E2qgyaPQKc=KdzfTdBj3uhygoN5qA@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Bjorn Helgaas <helgaas@kernel.org>
X-MC-Unique: Vtr9zh8WNheXBKF2lG1FAQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_004641_294917_3FAA303C 
X-CRM114-Status: GOOD (  28.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
 Jerry Hoemann <jerry.hoemann@hpe.com>, Deepa Dinamani <deepa.kernel@gmail.com>,
 khalid@gonehiking.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 5:42 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> Can you help me understand the sequence of events?  If I understand
> correctly, the desired sequence is:
>
>   - user kernel boots
>   - user kernel panics and kexecs to kdump kernel

One thing imported need to be mentioned here, user kernel kexec into
kdump kernel using the fast path, which does very few things, and
leave all the PCI devices untouched. If they are on, or doing DMA,
will just keep doing that, nothing will stop them.

In most cases the on going DMA seems harmless though, as kdump kernel
only live in reserved crash memory.

>   - kdump kernel writes vmcore to network or disk
>   - kdump kernel reboots
>   - user kernel boots
>
> But the problem is that as part of the kdump kernel reboot,
>
>   - kdump kernel disables bus mastering for a Root Port
>   - device below the Root Port attempts DMA
>   - Root Port receives DMA transaction, handles it as Unsupported
>     Request, sends UR Completion to device
>   - device signals uncorrectable error
>   - uncorrectable error causes a crash (Or a hang?  You mention both
>     and I'm not sure which it is)
>
> Is that right so far?

Yes everything else all correct. On the machine I can reproduce it,
system just hanged, even serial console is dead with no output.

>
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
>
> I'm clearly missing something because this will turn off bus mastering
> in cases where we previously left it enabled.
>
> I was assuming the crash was related to a device doing DMA when the
> Root Port had bus mastering disabled.  But that must be wrong.

That is just what is happening. When kdump kernel try to reboot, it
only cleared bus mastering bit of the Root Port, ignoring enabled
device under it, because it's not the kdump kernel that enabled the
device, it's the first kernel enabled it, and kdump kernel don't know
it.

>
> I'd like to understand the crash/hang better because the quirk
> especially is hard to connect to anything.  If the crash is because of
> an AER or other PCIe error, maybe another possibility is that we could
> handle it better or disable signaling of it or something.
>

Maybe if we can solve the problem by properly shutdown the devices in
right order, then better don't disable any error handling features? Or
kernel might miss some real hardware issue.

--
Best Regards,
Kairui Song


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
