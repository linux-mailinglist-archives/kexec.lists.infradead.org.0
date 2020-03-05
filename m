Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3DA179EBF
	for <lists+kexec@lfdr.de>; Thu,  5 Mar 2020 05:53:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mMm3p2bRD/4b35IUIl5NiIOXs+eaJ4qzdLPNU4spiV8=; b=q3PYv3sJn/nDu+
	tg2N5x7ImwUg+II/kJC07GTYakBx11AxbNNqipK9fChIVotfTdv+vmdbUzicmO+/iHIY7H4BURC1C
	Phb732vwwrAgVlnLdX7o3rh9xlz+WEVDW/asL/Psh1FSxKVzkslk1L7TkkZzbJGkdMUgy+WuX2oW9
	WWxITAaro9xEW2mT8RYWdsDaDYRV4j2VhLT0xirW+DsQE/0TIMgr77YlYadmbUl9QJsUjGE2Bfv10
	4mNFQaPKYdfwOBu+cFwJ9Lw6uM52a4sI2u+DiQU3hY9kHd/s5OUqCYfAyN9EBcUbQMi896QrFkITM
	PiSo9xVj0DsfFzFNTtFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9iW0-0001W1-Ts; Thu, 05 Mar 2020 04:53:44 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9iVx-0001V5-Ut
 for kexec@lists.infradead.org; Thu, 05 Mar 2020 04:53:43 +0000
Received: by mail-io1-xd43.google.com with SMTP id w9so5010092iob.12
 for <kexec@lists.infradead.org>; Wed, 04 Mar 2020 20:53:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ijl3mOJKjXQOlvfNdI9J8WHV9omrENAd5cs2bOM6kiw=;
 b=Md4ocL49tyh2taM4R+ydAETsDonhCdHdH91uX9e4oi/Smwy1T1bHdZtXo7pzLeKUlE
 ATgUMwec8xfNgs5wZ9tS84sDUDhEToc97J4DZerin2iZrSMMAhcxvbF/9ENyfBsNsafY
 yz94ZWfU7TIs8zo9/UBF6u5ojhc8bdHjSnD0e+FdhwM3Osjj3y3414ubipw/nhkrYbBI
 MMcTqCF21Ez4VEwoCYUC80WTIWDvErT+VcgO4lzV+XTvsr9PkEzOXASMarW3Rh9XIqAv
 5pcFUzaSqJ6l25COcDCNqZdTAAu27JXSDDhWQhHCzoxrM74HmRDTlNXnOTitQprHYfMO
 Ie8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ijl3mOJKjXQOlvfNdI9J8WHV9omrENAd5cs2bOM6kiw=;
 b=kwc2ZOpPbC/5seoZge3BsIdFQiyOdy9MdYZGriTB5HKrIMtT53m0+JWlVRklXC+LA1
 yNgkamXLklB3z7DcGiC3YGjufZXojKHR6Q6DFEZz6WpyTCsSLXTYkhgW9Y9iO/aEc8Pu
 CCtDh6OttBRj8olPPQZ+Gql32cg5/znvTOOppo+Hetb4maqWNG5JxC/juKcgs0yfX9nj
 2q0W1/fg6E1r9fUsJovf5pVGIJL0ez54W7FQ2Ie4KeOhUWeNguqicf/AqFfofFkQPryi
 F2MnaFBA/y8Wo2m9bCAmSgA08HUttHhXgfUKfvi6pj1fd5zTlgsNZs2qrrMVU3xdA9d4
 0A1g==
X-Gm-Message-State: ANhLgQ1iAKtZxkUXkcQXKAvbLc3jUwKQxDhxFSxoQ7Qe7zaALfkOBcsY
 I3n2RAFoCmL9lgjYVXMbd3wxI99AdCfwuayFXeQ=
X-Google-Smtp-Source: ADFU+vuq6eqf96IMDiQ869G5MxukNh9n60xtQc2dcMWAjz+WKZ9cLXTJ3kImJCw+Y0lBl/Xjt5lf4D8rfuGWtJI2Xwo=
X-Received: by 2002:a02:cc84:: with SMTP id s4mr5976154jap.5.1583384020211;
 Wed, 04 Mar 2020 20:53:40 -0800 (PST)
MIME-Version: 1.0
References: <20191225192118.283637-1-kasong@redhat.com>
 <20200222165631.GA213225@google.com>
 <CACPcB9dv1YPhRmyWvtdt2U4g=XXU7dK4bV4HB1dvCVMTpPFdzA@mail.gmail.com>
 <CABeXuvqm1iUGt1GWC9eujuoaACdPiZ2X=3LjKJ5JXKZcXD_z_g@mail.gmail.com>
 <CABeXuvonZpwWfcUef4PeihTJkgH2ZC_RCKuLR3rH3Re4hx36Aw@mail.gmail.com>
 <20200305035329.GD4433@MiWiFi-R3L-srv>
In-Reply-To: <20200305035329.GD4433@MiWiFi-R3L-srv>
From: Deepa Dinamani <deepa.kernel@gmail.com>
Date: Wed, 4 Mar 2020 20:53:29 -0800
Message-ID: <CABeXuvogFGv8-i4jsJYN5ya0hjf35EXLkmPqYWayDUvXaBKidA@mail.gmail.com>
Subject: Re: [RFC PATCH] PCI, kdump: Clear bus master bit upon shutdown in
 kdump kernel
To: Baoquan He <bhe@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_205342_021406_F41BD8F2 
X-CRM114-Status: GOOD (  19.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [deepa.kernel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: jroedel@suse.de, Kairui Song <kasong@redhat.com>,
 Myron Stowe <myron.stowe@redhat.com>, linux-pci@vger.kernel.org,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Randy Wright <rwright@hpe.com>, Jerry Hoemann <jerry.hoemann@hpe.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Dave Young <dyoung@redhat.com>,
 Khalid Aziz <khalid@gonehiking.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Mar 4, 2020 at 7:53 PM Baoquan He <bhe@redhat.com> wrote:
>
> +Joerg to CC.
>
> On 03/03/20 at 01:01pm, Deepa Dinamani wrote:
> > I looked at this some more. Looks like we do not clear irqs when we do
> > a kexec reboot. And, the bootup code maintains the same table for the
> > kexec-ed kernel. I'm looking at the following code in
>
> I guess you are talking about kdump reboot here, right? Kexec and kdump
> boot take the similar mechanism, but differ a little.

Right I meant kdump kernel here. And, clearly the is_kdump_kernel() case below.

>
> > intel_irq_remapping.c:
> >
> >         if (ir_pre_enabled(iommu)) {
> >                 if (!is_kdump_kernel()) {
> >                         pr_warn("IRQ remapping was enabled on %s but
> > we are not in kdump mode\n",
> >                                 iommu->name);
> >                         clear_ir_pre_enabled(iommu);
> >                         iommu_disable_irq_remapping(iommu);
> >                 } else if (iommu_load_old_irte(iommu))
>
> Here, it's for kdump kernel to copy old ir table from 1st kernel.

Correct.

> >                         pr_err("Failed to copy IR table for %s from
> > previous kernel\n",
> >                                iommu->name);
> >                 else
> >                         pr_info("Copied IR table for %s from previous kernel\n",
> >                                 iommu->name);
> >         }
> >
> > Would cleaning the interrupts(like in the non kdump path above) just
> > before shutdown help here? This should clear the interrupts enabled
> > for all the devices in the current kernel. So when kdump kernel
> > starts, it starts clean. This should probably help block out the
> > interrupts from a device that does not have a driver.
>
> I think stopping those devices out of control from continue sending
> interrupts is a good idea. While not sure if only clearing the interrupt
> will be enough. Those devices which will be initialized by their driver
> will brake, but devices which drivers are not loaded into kdump kernel
> may continue acting. Even though interrupts are cleaning at this time,
> the on-flight DMA could continue triggerring interrupt since the ir
> table and iopage table are rebuilt.

This should be handled by the IOMMU, right? And, hence you are getting
UR. This seems like the correct execution flow to me.

Anyway, you could just test this theory by removing the
is_kdump_kernel() check above and see if it solves your problem.
Obviously, check the VT-d spec to figure out the exact sequence to
turn off the IR.

Note that the device that is causing the problem here is a legit
device. We want to have interrupts from devices we don't know about
blocked anyway because we can have compromised firmware/ devices that
could cause a DoS attack. So blocking the unwanted interrupts seems
like the right thing to do here.

-Deepa

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
