Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653F01396FD
	for <lists+kexec@lfdr.de>; Mon, 13 Jan 2020 18:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoCnss1WqJDcJIrpaOrxVk4TU2VnLJzI3DIW9RWq/2Y=; b=kEEpn6Eyj1ykvy
	oBdp8x8VLDSIcqbMaRasltARxJdQT89zqelJcVhYFmmnYLG36ht42NbHchKyjNZHdIiROf8iXs8dh
	zhzfl8G3cM+bUPUwKWuw+JpaOWclBhuaWJBdANxMXNeRRXdrUx2noAs+pdC+1RF72BClS02gUHKGK
	s3M8d4d17hJG4jsv3XIAr0cTMoyYuRUWXOoFh1GOQ3EMAAwjarN+hmrlKtBWK0iQrtuZaLjmtDlnC
	vzu8I6JHo3xiK/IVObkOz6PaD1EeXW7Ou5PW6rNg7GVb0Xp4vUfMWFpL1Ecjtgd+BTnwZkEtC+oha
	oVnM4YzBAWuRoDNI4Uzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir3Bc-000224-0Z; Mon, 13 Jan 2020 17:07:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir3BY-00020G-7r
 for kexec@lists.infradead.org; Mon, 13 Jan 2020 17:07:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578935245;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=R3DtYE1qk7f9CKNzwdp7MfzeqxqgHN1i3XOOZkeWIb0=;
 b=AQXc6aHRfEbg5NtfuV/i8BNsih/X9q2TsVlYo/dhtHGXLJn5A61NTF/riWMYWk176SoEyE
 hvz1/r8U0awEZxq9l0VPX4WInB1mBBzdmEoXEf5wT+/NyxFnVDyV5T/eJqSk5+1ibKPaN9
 OolBQxe6AaY3VWnqHJTXDA8VvPBUCgo=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-398-IOE89db8Of-ajJTt0Or8Gg-1; Mon, 13 Jan 2020 12:07:21 -0500
Received: by mail-io1-f70.google.com with SMTP id 144so6207478iou.3
 for <kexec@lists.infradead.org>; Mon, 13 Jan 2020 09:07:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gx9m20Qk3Xew8B11Dz3yhd4x1rylP5kEcfScufxzD+g=;
 b=AgSKDyLGq4B37RjuQDkRn1V7MnCuFZn2L7MHaY/J1y61yiZhTuiEgSyjfROmKYtn3b
 USO8aLlLkkMgJBY1rJvRvAdcsA6NDBTzLEnnecj+PkbvCZUXVDFl5lCbStKxb9NyD8RR
 tYSFwPfYZSekYbbVLZfI8cQnF5pPehNvzxojt1X1Pzictr/u57YylcPY7iuDEIktZJ53
 cRTA4q+FDNupiMA0d4UmIL809P5E4eENZzE7AgvTT26a73PVcNj3RAwrpecRu4y2WUhc
 N6Tnh7W8nH2iercXb5P4iohs7knAS6k547aeBPopI5gc0wb2DL3djCDxbRpBVCTsy1bf
 PDmw==
X-Gm-Message-State: APjAAAXPXN6+1yQ+5UGkEug4xpP3smsC/SA71o1BCmDyd5UyOkxzTVDm
 8gt6mvPJkbYfiD6yULiQJSROvcdVFWO/EousTAqcntDFvzZzbCL0zDE3n+xVy0Ckzf6rlGxxhUJ
 O9rY+61xmLtkLzOKbiflNXjTN3fGm/pSVzOca
X-Received: by 2002:a92:3a95:: with SMTP id i21mr15325105ilf.249.1578935241109; 
 Mon, 13 Jan 2020 09:07:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqybkxs75cXBlQl+HLFb+zkWG3jPuMlMG/HxwG716bsD3R5CD/DpAv8WBPsaL2BcMPN9Ehf3LemhyTAMNhuZ8cM=
X-Received: by 2002:a92:3a95:: with SMTP id i21mr15325082ilf.249.1578935240847; 
 Mon, 13 Jan 2020 09:07:20 -0800 (PST)
MIME-Version: 1.0
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <d2715683-f171-a825-3c0b-678b6c5c1a79@gonehiking.org>
 <20200111005041.GB19291@MiWiFi-R3L-srv>
 <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
 <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
 <CABeXuvqquCU+1G=5onk9owASorhpcYWeWBge9U35BrorABcsuw@mail.gmail.com>
In-Reply-To: <CABeXuvqquCU+1G=5onk9owASorhpcYWeWBge9U35BrorABcsuw@mail.gmail.com>
From: Kairui Song <kasong@redhat.com>
Date: Tue, 14 Jan 2020 01:07:09 +0800
Message-ID: <CACPcB9cQY9Vu3wG-QYZS6W6T_PZxnJ1ABNUUAF_qvk-VSxbpTA@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Deepa Dinamani <deepa.kernel@gmail.com>
X-MC-Unique: IOE89db8Of-ajJTt0Or8Gg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_090728_358474_2CAD2A59 
X-CRM114-Status: GOOD (  26.05  )
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
 kexec@lists.infradead.org, Jerry Hoemann <Jerry.Hoemann@hpe.com>,
 Randy Wright <rwright@hpe.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bjorn Helgaas <helgaas@kernel.org>, Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 2:33 AM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
>
> > Hi, there are some previous works about this issue, reset PCI devices
> > in kdump kernel to stop ongoing DMA:
> >
> > [v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
> > https://lore.kernel.org/patchwork/cover/343767/
> >
> > [v2] PCI: Reset PCIe devices to stop ongoing DMA
> > https://lore.kernel.org/patchwork/patch/379191/
> >
> > And didn't get merged, that patch are trying to fix some DMAR error
> > problem, but resetting devices is a bit too destructive, and the
> > problem is later fixed in IOMMU side. And in most case the DMA seems
> > harmless, as they targets first kernel's memory and kdump kernel only
> > live in crash memory.
>
> I was going to ask the same. If the kdump kernel had IOMMU on, would
> that still be a problem?

It will still fail, doing DMA is not a problem, it only go wrong when
a device's upstream bridge is mistakenly shutdown before the device
shutdown.

>
> > Also, by the time kdump kernel is able to scan and reset devices,
> > there are already a very large time window where things could go
> > wrong.
> >
> > The currently problem observed only happens upon kdump kernel
> > shutdown, as the upper bridge is disabled before the device is
> > disabledm so DMA will raise error. It's more like a problem of wrong
> > device shutting down order.
>
> The way it was described earlier "During this time, the SUT sometimes
> gets a PCI error that raises an NMI." suggests that it isn't really
> restricted to kexec/kdump.
> Any attached device without an active driver might attempt spurious or
> malicious DMA and trigger the same during normal operation.
> Do you have available some more reporting of what happens during the
> PCIe error handling?

Let me add more info about this:

On the machine where I can reproduce this issue, the first kernel
always runs fine, and kdump kernel works fine during dumping the
vmcore, even if I keep the kdump kernel running for hours, nothing
goes wrong. If there are DMA during normal operation that will cause
problem, this should have exposed it.

The problem only occur when kdump kernel try to reboot, no matter how
long the kdump kernel have been running (few minutes or hours). The
machine is dead after printing:
[  101.438300] reboot: Restarting system^M
[  101.455360] reboot: machine restart^M

And I can find following logs happend just at that time, in the
"Integrated Management Log" from the iLO web interface:
1254 OS 12/25/2019 09:08 12/25/2019 09:08 1 User Remotely Initiated NMI Switch
1253 System Error 12/25/2019 09:08 12/25/2019 09:08 1 An Unrecoverable
System Error (NMI) has occurred (Service Information: 0x00000000,
0x00000000)
1252 PCI Bus 12/25/2019 09:07 12/25/2019 09:07 1 Uncorrectable PCI
Express Error (Embedded device, Bus 0, Device 2, Function 2, Error
status 0x00100000)
1251 System Error 12/25/2019 09:07 12/25/2019 09:07 1 Unrecoverable
System Error (NMI) has occurred.  System Firmware will log additional
details in a separate IML entry if possible
1250 PCI Bus 12/25/2019 09:07 12/25/2019 09:07 1 PCI Bus Error (Slot
0, Bus 0, Device 2, Function 2)

And the topology is:
[0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
          +-01.0-[02]--
          +-01.1-[05]--
          +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
          |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
          |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
          +-02.1-[0f]--
          +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array
Gen9 Controllers

It's a bridge reporting the error. It should be an unsupported request
error, bacause downstream device is still alive and sending request,
but the port have bus mastering off. If I manually shutdown the "Smart
Array" (HPSA) device before kdump reboot, it will always reboot just
fine.

And as the patch descriptions said, the HPSA is used in first kernel,
but didn't get reset in kdump kernel because driver is not loaded.
When shutting down a bridge, kernel should shutdown downstream device
first, and then shutdown and clear bus master bit of the bridge. But
in kdump case, kernel skipped some device shutdown due to driver not
loaded issue, and kernel don't know they are enabled.

This problem is not limited to HPSA, the NIC listed in above topology
maybe also make the bridge error out, if HPSA get loaded in kdump
kernel and NIC get ignored.

>
> "The reaction to the NMI that the kdump kernel takes is problematic."
> Or the NMI should not have been triggered to begin with? Where does that happen?

The NMI is triggered by firmware upon the bridge error mentioned
above, it should have triggered a kernel panic, but on the test
system, it just hanged and no longer give any output, so I can't post
any log about it.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
