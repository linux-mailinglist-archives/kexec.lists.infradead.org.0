Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A35E4E97F3
	for <lists+kexec@lfdr.de>; Wed, 30 Oct 2019 09:17:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/gRm25D8n5FfWvvlTnh47zDnl5DSQwdczM091T5TGM=; b=Q7C4LcHo0WYOc8
	ooqRTnklWUJ38i3A3PVQBep99AEIpRk2bwCUypdwAGGd/qSJTz2ZxRtbZQ9sx4g3Hq3xC3QGcrXsl
	VCRagfTtNmb50uwyQD7riu1G8wsFbUpNpBNPz5aOG4dQVgUGe2JkBmc7DBvovA67joWsTG76OXgo0
	XUizfOO6CfAHpY/uU9JIO/KtZqpkmuWCdhJL/dfoNIQZr/6qtHXjiBMu8kmykeEvfyOmsrl/uJxjV
	V5HsfJvHcZZHC6XFQh14ySl0PRSmsR7m6I3NCRwBU1O/C6Qw9UpYfs5hKwrZs+4ZafNiBsz1cZVEn
	nnm62RXtEBtR/PT3yjbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPjAA-00005y-RF; Wed, 30 Oct 2019 08:17:06 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPjA4-00004t-Ge
 for kexec@lists.infradead.org; Wed, 30 Oct 2019 08:17:01 +0000
Received: by mail-io1-xd42.google.com with SMTP id r144so1484434iod.8
 for <kexec@lists.infradead.org>; Wed, 30 Oct 2019 01:16:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lpYGBg1jJ5KEN2i5nHLFGyRT07x4GIIRr3DHeUFz3Is=;
 b=D1deaDyaEfvXbQDKVIG0IHCUiSfGzM+4j1qziMkbFn12I4lNWM0j/wZhvc1VOUcPhX
 XMwn7PLdQaQ+b0M9vh8fTX784V/9ya8NyB2SX6namwoGiNr4iCAff4Ds6eUidMv+Ndmf
 ksbsLB1npJDpMv+Eod6rB5CgCyykGbaUDLXlkQuOvG5FvtD2xdFuGcREMx3WBsre9poW
 QXJyTnJnNOu5HIfssH2JVbjDfzJNUS8p3G6YCNdH1tD4uV87S3gLeL3dMpwZV12kVOAL
 nCcHVgZ8UAcIlcsAjWcwhqJIPshWnf2WMg11buOar5ZzHGOaotCj57is2HSMedNZw7da
 uGOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lpYGBg1jJ5KEN2i5nHLFGyRT07x4GIIRr3DHeUFz3Is=;
 b=nOcTx9QMXzpkM0NdJHC2dHhZyebTqHG8qiq3vZJOMk7k9a7twB5Pl+RWj8tSMxojth
 EngpecvNxO01IcBPE55yUTBj6dlGQL/F9oHhcJQNbRpmu5sXtG9e2/A9ZvUTEt2SNWSD
 gvl1bG7iR5N8WTG4hrknFZiZkSojFkAYdU2feA2LC90jlb2BmMiDry4Kqetqf4Vds4Hy
 ck8NgG/zkFh7yjy3gOOTjvGoF0wlTaXIKzMU5bDxp5q9OVuZpZzGSDg0d17j0r5T4LcI
 mPJ0I0XNhlbxB9jh+dTbWEpIf2Aq/3lsX/NCOHNUgNQW2LsFHKIM5SrpIRQ/FvtliTMv
 yBwA==
X-Gm-Message-State: APjAAAXW2sopX6l+pApLed3kCD3PYpWUBFasz0htt+ys8AbHXqrSx0g6
 1EXikjanuw5GEzdPWrwO++BTeFBGY1WeI7zYKBBqJOUp
X-Google-Smtp-Source: APXvYqypapPM5T3Br0ld3dkjJmWgX89hnX8BUfKUwzCWYxJwmyaChH/qiyHcmrdiyj7uj7zJujzeq+MceJftGcQT9LQ=
X-Received: by 2002:a05:6602:2284:: with SMTP id
 d4mr6105827iod.10.1572423419195; 
 Wed, 30 Oct 2019 01:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <ae74bb79-a68e-a319-f61c-5b93fd70ae59@gmail.com>
 <CAKv+Gu8oUfSfMLW17QOwBCrrn+3AggHND6b0KZWfB=Npo9d8Hw@mail.gmail.com>
 <CAJ2QiJLOE8D_Cf8ysRzv2oJ=+Bv1scpQCUX0yK=_zxjm6Rr6ow@mail.gmail.com>
 <CAKv+Gu981sk=GifDZbB-c-QYYP84RweHSmPQFkLPis1UDgrhAg@mail.gmail.com>
In-Reply-To: <CAKv+Gu981sk=GifDZbB-c-QYYP84RweHSmPQFkLPis1UDgrhAg@mail.gmail.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Wed, 30 Oct 2019 13:46:48 +0530
Message-ID: <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
Subject: Re: [edk2-devel] How /sys/firmware/fdt getting created
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_011700_559073_070079D8 
X-CRM114-Status: GOOD (  16.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: naresh.bhat@linaro.org, edk2-devel-groups-io <devel@edk2.groups.io>,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Oct 30, 2019 at 1:14 PM Ard Biesheuvel
<ard.biesheuvel@linaro.org> wrote:
>
> On Wed, 30 Oct 2019 at 08:36, Prabhakar Kushwaha
> <prabhakar.pkin@gmail.com> wrote:
> >
> > On Wed, Oct 30, 2019 at 12:43 PM Ard Biesheuvel
> > <ard.biesheuvel@linaro.org> wrote:
> > >
> > > On Tue, 29 Oct 2019 at 18:17, Prabhakar Kushwaha
> > > <prabhakar.pkin@gmail.com> wrote:
> > > >
> > > > Hi All,
> > > >
> > > > I am working on Ubuntu-18.04 with UEFI on ARM64(64 bit) platform. The
> > > > UEFI used is having ACPI tables.
> > > >
> > > > I am trying to understand where and how /sys/firmware/fdt is getting
> > > > created. is it created by UEFI or grub and passed to Linux?
> > > >
> > >
> > > Neither. It is created by Linux itself.
> > >
> > >
> > >
> >
> > Thanks Ard,
> >
> > Can you please point me the code where it is getting created.
> > I want to add below in /sys/firmware/fdt.
> >
> > #size-cells = <0x02>;
> > #address-cells = <0x02>;
> >
>
> Actually, in your case it is GRUB not the kernel that creates the FDT.
> It does this to pass the initrd information.
>
> So if you want to add these properties, you should add them there.
>
> Can you explain why doing this is necessary?

I am trying to test kexec -p (kdump feature) on CentOS-release
7.7.1908 and Ubuntu-18.04 distributions.

 "kexec -p" command show error on Ubuntu. While no error on CentOS

CentOS:
$ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname
-r`.img --reuse-cmdline
$    ==> No error

Ubuntu
$ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initrd.img-`uname
-r` --reuse-cmdline
$ kexec: elfcorehdr doesn't fit cells-size.
$ kexec: setup_2nd_dtb failed.
$ kexec: load failed.
$ Cannot load /boot/vmlinuz-5.4.0-rc4+

Note: Both CentOS and Ubuntu has Linux-5.4-rc4 tag.

When i debugged further reason for Ubuntu error is due to
address-cells and size-cells as "1"
log from kexec tool :-
load_crashdump_segments: elfcorehdr 0x7f7cbfc000-0x7f7cbff7ff
read_1st_dtb: found name =dtb_sys  /sys/firmware/fdt
get_cells_size: #address-cells:1 #size-cells:1

On CentOS both values are "2".
log from kexec tool :-
load_crashdump_segments: elfcorehdr 0xbf98bf0000-0xbf98bf33ff
read_1st_dtb: found nmae=dtb_sys /sys/firmware/fdt
get_cells_size: #address-cells:2 #size-cells:2

Note: Kexec tool read values from /sys/firmware/fdt.

I am trying to figure out why 2 distributions showing different values.

--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
