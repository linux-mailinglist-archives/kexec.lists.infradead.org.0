Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64602179FC6
	for <lists+kexec@lfdr.de>; Thu,  5 Mar 2020 07:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fZNgVpQcGh+8otR3cBHKmPFnScTm8MPzmupy4ZSgX+g=; b=IlXmuwB8ogFkqr
	rMJhqM6ayOt0O3rOQxJKutKTc9CuRqBvkT6A3O2m9JVYDynPVp5W4/jLNpY6jnzH49/LoAnh1Ir5F
	x9+JyFTXaM8my6XCxqNyS7XBJsZxQCKq72dW4nAo0Go580U6wIgdGS+QcMtIoj7V/7sV2mayeDEie
	bmbcNefV8mCU3f6rkRWCFzCpFUaI7gb48MfXzaC4lqbgwW5cL4WgdXNE+kk5lPwVUYFTWnGkd0EGM
	ZjMKk6dCRYpUfrJR3YVJrjNyarnImVB37h9Mwcg4y68THVDqagMDWHXZ767Ol3TPR+N72VPm4xuLE
	kzUoeK+Vakw7tHbojfKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jf8-0001vr-4S; Thu, 05 Mar 2020 06:07:14 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jf4-0001vN-FR
 for kexec@lists.infradead.org; Thu, 05 Mar 2020 06:07:11 +0000
Received: by mail-il1-x141.google.com with SMTP id b17so4031764iln.3
 for <kexec@lists.infradead.org>; Wed, 04 Mar 2020 22:07:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JM+ymBtB23jWt4sfUg5MQFutpMp62S4P16xrVlgqOis=;
 b=WHBb5sJKYb2k/0/vunyclRnGZlRtx5R94rwqcuJ5s+jnTIF0KVle1NGm7yQKzyygLJ
 J3L45LIc0f0xGux9ZKwHotDlkYfarw/H1iuHIcDruxed2K6BfAmSemK76OHitCu6RAfB
 lsMk4JbpUGZXdjV3o0MuDZzXfLfiqHG/OtUnklTJU2xKDe+MtyPjyb11145CU6D6TYYM
 Q1A5eIEVGtEsBcPIp4eIqWQBojOhVW4pvJH2iMHMVh8pUIha8A1+IXnrpvy1yU/XegYy
 msaBo+Gpu564Z1/7tTZPhQVhWNStJXBdPprEwhnUt7Yr9PzcXxsdndTckNJYryXlBcDK
 qaeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JM+ymBtB23jWt4sfUg5MQFutpMp62S4P16xrVlgqOis=;
 b=lxKGbDOBoGCRg7Y2SH5CCdn6DSu7IPgR9KrXXOFWYWN3z3jRIdy8ZU9ECoCoDRPBNJ
 OXSqAEe0wzNpxRvVkJxQZlTa9pxtrInMpdNgF00m9PNoNqYFPQ/Oy+958M0b20s/brdS
 129CJMv2gIIZVU4aGK29NT4PR9EKsFnsdSQ2et+aUCUjzYvk/Y4lhWY/TXvSvor14PCT
 8OyFLHra+aN29Lo6ta3+S3FJAMG1xzMkWY2DQlik4SNRxHnjs/BR4PC8ilc20ZxEbANH
 +vuAbh4ofnRdUj2MmTLb801v+yGg2QOWQDBAfBzJeCtWWpBiRzAWPJGURe77iDyqofw6
 buPQ==
X-Gm-Message-State: ANhLgQ1ALH1kqvmBXoVCdUbSTlr5iu406YLFd0kAuNXrkDX2b5e6xGdp
 d9NEU7tL17cmRDshR7C2HSlS6VWEw8C5bOfKteA=
X-Google-Smtp-Source: ADFU+vsDoKo1QxnK3q1eCpUxaItHC7KhhteG/IlUOH5+jITUVIhTXJPg4CSqeuxLBwGFNmax5uW6bCuDTkuUjHvYYag=
X-Received: by 2002:a92:c848:: with SMTP id b8mr6226142ilq.153.1583388428722; 
 Wed, 04 Mar 2020 22:07:08 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
 <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
 <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
 <CABeXuvonZpwWfcUef4PeihTJkgH2ZC_RCKuLR3rH3Re4hx36Aw@mail.gmail.com>
 <20200305035329.GD4433@MiWiFi-R3L-srv>
 <CABeXuvogFGv8-i4jsJYN5ya0hjf35EXLkmPqYWayDUvXaBKidA@mail.gmail.com>
In-Reply-To: <CABeXuvogFGv8-i4jsJYN5ya0hjf35EXLkmPqYWayDUvXaBKidA@mail.gmail.com>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Wed, 4 Mar 2020 22:06:58 -0800
Message-ID: <CABeXuvog9KEJQ41Kox8T60fAZ4owip-3bB8XAsndFWF1-udwPQ@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Baoquan He <bhe@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_220710_543078_ED02F9CD 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deepa.kernel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Mar 4, 2020 at 8:53 PM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
>
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

One small correction, I meant the IOMMU and BME here.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
