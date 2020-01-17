Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF39140247
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 04:24:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klghgAMe0dDGrZx1f71chAF0npX1hPTyaWvgSqpZM6E=; b=nm68agw3oePNiM
	BsP23NtjPGL+VIHcaSB5H6OkR/cNbzCiL6ZJy0Tdjtv7eNnxS0GQYiCp7aYDrlefXM0GKex7EgVK4
	nwKy8hfbeVyUDP/4iGZrFc7xF1EmO8TL06GqLkxbSZVxZoAjaH5l4Eb/k8VC88yY1UPzH1pRpWT2k
	qBzYyhEhGEU4hCOpRuFfz0GnOQa5Ig2QTA4q747sHWI6sN4xfm27qu9mW/vY4+sND4vkQKZIbhN+V
	A4GdZhLL4xzqCcynJTuAGV9yOJj2/U8+RxOqQnRRp4Mr9xcxJnSy8QGVTPyP8HTdmvsihQc4u95Sg
	VrxLYjqrEGq6P2CHWHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIFY-0005AB-Ij; Fri, 17 Jan 2020 03:24:44 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIFU-00058d-D7
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 03:24:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579231477;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+z4PFQogA0lIvahw7YP4uLF4t1xZszt+CkkNUyFYHwc=;
 b=YXyAbo2k8YzkqF5kJHfZ4T1xmtFQ2MAHITu+H5TBgYIbR937usc6Wh7iv+SoNJMRSx2p9O
 USbU/KpZlEz0wjzJmfUSzpTNsrHz9MaD0uUuuik023I5Xxuyus5H2l5QpdKYZSGMnl/Z4f
 5TSvcPy8tOGCovF2vK2QtpJBblYWMM8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-91-795C9JhONcm5-QoMmNE9_A-1; Thu, 16 Jan 2020 22:24:23 -0500
X-MC-Unique: 795C9JhONcm5-QoMmNE9_A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02CDB18C8C01;
 Fri, 17 Jan 2020 03:24:21 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-166.pek2.redhat.com
 [10.72.12.166])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EF5160C63;
 Fri, 17 Jan 2020 03:24:16 +0000 (UTC)
Date: Fri, 17 Jan 2020 11:24:13 +0800
From: Dave Young <dyoung@redhat.com>
To: Khalid Aziz <khalid@gonehiking.org>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200117032413.GA16906@dhcp-128-65.nay.redhat.com>
References: <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <d2715683-f171-a825-3c0b-678b6c5c1a79@gonehiking.org>
 <20200111005041.GB19291@MiWiFi-R3L-srv>
 <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
 <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
 <CABeXuvqquCU+1G=5onk9owASorhpcYWeWBge9U35BrorABcsuw@mail.gmail.com>
 <CACPcB9cQY9Vu3wG-QYZS6W6T_PZxnJ1ABNUUAF_qvk-VSxbpTA@mail.gmail.com>
 <b2360db7-66f5-421d-8fe0-150f08aa2f39@gonehiking.org>
 <CACPcB9epDPcowhnSJuEHQ8miCBX1oKjFx4Wdn4aYPe2_pueA5A@mail.gmail.com>
 <6b56ce15-5a5a-97b7-ded1-1fd88fec26eb@gonehiking.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b56ce15-5a5a-97b7-ded1-1fd88fec26eb@gonehiking.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_192440_675845_AFC2636F 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kairui Song <kasong@redhat.com>, Baoquan He <bhe@redhat.com>,
 linux-pci@vger.kernel.org, kexec@lists.infradead.org,
 Jerry Hoemann <Jerry.Hoemann@hpe.com>, Randy Wright <rwright@hpe.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 01/15/20 at 02:17pm, Khalid Aziz wrote:
> On 1/15/20 11:05 AM, Kairui Song wrote:
> > On Thu, Jan 16, 2020 at 1:31 AM Khalid Aziz <khalid@gonehiking.org> wrote:
> >>
> >> On 1/13/20 10:07 AM, Kairui Song wrote:
> >>> On Sun, Jan 12, 2020 at 2:33 AM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
> >>>>
> >>>>> Hi, there are some previous works about this issue, reset PCI devices
> >>>>> in kdump kernel to stop ongoing DMA:
> >>>>>
> >>>>> [v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
> >>>>> https://lore.kernel.org/patchwork/cover/343767/
> >>>>>
> >>>>> [v2] PCI: Reset PCIe devices to stop ongoing DMA
> >>>>> https://lore.kernel.org/patchwork/patch/379191/
> >>>>>
> >>>>> And didn't get merged, that patch are trying to fix some DMAR error
> >>>>> problem, but resetting devices is a bit too destructive, and the
> >>>>> problem is later fixed in IOMMU side. And in most case the DMA seems
> >>>>> harmless, as they targets first kernel's memory and kdump kernel only
> >>>>> live in crash memory.
> >>>>
> >>>> I was going to ask the same. If the kdump kernel had IOMMU on, would
> >>>> that still be a problem?
> >>>
> >>> It will still fail, doing DMA is not a problem, it only go wrong when
> >>> a device's upstream bridge is mistakenly shutdown before the device
> >>> shutdown.
> >>>
> >>>>
> >>>>> Also, by the time kdump kernel is able to scan and reset devices,
> >>>>> there are already a very large time window where things could go
> >>>>> wrong.
> >>>>>
> >>>>> The currently problem observed only happens upon kdump kernel
> >>>>> shutdown, as the upper bridge is disabled before the device is
> >>>>> disabledm so DMA will raise error. It's more like a problem of wrong
> >>>>> device shutting down order.
> >>>>
> >>>> The way it was described earlier "During this time, the SUT sometimes
> >>>> gets a PCI error that raises an NMI." suggests that it isn't really
> >>>> restricted to kexec/kdump.
> >>>> Any attached device without an active driver might attempt spurious or
> >>>> malicious DMA and trigger the same during normal operation.
> >>>> Do you have available some more reporting of what happens during the
> >>>> PCIe error handling?
> >>>
> >>> Let me add more info about this:
> >>>
> >>> On the machine where I can reproduce this issue, the first kernel
> >>> always runs fine, and kdump kernel works fine during dumping the
> >>> vmcore, even if I keep the kdump kernel running for hours, nothing
> >>> goes wrong. If there are DMA during normal operation that will cause
> >>> problem, this should have exposed it.
> >>>
> >>
> >> This is the part that is puzzling me. Error shows up only when kdump
> >> kernel is being shut down. kdump kernel can run for hours without this
> >> issue. What is the operation from downstream device that is resulting in
> >> uncorrectable error - is it indeed a DMA request? Why does that
> >> operation from downstream device not happen until shutdown?
> >>
> >> I just want to make sure we fix the right problem in the right way.
> >>
> > 
> > Actually the device could keep sending request with no problem during
> > kdump kernel running. Eg. keep sending DMA, and all DMA targets first
> > kernel's system memory, so kdump runs fine as long as nothing touch
> > the reserved crash memory. And the error is reported by the port, when
> > shutdown it has bus master bit, and downstream request will cause
> > error.
> > 
> 
> Problem really is there are active devices while kdump kernel is
> running. You did say earlier - "And in most case the DMA seems
> harmless, as they targets first kernel's memory and kdump kernel only
> live in crash memory.". Even if this holds today, it is going to break
> one of these days. There is the "reset_devices" option but that does not
> work if driver is not loaded by kdump kernel. Can we try to shut down
> devices in machine_crash_shutdown() before we start kdump kernel?

It is not a good idea :)  We do not add extra logic after a panic
because the kernel is not stable and we want a correct vmcore.

Similar suggestions had been rejected a lot of times..

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
