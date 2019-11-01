Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE447EBD55
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 06:46:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ytp3+awhowVygOyjCdDid5ns35V7tXYnd6ajklF0yLs=; b=D0nDC0KXEwoKMc
	NFAlRdQjEMaIzqE3wUYt0tLV+g7aL82StlZDfhhfN4IDPHZVnU2H36r+hTVEa1cqzLajKwWWG1w4D
	d02s9v6WNVW0QI0XwsNU/GRRSM+sgIlJYBtpEfnvAQncJ3RDIS8QlV8m0ZzPtkQidu9WYPZIEQCax
	WRsoPyEuBEYiIzzvyTonFEXHP5flfwtkd2NnNLfrwiU+ILNpfWMlU5bg/0cdD5CRg65vh1gMRFgb9
	8d8pTzsKD55vj7HtFU7DuI4F7Gmjf5gO11PqFTAblgnCTdCFG8p3thzKAta9rmkz89Zff50u/Obdb
	V9EDzXxtzrh583dvfhuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQPlp-0004GQ-Ca; Fri, 01 Nov 2019 05:46:49 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQPll-0004Ft-E6
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 05:46:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572587203;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XaJGSz0mp1SkeH12p2j9KDR8NbBX8h3oYRvPVte5sH8=;
 b=Ko0a1EnqkNfSWaFdyXSGjWPmJzTDMCJ9WuvqYz3mNZvr6Xr9a31OFokSXtT0vVoYbgUGpt
 9f8wmEJljDccPU/VQBGMR0g8fna7m/WeyVovSN1I0GXAMzEWi+aae0fygWD1lHmffLpvJy
 1JiBYfJWHcVd0PJetq+A/RQnOYpDjsw=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-223-tH4LzHtUM2yuydQCkys4lQ-1; Fri, 01 Nov 2019 01:46:41 -0400
Received: by mail-lj1-f199.google.com with SMTP id x5so1472424ljh.9
 for <kexec@lists.infradead.org>; Thu, 31 Oct 2019 22:46:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=REwA1azyMGrC2ZMocUpVzBCb9hiqitGyotNMgpc/Ezw=;
 b=P5rTM/zeEfrH4pQeHzcZTjWy4dYaTc3nHF62Ii+abt3gkVlb++ctNQD7gwGgh0xNbi
 hZGwnLnn7gFAMHIl388idEps74UwbSFkgu+jdiggaG6iWA4jn/laU7/tR+Z2vUvtUe1z
 sZ2Xc7fgiLPK29G/x9gHNVWpjGoxjdQYA33KvRQNFUoR93fbcRYDPHItGCEeJk/eLCTw
 9pUzl5SN7euc6cFNgYBqa6Lp5QTPP03Cv8qWIxPV/roDMwO0ZcHcV47sySd8bkRCEJbE
 hf1WBoACqWvDjwdXXU9Cmb9EmC7XgJESIE+poixIxc36tFpyJEoHr0ZssVG90UEHEY3p
 HYIw==
X-Gm-Message-State: APjAAAX77XsdfvvtbYrrT+4c9VtTWgeTNuhHdMfI4n6Jqt3lq5SBVdRA
 rYkmkAcmaqQ8+U3Vrqz8886724F29pZJXEcqIG2x+kNI5y7ocihD6A7bVLFdCslWTc/sw1KQAb4
 h2ZJoI4Zgfwgc0dWlHP2MukhZ2EVBzPd5/9mF
X-Received: by 2002:a19:ac04:: with SMTP id g4mr6139209lfc.63.1572587200099;
 Thu, 31 Oct 2019 22:46:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdy5nTZ4ebYbgzP1xlopJUaH4OmSSUke0QD3UxA5HfQ4NvWwsuqvD3mYlSrADdlPHwdznKrPSpetF+UQrPm2Y=
X-Received: by 2002:a19:ac04:: with SMTP id g4mr6139197lfc.63.1572587199791;
 Thu, 31 Oct 2019 22:46:39 -0700 (PDT)
MIME-Version: 1.0
References: <ae74bb79-a68e-a319-f61c-5b93fd70ae59@gmail.com>
 <CAKv+Gu8oUfSfMLW17QOwBCrrn+3AggHND6b0KZWfB=Npo9d8Hw@mail.gmail.com>
 <CAJ2QiJLOE8D_Cf8ysRzv2oJ=+Bv1scpQCUX0yK=_zxjm6Rr6ow@mail.gmail.com>
 <CAKv+Gu981sk=GifDZbB-c-QYYP84RweHSmPQFkLPis1UDgrhAg@mail.gmail.com>
 <CAJ2QiJJ4KKYGiEU2P_wuY3E0Q-FJm4LiNu+1jbOJoO84W_FDJw@mail.gmail.com>
 <CACi5LpPQcvvb-Tymdy6KVCfJKfBSGWNyNXifpccXncGvZ15itA@mail.gmail.com>
 <CAJ2QiJJHkc3=pVjNNnwSWb2ONPsiagbrt2U3Q24WEVAnE8=r_Q@mail.gmail.com>
In-Reply-To: <CAJ2QiJJHkc3=pVjNNnwSWb2ONPsiagbrt2U3Q24WEVAnE8=r_Q@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Fri, 1 Nov 2019 11:16:26 +0530
Message-ID: <CACi5LpNK3ZivYMzftoVPw41R5RazktspPxm93GL+1xTRR_rUmg@mail.gmail.com>
Subject: Re: [edk2-devel] How /sys/firmware/fdt getting created
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-MC-Unique: tH4LzHtUM2yuydQCkys4lQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_224645_559496_5EBB9203 
X-CRM114-Status: GOOD (  30.69  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
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


On Fri, Nov 1, 2019 at 10:22 AM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Hi Bhupesh,
>
> On Fri, Nov 1, 2019 at 1:59 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > Hi Prabhakar,
> >
> > On Wed, Oct 30, 2019 at 1:47 PM Prabhakar Kushwaha
> > <prabhakar.pkin@gmail.com> wrote:
> > >
> > > On Wed, Oct 30, 2019 at 1:14 PM Ard Biesheuvel
> > > <ard.biesheuvel@linaro.org> wrote:
> > > >
> > > > On Wed, 30 Oct 2019 at 08:36, Prabhakar Kushwaha
> > > > <prabhakar.pkin@gmail.com> wrote:
> > > > >
> > > > > On Wed, Oct 30, 2019 at 12:43 PM Ard Biesheuvel
> > > > > <ard.biesheuvel@linaro.org> wrote:
> > > > > >
> > > > > > On Tue, 29 Oct 2019 at 18:17, Prabhakar Kushwaha
> > > > > > <prabhakar.pkin@gmail.com> wrote:
> > > > > > >
> > > > > > > Hi All,
> > > > > > >
> > > > > > > I am working on Ubuntu-18.04 with UEFI on ARM64(64 bit) platform. The
> > > > > > > UEFI used is having ACPI tables.
> > > > > > >
> > > > > > > I am trying to understand where and how /sys/firmware/fdt is getting
> > > > > > > created. is it created by UEFI or grub and passed to Linux?
> > > > > > >
> > > > > >
> > > > > > Neither. It is created by Linux itself.
> > > > > >
> > > > > >
> > > > > >
> > > > >
> > > > > Thanks Ard,
> > > > >
> > > > > Can you please point me the code where it is getting created.
> > > > > I want to add below in /sys/firmware/fdt.
> > > > >
> > > > > #size-cells = <0x02>;
> > > > > #address-cells = <0x02>;
> > > > >
> > > >
> > > > Actually, in your case it is GRUB not the kernel that creates the FDT.
> > > > It does this to pass the initrd information.
> > > >
> > > > So if you want to add these properties, you should add them there.
> > > >
> > > > Can you explain why doing this is necessary?
> > >
> > > I am trying to test kexec -p (kdump feature) on CentOS-release
> > > 7.7.1908 and Ubuntu-18.04 distributions.
> > >
> > >  "kexec -p" command show error on Ubuntu. While no error on CentOS
> > >
> > > CentOS:
> > > $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initramfs-`uname
> > > -r`.img --reuse-cmdline
> > > $    ==> No error
> > >
> > > Ubuntu
> > > $ kexec -p /boot/vmlinuz-`uname -r` --initrd=/boot/initrd.img-`uname
> > > -r` --reuse-cmdline
> > > $ kexec: elfcorehdr doesn't fit cells-size.
> > > $ kexec: setup_2nd_dtb failed.
> > > $ kexec: load failed.
> > > $ Cannot load /boot/vmlinuz-5.4.0-rc4+
> > >
> > > Note: Both CentOS and Ubuntu has Linux-5.4-rc4 tag.
> > >
> > > When i debugged further reason for Ubuntu error is due to
> > > address-cells and size-cells as "1"
> > > log from kexec tool :-
> > > load_crashdump_segments: elfcorehdr 0x7f7cbfc000-0x7f7cbff7ff
> > > read_1st_dtb: found name =dtb_sys  /sys/firmware/fdt
> > > get_cells_size: #address-cells:1 #size-cells:1
> > >
> > > On CentOS both values are "2".
> > > log from kexec tool :-
> > > load_crashdump_segments: elfcorehdr 0xbf98bf0000-0xbf98bf33ff
> > > read_1st_dtb: found nmae=dtb_sys /sys/firmware/fdt
> > > get_cells_size: #address-cells:2 #size-cells:2
> > >
> > > Note: Kexec tool read values from /sys/firmware/fdt.
> > >
> > > I am trying to figure out why 2 distributions showing different values.
> >
> > There are a couple of things I can suggest:
> >
> > 1. Try to see if it is a kexec-tools specific issue or is the kernel
> > itself passed an incorrectly fixed DTB (by grub?) with incorrect
> > #address-cells and #size-cells values (in the past I have seen
> > kexec-tools sometimes reports incorrect #address-cells and #size-cells
> > values, but they should be fixed in the newer kexec-tools versions):
> >
> > a). Can you check the kexec-tools version and share the same:
> > $ kexec -v
> >
> > b). Using 'dtc' tool, you can confirm if it reports a correct
> > #address-cells and #size-cells values:
> > # dtc -I dtb -O dts /sys/firmware/fdt | grep cells | less
> >
> > For e.g on my fedora arm64 system, it reports:
> >     #address-cells = <0x2>;
> >     #size-cells = <0x2>;
> >
> > 2a). If its not a kexec-tools specific issue, it is most probably a
> > bootloader (grub?) issue in your case:
> >
> > For e.g. I use the following grub2 on my Fedora arm64 board:
> > <https://github.com/rhboot/grub2>
> > and <https://github.com/rhboot/grub2/blob/master/grub-core/loader/efi/fdt.c#L34>
> > contains the changes to send the correct #address-cells and
> > #size-cells values to Linux (and hence user-space tools like
> > kexec-tools later).
> >
> > I believe the same grub2 is used (backported) for CentOS, so things
> > should be fine there.
> >
> > 2b). I see that the latest devel branch of ubuntu grub2
> > (<https://code.launchpad.net/ubuntu/+source/grub2>) also contains this
> > fix, but I am not sure which grub2 version you have on your ubuntu
> > machine.
> >
>
> Ubuntu 18.04 has grub 2.02. When i migrated to grub 2.05, this issue
> is not there.
> Most probably the patch which is mentioned by Laszlo done the fix.
>
> http://git.savannah.gnu.org/cgit/grub.git/commit/?id=347210a5d5ce655b95315f320faa515afb723c11

That's good news. I am also glad its not a kexec-tools issues which I
need to fix :)
Thanks for sharing the update.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
