Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3446C27B52
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 13:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxMiyFPtfEb+Iw4tzJEgTjcdXhmN9U4HSqgzCNRaxJI=; b=WERGbW6qlcwtMo
	6Ynq1g2G9pFem4OvyCC09J6zzjUTj5XRIPymC1K+eKwZc6y+opmE8DBUVdbGZu9U2uIo39JCEMh8n
	WOiQIkJsO8ym87FtxgOX+X2ApEnfyBJQ18IrC+tnpO5O3GAWu2o3dzy0x6p54Q35Rob+n3pCSz9Wp
	gt2azaM2cnCDQAEBEBKs8WwEuYUG6ibX0K65E6+z+TIhnspfO5s+KdjnOtNU9XqQasa5CzlXb4X3i
	e+kjNxFSlSnHBmz5BWsAxTivnordUN6e4bkPp8H+2yXXahTcjLb0FG0LHNVg/GgXVOeS8nL/9KLmC
	tQjqfMbsGRsKUXW8hu9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlX0-0005sv-52; Thu, 23 May 2019 11:05:06 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlWs-0005rS-6F
 for kexec@lists.infradead.org; Thu, 23 May 2019 11:05:00 +0000
Received: by mail-it1-f196.google.com with SMTP id j17so7992382itk.0
 for <kexec@lists.infradead.org>; Thu, 23 May 2019 04:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bszh6zWvpIHD18LEdDJozbrleTCn7t9j7iqoQX16fGM=;
 b=HHTpRol59pe+v4ulwO6gvslDIW0ctgntnTc0HIVINR1aURFsGPR2c5mBXCxscnNjLF
 qkrb+4dFLfa2iUzCRxoUmdUbn+81KiFeFEp/D9O4sEuqUpqlnC0DM+grwgRAQDA4v3gK
 /QD6C4yn9FEywZyaNBWRUAQrIx+buBHg6lg3v4RqWBihwejigwq1T3+1DOfZz+S6MOW4
 4RsFFLATu/IJWFYgFxrdSK9IGtrLUPODOJ+orGZ8C4aWS/EyKstu7BruiZOFGudGareN
 tenSFnHIsJR+LQus+GZSQ5nIMbBmtNzab7hQEaNPWWBFSsq+nNjtnWCAEjDoZcJUNC7f
 5VgA==
X-Gm-Message-State: APjAAAUpeyupCPt/Z1TZ54NNvssDyTKLIO3xTOCqqVWNSfpGG2noLRJM
 laa2XxIEGPCib5plLzVaS2Fje1Krf2/6mUqepbNAlA==
X-Google-Smtp-Source: APXvYqxpHp3aEjhr0YWO4vPclq+586+5ta6PM+gNM5Wk9qiqR0agN/Sh7u8nwGrt0VxhHiM/lpyPe4e06GbuTy54uEo=
X-Received: by 2002:a24:6cd5:: with SMTP id w204mr12287305itb.12.1558609497196; 
 Thu, 23 May 2019 04:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190520061834.32231-1-kasong@redhat.com>
 <0c0fb7af-f386-bde1-46f6-1afa29782243@redhat.com>
In-Reply-To: <0c0fb7af-f386-bde1-46f6-1afa29782243@redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 23 May 2019 19:04:36 +0800
Message-ID: <CACPcB9fWsOHGhyF-b4emTuoTUO4twbG6of=bruBYop4Jf4rzig@mail.gmail.com>
Subject: Re: [PATCH v2] vmcore: Add a kernel cmdline vmcore_device_dump
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_040458_229187_1766F621 
X-CRM114-Status: GOOD (  24.71  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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

On Thu, May 23, 2019 at 2:44 AM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> On 05/20/2019 11:48 AM, Kairui Song wrote:
> > Since commit 2724273e8fd0 ('vmcore: add API to collect hardware dump in
> > second kernel'), drivers is allowed to add device related dump data to
> > vmcore as they want by using the device dump API. This have a potential
> > issue, the data is stored in memory, drivers may append too much data
> > and use too much memory. The vmcore is typically used in a kdump kernel
> > which runs in a pre-reserved small chunk of memory. So as a result it
> > will make kdump unusable at all due to OOM issues.
> >
> > So introduce new vmcore_device_dump= kernel parameter, and disable
> > device dump by default. User can enable it only if device dump data is
> > required for debugging, and have the chance to increase the kdump
> > reserved memory accordingly before device dump fails kdump.
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >   Update from V1:
> >    - Use bool parameter to turn it on/off instead of letting user give
> >      the size limit. Size of device dump is hard to determine.
> >
> >   Documentation/admin-guide/kernel-parameters.txt | 15 +++++++++++++++
> >   fs/proc/vmcore.c                                | 13 +++++++++++++
> >   2 files changed, 28 insertions(+)
> >
> > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > index 43176340c73d..2d48e39fd080 100644
> > --- a/Documentation/admin-guide/kernel-parameters.txt
> > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > @@ -5062,6 +5062,21 @@
> >                       decrease the size and leave more room for directly
> >                       mapped kernel RAM.
> >
> > +     vmcore_device_dump=
> > +                     [VMCORE]
> > +                     Format: {"off" | "on"}
> > +                     If CONFIG_PROC_VMCORE_DEVICE_DUMP is set,
> > +                     this parameter allows enable or disable device dump
> > +                     for vmcore.
>
> We can add a simpler description here, something like:
>                         Depends on CONFIG_PROC_VMCORE_DEVICE_DUMP
>
> > +                     Device dump allows drivers to append dump data to
> > +                     vmcore so you can collect driver specified debug info.
> > +                     Note that the drivers could append the data without
> > +                     any limit, and the data is stored in memory, this may
> > +                     bring a significant memory stress. If you want to turn
> > +                     on this option, make sure you have reserved enough memory
> > +                     with crashkernel= parameter.
> > +                     default: off
>
> ... and massage the rest of text accordingly.
>
> Better to also modify the help text for 'PROC_VMCORE_DEVICE_DUMP' config
> option defined in 'fs/proc/Kconfig'. Something like:
>
> config PROC_VMCORE_DEVICE_DUMP
>         bool "Device Hardware/Firmware Log Collection"
> <..snip..>
>           If you say Y here, the collected device dumps will be added
>           as ELF notes to /proc/vmcore.
>
>           If this option is selected, device dump collection can still be
> disabled by passing vmcore_device_dump=off to the kernel.
>
> See config INTEL_IOMMU_DEFAULT_ON in 'drivers/iommu/Kconfig' as an example.
>

Good suggestion! I'll update in V3.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
