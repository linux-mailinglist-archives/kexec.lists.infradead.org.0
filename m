Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A778EB862
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 21:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuycIaXOgwCDDyhWKuJhH2VOt09u+aPYXtSN/IJXBmg=; b=kYdXnr4BWOlhSL
	/7NDzdaKZky5hm5ss/jZehHcq/kpMv00kQYShhIpDdb+EqQshnb3e653bx3OSuK6e3Hc80ZVtMqUt
	IyyPS2iThqMAUO3BaUQ4glecLba4VGckgYYyp9cWStpvXQ//5Tk4LN4RlvUdnB93aAGBIPBMGPKIN
	0MtInnMjsjmCKk2vxPm2cG5hAaNG/J89ARb04E72uriwZ94ZsaL0hfDzixfsq4eCdEND1HwpiKUGt
	7yoSsmlwi7Lm+C8fFLXp6kbtiVUY38cUfSx0MaYnL4LmKVoUm568VQxMj9tg2v6GlK70Bs440BqNu
	FYZmvQD7zSzq4H+PdpIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQH4h-0004nL-0o; Thu, 31 Oct 2019 20:29:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQH4c-0004mz-U6
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 20:29:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572553776;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Vl7pyZ4JnvH0oSF/aLMI3Rd+pTHIaKnCOAmc2Fg1szk=;
 b=VrDj5tjIsYo6bhW+RpWqg/dCvj+ce54QAEKp2NYUdcDcc/yf76gNyn3DVL/ybwXasrnG60
 sr91EQ0hl6tO1J+cg0ffMwZIXovRw80I6gOwtfFC+Pim9O/rW7Ys5sRYUmy22choBwWxb7
 w8uanPLOQ3mXIlr8QXpNcIhcsca4XzQ=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-235-xHoWlrRkNAi26kY65hs5Ew-1; Thu, 31 Oct 2019 16:29:34 -0400
Received: by mail-lf1-f69.google.com with SMTP id r21so1677869lff.1
 for <kexec@lists.infradead.org>; Thu, 31 Oct 2019 13:29:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s6tr/Yci+jJOMrzKuMJ96cKo8tR9aWm6KkR1xcxhVtU=;
 b=Anv62IsUNRlgvNySy69GkCR/jWbk/4GH972hNkxwWXGGMiioeodbZITG3mclWrSWeF
 UBV/Ohg/KZdtqjzOZqP/17QWTDKLVCTEXRlVZ1FG9P0G1xl9hUmPdgLSeEhHNMlo5Xpx
 vp9a47mX9JynKwnjMC9sNia5wjfuheWgeCWYdI9sil/SdMN5OvvN2PZRH+tYR456GUEQ
 HroOq03iCfozVfZKveV5zNsZ2wgylf/QtcwimxlA5rdI4LsOUeAwEj18IgzpIOELUWPr
 nBd00TLOTyyMnxncvDunnSmflGGO2xy4vgxKCFXqx425wSA+y1ZSOgHJ8vY2KlyToIVb
 94gQ==
X-Gm-Message-State: APjAAAW4Z44DlEN7T00O0XkHBXdkS12gydTnJgY45RALHDSwi/PmsWfo
 rPesHT/U6+nlkiQKzC/ROGkZrZL918+FJ7loe17X49ZgHjIOUeyeSu2Zowjr7VsBv573O3+XCjs
 Rc9yBEsc+daMaEBxShNKDnDMZEjbzhlu7BI2W
X-Received: by 2002:a05:651c:1024:: with SMTP id
 w4mr5282837ljm.206.1572553772561; 
 Thu, 31 Oct 2019 13:29:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyA2oA4Xx557U+pmseSdmHUZZ4XBGroo9Cr+vj2cOUnHzz5ihSVU7dA1gWH0b6MqvsfVGrYLgBpKXj7xhnxQVg=
X-Received: by 2002:a05:651c:1024:: with SMTP id
 w4mr5282822ljm.206.1572553772227; 
 Thu, 31 Oct 2019 13:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <ae74bb79-a68e-a319-f61c-5b93fd70ae59@gmail.com>
 <CAKv+Gu8oUfSfMLW17QOwBCrrn+3AggHND6b0KZWfB=Npo9d8Hw@mail.gmail.com>
 <CAJ2QiJLOE8D_Cf8ysRzv2oJ=+Bv1scpQCUX0yK=_zxjm6Rr6ow@mail.gmail.com>
 <CAKv+Gu981sk=GifDZbB-c-QYYP84RweHSmPQFkLPis1UDgrhAg@mail.gmail.com>
 <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
In-Reply-To: <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 1 Nov 2019 01:59:19 +0530
Message-ID: <CACi5LpPQcvvb-Tymdy6KVCfJKfBSGWNyNXifpccXncGvZ15itA@mail.gmail.com>
Subject: Re: [edk2-devel] How /sys/firmware/fdt getting created
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-MC-Unique: xHoWlrRkNAi26kY65hs5Ew-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_132939_048688_10B0C8B9 
X-CRM114-Status: GOOD (  24.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Prabhakar,

On Wed, Oct 30, 2019 at 1:47 PM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> On Wed, Oct 30, 2019 at 1:14 PM Ard Biesheuvel
> <ard.biesheuvel@linaro.org> wrote:
> >
> > On Wed, 30 Oct 2019 at 08:36, Prabhakar Kushwaha
> > <prabhakar.pkin@gmail.com> wrote:
> > >
> > > On Wed, Oct 30, 2019 at 12:43 PM Ard Biesheuvel
> > > <ard.biesheuvel@linaro.org> wrote:
> > > >
> > > > On Tue, 29 Oct 2019 at 18:17, Prabhakar Kushwaha
> > > > <prabhakar.pkin@gmail.com> wrote:
> > > > >
> > > > > Hi All,
> > > > >
> > > > > I am working on Ubuntu-18.04 with UEFI on ARM64(64 bit) platform. The
> > > > > UEFI used is having ACPI tables.
> > > > >
> > > > > I am trying to understand where and how /sys/firmware/fdt is getting
> > > > > created. is it created by UEFI or grub and passed to Linux?
> > > > >
> > > >
> > > > Neither. It is created by Linux itself.
> > > >
> > > >
> > > >
> > >
> > > Thanks Ard,
> > >
> > > Can you please point me the code where it is getting created.
> > > I want to add below in /sys/firmware/fdt.
> > >
> > > #size-cells = <0x02>;
> > > #address-cells = <0x02>;
> > >
> >
> > Actually, in your case it is GRUB not the kernel that creates the FDT.
> > It does this to pass the initrd information.
> >
> > So if you want to add these properties, you should add them there.
> >
> > Can you explain why doing this is necessary?
>
> I am trying to test kexec -p (kdump feature) on CentOS-release
> 7.7.1908 and Ubuntu-18.04 distributions.
>
>  "kexec -p" command show error on Ubuntu. While no error on CentOS
>
> CentOS:
> $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname
> -r`.img --reuse-cmdline
> $    ==> No error
>
> Ubuntu
> $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initrd.img-`uname
> -r` --reuse-cmdline
> $ kexec: elfcorehdr doesn't fit cells-size.
> $ kexec: setup_2nd_dtb failed.
> $ kexec: load failed.
> $ Cannot load /boot/vmlinuz-5.4.0-rc4+
>
> Note: Both CentOS and Ubuntu has Linux-5.4-rc4 tag.
>
> When i debugged further reason for Ubuntu error is due to
> address-cells and size-cells as "1"
> log from kexec tool :-
> load_crashdump_segments: elfcorehdr 0x7f7cbfc000-0x7f7cbff7ff
> read_1st_dtb: found name =dtb_sys  /sys/firmware/fdt
> get_cells_size: #address-cells:1 #size-cells:1
>
> On CentOS both values are "2".
> log from kexec tool :-
> load_crashdump_segments: elfcorehdr 0xbf98bf0000-0xbf98bf33ff
> read_1st_dtb: found nmae=dtb_sys /sys/firmware/fdt
> get_cells_size: #address-cells:2 #size-cells:2
>
> Note: Kexec tool read values from /sys/firmware/fdt.
>
> I am trying to figure out why 2 distributions showing different values.

There are a couple of things I can suggest:

1. Try to see if it is a kexec-tools specific issue or is the kernel
itself passed an incorrectly fixed DTB (by grub?) with incorrect
#address-cells and #size-cells values (in the past I have seen
kexec-tools sometimes reports incorrect #address-cells and #size-cells
values, but they should be fixed in the newer kexec-tools versions):

a). Can you check the kexec-tools version and share the same:
$ kexec -v

b). Using 'dtc' tool, you can confirm if it reports a correct
#address-cells and #size-cells values:
# dtc -I dtb -O dts /sys/firmware/fdt | grep cells | less

For e.g on my fedora arm64 system, it reports:
    #address-cells = <0x2>;
    #size-cells = <0x2>;

2a). If its not a kexec-tools specific issue, it is most probably a
bootloader (grub?) issue in your case:

For e.g. I use the following grub2 on my Fedora arm64 board:
<https://github.com/rhboot/grub2>
and <https://github.com/rhboot/grub2/blob/master/grub-core/loader/efi/fdt.c#L34>
contains the changes to send the correct #address-cells and
#size-cells values to Linux (and hence user-space tools like
kexec-tools later).

I believe the same grub2 is used (backported) for CentOS, so things
should be fine there.

2b). I see that the latest devel branch of ubuntu grub2
(<https://code.launchpad.net/ubuntu/+source/grub2>) also contains this
fix, but I am not sure which grub2 version you have on your ubuntu
machine.

But you can do some debugging on the same by stopping the boot process
on the grub prompt and debugging grub further to check the version and
fixes done in fdt there. See
<https://help.ubuntu.com/community/Grub2/Troubleshooting> for details.

Hope this helps.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
