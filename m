Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5F020127
	for <lists+kexec@lfdr.de>; Thu, 16 May 2019 10:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=omPhEAf+7gBA70b96FQmZ6KEnqT4yp8X5IwswOa3nJ4=; b=PMBvbsNkEpDnVn
	xKv8zZwxbb2tRaPPjzjnjLiOSQsiPmHDnRLP/T5j4VYHAO3a3VK8524paUX8maYkFfqJ0+hXqRw2l
	kdszvK+nY+iZyRn8gFTkQ1Ct3omJCZ6egDETn81C1nelDza8qZU2/SLqWty3iEv7uYdU7rpLw3MSn
	S44fdGamkYQvWr7hBtT1F4edjkLBC2mBTcxZZaPnyL5rDdquKt9xOfL5qtVJ0gchSZFEsHFCvRJwR
	WL34Kg/YHrLmyxmIbUBwiEbH1S2DI9cZcHZUDKK7Phjcfipl58sYRBnN5LeWJdWObLQRwmd7IcaR+
	ihYyzY8GhRULu998KIhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBbm-0003CS-El; Thu, 16 May 2019 08:19:22 +0000
Received: from mail-it1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBbj-0003C3-8q
 for kexec@lists.infradead.org; Thu, 16 May 2019 08:19:20 +0000
Received: by mail-it1-f193.google.com with SMTP id e184so4800026ite.1
 for <kexec@lists.infradead.org>; Thu, 16 May 2019 01:19:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s68yQo+QQvCZajbWc1oevyw/oT7lrvS4cXS+T8Bmo2M=;
 b=LbpoPUYrnzgp145k4BV9BPWBayA82Th1xbYVa6B3MohTQSuqBffgZ8nT03xstWYLAA
 wl+KiI/1FpB9go4yoBpZzdtZ7FQdkAL6oOfYyprF7Fe9cI8LhGThdMqFF64rzzg2r1SH
 ZTQ5/W0xwuNBIwTjO0ZFn+tGfKRGP+Lno0LvZjqv2APrltObYWkMcKqXth8beQQ2FjZl
 q/i/JPQFXkhRxHjLeNP21sw2h4phhA218vn76VYd072gr4uRL3t8SJ0kdRp5O/UQ+gim
 DLsuWpaco/fG9VRApnBoLnnsGcULwWPhFG32+HizFs5GpqeGNUOwDjC2UxUd56pMvffh
 CSfg==
X-Gm-Message-State: APjAAAUvMeyETjsjyXV1JVgkvc+v07gp692hxCxKUnrbh7cubkkNW6vS
 g8Uq+793pTifPmmxuDK2aAIYU7GdEump8v3OHjlMcQ==
X-Google-Smtp-Source: APXvYqxE7uRnSXhpRjc6utJg1hkfIvguX4bu4Q62XoHeKtFLtbDbP5ywW+siT+0KWV1MRstAncfRoFq49aUQmT8mCfY=
X-Received: by 2002:a02:37d7:: with SMTP id
 r206mr32206828jar.127.1557994757853; 
 Thu, 16 May 2019 01:19:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190510102051.25647-1-kasong@redhat.com>
 <4f453ec6-67a6-2c8f-2aab-acb54ae55645@redhat.com>
In-Reply-To: <4f453ec6-67a6-2c8f-2aab-acb54ae55645@redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Thu, 16 May 2019 16:19:06 +0800
Message-ID: <CACPcB9d-h75MEMrjREe7sMvjRqvxBhGxaeR3_k7An2-BDsDy4Q@mail.gmail.com>
Subject: Re: [RFC PATCH] vmcore: Add a kernel cmdline device_dump_limit
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_011919_314116_16955DAD 
X-CRM114-Status: GOOD (  30.96  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
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
 Alexey Dobriyan <adobriyan@gmail.com>,
 Rahul Lakkireddy <rahul.lakkireddy@chelsio.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Dave Young <dyoung@redhat.com>,
 "David S . Miller" <davem@davemloft.net>, Ganesh Goudar <ganeshgr@chelsio.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 7:17 PM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> Hi Kairui,
>
> Thanks for the patch. Please see my comments in-line:
>
> On 05/10/2019 03:50 PM, Kairui Song wrote:
> > Device dump allow drivers to add device related dump data to vmcore as
> > they want. This have a potential issue, the data is stored in memory,
> > drivers may append too much data and use too much memory. The vmcore is
> > typically used in a kdump kernel which runs in a pre-reserved small
> > chunk of memory. So as a result it will make kdump unusable at all due
> > to OOM issues.
> >
> > So introduce new device_dump_limit= kernel parameter, and set the
> > default limit to 0, so device dump is not enabled unless user specify
> > the accetable maxiam
>
>        ^^^^ acceptable maximum

Will fix this typo.

>
> > memory usage for device dump data. In this way user
> > will also have the chance to adjust the kdump reserved memory
> > accordingly.
>
> Hmmm., this doesn't give much confidence with the
> PROC_VMCORE_DEVICE_DUMP feature in its current shape. Rather shouldn't
> we be enabling config PROC_VMCORE_DEVICE_DUMP only under EXPERT mode for
> now, considering that this feature needs further thrashing and testing
> with real setups including platforms where drivers append large amounts
> of data to vmcore:

I think no need to move it to expert mode, just leave it disabled by
default should be better, that should be enough to make sure driver
won't append that much memory and cause OOM, while it could still be
enabled without changing the kernel, so this feature won't bring extra
risk, and could be enabled anytime easily.

>
> diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
> index 817c02b13b1d..c47a12cf7fc0 100644
> --- a/fs/proc/Kconfig
> +++ b/fs/proc/Kconfig
> @@ -45,7 +45,7 @@ config PROC_VMCORE
>           Exports the dump image of crashed kernel in ELF format.
>
>   config PROC_VMCORE_DEVICE_DUMP
> -       bool "Device Hardware/Firmware Log Collection"
> +       bool "Device Hardware/Firmware Log Collection" if EXPERT
>          depends on PROC_VMCORE
>          default n
>          help
> @@ -59,6 +59,12 @@ config PROC_VMCORE_DEVICE_DUMP
>            If you say Y here, the collected device dumps will be added
>            as ELF notes to /proc/vmcore.
>
> +         Considering that there can be device drivers which append
> +         large amounts of data to vmcore, you should say N here unless
> +         you are reserving a large chunk of memory for crashdump
> +         kernel, because otherwise the crashdump kernel might become
> +         unusable due to OOM issues.
> +
>
> May be you can add a 'Fixes:' tag here.

Problem is previous commit seems not broken, just bring extra memory
stress. Is "Fixes:" tag suitable for this commit?

>
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >   fs/proc/vmcore.c | 20 ++++++++++++++++++++
> >   1 file changed, 20 insertions(+)
> >
> > diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> > index 3fe90443c1bb..e28695ef2439 100644
> > --- a/fs/proc/vmcore.c
> > +++ b/fs/proc/vmcore.c
> > @@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
> >   /* Device Dump list and mutex to synchronize access to list */
> >   static LIST_HEAD(vmcoredd_list);
> >   static DEFINE_MUTEX(vmcoredd_mutex);
> > +
> > +/* Device Dump Limit */
> > +static size_t vmcoredd_limit;
> >   #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >
> >   /* Device Dump Size */
> > @@ -1465,6 +1468,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >       data_size = roundup(sizeof(struct vmcoredd_header) + data->size,
> >                           PAGE_SIZE);
> >
> > +     if (vmcoredd_orig_sz + data_size >= vmcoredd_limit) {
> > +             ret = -ENOMEM;
>
> Should we be adding a WARN() here to let the user know that the device
> dump data will not be available in vmcore?

Yes, that could be very helpful. How about pr_err_once? WARN is too
noise, just give a hint to the user that device dump is disabled
should be enough, so user will know why device dump data is not
present and will just enable it.

>
> > +             goto out_err;
> > +     }
> > +
> >       /* Allocate buffer for driver's to write their dumps */
> >       buf = vmcore_alloc_buf(data_size);
> >       if (!buf) {
> > @@ -1502,6 +1510,18 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >       return ret;
> >   }
> >   EXPORT_SYMBOL(vmcore_add_device_dump);
> > +
> > +static int __init parse_vmcoredd_limit(char *arg)
> > +{
> > +     char *end;
> > +
> > +     if (!arg)
> > +             return -EINVAL;
> > +     vmcoredd_limit = memparse(arg, &end);
> > +     return end > arg ? 0 : -EINVAL;
> > +
> > +}
> > +__setup("device_dump_limit=", parse_vmcoredd_limit);
>
> We should be adding this boot argument and its description to
> 'Documentation/admin-guide/kernel-parameters.txt'

Good suggestion, will update the document.

>
> >   #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >
> >   /* Free all dumps in vmcore device dump list */
> >
>
> Thanks,
> Bhupesh

Thanks for the review!



--
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
