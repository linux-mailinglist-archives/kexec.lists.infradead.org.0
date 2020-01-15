Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAFB13B6B8
	for <lists+kexec@lfdr.de>; Wed, 15 Jan 2020 02:17:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gz45VC1UmXpY3qqb8khGn+F2OUlYlKYvhoz6TMbvCMc=; b=ZpTmY8WsDL1709
	90MePjivwH/6ViMSk7FiFnlycbZ2u/Yg8drKMnRfF0jgQ+1oCFqMVpdSwzOslmHNezm/AC5hbnWaf
	TC8R0h4wtd+LuYePQ3sMeTyKJKbKtDWbMl/w3aZdQP7NcemeF5U2BodyPms1o63yDjzXs1bL60HUd
	UDYm/S0UJYIPGyt6eu6gQQREv/+GR/CTatiY6+o6GsOX+J/cORlQHzibGepiF6F46AE64oMb+mZ3h
	EAlt6wm7QTbJBkr2AE1sTU/CxyQ/5mHjvmCGHmafuDBWUDjW6C0hTv8YfkjytzrMsxZUhuvBv9qCp
	PS9+PRS1499VVjnT5++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irXIq-0002Od-0z; Wed, 15 Jan 2020 01:17:00 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irXIl-0002NV-VR
 for kexec@lists.infradead.org; Wed, 15 Jan 2020 01:16:57 +0000
Received: by mail-il1-x141.google.com with SMTP id t8so13369740iln.4
 for <kexec@lists.infradead.org>; Tue, 14 Jan 2020 17:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nrM9hyWl7t9/dtdjzNEgfpEEAIhduRic/LBoSXXTBB4=;
 b=pns5Lv88UX7SC6zugFqCrYQDJ8yr5nVBeQOCbrRoelFwML7CXtJOCgvAk7D9lIBzJY
 b+xehkBgNGjxC4rvBKghrmatoOKYLyPBPcifAa0nS4VcXMIxFHjrY8zZSBLcWyKkLy3v
 T+VBPQbNF4wpZ1H3Et/rLrUffo/HRvngprOQlCRDUBnLaPE+0Wqy/6cw3kZvyKoWbSCt
 tyqNoDHA7r0lN1NiDLB5Kmftb1O+bCtbf0EXJGBGX9Rds/74zBr9qls2+LaDP4U2RwLV
 2CmBepR1mVIdHfprrZxzITv+mza444v9Zg3k/GqA5G9FmjBdONoQFQswAk0yBzWX+7rh
 l96g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nrM9hyWl7t9/dtdjzNEgfpEEAIhduRic/LBoSXXTBB4=;
 b=KT0oGGoU7Pl61bAJAem7XFE+CXZaXo8l8q08gkeGv8q+CJ5r4jORVzCdiRD+4fjyH0
 AHEqlqcDHB2qHNAr6VTw8PUPjBhTvPfpHRTRTJTZO5YHSiZs4EabG7sbW7F3scUzyNlq
 tXBpQFjMTM2cWcbJULToji/NIF69UaaazmS36nTVyLULLuZtxxY0GalG46my4k1WPDv0
 P4VyfeBIi7Poimatx4Zm41g/RqKTYC8AfnrJa7n9fxm8GceA3Llfm811B2Ih2okt2xYx
 rk9Expw0H58VDg0gCzuqUAcqmiFoxuq0Mmon5FH3a3LjRpRCoqDdfAwIXwPj2KOs0lt/
 q1Wg==
X-Gm-Message-State: APjAAAVBY2OMlCgi/bU0FsURMz4Z914XxrlxJSqvmbDywumO4YUIp9uT
 KnGSFrtnwe87MVC6G+KPl2hsesDr+0LnO+CSIcQ=
X-Google-Smtp-Source: APXvYqzMmoQiLG1dWvKeO4SE97241zJmp6LiGBAX56u8Jm3+DnRxl9S+Dr6af5A/V4bgev6GgdAEiwn/r/usnIQkKeY=
X-Received: by 2002:a92:1906:: with SMTP id 6mr1401696ilz.130.1579051014396;
 Tue, 14 Jan 2020 17:16:54 -0800 (PST)
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
In-Reply-To: <CACPcB9cQY9Vu3wG-QYZS6W6T_PZxnJ1ABNUUAF_qvk-VSxbpTA@mail.gmail.com>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Tue, 14 Jan 2020 17:16:41 -0800
Message-ID: <CABeXuvpWR9foBREPPc4T0G_Pf7D3=uaiKv1+_SkLti2+SrKb5Q@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Kairui Song <kasong@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_171656_039766_7586D05E 
X-CRM114-Status: GOOD (  31.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Jan 13, 2020 at 9:07 AM Kairui Song <kasong@redhat.com> wrote:
>
> On Sun, Jan 12, 2020 at 2:33 AM Deepa Dinamani <deepa.kernel@gmail.com> wrote:
> >
> > > Hi, there are some previous works about this issue, reset PCI devices
> > > in kdump kernel to stop ongoing DMA:
> > >
> > > [v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
> > > https://lore.kernel.org/patchwork/cover/343767/
> > >
> > > [v2] PCI: Reset PCIe devices to stop ongoing DMA
> > > https://lore.kernel.org/patchwork/patch/379191/
> > >
> > > And didn't get merged, that patch are trying to fix some DMAR error
> > > problem, but resetting devices is a bit too destructive, and the
> > > problem is later fixed in IOMMU side. And in most case the DMA seems
> > > harmless, as they targets first kernel's memory and kdump kernel only
> > > live in crash memory.
> >
> > I was going to ask the same. If the kdump kernel had IOMMU on, would
> > that still be a problem?
>
> It will still fail, doing DMA is not a problem, it only go wrong when
> a device's upstream bridge is mistakenly shutdown before the device
> shutdown.
>
> >
> > > Also, by the time kdump kernel is able to scan and reset devices,
> > > there are already a very large time window where things could go
> > > wrong.
> > >
> > > The currently problem observed only happens upon kdump kernel
> > > shutdown, as the upper bridge is disabled before the device is
> > > disabledm so DMA will raise error. It's more like a problem of wrong
> > > device shutting down order.
> >
> > The way it was described earlier "During this time, the SUT sometimes
> > gets a PCI error that raises an NMI." suggests that it isn't really
> > restricted to kexec/kdump.
> > Any attached device without an active driver might attempt spurious or
> > malicious DMA and trigger the same during normal operation.
> > Do you have available some more reporting of what happens during the
> > PCIe error handling?
>
> Let me add more info about this:
>
> On the machine where I can reproduce this issue, the first kernel
> always runs fine, and kdump kernel works fine during dumping the
> vmcore, even if I keep the kdump kernel running for hours, nothing
> goes wrong. If there are DMA during normal operation that will cause
> problem, this should have exposed it.
>
> The problem only occur when kdump kernel try to reboot, no matter how
> long the kdump kernel have been running (few minutes or hours). The
> machine is dead after printing:
> [  101.438300] reboot: Restarting system^M
> [  101.455360] reboot: machine restart^M
>
> And I can find following logs happend just at that time, in the
> "Integrated Management Log" from the iLO web interface:
> 1254 OS 12/25/2019 09:08 12/25/2019 09:08 1 User Remotely Initiated NMI Switch
> 1253 System Error 12/25/2019 09:08 12/25/2019 09:08 1 An Unrecoverable
> System Error (NMI) has occurred (Service Information: 0x00000000,
> 0x00000000)
> 1252 PCI Bus 12/25/2019 09:07 12/25/2019 09:07 1 Uncorrectable PCI
> Express Error (Embedded device, Bus 0, Device 2, Function 2, Error
> status 0x00100000)
> 1251 System Error 12/25/2019 09:07 12/25/2019 09:07 1 Unrecoverable
> System Error (NMI) has occurred.  System Firmware will log additional
> details in a separate IML entry if possible
> 1250 PCI Bus 12/25/2019 09:07 12/25/2019 09:07 1 PCI Bus Error (Slot
> 0, Bus 0, Device 2, Function 2)
>
> And the topology is:
> [0000:00]-+-00.0  Intel Corporation Xeon E7 v3/Xeon E5 v3/Core i7 DMI2
>           +-01.0-[02]--
>           +-01.1-[05]--
>           +-02.0-[06]--+-00.0  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.1  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.2  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.3  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.4  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.5  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            +-00.6  Emulex Corporation OneConnect NIC (Skyhawk)
>           |            \-00.7  Emulex Corporation OneConnect NIC (Skyhawk)
>           +-02.1-[0f]--
>           +-02.2-[07]----00.0  Hewlett-Packard Company Smart Array
> Gen9 Controllers
>
> It's a bridge reporting the error. It should be an unsupported request
> error, bacause downstream device is still alive and sending request,
> but the port have bus mastering off. If I manually shutdown the "Smart
> Array" (HPSA) device before kdump reboot, it will always reboot just
> fine.
>
> And as the patch descriptions said, the HPSA is used in first kernel,
> but didn't get reset in kdump kernel because driver is not loaded.
> When shutting down a bridge, kernel should shutdown downstream device
> first, and then shutdown and clear bus master bit of the bridge. But
> in kdump case, kernel skipped some device shutdown due to driver not
> loaded issue, and kernel don't know they are enabled.
>
> This problem is not limited to HPSA, the NIC listed in above topology
> maybe also make the bridge error out, if HPSA get loaded in kdump
> kernel and NIC get ignored.

It looks like the right answer is for the kernel to handle such cases
gracefully. From what I recall, we can only trust the bus mastering at
root ports. So, it is possible that the endpoint devices can always
try to DMA, but it can be blocked by the root port. So the right fix
seems to teach kernel how to handle these insted of hacking the
shutdown code.
-Deepa


-Deepa

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
