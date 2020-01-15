Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 799E513CBA3
	for <lists+kexec@lfdr.de>; Wed, 15 Jan 2020 19:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x47akysurDoz4ad+kXrrWtlFr6JaF2FGiozWt8VJpYo=; b=qLV2oKWMM1U2WE
	AwHI5MNsptS9Si1rnPkEArslKhoWslS8YMGTYbmazWrYWBM1U0/qdwNDbdILXh75jrUiBUVW55BIF
	CpsrOQkImFo4ioTA7VEqydXmw1Gy3V/JZYZRqOBKA9l8BGcyT0uTk1K2SEYpZ5hne79qc1OdJaOQH
	VoDqrRxT3Gjqv1CA2rFrWVcmxypBLoaQLlQGo2lWT0PrHN7Qo8N7ctWOZBMeye0jDi1ibEfrm6nhJ
	8Jop2RNuo9yFI2s+7b3o/XO/4Nqo+bZgKn4LYHd/djOAQQaXHqPzMAqGh66Un8zaeCoIlgk6+45Yn
	6OaEF1jYD4s9UNW56Qzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irn3b-0005rY-OO; Wed, 15 Jan 2020 18:06:19 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irn3W-0005pv-M3
 for kexec@lists.infradead.org; Wed, 15 Jan 2020 18:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579111573;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fDHd+iEQE5GOHolqCi6W8gl/KUWY6b5drll+qBs1hSA=;
 b=hA+GF7Jd34DMftFZP7gb6lBTiHjNh/oc2NcYOuPrj7cW96L6VZhXvRnmCpEBJVr5SXwtyM
 V8iELGZqyEDRVuJk6lpgjxuayOjlJVis6wZRJEc4jtVtbo+4Mfk2p2KioXpWexNkdSZeCS
 plxQsp7cf/N0czENFv3ESKK5hdTDiys=
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-324-hBLcq1e8OdWtemApRjK6TQ-1; Wed, 15 Jan 2020 13:06:10 -0500
Received: by mail-il1-f197.google.com with SMTP id s9so13940017ilk.0
 for <kexec@lists.infradead.org>; Wed, 15 Jan 2020 10:06:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5/JVNCvoMKLbuw+th8Mvpr4NSmYiudENwSQlfto1vYg=;
 b=FWALAlmteSYP+HNNBTIfRxtDTijgDAiPv4MyA+AMxjqlmNflOu9eMwk8c5nbpxsj9T
 ckzwzmRdsU5XxQ88IrNRVKsiMJUefek2kqJ8vCkSJ6lWQVhHtVRW+iBV4X5cljucaa21
 wDqjwhOvxs7OcpsmswfjG9wPFRj9+YWAQ48rEuVSmlOIEtSOwgCNGjxq9hk6XfZH0b/6
 VFj0bLh4ojL0OQQODPfloLKShc23oYoTq1ynPfrDHW8QaOwOCIvgcSRg4I/2NxXkKxtw
 RC/N3B0hv+NSFfUJAp2ec9gWwT7jsQgn4+Z5+5nBRE+L+1RG6GsBduasDe9S3/IQekbc
 xAyw==
X-Gm-Message-State: APjAAAXUQ7fX543p38tBkMdStX7H1yGexqo3L6ikKii0T6AAQR+njRCm
 NbJ9qyRRcpKKq/beqZLGZWwqZqccQJEmVfDv/NM6U53fQh5M8Y1Vg+AJyX65gpSCYv8t79ezn7x
 DOO6aOYAIhf35NtZjYERmHeihWuM7LIzFrwyO
X-Received: by 2002:a92:3a95:: with SMTP id i21mr4486735ilf.249.1579111569278; 
 Wed, 15 Jan 2020 10:06:09 -0800 (PST)
X-Google-Smtp-Source: APXvYqyiSpVTrT9xrjDsRfXMdNMLD3zLf65q5AGAKjzBKvyYRr2MTNUMJyyycnXSNnfMh8iTlOsaFXQttkz/wrm0e3g=
X-Received: by 2002:a92:3a95:: with SMTP id i21mr4486711ilf.249.1579111569023; 
 Wed, 15 Jan 2020 10:06:09 -0800 (PST)
MIME-Version: 1.0
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <d2715683-f171-a825-3c0b-678b6c5c1a79@gonehiking.org>
 <20200111005041.GB19291@MiWiFi-R3L-srv>
 <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
 <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
 <CABeXuvqquCU+1G=5onk9owASorhpcYWeWBge9U35BrorABcsuw@mail.gmail.com>
 <CACPcB9cQY9Vu3wG-QYZS6W6T_PZxnJ1ABNUUAF_qvk-VSxbpTA@mail.gmail.com>
 <b2360db7-66f5-421d-8fe0-150f08aa2f39@gonehiking.org>
In-Reply-To: <b2360db7-66f5-421d-8fe0-150f08aa2f39@gonehiking.org>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 16 Jan 2020 02:05:57 +0800
Message-ID: <CACPcB9epDPcowhnSJuEHQ8miCBX1oKjFx4Wdn4aYPe2_pueA5A@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Khalid Aziz <khalid@gonehiking.org>
X-MC-Unique: hBLcq1e8OdWtemApRjK6TQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_100614_799431_D549A77F 
X-CRM114-Status: GOOD (  30.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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
Cc: Baoquan He <bhe@redhat.com>, linux-pci@vger.kernel.org,
 kexec@lists.infradead.org, Jerry Hoemann <Jerry.Hoemann@hpe.com>,
 Randy Wright <rwright@hpe.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 1:31 AM Khalid Aziz <khalid@gonehiking.org> wrote:
>
> On 1/13/20 10:07 AM, Kairui Song wrote:
> > On Sun, Jan 12, 2020 at 2:33 AM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
> >>
> >>> Hi, there are some previous works about this issue, reset PCI devices
> >>> in kdump kernel to stop ongoing DMA:
> >>>
> >>> [v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
> >>> https://lore.kernel.org/patchwork/cover/343767/
> >>>
> >>> [v2] PCI: Reset PCIe devices to stop ongoing DMA
> >>> https://lore.kernel.org/patchwork/patch/379191/
> >>>
> >>> And didn't get merged, that patch are trying to fix some DMAR error
> >>> problem, but resetting devices is a bit too destructive, and the
> >>> problem is later fixed in IOMMU side. And in most case the DMA seems
> >>> harmless, as they targets first kernel's memory and kdump kernel only
> >>> live in crash memory.
> >>
> >> I was going to ask the same. If the kdump kernel had IOMMU on, would
> >> that still be a problem?
> >
> > It will still fail, doing DMA is not a problem, it only go wrong when
> > a device's upstream bridge is mistakenly shutdown before the device
> > shutdown.
> >
> >>
> >>> Also, by the time kdump kernel is able to scan and reset devices,
> >>> there are already a very large time window where things could go
> >>> wrong.
> >>>
> >>> The currently problem observed only happens upon kdump kernel
> >>> shutdown, as the upper bridge is disabled before the device is
> >>> disabledm so DMA will raise error. It's more like a problem of wrong
> >>> device shutting down order.
> >>
> >> The way it was described earlier "During this time, the SUT sometimes
> >> gets a PCI error that raises an NMI." suggests that it isn't really
> >> restricted to kexec/kdump.
> >> Any attached device without an active driver might attempt spurious or
> >> malicious DMA and trigger the same during normal operation.
> >> Do you have available some more reporting of what happens during the
> >> PCIe error handling?
> >
> > Let me add more info about this:
> >
> > On the machine where I can reproduce this issue, the first kernel
> > always runs fine, and kdump kernel works fine during dumping the
> > vmcore, even if I keep the kdump kernel running for hours, nothing
> > goes wrong. If there are DMA during normal operation that will cause
> > problem, this should have exposed it.
> >
>
> This is the part that is puzzling me. Error shows up only when kdump
> kernel is being shut down. kdump kernel can run for hours without this
> issue. What is the operation from downstream device that is resulting in
> uncorrectable error - is it indeed a DMA request? Why does that
> operation from downstream device not happen until shutdown?
>
> I just want to make sure we fix the right problem in the right way.
>

Actually the device could keep sending request with no problem during
kdump kernel running. Eg. keep sending DMA, and all DMA targets first
kernel's system memory, so kdump runs fine as long as nothing touch
the reserved crash memory. And the error is reported by the port, when
shutdown it has bus master bit, and downstream request will cause
error.

I'm not sure what request it really is either, it could depend on
device. On that machine, error could be reproduced when either the NIC
or HPSA is not reset in kdump, and from the bug report, the reporter
used a different NIC card and it's also reproducible.
The NIC is much less like to cause bridge error though (HPSA is about
7/10 reproducible, NIC is about 3/10), so the device could send
different requests but fail in the same way (UR error reported from
the bridge).

Will try to do more debug, but I'm not sure how can I intercept the
PCIe operation to get some info about what is actually causing the
issue, do you have any suggestion?

-- 
Best Regards,
Kairui Song


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
