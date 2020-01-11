Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57750137AF4
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 02:47:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krfMP8aX5hGlh1ZxoAnvTIQFK1WwdsXryn9kFWpE1DA=; b=BVvRVmO7Vw4ap9
	g1fk3tE/5ynaxWUkXou9A5hSvXmiL80ZesNB1wzZVFOxHUiW8DHzlH6w0Ih0Nxr1FkM9dVsZ1iU5k
	ZPI4ZAXWSO0qFQ73g4f3v8l/sSGsLk2nH2TYjqLrczKIqAvikryQdFvmUp8FKI2IUlQC7wzrIXknZ
	JljEIa6gs7NzCIXo+trQerpnIoRLh2bLIUskifpNcX1H0+5AyhTMBDCGpRegmoT4fZZEt9O/0Bp08
	TQxdWxSwfRe0wZSIgJfpoDg7d1Uu4Aedsh5PHZuRgJ45rcxOuCKbxbbH+MJnnjtMpeQsHjDgdW3/g
	ncAg6z+ZQd0L54LOcWig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iq5rw-0001U8-3v; Sat, 11 Jan 2020 01:47:16 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iq5rr-0001TE-82
 for kexec@lists.infradead.org; Sat, 11 Jan 2020 01:47:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578707229;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=jPPryPK1OzAOrv4+dW4KgmKutLsT1pslZulH2MfJk2s=;
 b=hslK5rcH4fUzFmxbJkOZs3qst7QnW5w6RGeMPjukZyU5VA6wFJ+Jj2LcRJNVB3gJxGYuad
 7RmxLe9vJYpQOYjNsiXnl1fg5HLM9+f4ahTebLIHIJfRQ43YdY41N8tYNZnBs8eaAHXkoJ
 mYMopGCpt6H6l5X6kEWOpqhOKp8LQTk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-346-aLeYG5BTPdu8ka9bzGE9Zw-1; Fri, 10 Jan 2020 20:47:06 -0500
X-MC-Unique: aLeYG5BTPdu8ka9bzGE9Zw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 28F7A107ACC4;
 Sat, 11 Jan 2020 01:47:05 +0000 (UTC)
Received: from localhost (ovpn-12-27.pek2.redhat.com [10.72.12.27])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 488955C1D4;
 Sat, 11 Jan 2020 01:47:01 +0000 (UTC)
Date: Sat, 11 Jan 2020 09:46:57 +0800
From: Baoquan He <bhe@redhat.com>
To: Jerry Hoemann <jerry.hoemann@hpe.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
Message-ID: <20200111014657.GD19291@MiWiFi-R3L-srv>
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <20200111004510.GA19291@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111004510.GA19291@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_174711_398605_72099E79 
X-CRM114-Status: GOOD (  23.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kairui Song <kasong@redhat.com>, linux-pci@vger.kernel.org,
 Khalid Aziz and Shuah Khan <azizkhan@gonehiking.org>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Randy Wright <rwright@hpe.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Deepa Dinamani <deepa.kernel@gmail.com>, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 01/11/20 at 08:45am, Baoquan He wrote:
> On 01/10/20 at 04:00pm, Jerry Hoemann wrote:
> > > I am not understanding this failure mode either. That code in
> > > pci_device_shutdown() was added originally to address this very issue.
> > > The patch 4fc9bbf98fd6 ("PCI: Disable Bus Master only on kexec reboot")
> > > shut down any errant DMAs from PCI devices as we kexec a new kernel. In
> > > this new patch, this is the same code path that will be taken again when
> > > kdump kernel is shutting down. If the errant DMA problem was not fixed
> > > by clearing Bus Master bit in this path when kdump kernel was being
> > > kexec'd, why does the same code path work the second time around when
> > > kdump kernel is shutting down? Is there more going on that we don't
> > > understand?
> > > 
> > 
> >   Khalid,
> > 
> >   I don't believe we execute that code path in the crash case.
> > 
> >   The variable kexec_in_progress is set true in kernel_kexec() before calling
> >   machine_kexec().  This is the fast reboot case.
> > 
> >   I don't see kexec_in_progress set true elsewhere.
> > 
> > 
> >   The code path for crash is different.
> > 
> >   For instance, panic() will call
> > 	-> __crash_kexec()  which calls
> > 		-> machine_kexec().
> > 
> >  So the setting of kexec_in_progress is bypassed.
> 
> Yeah, it's a differet behaviour than kexec case. I talked to Kairui, the
> patch log may be not very clear. Below is summary I got from my
> understanding about this issue:
> 
> ~~~~~~~~~~~~~~~~~~~~~~~
> Problem:
> 
> When crash is triggered, system jumps into kdump kernel to collect
> vmcore and dump out. After dumping is finished, kdump kernel will try
> ty reboot to normal kernel. This hang happened during kdump kernel
> rebooting, when dumping is network dumping, e.g ssh/nfs, local storage
> is HPSA.
> 
> Root cause:
> 
> When configuring network dumping, only network driver modules are added
> into kdump initramfs. However, the storage HPSA pcie device is enabled
> in 1st kernel, its status is PCI_D3hot. When crashed system jumps to kdump
> kernel, we didn't shutdown any device for safety and efficiency. Then
> during kdump kernel boot up, the pci scan will get hpsa device and only
> initialize its status as pci_dev->current_state = PCI_UNKNOWN. This
> pci_dev->current_state will be manipulated by the relevant device
> driver. So HPSA device will never have chance to calibrate its status,
> and can't be shut down by pci_device_shutdown() called by reboot
> service. It's still PCI_D3hot, then crash happened when system try to
                                      ~~~~~ s/crash/hang/, sorry, typo again
> shutdown its upper bridge.
> 
> Fix:
> 
> Here, Kairui uses a quirk to get PM state and mask off value bigger than
> PCI_D3cold. Means, all devices will get PM state 
> pci_dev->current_state = PCI_D0 or PCI_D3hot. Finally, during kdump
> reboot stage, this device can be shut down successfully by clearing its
> master bit.
> 
> ~~~~~~~~~~~~~~~
> 
> About this patch, I think the quirk getting active PM state for all devices
> may be risky, it will impact normal kernel too which doesn't have this issue.
> 
> Wondering if there's any other way to fix or work around it.
> 
> Thanks
> Baoquan


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
