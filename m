Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC09F1382E0
	for <lists+kexec@lfdr.de>; Sat, 11 Jan 2020 19:33:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCEdhTefH9NAVz60SzpOGSzHH3C2x8tGO9KLo8PDCEM=; b=qzUsVYNDCZV1Fs
	Gc2kRqyzRTecb3vtVRgDGIZDO8x91jadoSlKWhcglLCwKFs/ocph/xBVliHRezo9SZmA9k/7+ms0n
	OuuPK/urzm4NxJ5zUW5ctpinN9JDdar540bdSNfSL+aAOKSeejx66sfSE2Lnun8E8J9BhOuotW/wT
	qkE5+cVSgjeWfQt3r17ZHuUOZisB2iw3/4AvZ5BJWdgWLSUKcbf605PIHuwC3wFt7qUDWJ5suuK9B
	2TlZB0MXymn95zfRHybGBlsTXFc/KQL045EVcODHwavjMRR1w/pnXtzbCjBFw5A0MVgmkg4usdCYD
	JsA6h5+S4I6BzfI8wiLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqLZL-0000A8-MP; Sat, 11 Jan 2020 18:33:07 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqLZH-00009P-Sl
 for kexec@lists.infradead.org; Sat, 11 Jan 2020 18:33:05 +0000
Received: by mail-io1-xd42.google.com with SMTP id t26so5485471ioi.13
 for <kexec@lists.infradead.org>; Sat, 11 Jan 2020 10:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oHKy6sP4q/jszsnrjUSGz6lJhsm0cQK7CaZ5RcUUJmw=;
 b=WCiQukZ9NwvA2wCS/2MHkw5FREFgqhX/Bi1vPMtIbsDFzebnpnQVbrvxZn1VwjRRVI
 O1gSlCQdAqT1kYLx7qcmcznEmq4Q1PWHGrbvxtEjUuBeqrcf4oHjNLroSSd6/MuS4j7b
 Af1Zgk/64bQoWXigMOGPhWQ5rxw+mkquUhL2Fll6KnQb7g73qhAgS+M/MIY/Rq4pgaBU
 UWbGK/us5CSvKPO/P+4qgg2OV4DgecEU0F1WlZkQ1vmuaKlB3WS90D8M158qk3XVk/Lt
 siwVpcIfOUyS37JwGoxUfZBBTo57vKBf1QJss25VceE3XPtB0u61pG3vWOpJDAgmT5mG
 PgEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oHKy6sP4q/jszsnrjUSGz6lJhsm0cQK7CaZ5RcUUJmw=;
 b=DUcAh8j1EI4SqVqmBIQc7qSChsSrqtIYVHVMnJOKPSbMiQwN+m/xMw2xzBVu+EStXq
 siJH914qNr5Y7TzvSOzJR6PpMmnmLahbKFBeheFe09ptCMhti1NGBwEJWhzPFf1Tt5Ej
 3bu/MfoV4Yn4UAfunJNNb2TIEC8OWsFpJRqaHbxTldMRSDYHUSjRgfDaIwbOd1i7O0lm
 lyVuNlkkIe4ihZ3syJkIDGcI9VgCeJfQbjCfHkofw45zKSa754a/zRllSNc+B2CADYID
 DHgqlXJWF/am0oZwseAiS0/etzsf3yfA1SkPaaXuYNClO+jC4i4/FZTBzmvTQbb2O4yR
 QNKw==
X-Gm-Message-State: APjAAAUPCOPbMVe7ONVjGzCvoZ+umRPryGbi1OpOm9UZ2oRP4c/eUSO4
 XdSpF58CwbAKO+PmM0ICg61XLZj/gZlY/BXky08=
X-Google-Smtp-Source: APXvYqzLa9J0R960aMyOgVH0pHxEAL3cPWTk+hUUJtGClH06AtPVaaG/DSG0u8SMvVzY8wYEQMCwkwhND9aCJriSEok=
X-Received: by 2002:a5e:8516:: with SMTP id i22mr7623995ioj.130.1578767582287; 
 Sat, 11 Jan 2020 10:33:02 -0800 (PST)
MIME-Version: 1.0
References: <20200110214217.GA88274@google.com>
 <e0194581-4cdd-3629-d9fe-10a1cfd29d03@gonehiking.org>
 <20200110230003.GB1875851@anatevka.americas.hpqcorp.net>
 <d2715683-f171-a825-3c0b-678b6c5c1a79@gonehiking.org>
 <20200111005041.GB19291@MiWiFi-R3L-srv>
 <dc46c904-1652-09b3-f351-6b3a3e761d74@gonehiking.org>
 <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
In-Reply-To: <CACPcB9c0-nRjM3DSN8wzZBTPsJKWjZ9d_aNTq5zUj4k4egb32Q@mail.gmail.com>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Sat, 11 Jan 2020 10:32:51 -0800
Message-ID: <CABeXuvqquCU+1G=5onk9owASorhpcYWeWBge9U35BrorABcsuw@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Kairui Song <kasong@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_103303_957775_24E842BA 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deepa.kernel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> Hi, there are some previous works about this issue, reset PCI devices
> in kdump kernel to stop ongoing DMA:
>
> [v7,0/5] Reset PCIe devices to address DMA problem on kdump with iommu
> https://lore.kernel.org/patchwork/cover/343767/
>
> [v2] PCI: Reset PCIe devices to stop ongoing DMA
> https://lore.kernel.org/patchwork/patch/379191/
>
> And didn't get merged, that patch are trying to fix some DMAR error
> problem, but resetting devices is a bit too destructive, and the
> problem is later fixed in IOMMU side. And in most case the DMA seems
> harmless, as they targets first kernel's memory and kdump kernel only
> live in crash memory.

I was going to ask the same. If the kdump kernel had IOMMU on, would
that still be a problem?

> Also, by the time kdump kernel is able to scan and reset devices,
> there are already a very large time window where things could go
> wrong.
>
> The currently problem observed only happens upon kdump kernel
> shutdown, as the upper bridge is disabled before the device is
> disabledm so DMA will raise error. It's more like a problem of wrong
> device shutting down order.

The way it was described earlier "During this time, the SUT sometimes
gets a PCI error that raises an NMI." suggests that it isn't really
restricted to kexec/kdump.
Any attached device without an active driver might attempt spurious or
malicious DMA and trigger the same during normal operation.
Do you have available some more reporting of what happens during the
PCIe error handling?

"The reaction to the NMI that the kdump kernel takes is problematic."
Or the NMI should not have been triggered to begin with? Where does that happen?

I couldn't access the bug report.

-Deepa

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
