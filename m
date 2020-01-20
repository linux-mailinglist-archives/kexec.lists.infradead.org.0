Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A168142E96
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 16:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n1IHnGz2wZqCXJbkWB3mQctY2bVc9uA6deyIVJoGdo0=; b=DeGDh3CA6R7fF3
	WWtYR2zDinsONT6IZFyI0xJffc/vBrNrHzACHl3kLvoMZQ7M75kI9eqBtlhKAhxfDiGVr0zZup2Ed
	PSr102+j+5HRwLleaCiyzq3uQWN7NYJy6zRwB5t17HeB7qz/o0TQi/JKw53K30Pm17eayCqi8Fudx
	I176suGkQj3d4v6EBtS1xFAKBXmjVls77+urL6IfnRgAEaYFrg2Folk7AsulBHln3I+08qcoiD63y
	SUBtxMJoVzv/a2nDYdpj4MYD1j9Ne6jQ2UPl61cm4T40+RVzoiZpv/i5R/XWvb+/GzqP/hcfkpMWQ
	eHU3/t6iVeoO4M4WVlLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYls-0000sF-As; Mon, 20 Jan 2020 15:15:20 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYlk-0000qu-2g
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 15:15:18 +0000
Received: by mail-wm1-x344.google.com with SMTP id w5so120424wmi.1
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 07:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=aRbyydfpzJdxY89pJ4IJKGk5YfDIexIm5y05o2xxsVY=;
 b=jdf4Wi5zBBPuIxZznRhyPkdNwyaYJ5l+YSU2f4SoZdVlbq7q2lCF0r0JfiAPASElHd
 i/ahqW/vzER5rUfXMl3yPHwGthok5qDLhui3yJ2HsYeAD8qllM6Wu6MGqwD3Yet33NZ9
 ne61peF83fFgVxLBuSloXC3KHRDqMeIDmHLIAdlQOPVYfimTwhburtMMFVFXYuoqS+wG
 HdH1NF7W4MFgyEahtSuSBhohErlD7enfjGh+cF2mTcUhW2BRnxq78WInRHQTc+JM/5ln
 8DdKFd4HhpoXcQyP1fNmGrEKio3jL/4py8s07GrVi2LdW3WdOZx66aiRabpgNTf8dZxj
 FeMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aRbyydfpzJdxY89pJ4IJKGk5YfDIexIm5y05o2xxsVY=;
 b=h96epIsq8HJk3r1q3Bbw5Lcq29d5XWjA7Ir0M92aQ/PtaA2qF634PdNDhBjmq4ZH4E
 ybOrDJMqUARdOkDpfmcEOqp31tm3bou6SsvwRJCIKcysZ4XxQsEcx1pALZI9DczqsQrR
 97nlr+T5vfto4oS8cKOHaczL4p+xhhDDBowEruZDPYAIQZcFKezF9iWMjF9d0U5383qH
 FWqNJIIW7xY6xN77GtTbOEF5RwzQOuRcD+xvH5bBCktSiyEpWgXd2kbzFAoyGUZ1a5Bq
 1+WYTo1DQZl2jUBwtmr/VdiA4avl2i6EPj3g+ZQAVm6JbYGQxZvs8fNZYyxtL40HwrE2
 ZrFg==
X-Gm-Message-State: APjAAAXXGUjFBkl06o6QvIN1eNjar7o6xdhtRpCXYKL0KXr73z0Oj89m
 oPxbI1k3X36ibvgpG41XGumpBltS/jp85vHQnYA=
X-Google-Smtp-Source: APXvYqwvcXoWZ6ivDE41S3/pWBvBXrtuPJcPcKddEYnlz6z3jnMd3Z3YcarEv3RFjZaUOAIdwZfRIrxUTbmq6lfxt7w=
X-Received: by 2002:a05:600c:24d1:: with SMTP id
 17mr19310874wmu.188.1579533309890; 
 Mon, 20 Jan 2020 07:15:09 -0800 (PST)
MIME-Version: 1.0
References: <CAJ2QiJ+MVVztHONagmYc2-BzbtdGQhABRKO7h4+kOE9cCK=CxA@mail.gmail.com>
 <20200110002638.GA50413@google.com>
 <CAJ2QiJL+eTTX2DjmCFLbCfe1oaGS3Y5Dy0NfBxfpHT2YPGwOSQ@mail.gmail.com>
In-Reply-To: <CAJ2QiJL+eTTX2DjmCFLbCfe1oaGS3Y5Dy0NfBxfpHT2YPGwOSQ@mail.gmail.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 20 Jan 2020 20:44:33 +0530
Message-ID: <CAJ2QiJJfVk_wb3Zk50+xWK4wKPBU7C-80RX4SJJRN5GX=36Rdg@mail.gmail.com>
Subject: Re: kexec -e not working: root disk not able to detect
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_071512_125170_FB6097A8 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 linux-pci@vger.kernel.org, kexec mailing list <kexec@lists.infradead.org>,
 linux-ide@vger.kernel.org, Kamlakant Patel <kamlakantp@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 10:28 AM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> [Re sending keeping mailing list and others in CC]
>
> On Fri, Jan 10, 2020 at 5:56 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
> > [+cc Jens, ahci.c maintainer]
> >
> > On Mon, Jan 06, 2020 at 05:24:44PM +0530, Prabhakar Kushwaha wrote:
> > > Hi All,
> > >
> > > I am trying kexec -e with latest kernel i.e. Linux-5.5.0-rc4.  Here
> > > second kernel is not able to detect/mount hard-disk having root file
> > > system (INTEL SSDSC2BB240G7).
> > >
> > > [  279.690575] ata1: softreset failed (1st FIS failed)
> > > [  279.695446] ata1: limiting SATA link speed to 3.0 Gbps
> > > [  280.910020] ata1: SATA link down (SStatus 0 SControl 320)
> > > [  282.626018] ata1: SATA link down (SStatus 0 SControl 300)
> > > [  282.631409] ata1: link online but 1 devices misclassified, retrying
> > > [  282.637665] ata1: reset failed (errno=-11), retrying in 9 secs
> > > [  298.294546] ata1: failed to reset engine (errno=-5)
> > > [  302.042967] ata1: softreset failed (1st FIS failed)
> > > [  308.798609] ata1: failed to reset engine (errno=-5)
> > > [  337.546605] ata1: softreset failed (1st FIS failed)
> > > [  337.551475] ata1: limiting SATA link speed to 3.0 Gbps
> > > [  338.766022] ata1: SATA link down (SStatus 0 SControl 320)
> > > [  339.270943] ata1: EH pending after 5 tries, giving up
> > >
> > > I found following two workaround for this issue.
> > > A) Define ".shutdown" in driver/ata/ahci.c.
> > >
> > > reboot --> kernel_kexec() --> kernel_restart_prepare() -->
> > > device_shutdown() --> pci_device_shutdown() --> ahci_shutdown_one()
> > > --> new function
> > >
> > > diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
> > > index 4bfd1b14b390..50a101002885 100644
> > > --- a/drivers/ata/ahci.c
> > > +++ b/drivers/ata/ahci.c
> > > @@ -81,6 +81,7 @@ enum board_ids {
> > >
> > >  static int ahci_init_one(struct pci_dev *pdev, const struct
> > > pci_device_id *ent);
> > >  static void ahci_remove_one(struct pci_dev *dev);
> > >  +static void ahci_shutdown_one(struct pci_dev *dev);
> > >  static int ahci_vt8251_hardreset(struct ata_link *link, unsigned int *class,
> > >                                   unsigned long deadline);
> > >   static int ahci_avn_hardreset(struct ata_link *link, unsigned int *class,
> > >  @@ -606,6 +607,7 @@ static struct pci_driver ahci_pci_driver = {
> > >          .id_table               = ahci_pci_tbl,
> > >          .probe                  = ahci_init_one,
> > >          .remove                 = ahci_remove_one,
> > >  +       .shutdown               = ahci_shutdown_one,
> > >          .driver = {
> > >                  .pm             = &ahci_pci_pm_ops,
> > >          },
> > >
> > >  +static void ahci_shutdown_one(struct pci_dev *pdev)
> > >  +{
> > >  +       pm_runtime_get_noresume(&pdev->dev);
> > >  +       ata_pci_remove_one(pdev);
> > >  +}
> > >  +
> > > Note: After defining shutdown, error related to file-system write
> > > seen. Looks like even after device_shutdown, file system related
> > > transaction goes to disk.
> > >
> > > B)) Commenting of pci_clear_master() from pci_device_shutdown()
> > > reboot --> kernel_kexec() --> kernel_restart_prepare() -->
> > > device_shutdown() --> pci_device_shutdown()
> > >
> > > diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> > > index 0454ca0e4e3f..ddffaa9321bb 100644
> > > --- a/drivers/pci/pci-driver.c
> > > +++ b/drivers/pci/pci-driver.c
> > > @@ -481,8 +481,10 @@ static void pci_device_shutdown(struct device *dev)
> > >         /*
> > >          * If this is a kexec reboot, turn off Bus Master bit on the
> > > @@ -491,8 +493,16 @@ static void pci_device_shutdown(struct device *dev)
> > >          * If it is not a kexec reboot, firmware will hit the PCI
> > >          * devices with big hammer and stop their DMA any way.
> > >          */
> > >
> > >  - if (kexec_in_progress && (pci_dev->current_state <= PCI_D3hot))
> > >  -                pci_clear_master(pci_dev);
> >
> > I doubt we would remove this without a much clearer justification.
> >
> > > Here pci_dev current_state. It is "0" i.e. D0.
> > >
> > > From A and B. Looks like even after pci_clear_master(), Some DMA
> > > transactions going on PCIe device  causing device in unstable.
> > > Not sure if this is the reason and how to solve this problem.
> >
> > Is it possible the ahci driver depends on receiving the device with
> > bus mastering already enabled?  I would guess that would be the common
> > case in a non-kexec boot -- the BIOS probably hands off the device
> > with bus mastering enabled.
> >
>
> Above code clearing Bus Master. May be it try to make sure that next
> kernel get PCIe in same state in which BIOS could have provided.
> Not sure why this is causing issue in our case. Need to debug more.
>

I added more prints and added stack dump in ata_scsi_queuecmd().
I found that lots of  syscall __arm64_sys_fsync() happens for file
system sync during kexec -e. These calls happens even after clearing
PCIe Bus Master i.e. "M" bit.
This should not happen as it may unstable SATA. I believe this is the
reason second kernel is not able to detect SATA hard-disk.
Note: This behavior is random, sometime working code start showing
this error.  Also different Linux tags(5.5-RC4, 5.5-RC6, 5.5-RC7) have
different behavior on our platform (ARM64 Thunder X2).

Once PCIe Bust Master i.e. "M" bit is cleared,
a) either file system sysnc should not happen
b) or no transaction should go on SATA.

Please suggest how to avoid "a". once "M" bit cleared.

for "b",  should setting port flag as ATA_PFLAG_FROZEN be enough in
driver/ata/ahci.c?
ap->pflags |= ATA_PFLAG_FROZEN;

Please suggest..

--pk

[  126.025134] ata_scsi_queuecmd 4393: dump
[  126.029052] CPU: 42 PID: 3144 Comm: journal-offline Not tainted
5.5.0-rc6+ #110
[  126.036346] Hardware name: Cavium Inc. Saber/Saber, BIOS
TX2-FW-Release-7.4-build_05 08/24/2019
[  126.045029] Call trace:
[  126.047463]  dump_backtrace+0x0/0x1f8
[  126.051112]  show_stack+0x24/0x30
[  126.054414]  dump_stack+0xbc/0x104
[  126.057802]  ata_scsi_queuecmd+0x30c/0x338
[  126.061886]  scsi_queue_rq+0x80c/0xb70
[  126.065623]  blk_mq_dispatch_rq_list+0xac/0x688
[  126.070140]  blk_mq_do_dispatch_sched+0x6c/0x110
[  126.074744]  blk_mq_sched_dispatch_requests+0x130/0x220
[  126.079956]  __blk_mq_run_hw_queue+0x98/0x160
[  126.084300]  __blk_mq_delay_run_hw_queue+0x188/0x1c8
[  126.089250]  blk_mq_run_hw_queue+0x5c/0x110
[  126.093421]  blk_mq_sched_insert_requests+0x90/0x168
[  126.098372]  blk_mq_flush_plug_list+0x1ac/0x308
[  126.102889]  blk_flush_plug_list+0xdc/0x110
[  126.107059]  blk_finish_plug+0x3c/0x228
[  126.110883]  ext4_writepages+0x460/0xbd8
[  126.114793]  do_writepages+0x5c/0x108
[  126.118442]  __filemap_fdatawrite_range+0x128/0x180
[  126.123306]  file_write_and_wait_range+0x94/0xf8
[  126.127910]  ext4_sync_file+0x11c/0x460
[  126.131732]  vfs_fsync_range+0x4c/0x88
[  126.135468]  do_fsync+0x48/0x78
[  126.138596]  __arm64_sys_fsync+0x24/0x38
[  126.142506]  el0_svc_common.constprop.2+0x78/0x168
[  126.147283]  el0_svc_handler+0x34/0xa0
[  126.151019]  el0_sync_handler+0xe4/0x188
[  126.154928]  el0_sync+0x164/0x180
[  126.158241] :__ata_scsi_queuecmd 4321
[  126.161893] ata_scsi_translate 1999
[  126.165368] ten-byte command
[  126.168236] ahci_pmp_qc_defer 1678
[  126.171624] ahci_qc_prep 1696
[  126.174577] ahci_fill_sg 1655
[  126.177532] ahci_qc_issue 2058
[  126.180572] EXIT

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
