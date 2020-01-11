Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA72137C9C
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 10:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2wFDvw0Q34b8q9yicf4QXVQjEE67ex8V4dH5vgbjCTQ=; b=jWeizNSqN9wxpl
	1GtPJFv+r10sTgQ+DLj0r1WZeu/Sd8kxKkKRmuOmj3sXGeDfGgIvpao/6qr04+K2jdht+ZfWt+8Av
	QaUl35vYm7A389akI98wM9T5J1gzRG5gtsOGrl7sfFg3n/5BJKxqJqqIrm7RjkPTYUXnbwaGxA7au
	p2y+GLWG9Oesfx/qlzs0ZgGmbGaTnSuAkBg7kgKFP+XU6vvFFfdwTVb9P2Yw+/Xeu1w+usgKO4P2c
	VntMysD364kqF0M8MjuvduFIPA1BZSz4fyIqFqZi96o3z9dIHz6XUqWumiA1mH8/spp+l89F1p09u
	5EQ9WU2NJxSV2rYM6tIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqD1D-0000Zj-5R; Sat, 11 Jan 2020 09:25:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqD17-0000Yl-L6
 for kexec@lists.infradead.org; Sat, 11 Jan 2020 09:25:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578734711;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sB1aDY3do7Z2jTNcMGVQKYeXo3F+CBCE4XUKlOazQ8g=;
 b=AanIOAHRMliGpKM4ePy0OaD3QO+T90S3ACfib46DVBUvRchU0mfTk9kajbGWy6orSo8V4D
 tIe3O11QIEk0QVIIx7PjQJXKYIBcyR38J9oP2Irmtx6JJ9RX3UXo90+YXwRzZYOmYIeCUN
 nlXVmDlWhWMIiatWoaxyWH9UPhC5jLc=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-59-Lee5SAQgP72pZzM1i4VzgQ-1; Sat, 11 Jan 2020 04:25:10 -0500
Received: by mail-il1-f198.google.com with SMTP id v13so3496074ili.18
 for <kexec@lists.infradead.org>; Sat, 11 Jan 2020 01:25:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TEia/ZgGyocdXAkiZ79+dRz2HyOO0KgveENibSFOSgc=;
 b=cMEDEgZKwssa8SWtL5nRqIOQO8+Q4mXOORQVy/qWC0pGDWaKfnRcrTP6y2qeL4foXl
 tDy5jDDELhr4yzsv1467wgcSrqzP+qP/Y6KJjOB5HQ6/cF045ZLL+Tnfcwm3HIiKenT/
 lJRnzw/+edyhVR8V4E0TUomUEt1Z0cadaEJ8LLUsnMeMz37iSucqk2WidDMZbEEl1kqA
 iNuA7Rh3/qrjlyNjQKXGnIb+LRd0lVhX7ihQtpmcxa5xYIG1NTb6mwHI3aUF56cL/1W6
 jDoQ8kaAMzYUzHnFFcAkccjWxcvd5Yot5ccLYn8w4r3z3XaTVFKK8zFEbAi/z1L2GaB+
 T0Bg==
X-Gm-Message-State: APjAAAXCSRpAxmFFP10ijslffhs4n2p1wFZtfWoT9Lxuxs7J8xdY8rbf
 TXwAylxQX6EolHT7HMQs6P9gje7yIx3ZKR2fFU1JLJE2GTxVG9tWVCmL+yMqqSeOj1ddLfCs86A
 0NeVEO1wNuVJOHMOaqw5VuDGxqPp0lgzZC2Sw
X-Received: by 2002:a02:1041:: with SMTP id 62mr6480346jay.51.1578734709193;
 Sat, 11 Jan 2020 01:25:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqzRzDzWCBV4XIfkmNcbzobOQCK8wZqqQAknqywrZtA4meXq+5slVruplp6DwagtH372xu3P/r/OtAzG81djj1w=
X-Received: by 2002:a02:1041:: with SMTP id 62mr6480332jay.51.1578734708922;
 Sat, 11 Jan 2020 01:25:08 -0800 (PST)
MIME-Version: 1.0
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <20200111004510.GA19291@MiWiFi-R3L-srv>
In-Reply-To: <20200111004510.GA19291@MiWiFi-R3L-srv>
From: Kairui Song <kasong@redhat.com>
Date: Sat, 11 Jan 2020 17:24:57 +0800
Message-ID: <CACPcB9eM7j0Q_RVMGemw2FoY29YbKgn-96sGrsG6=D9iOm_d2g@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Baoquan He <bhe@redhat.com>
X-MC-Unique: Lee5SAQgP72pZzM1i4VzgQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_012514_679718_4C7F974B 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: linux-pci@vger.kernel.org,
 Khalid Aziz and Shuah Khan <azizkhan@gonehiking.org>,
 kexec@lists.infradead.org, Jerry Hoemann <jerry.hoemann@hpe.com>,
 Randy Wright <rwright@hpe.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 8:45 AM Baoquan He <bhe@redhat.com> wrote:
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
> >       -> __crash_kexec()  which calls
> >               -> machine_kexec().
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
> shutdown its upper bridge.
>
> Fix:
>
> Here, Kairui uses a quirk to get PM state and mask off value bigger than
> PCI_D3cold. Means, all devices will get PM state
> pci_dev->current_state = PCI_D0 or PCI_D3hot

Or to put it simple, I just synced the actual PM state into
pci_dev->current_state using a quirk, for kdump kernel only.

> Finally, during kdump
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

Thank you for the detailed description!

-- 
Best Regards,
Kairui Song


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
