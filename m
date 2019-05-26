Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F4B2ABAF
	for <lists+kexec@lfdr.de>; Sun, 26 May 2019 20:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lk3r7EPse0Dw3Y20858qwk9cNtKk488/5yBYnmQNPpA=; b=Yh85Vit/fyrelC
	txE9ibHvQXpzUUHEXG+5zKV1WGRDvVbna9Tq00zRR/RKBQrgWUJBvUqpLIXMPshBJSJ+8n/6eEEDI
	MIhlAKSVSPeahAYvMMep2iJ1MELUoPJHytGjHHO/cZ6dpPVIh6M4jy5JC7DHkktfpdECJCLQMTa53
	OBXmRjYrnvj38Kg425gV3X3X8Eth8IRNZBk8x3Wt86hyNCm3U8wE2jGiVOzw2kPuCRO8zg0KX1ICt
	mnS79a3ab0cY2fz5HQtFca/xvjs4GsCIlvrvuEDDL6wBCXOg09g6+qiPi+6mkM2lP6N1lSdkmNtpm
	0IC64JK0O+quvKksXpuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUy9E-0003zm-RH; Sun, 26 May 2019 18:45:32 +0000
Received: from mail-lj1-f193.google.com ([209.85.208.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUy97-0003zQ-VB
 for kexec@lists.infradead.org; Sun, 26 May 2019 18:45:27 +0000
Received: by mail-lj1-f193.google.com with SMTP id 14so12785178ljj.5
 for <kexec@lists.infradead.org>; Sun, 26 May 2019 11:45:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Be3NW0eeH5AbtHUvXU8RImeglwilbK7Ue/yNA27Jr9A=;
 b=OkbQWzVfVT7lMaiiBefUwk8EF13RxyKkFfKyKMiL2LH5gfg/58GrEdYs9GBnK6wuAh
 6nHEG9GpRdGZ6oxvA3gPpSuOzqhrMR5uXiJqklNjBtPPRdRnvWo3Hee3tCPDBLcnAczf
 if6PIcNr6N7ldEs/6PUGDb+ultS98IsJRriP0ztzPE2O/Hbw80B4RAUWuvgy1oVR7AMI
 rsa/COEQ5Y26Xx6LtRHm6L3JEUKErrh3GI3Zf6MzSW9+0ZMnCU8r9CoJZfqxi9hXzUdk
 GoadWGaHDgQvhOQZ5pkclG/HJXz2H/QQyzn2OoUzV0FXwPlMkwSesEa3o9hrZhFOQg8p
 Dc/Q==
X-Gm-Message-State: APjAAAXc6tlZEm4cIS1Cgqu31gs+ZNGRCdajC0a5ZBRXowfuAeJ3/ZxK
 Hfhcj+IaY4mwwXCd3Dk882D2iG3ZFAlJQ9DD+jE4VA==
X-Google-Smtp-Source: APXvYqzf/Y19PBxkxR+CYgwdxMUXkgNx6m3ac/hSGzfiFYW51F+nS3j3kfSeNAY76Wj9rRghWxMm971gcc1I9RmlVo8=
X-Received: by 2002:a2e:86c2:: with SMTP id n2mr26280858ljj.23.1558896323756; 
 Sun, 26 May 2019 11:45:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190524062922.26399-1-kasong@redhat.com>
 <20190524125456.GA3342@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190524125456.GA3342@dhcp-128-65.nay.redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 27 May 2019 00:15:11 +0530
Message-ID: <CACi5LpNue+9GVafB-aYxhTNRWf6jbRk9O6Vq8BCQO3EHWrNnrw@mail.gmail.com>
Subject: Re: [PATCH v3] vmcore: Add a kernel parameter vmcore_device_dump
To: Kairui Song <kasong@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_114526_009544_21AA14F0 
X-CRM114-Status: GOOD (  32.04  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.193 listed in list.dnswl.org]
 -0.4 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.193 listed in wl.mailspike.net]
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

On Fri, May 24, 2019 at 6:25 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 05/24/19 at 02:29pm, Kairui Song wrote:
> > Since commit 2724273e8fd0 ("vmcore: add API to collect hardware dump in
> > second kernel"), drivers is allowed to add device related dump data to
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
> >
> > ---
> >
> >  Update from V2:
> >   - Improve related docs
> >
> >  Update from V1:
> >   - Use bool parameter to turn it on/off instead of letting user give
> >     the size limit. Size of device dump is hard to determine.
> >
> >  Documentation/admin-guide/kernel-parameters.txt | 14 ++++++++++++++
> >  fs/proc/Kconfig                                 |  6 ++++--
> >  fs/proc/vmcore.c                                | 13 +++++++++++++
> >  3 files changed, 31 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > index 138f6664b2e2..3706ad9e1d97 100644
> > --- a/Documentation/admin-guide/kernel-parameters.txt
> > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > @@ -5078,6 +5078,20 @@
> >                       decrease the size and leave more room for directly
> >                       mapped kernel RAM.
> >
> > +     vmcore_device_dump=     [KNL,KDUMP]
> > +                     Format: {"off" | "on"}
> > +                     Depends on CONFIG_PROC_VMCORE_DEVICE_DUMP.
> > +                     This parameter allows enable or disable device dump
> > +                     for vmcore on kernel start-up.
> > +                     Device dump allows drivers to append dump data to
> > +                     vmcore so you can collect driver specified debug info.
> > +                     Note that the drivers could append the data without
> > +                     any limit, and the data is stored in memory, this may
> > +                     bring a significant memory stress. If you want to turn
> > +                     on this option, make sure you have reserved enough memory
> > +                     with crashkernel= parameter.
> > +                     default: off
> > +
> >       vmcp_cma=nn[MG] [KNL,S390]
> >                       Sets the memory size reserved for contiguous memory
> >                       allocations for the vmcp device driver.
> > diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
> > index 817c02b13b1d..1a7a38976bb0 100644
> > --- a/fs/proc/Kconfig
> > +++ b/fs/proc/Kconfig
> > @@ -56,8 +56,10 @@ config PROC_VMCORE_DEVICE_DUMP
> >         recovery kernel's initramfs to collect its underlying device
> >         snapshot.
> >
> > -       If you say Y here, the collected device dumps will be added
> > -       as ELF notes to /proc/vmcore.
> > +       If you say Y here, a new kernel parameter 'vmcore_device_dump'
> > +       will be available. You can then enable device dump by passing
>
> "a new kernel parameter 'vmcore_device_dump' will be available" is not
> necessary, "new" is a not a clear word.  I suggest to remove this
> sentence.
>
> s/You can then/You can

I agree with Dave. We are just trying to say here that even if
CONFIG_PROC_VMCORE_DEVICE_DUMP is set to Y, one can still disable the
device dump feature by passing parameter 'vmcore_device_dump=off' to
the kernel.

May be you can use the wording I mentioned in the v2 patch review,
which tried to convey a similar meaning.

With the change addressed:
Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>

Thanks,
Bhupesh


> Otherwise:
>
> Acked-by: Dave Young <dyoung@redhat.com>
>
>
> > +       'vmcore_device_dump=on' to kernel, the collected device dumps
> > +       will be added as ELF notes to /proc/vmcore.
> >
> >  config PROC_SYSCTL
> >       bool "Sysctl support (/proc/sys)" if EXPERT
> > diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> > index 3fe90443c1bb..d1b608b0efad 100644
> > --- a/fs/proc/vmcore.c
> > +++ b/fs/proc/vmcore.c
> > @@ -53,6 +53,8 @@ static struct proc_dir_entry *proc_vmcore;
> >  /* Device Dump list and mutex to synchronize access to list */
> >  static LIST_HEAD(vmcoredd_list);
> >  static DEFINE_MUTEX(vmcoredd_mutex);
> > +
> > +static bool vmcoredd_enabled;
> >  #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >
> >  /* Device Dump Size */
> > @@ -1451,6 +1453,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >       size_t data_size;
> >       int ret;
> >
> > +     if (!vmcoredd_enabled) {
> > +             pr_err_once("Device dump is disabled\n");
> > +             return -EINVAL;
> > +     }
> > +
> >       if (!data || !strlen(data->dump_name) ||
> >           !data->vmcoredd_callback || !data->size)
> >               return -EINVAL;
> > @@ -1502,6 +1509,12 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >       return ret;
> >  }
> >  EXPORT_SYMBOL(vmcore_add_device_dump);
> > +
> > +static int __init vmcoredd_parse_cmdline(char *arg)
> > +{
> > +     return kstrtobool(arg, &vmcoredd_enabled);
> > +}
> > +__setup("vmcore_device_dump=", vmcoredd_parse_cmdline);
> >  #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >
> >  /* Free all dumps in vmcore device dump list */
> > --
> > 2.21.0
> >
>
> Thanks
> Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
