Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7750317B96C
	for <lists+kexec@lfdr.de>; Fri,  6 Mar 2020 10:38:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAZPbza1moQ6dyriB2nK8Nvf7Wzf9YszJNSbqA09bOI=; b=dOWoGjbXzDYsTE
	qBGsKtgVjXVGDfOtUSNq0LMzeq/E1XYTLNIZs0PXfeZDppSq2WN+OhvbWj28O3SiMgMX1WjfHpFVY
	qvdA5khbn5qwOvtRY5rzuxuzH3HaE7+bBDU/+Z8jKx532G8U2FdbGOl74x4e6wwKVl179VF9lszkj
	SfFMMD7FXl3YmYArgmU85HYuBZNrTyY3J7pMQOjZT1rxbiwbJoA2XKaQfuHvkOny685+pN6Kdn10V
	jqUmzycsu9itI6db96lJ3CZUQjvD6wLMUfd51wZDMOiVL+yg+f0/44vzMF11a2XZJ6xnYM7WJLtCL
	Ks6zGCD2YHfCFwlIwcsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9RU-0000M4-0P; Fri, 06 Mar 2020 09:38:52 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9RP-0000Kb-QA
 for kexec@lists.infradead.org; Fri, 06 Mar 2020 09:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583487524;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=I99v9Lz9WEACFzOBHGx8xZ3mdresfCD73R6Fnd1GKl8=;
 b=go63/OO4Vur6mv6pkPdlshFBI1jeAlbsuUOqD+UoaVPhtmfRXWmtxsnNkZMMwj5GiEFnN8
 sMshYxDbH4ID6G2/+5I2CnJbupZe9H+fWE6rJdb4FkK0B2FJo+APPasJZNGqkfXXbwEJMT
 yDNLAa4eS0ZqwAfvs9ZTEl1eIO+jolk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-476-hg8RFOuoNCSEBVIMNva_9Q-1; Fri, 06 Mar 2020 04:38:40 -0500
X-MC-Unique: hg8RFOuoNCSEBVIMNva_9Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ADDFB1084B02;
 Fri,  6 Mar 2020 09:38:38 +0000 (UTC)
Received: from localhost (ovpn-12-25.pek2.redhat.com [10.72.12.25])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B4FD85C54A;
 Fri,  6 Mar 2020 09:38:31 +0000 (UTC)
Date: Fri, 6 Mar 2020 17:38:29 +0800
From: Baoquan He <bhe@redhat.com>
To: Deepa Dinamani <deepa.kernel@gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200306093829.GA27711@MiWiFi-R3L-srv>
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
 <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
 <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
 <CABeXuvonZpwWfcUef4PeihTJkgH2ZC_RCKuLR3rH3Re4hx36Aw@mail.gmail.com>
 <20200305035329.GD4433@MiWiFi-R3L-srv>
 <CABeXuvogFGv8-i4jsJYN5ya0hjf35EXLkmPqYWayDUvXaBKidA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABeXuvogFGv8-i4jsJYN5ya0hjf35EXLkmPqYWayDUvXaBKidA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_013847_930521_AF662003 
X-CRM114-Status: GOOD (  26.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jroedel@suse.de, Kairui Song <kasong@redhat.com>,
 Myron Stowe <myron.stowe@redhat.com>, linux-pci@vger.kernel.org,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Randy Wright <rwright@hpe.com>, Jerry Hoemann <jerry.hoemann@hpe.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Dave Young <dyoung@redhat.com>,
 Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 03/04/20 at 08:53pm, Deepa Dinamani wrote:
> On Wed, Mar 4, 2020 at 7:53 PM Baoquan He <bhe@redhat.com> wrote:
> >
> > +Joerg to CC.
> >
> > On 03/03/20 at 01:01pm, Deepa Dinamani wrote:
> > > I looked at this some more. Looks like we do not clear irqs when we do
> > > a kexec reboot. And, the bootup code maintains the same table for the
> > > kexec-ed kernel. I'm looking at the following code in
> >
> > I guess you are talking about kdump reboot here, right? Kexec and kdump
> > boot take the similar mechanism, but differ a little.
> 
> Right I meant kdump kernel here. And, clearly the is_kdump_kernel() case below.
> 
> >
> > > intel_irq_remapping.c:
> > >
> > >         if (ir_pre_enabled(iommu)) {
> > >                 if (!is_kdump_kernel()) {
> > >                         pr_warn("IRQ remapping was enabled on %s but
> > > we are not in kdump mode\n",
> > >                                 iommu->name);
> > >                         clear_ir_pre_enabled(iommu);
> > >                         iommu_disable_irq_remapping(iommu);
> > >                 } else if (iommu_load_old_irte(iommu))
> >
> > Here, it's for kdump kernel to copy old ir table from 1st kernel.
> 
> Correct.
> 
> > >                         pr_err("Failed to copy IR table for %s from
> > > previous kernel\n",
> > >                                iommu->name);
> > >                 else
> > >                         pr_info("Copied IR table for %s from previous kernel\n",
> > >                                 iommu->name);
> > >         }
> > >
> > > Would cleaning the interrupts(like in the non kdump path above) just
> > > before shutdown help here? This should clear the interrupts enabled
> > > for all the devices in the current kernel. So when kdump kernel
> > > starts, it starts clean. This should probably help block out the
> > > interrupts from a device that does not have a driver.
> >
> > I think stopping those devices out of control from continue sending
> > interrupts is a good idea. While not sure if only clearing the interrupt
> > will be enough. Those devices which will be initialized by their driver
> > will brake, but devices which drivers are not loaded into kdump kernel
> > may continue acting. Even though interrupts are cleaning at this time,
> > the on-flight DMA could continue triggerring interrupt since the ir
> > table and iopage table are rebuilt.
> 
> This should be handled by the IOMMU, right? And, hence you are getting
> UR. This seems like the correct execution flow to me.

Sorry for late reply.
Yes, this is initializing IOMMU device.

> 
> Anyway, you could just test this theory by removing the
> is_kdump_kernel() check above and see if it solves your problem.
> Obviously, check the VT-d spec to figure out the exact sequence to
> turn off the IR.

OK, I will talk to Kairui and get a machine to test it. Thanks for your
nice idea, if you have a draft patch, we are happy to test it.

> 
> Note that the device that is causing the problem here is a legit
> device. We want to have interrupts from devices we don't know about
> blocked anyway because we can have compromised firmware/ devices that
> could cause a DoS attack. So blocking the unwanted interrupts seems
> like the right thing to do here.

Kairui said it's a device which driver is not loaded in kdump kernel
because it's not needed by kdump. We try to only load kernel modules
which are needed, e.g one device is the dump target, its driver has to
be loaded in. In this case, the device is more like a out of control
device to kdump kernel.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
