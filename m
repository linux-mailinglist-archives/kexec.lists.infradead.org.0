Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A08E27B51
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 13:05:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7voWwBS2owMM7dJrtrJ5AWId5/FlmVWuUr8Agh9wiN0=; b=q+RJjbCMBkx77M
	6JyK+aliK/KLNUJzAnCMuBd9sIbnx5gWr9deNV616kiUGKyGJr4er1MvBEhkR235WU401wvHfDCxJ
	iMC9EHuwXLfDuHXvGWqCr8uFMbgoIVPye+2PZLBKoEno6NJklyZOXjDxXqIU0LCHYiVbsND6HzAA8
	H4bdyyLJQLdGPp41Nh+DcGzalXxTnX5v/TZjoH63pKSUkKVD5cuqgp1J4q3ckqQa/KvCAgrckmv2S
	eGtG+/CHlXlWmOL9fjVPgeb1Q5AVw+Vk+GkhgGcNTjuEmfBtNj4B1RS+wMK4loAWlA45Xrp0n6dV7
	2bBUa6F9o7k4PFGQuaMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTlX1-0006YQ-Vu; Thu, 23 May 2019 11:05:08 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTlWu-0005ry-QI
 for kexec@lists.infradead.org; Thu, 23 May 2019 11:05:02 +0000
Received: by mail-io1-f67.google.com with SMTP id g84so4510003ioa.1
 for <kexec@lists.infradead.org>; Thu, 23 May 2019 04:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eRrHvKQERKjgiXIkofXLltvm3gZLl1VkOb0Hjm91f/o=;
 b=X+dR493CjXjfFyq39V5FdSaD3GHRCQP2BNDbAvRR9ERUBXPEeGBcoB9kenlsAb2KAG
 kI0maYypNbnK9cnToz0UO/oHmJWnOoi3p5nFucN2fxS8BXB8VB3iwhHZLXnKKv3tD4ji
 QJv67KgXt9rM66E35+VOlRcWy645C7ssJ3QX2HsN+kdvb/cHmCOxY9DIEj0eaThedLzd
 1KcKn0VFCntqcpEhW+0yrUnqkxkskZIMGqMSvghEy1rdgHNXWzJqa2uJ5P3X1BCZ0Ofh
 v3Xnif68ItrKi/f/AS9ZYUz9ZsV935crNr1LgyMUm3wFkJ8Y7S2+JnG4/3FsLSqvDUnm
 T/7Q==
X-Gm-Message-State: APjAAAUJnD4VvZrKs+VJKCeBYUerBaRDzu7lU9/IC0WHpg7uXgHr9HLT
 LkuDh9Qe9IP83ALAGxL02cR0Mb4yrJz7Dbz6/P56hA==
X-Google-Smtp-Source: APXvYqzhB+kWTw0fY0OON2WJw3UAMBGFm+i/VrtMNe1jls4j2XTSAkI0N08ZlcXD33EQ59ABBEMrh2dEdMkWZS2bEzE=
X-Received: by 2002:a05:6602:211a:: with SMTP id
 x26mr2541980iox.202.1558609499901; 
 Thu, 23 May 2019 04:04:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190520061834.32231-1-kasong@redhat.com>
 <20190522053822.GA4472@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190522053822.GA4472@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 23 May 2019 19:04:42 +0800
Message-ID: <CACPcB9dM97sFmydswSkpj8nmFHvsWXUhnQJ-8jW2aEc-m7g9qg@mail.gmail.com>
Subject: Re: [PATCH v2] vmcore: Add a kernel cmdline vmcore_device_dump
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_040500_852195_7F743B28 
X-CRM114-Status: GOOD (  27.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
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

On Wed, May 22, 2019 at 1:38 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 05/20/19 at 02:18pm, Kairui Song wrote:
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
> >  Update from V1:
> >   - Use bool parameter to turn it on/off instead of letting user give
> >     the size limit. Size of device dump is hard to determine.
> >
> >  Documentation/admin-guide/kernel-parameters.txt | 15 +++++++++++++++
> >  fs/proc/vmcore.c                                | 13 +++++++++++++
> >  2 files changed, 28 insertions(+)
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
>
> It looks better to have above two line merged in one line, also use
> [KNL, KDUMP] will be better.
>
> > +                     Format: {"off" | "on"}
> > +                     If CONFIG_PROC_VMCORE_DEVICE_DUMP is set,
> > +                     this parameter allows enable or disable device dump
> > +                     for vmcore.
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

Good suggestion, I'll update in V3.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
