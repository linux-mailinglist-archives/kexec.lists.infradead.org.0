Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FBF2ADE0
	for <lists+kexec@lfdr.de>; Mon, 27 May 2019 07:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjgWdHyPm1O8MtWlxYfP0ovNlpL7dZQsXI4APKfiRRw=; b=At3BkbHJD6e39x
	B7cN6QXHgU4zsey094hviWpDK6owjhKS+8Yfh/tlSZggQL0a+3ovjPH+V/kBsi9vWaofL0yDPjOKn
	dwq6aoBkLiWr0GUC0bfudwPTvjFIWSl6KROaI2h9FkLlL7yfmd+XXAM2lrDcdWIxAD9h05L0Pv7AV
	LgqMUgK+cVBJEq1kWnSHFfGgBQhpan0KOpYWfMqVh4LTpGicBXFTg2CLo8wVWntt5r1T9YWnOOTCF
	dd+B47NtnKQSaFyE9s+tj3T5Y+lRcAV3rQO7emtxOzAhXlT++zaLyli7jMxiooma6ImeC2U6Jndd5
	fYnHT6/8Tj/vehuSWOMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV7pH-0004id-Mi; Mon, 27 May 2019 05:05:35 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV7pE-0004i4-9L
 for kexec@lists.infradead.org; Mon, 27 May 2019 05:05:33 +0000
Received: by mail-it1-f193.google.com with SMTP id i63so22362873ita.3
 for <kexec@lists.infradead.org>; Sun, 26 May 2019 22:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fecGg/jgfxlMFonO7luUGh/bB0iD//wEkaV+M3q4RX0=;
 b=XvwlnoS80wVl90U3gZS6XKR2YfaIZnHeOKuemKyq2n5ZQykTExCYe5R08dpMtUu4ff
 zrIWTEukUQs9L7zPz+SA5QWsD1GQ8rN9v5mzdE6MYX1Wlj6HM9WFnb/HakuvPFGQ8hcw
 le1aRDrGL/QLYYIsJQiaDwweVaIH7LNLuIK7T6lOgECh9egaKu7iiH/O6Hajo3eFssHx
 d9TJp8ovCMHjN+Bzyi380PW0hy16DIpV84B1ZS5i5oXgOmVhoBBlufeV5Sfw82gLWQZs
 EoWgtNKZqMHn52nwSPyhcQHNgzMZknNK2vAdQBJC5PAnMVTHhY+hZ1Szn7KkR0HM2zkw
 dK5w==
X-Gm-Message-State: APjAAAUnkqlFdQ+ernE7h8nGRRl8okOm8Px5uIFKArLfFxHrntuA3viR
 UT6HbcXYRQ57Stxgqe1fKBuIdaJgtvbn8I6Z07neqA==
X-Google-Smtp-Source: APXvYqwcvPdCPk8AIJTPTsjfAvZ8f+sZfCQfXTM00cFHC0kZBGd/ZsBpfBgRTX83yFH2Q1m7gbhpZEMO6ZUuaBDBTJ0=
X-Received: by 2002:a24:7a90:: with SMTP id a138mr27452432itc.95.1558933531100; 
 Sun, 26 May 2019 22:05:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190524062922.26399-1-kasong@redhat.com>
 <20190524125456.GA3342@dhcp-128-65.nay.redhat.com>
 <CACi5LpNue+9GVafB-aYxhTNRWf6jbRk9O6Vq8BCQO3EHWrNnrw@mail.gmail.com>
In-Reply-To: <CACi5LpNue+9GVafB-aYxhTNRWf6jbRk9O6Vq8BCQO3EHWrNnrw@mail.gmail.com>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 27 May 2019 13:05:20 +0800
Message-ID: <CACPcB9eGujOmDMfez2dWUtt2s6K=bDp2PEDSKhY9NLu2pHpfvg@mail.gmail.com>
Subject: Re: [PATCH v3] vmcore: Add a kernel parameter vmcore_device_dump
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_220532_322934_AA4D3BEB 
X-CRM114-Status: GOOD (  30.39  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 2:45 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> On Fri, May 24, 2019 at 6:25 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 05/24/19 at 02:29pm, Kairui Song wrote:
> > > Since commit 2724273e8fd0 ("vmcore: add API to collect hardware dump in
> > > second kernel"), drivers is allowed to add device related dump data to
> > > vmcore as they want by using the device dump API. This have a potential
> > > issue, the data is stored in memory, drivers may append too much data
> > > and use too much memory. The vmcore is typically used in a kdump kernel
> > > which runs in a pre-reserved small chunk of memory. So as a result it
> > > will make kdump unusable at all due to OOM issues.
> > >
> > > So introduce new vmcore_device_dump= kernel parameter, and disable
> > > device dump by default. User can enable it only if device dump data is
> > > required for debugging, and have the chance to increase the kdump
> > > reserved memory accordingly before device dump fails kdump.
> > >
> > > Signed-off-by: Kairui Song <kasong@redhat.com>
> > >
> > > ---
> > >
> > >  Update from V2:
> > >   - Improve related docs
> > >
> > >  Update from V1:
> > >   - Use bool parameter to turn it on/off instead of letting user give
> > >     the size limit. Size of device dump is hard to determine.
> > >
> > >  Documentation/admin-guide/kernel-parameters.txt | 14 ++++++++++++++
> > >  fs/proc/Kconfig                                 |  6 ++++--
> > >  fs/proc/vmcore.c                                | 13 +++++++++++++
> > >  3 files changed, 31 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > index 138f6664b2e2..3706ad9e1d97 100644
> > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > @@ -5078,6 +5078,20 @@
> > >                       decrease the size and leave more room for directly
> > >                       mapped kernel RAM.
> > >
> > > +     vmcore_device_dump=     [KNL,KDUMP]
> > > +                     Format: {"off" | "on"}
> > > +                     Depends on CONFIG_PROC_VMCORE_DEVICE_DUMP.
> > > +                     This parameter allows enable or disable device dump
> > > +                     for vmcore on kernel start-up.
> > > +                     Device dump allows drivers to append dump data to
> > > +                     vmcore so you can collect driver specified debug info.
> > > +                     Note that the drivers could append the data without
> > > +                     any limit, and the data is stored in memory, this may
> > > +                     bring a significant memory stress. If you want to turn
> > > +                     on this option, make sure you have reserved enough memory
> > > +                     with crashkernel= parameter.
> > > +                     default: off
> > > +
> > >       vmcp_cma=nn[MG] [KNL,S390]
> > >                       Sets the memory size reserved for contiguous memory
> > >                       allocations for the vmcp device driver.
> > > diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
> > > index 817c02b13b1d..1a7a38976bb0 100644
> > > --- a/fs/proc/Kconfig
> > > +++ b/fs/proc/Kconfig
> > > @@ -56,8 +56,10 @@ config PROC_VMCORE_DEVICE_DUMP
> > >         recovery kernel's initramfs to collect its underlying device
> > >         snapshot.
> > >
> > > -       If you say Y here, the collected device dumps will be added
> > > -       as ELF notes to /proc/vmcore.
> > > +       If you say Y here, a new kernel parameter 'vmcore_device_dump'
> > > +       will be available. You can then enable device dump by passing
> >
> > "a new kernel parameter 'vmcore_device_dump' will be available" is not
> > necessary, "new" is a not a clear word.  I suggest to remove this
> > sentence.
> >
> > s/You can then/You can
>
> I agree with Dave. We are just trying to say here that even if
> CONFIG_PROC_VMCORE_DEVICE_DUMP is set to Y, one can still disable the
> device dump feature by passing parameter 'vmcore_device_dump=off' to
> the kernel.
>
> May be you can use the wording I mentioned in the v2 patch review,
> which tried to convey a similar meaning.
>
> With the change addressed:
> Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
>
> Thanks,
> Bhupesh
>
OK, How about:

  If you say Y here, device dump is still disabled by default.
  You can enable device dump by passing 'vmcore_device_dump=on'
  to kernel, the collected device dumps will be added as ELF
  notes to /proc/vmcore.

If you think this is good I'll send V4 including the changes.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
