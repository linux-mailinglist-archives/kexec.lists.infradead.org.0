Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4472BE88
	for <lists+kexec@lfdr.de>; Tue, 28 May 2019 07:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrlhkRJ/xfqlc3Xd33cG/bMAcvqeSmB9J5A3I+cqoFE=; b=exjJ8gLmuPnIPZ
	3aCVCa/bdv6d1WGGRsRVf67PPLL5JKxLPhShlGvHzZc84H5DP8yo9uzlNz52uYur8nmGY1LDegAbn
	ND2SS43NPC0OHPszux2zwtrFCdYyzvDsTOryWWPvRAjWdIEfTh0UNFxXjqBE2i99XEZ5l33kk5ifS
	wxDd+c4vUJ6iRjI7fJ/gy9O+Lj44kAKzJweU1xHs8Smi006/A+/sezoEsmaMI+A4iq6GimpLbOSTh
	zJxAPD+yyPad04CgS7gEHeSbYeMwEIqLMIh3FK8rtyEYCYqSlbfb31hBJnsI+dfDzYn0tHkLOyi2I
	r/7hqkQ26sxqB3CtF0Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVUV7-0003rz-Fe; Tue, 28 May 2019 05:18:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUV3-0003rA-F8
 for kexec@lists.infradead.org; Tue, 28 May 2019 05:18:14 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E244E300159E;
 Tue, 28 May 2019 05:18:11 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-84.pek2.redhat.com
 [10.72.12.84])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B2F8060C64;
 Tue, 28 May 2019 05:18:06 +0000 (UTC)
Date: Tue, 28 May 2019 13:18:02 +0800
From: Dave Young <dyoung@redhat.com>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH v3] vmcore: Add a kernel parameter vmcore_device_dump
Message-ID: <20190528051802.GA8195@dhcp-128-65.nay.redhat.com>
References: <20190524062922.26399-1-kasong@redhat.com>
 <20190524125456.GA3342@dhcp-128-65.nay.redhat.com>
 <CACi5LpNue+9GVafB-aYxhTNRWf6jbRk9O6Vq8BCQO3EHWrNnrw@mail.gmail.com>
 <CACPcB9eGujOmDMfez2dWUtt2s6K=bDp2PEDSKhY9NLu2pHpfvg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9eGujOmDMfez2dWUtt2s6K=bDp2PEDSKhY9NLu2pHpfvg@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 28 May 2019 05:18:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_221813_546825_DC113AB4 
X-CRM114-Status: GOOD (  36.34  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Bhupesh Sharma <bhsharma@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/27/19 at 01:05pm, Kairui Song wrote:
> On Mon, May 27, 2019 at 2:45 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > On Fri, May 24, 2019 at 6:25 PM Dave Young <dyoung@redhat.com> wrote:
> > >
> > > On 05/24/19 at 02:29pm, Kairui Song wrote:
> > > > Since commit 2724273e8fd0 ("vmcore: add API to collect hardware dump in
> > > > second kernel"), drivers is allowed to add device related dump data to
> > > > vmcore as they want by using the device dump API. This have a potential
> > > > issue, the data is stored in memory, drivers may append too much data
> > > > and use too much memory. The vmcore is typically used in a kdump kernel
> > > > which runs in a pre-reserved small chunk of memory. So as a result it
> > > > will make kdump unusable at all due to OOM issues.
> > > >
> > > > So introduce new vmcore_device_dump= kernel parameter, and disable
> > > > device dump by default. User can enable it only if device dump data is
> > > > required for debugging, and have the chance to increase the kdump
> > > > reserved memory accordingly before device dump fails kdump.
> > > >
> > > > Signed-off-by: Kairui Song <kasong@redhat.com>
> > > >
> > > > ---
> > > >
> > > >  Update from V2:
> > > >   - Improve related docs
> > > >
> > > >  Update from V1:
> > > >   - Use bool parameter to turn it on/off instead of letting user give
> > > >     the size limit. Size of device dump is hard to determine.
> > > >
> > > >  Documentation/admin-guide/kernel-parameters.txt | 14 ++++++++++++++
> > > >  fs/proc/Kconfig                                 |  6 ++++--
> > > >  fs/proc/vmcore.c                                | 13 +++++++++++++
> > > >  3 files changed, 31 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > > index 138f6664b2e2..3706ad9e1d97 100644
> > > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > > @@ -5078,6 +5078,20 @@
> > > >                       decrease the size and leave more room for directly
> > > >                       mapped kernel RAM.
> > > >
> > > > +     vmcore_device_dump=     [KNL,KDUMP]
> > > > +                     Format: {"off" | "on"}
> > > > +                     Depends on CONFIG_PROC_VMCORE_DEVICE_DUMP.
> > > > +                     This parameter allows enable or disable device dump
> > > > +                     for vmcore on kernel start-up.
> > > > +                     Device dump allows drivers to append dump data to
> > > > +                     vmcore so you can collect driver specified debug info.
> > > > +                     Note that the drivers could append the data without
> > > > +                     any limit, and the data is stored in memory, this may
> > > > +                     bring a significant memory stress. If you want to turn
> > > > +                     on this option, make sure you have reserved enough memory
> > > > +                     with crashkernel= parameter.
> > > > +                     default: off
> > > > +
> > > >       vmcp_cma=nn[MG] [KNL,S390]
> > > >                       Sets the memory size reserved for contiguous memory
> > > >                       allocations for the vmcp device driver.
> > > > diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
> > > > index 817c02b13b1d..1a7a38976bb0 100644
> > > > --- a/fs/proc/Kconfig
> > > > +++ b/fs/proc/Kconfig
> > > > @@ -56,8 +56,10 @@ config PROC_VMCORE_DEVICE_DUMP
> > > >         recovery kernel's initramfs to collect its underlying device
> > > >         snapshot.
> > > >
> > > > -       If you say Y here, the collected device dumps will be added
> > > > -       as ELF notes to /proc/vmcore.
> > > > +       If you say Y here, a new kernel parameter 'vmcore_device_dump'
> > > > +       will be available. You can then enable device dump by passing
> > >
> > > "a new kernel parameter 'vmcore_device_dump' will be available" is not
> > > necessary, "new" is a not a clear word.  I suggest to remove this
> > > sentence.
> > >
> > > s/You can then/You can
> >
> > I agree with Dave. We are just trying to say here that even if
> > CONFIG_PROC_VMCORE_DEVICE_DUMP is set to Y, one can still disable the
> > device dump feature by passing parameter 'vmcore_device_dump=off' to
> > the kernel.
> >
> > May be you can use the wording I mentioned in the v2 patch review,
> > which tried to convey a similar meaning.
> >
> > With the change addressed:
> > Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
> >
> > Thanks,
> > Bhupesh
> >
> OK, How about:
> 
>   If you say Y here, device dump is still disabled by default.
>   You can enable device dump by passing 'vmcore_device_dump=on'
>   to kernel, the collected device dumps will be added as ELF
>   notes to /proc/vmcore.
> 
> If you think this is good I'll send V4 including the changes.

Kairui, looks good.

rethink about it, to be even simple, just replace the __setup with core_param like
crash_kexec_post_notifiers, no need on/off. 

> 
> -- 
> Best Regards,
> Kairui Song

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
