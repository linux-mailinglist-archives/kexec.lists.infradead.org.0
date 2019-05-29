Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59B52D4F4
	for <lists+kexec@lfdr.de>; Wed, 29 May 2019 06:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aVb5iWu/a/gmzWnOCHBzfm8glLKu66rlHFbiN1uClZ4=; b=c/DEeZavI/P53Z
	5Ovll3n/fUlivKeg3IQCJ+OGs9LXCusT5N4yJurgAS0rbGpwM19227zXG7IKI3Ks8+JXxO/KN+2SW
	9tL/RgxgAgXJxnN+csu+j6VUWsF7kB8uKkaklrVQz2sxbasd2Vo2UFj8qgLRtWEnFy6gwMNFBpN8X
	B+9SaKe5ReROp3odg1nU8oZQVSfiUjbl9tBtT016U0vnZ0rh+7/xKyWLH59KTj6Q2Lbwvfe42ofEx
	+d7oHgrgnsg1Zd4gUmYl3MOrgS/OYVBEOUM4tHxZHsgI9UifCG5zTSlJns2dGm62g3vmbjYXwjJBg
	kxJFIOLaSasATj0Yb2yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVqfV-0006WN-Vy; Wed, 29 May 2019 04:58:29 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVqfN-0006W1-2N
 for kexec@lists.infradead.org; Wed, 29 May 2019 04:58:23 +0000
Received: by mail-lj1-f196.google.com with SMTP id m22so839726ljc.3
 for <kexec@lists.infradead.org>; Tue, 28 May 2019 21:58:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ePGVAC0GNzUZZi8eiSYsJvmbAo5ymaerGq4lv8lKk4c=;
 b=V9fXsUzlOtCphznaPZgeoQOWs7TQ8Gcv/ZnMStkI9zRXgSP4su1jsbAB/b3g7kmWVV
 yF8ZgOyA6Rq3ju2a+gRCZVL8PBMSl6hF8VHpjZ21RrzdUdYhIpUkhIE6setxS/kaXVqS
 BJcFJPdjc7eywEhTfwPm/20k00eWmi2f+YVSiEafXQAwl2YLNJokZ3xO6IHwKHj8VCbU
 7FeW2VeOz4wU6FVCIH3d6LrbXrnMyvmg0BwENVxHue+a6R4NhzmdV8HpeUo+bglZXh4j
 O0NASPWRC1HoPZO1BvEuQ70jGDNUQU4eEZbfakuU0mP+NhdRmLYhZ1P39URcJVIlJc4i
 htug==
X-Gm-Message-State: APjAAAVzxCsW1EOzvFpJN9NmJXI2rgaCgmO1yK3/l2MgGnkpBPfEr+e6
 AJDF/BwwJsbk7fytpxbMXKmCIhIXUzoB/1sJ7ip4Cw==
X-Google-Smtp-Source: APXvYqwTGyPTj0EJgY0RuUWu8GMZyOowrbszRu0R0TdFn2PDGBmjoBv1NtDQlYfPkAEIirjzwLr6LRgZX1KyvR3ZcRE=
X-Received: by 2002:a2e:9e14:: with SMTP id e20mr11944731ljk.172.1559105897613; 
 Tue, 28 May 2019 21:58:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190528111856.7276-1-kasong@redhat.com>
In-Reply-To: <20190528111856.7276-1-kasong@redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 29 May 2019 10:28:05 +0530
Message-ID: <CACi5LpNae1PuW48ceH6+-t7TokT8yQeKKLt5eNYUNMMAvnV0cQ@mail.gmail.com>
Subject: Re: [PATCH v4] vmcore: Add a kernel parameter novmcoredd
To: Kairui Song <kasong@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_215821_113165_2B7C4DB7 
X-CRM114-Status: GOOD (  26.78  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.196 listed in list.dnswl.org]
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.196 listed in wl.mailspike.net]
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
Cc: Baoquan He <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
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

On Tue, May 28, 2019 at 4:52 PM Kairui Song <kasong@redhat.com> wrote:
>
> Since commit 2724273e8fd0 ("vmcore: add API to collect hardware dump in
> second kernel"), drivers is allowed to add device related dump data to
> vmcore as they want by using the device dump API. This have a potential
> issue, the data is stored in memory, drivers may append too much data
> and use too much memory. The vmcore is typically used in a kdump kernel
> which runs in a pre-reserved small chunk of memory. So as a result it
> will make kdump unusable at all due to OOM issues.
>
> So introduce new 'novmcoredd' command line option. User can disable
> device dump to reduce memory usage. This is helpful if device dump is
> using too much memory, disabling device dump could make sure a regular
> vmcore without device dump data is still available.
>
> Signed-off-by: Kairui Song <kasong@redhat.com>
>
> ---
>  Update from V3:
>   - Use novmcoredd instead of vmcore_device_dump. Use
>     vmcore_device_dump and make it off by default is confusing,
>     novmcoredd is a cleaner way to let user space be able to disable
>     device dump to save memory.
>
>  Update from V2:
>   - Improve related docs
>
>  Update from V1:
>   - Use bool parameter to turn it on/off instead of letting user give
>     the size limit. Size of device dump is hard to determine.
>
>  Documentation/admin-guide/kernel-parameters.txt | 11 +++++++++++
>  fs/proc/Kconfig                                 |  3 ++-
>  fs/proc/vmcore.c                                |  8 ++++++++
>  3 files changed, 21 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 138f6664b2e2..1b900d262680 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -2872,6 +2872,17 @@
>                         /sys/module/printk/parameters/console_suspend) to
>                         turn on/off it dynamically.
>
> +       novmcoredd      [KNL,KDUMP]
> +                       Disable device dump. Device dump allows drivers to
> +                       append dump data to vmcore so you can collect driver
> +                       specified debug info. The drivers could append the
> +                       data without any limit, and the data is stored in
> +                       memory, this may bring a significant memory stress.
> +                       Disable device dump can help save memory but driver
> +                       debug data will be no longer available.
> +                       Only available when CONFIG_PROC_VMCORE_DEVICE_DUMP
> +                       is set.
> +
>         noaliencache    [MM, NUMA, SLAB] Disables the allocation of alien
>                         caches in the slab allocator.  Saves per-node memory,
>                         but will impact performance.
> diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
> index 817c02b13b1d..62b19162d198 100644
> --- a/fs/proc/Kconfig
> +++ b/fs/proc/Kconfig
> @@ -57,7 +57,8 @@ config PROC_VMCORE_DEVICE_DUMP
>           snapshot.
>
>           If you say Y here, the collected device dumps will be added
> -         as ELF notes to /proc/vmcore.
> +         as ELF notes to /proc/vmcore. You can still disabled device
> +         dump by command line option 'novmcoredd'.
>
>  config PROC_SYSCTL
>         bool "Sysctl support (/proc/sys)" if EXPERT
> diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> index 3fe90443c1bb..e815fd035fc0 100644
> --- a/fs/proc/vmcore.c
> +++ b/fs/proc/vmcore.c
> @@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
>  /* Device Dump list and mutex to synchronize access to list */
>  static LIST_HEAD(vmcoredd_list);
>  static DEFINE_MUTEX(vmcoredd_mutex);
> +
> +static bool vmcoredd_disabled;
> +core_param(novmcoredd, vmcoredd_disabled, bool, 0);
>  #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
>
>  /* Device Dump Size */
> @@ -1451,6 +1454,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
>         size_t data_size;
>         int ret;
>
> +       if (vmcoredd_disabled) {
> +               pr_err_once("Device dump is disabled\n");
> +               return -EINVAL;
> +       }
> +
>         if (!data || !strlen(data->dump_name) ||
>             !data->vmcoredd_callback || !data->size)
>                 return -EINVAL;
> --
> 2.21.0

LGTM, so:

Reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
