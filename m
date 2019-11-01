Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850EEEBCEA
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 05:52:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKQbQt7TaBfK+v9o4WYN8np81q4mtBYUvM1aViFxIXg=; b=G831FZBIkRV8wX
	NpGwQ5auljbNzoxo6xQtppmKYjet5z1Xzu2Cr7pmKUarXWei1cc7cxQDDGERGMosn0nTx873wBa5j
	2OQ6d5VqeGKKDiw6lphYKivfE0acabY1vJ1JWH3fPEzFTASyk0XErjBG5O80WI7FJVj05snowcFzn
	mNUBUJ/sNmt/2dCi3P/Ef4+Z12XqqeI7XifemLpLQvL56U1nRoFcmGCZEYUSijKwDJivivd/mJqIw
	TLHztlXqt2QemhGfPEk35Q+6+hxyi1YyrA6RHXc8LkNW4IeAw8be9VXJz2Q6B+ac50qc90jitIqyR
	CN/HdP08DW7l+slgfGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQOv0-00044l-OW; Fri, 01 Nov 2019 04:52:14 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQOuw-00044H-LL
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 04:52:12 +0000
Received: by mail-il1-x144.google.com with SMTP id n18so685126ilt.9
 for <kexec@lists.infradead.org>; Thu, 31 Oct 2019 21:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YQWiwvd8bbU+952y5xX6tWwcBkrxDCkXzoIjObrhqE8=;
 b=OSyXW8wmoXjskRYGIkcgzmiiJ823WvYKsC/QBEpqgBH/Zff1umGQgNziiXw3gnHW0y
 5gB/2O/0B61UjRlaaN5alaa/zxDZw15HooTKXa3nQ5HxweGCSfVT7CV7I+6rWKEslBdn
 yMni1KpT/h+hr96lyLT4lidSqNoCCF8WRw1c58oxdX0TBHeVWF8roQ6HyS3r81di8Y6R
 ZthTpHaWrk1FzZXLaaF7cctT+mIPopX88nL2YMRVr1vMXIiTZRqJAfvq0crmN210Yk0S
 mL2PeA9sL6+2rV0aAivd3Iqmz/AvezwVxZeXTAsofbbAZ+A9cybkFcbJxvdQTBW3M0cE
 IA5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YQWiwvd8bbU+952y5xX6tWwcBkrxDCkXzoIjObrhqE8=;
 b=ScGz05lGAPorY4yD9Kj030JuvV7CN2S+QBfAd2NGxfVbD9S8iisUWFOMRGb0ep/mY8
 UZ96DUi/5ZYy9JNQK/iN2Nck/VN4GQf+rS+DUZWpS1YCGdwK42NM+opz4eQiOSLugGZf
 PxbBIXj8krh+eLY308tRBIC+PTOvnAF4Jto/LgJeuhWxS7q49YarQJxka/GuWYuf0EqQ
 CYuOfvaaZgBHhlBnQ5i3l0sA2AqMBz2gYDIOxKF/F29MagnT6QwSJ7fkDiL1v/WBWZ9t
 OrVqyoojW9dECB8f0jxyYFLICJ+2rtxg/oEgMAlj/4uiWMkC3HNk9gGJ5AV4GqHHrxgP
 bMkw==
X-Gm-Message-State: APjAAAWnu7P8ZKwaD9yyjelH9a8aV3uwpyz3moPOg74gMXrhjImsJ9fF
 89BSjEcG/qvELRM7KZW2Nf7Ez0S6gQ8KA2ANN10=
X-Google-Smtp-Source: APXvYqzW+mKkFLFZK5cgG4GN8/zg3BaJwz6uQ7zHdap2ISl3txFsgGe5v/eicT/f9lf1ly9LqAAmo2nEsMtkwTVg6H4=
X-Received: by 2002:a92:d643:: with SMTP id x3mr10558869ilp.203.1572583929435; 
 Thu, 31 Oct 2019 21:52:09 -0700 (PDT)
MIME-Version: 1.0
References: <ae74bb79-a68e-a319-f61c-5b93fd70ae59@gmail.com>
 <CAKv+Gu8oUfSfMLW17QOwBCrrn+3AggHND6b0KZWfB=Npo9d8Hw@mail.gmail.com>
 <CAJ2QiJLOE8D_Cf8ysRzv2oJ=+Bv1scpQCUX0yK=_zxjm6Rr6ow@mail.gmail.com>
 <CAKv+Gu981sk=GifDZbB-c-QYYP84RweHSmPQFkLPis1UDgrhAg@mail.gmail.com>
 <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
 <CACi5LpPQcvvb-Tymdy6KVCfJKfBSGWNyNXifpccXncGvZ15itA@mail.gmail.com>
In-Reply-To: <CACi5LpPQcvvb-Tymdy6KVCfJKfBSGWNyNXifpccXncGvZ15itA@mail.gmail.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Fri, 1 Nov 2019 10:21:56 +0530
Message-ID: <CAJ2QiJJHkc3=pVjNNnwSWb2ONPsiagbrt2U3Q24WEVAnE8=r_Q@mail.gmail.com>
Subject: Re: [edk2-devel] How /sys/firmware/fdt getting created
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_215210_725906_6FE4B0B4 
X-CRM114-Status: GOOD (  28.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Naresh Bhat <naresh.bhat@linaro.org>,
 edk2-devel-groups-io <devel@edk2.groups.io>,
 kexec mailing list <kexec@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Bhupesh,

On Fri, Nov 1, 2019 at 1:59 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Prabhakar,
>
> On Wed, Oct 30, 2019 at 1:47 PM Prabhakar Kushwaha
> <prabhakar.pkin@gmail.com> wrote:
> >
> > On Wed, Oct 30, 2019 at 1:14 PM Ard Biesheuvel
> > <ard.biesheuvel@linaro.org> wrote:
> > >
> > > On Wed, 30 Oct 2019 at 08:36, Prabhakar Kushwaha
> > > <prabhakar.pkin@gmail.com> wrote:
> > > >
> > > > On Wed, Oct 30, 2019 at 12:43 PM Ard Biesheuvel
> > > > <ard.biesheuvel@linaro.org> wrote:
> > > > >
> > > > > On Tue, 29 Oct 2019 at 18:17, Prabhakar Kushwaha
> > > > > <prabhakar.pkin@gmail.com> wrote:
> > > > > >
> > > > > > Hi All,
> > > > > >
> > > > > > I am working on Ubuntu-18.04 with UEFI on ARM64(64 bit) platform. The
> > > > > > UEFI used is having ACPI tables.
> > > > > >
> > > > > > I am trying to understand where and how /sys/firmware/fdt is getting
> > > > > > created. is it created by UEFI or grub and passed to Linux?
> > > > > >
> > > > >
> > > > > Neither. It is created by Linux itself.
> > > > >
> > > > >
> > > > >
> > > >
> > > > Thanks Ard,
> > > >
> > > > Can you please point me the code where it is getting created.
> > > > I want to add below in /sys/firmware/fdt.
> > > >
> > > > #size-cells = <0x02>;
> > > > #address-cells = <0x02>;
> > > >
> > >
> > > Actually, in your case it is GRUB not the kernel that creates the FDT.
> > > It does this to pass the initrd information.
> > >
> > > So if you want to add these properties, you should add them there.
> > >
> > > Can you explain why doing this is necessary?
> >
> > I am trying to test kexec -p (kdump feature) on CentOS-release
> > 7.7.1908 and Ubuntu-18.04 distributions.
> >
> >  "kexec -p" command show error on Ubuntu. While no error on CentOS
> >
> > CentOS:
> > $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname
> > -r`.img --reuse-cmdline
> > $    ==> No error
> >
> > Ubuntu
> > $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initrd.img-`uname
> > -r` --reuse-cmdline
> > $ kexec: elfcorehdr doesn't fit cells-size.
> > $ kexec: setup_2nd_dtb failed.
> > $ kexec: load failed.
> > $ Cannot load /boot/vmlinuz-5.4.0-rc4+
> >
> > Note: Both CentOS and Ubuntu has Linux-5.4-rc4 tag.
> >
> > When i debugged further reason for Ubuntu error is due to
> > address-cells and size-cells as "1"
> > log from kexec tool :-
> > load_crashdump_segments: elfcorehdr 0x7f7cbfc000-0x7f7cbff7ff
> > read_1st_dtb: found name =dtb_sys  /sys/firmware/fdt
> > get_cells_size: #address-cells:1 #size-cells:1
> >
> > On CentOS both values are "2".
> > log from kexec tool :-
> > load_crashdump_segments: elfcorehdr 0xbf98bf0000-0xbf98bf33ff
> > read_1st_dtb: found nmae=dtb_sys /sys/firmware/fdt
> > get_cells_size: #address-cells:2 #size-cells:2
> >
> > Note: Kexec tool read values from /sys/firmware/fdt.
> >
> > I am trying to figure out why 2 distributions showing different values.
>
> There are a couple of things I can suggest:
>
> 1. Try to see if it is a kexec-tools specific issue or is the kernel
> itself passed an incorrectly fixed DTB (by grub?) with incorrect
> #address-cells and #size-cells values (in the past I have seen
> kexec-tools sometimes reports incorrect #address-cells and #size-cells
> values, but they should be fixed in the newer kexec-tools versions):
>
> a). Can you check the kexec-tools version and share the same:
> $ kexec -v
>
> b). Using 'dtc' tool, you can confirm if it reports a correct
> #address-cells and #size-cells values:
> # dtc -I dtb -O dts /sys/firmware/fdt | grep cells | less
>
> For e.g on my fedora arm64 system, it reports:
>     #address-cells = <0x2>;
>     #size-cells = <0x2>;
>
> 2a). If its not a kexec-tools specific issue, it is most probably a
> bootloader (grub?) issue in your case:
>
> For e.g. I use the following grub2 on my Fedora arm64 board:
> <https://github.com/rhboot/grub2>
> and <https://github.com/rhboot/grub2/blob/master/grub-core/loader/efi/fdt.c#L34>
> contains the changes to send the correct #address-cells and
> #size-cells values to Linux (and hence user-space tools like
> kexec-tools later).
>
> I believe the same grub2 is used (backported) for CentOS, so things
> should be fine there.
>
> 2b). I see that the latest devel branch of ubuntu grub2
> (<https://code.launchpad.net/ubuntu/+source/grub2>) also contains this
> fix, but I am not sure which grub2 version you have on your ubuntu
> machine.
>

Ubuntu 18.04 has grub 2.02. When i migrated to grub 2.05, this issue
is not there.
Most probably the patch which is mentioned by Laszlo done the fix.

http://git.savannah.gnu.org/cgit/grub.git/commit/?id=347210a5d5ce655b95315f320faa515afb723c11

Thanks
--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
