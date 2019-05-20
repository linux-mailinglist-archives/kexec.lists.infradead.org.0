Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D9722BFC
	for <lists+kexec@lfdr.de>; Mon, 20 May 2019 08:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wh/frC9Km/BX7k1YJpjHfbicsQW+93bjaLcauZgSyOk=; b=X6PNEGs9mfQLP+
	zINyQrd63wTlf4BRk7KHzkbWmlSdv0speagHVegcP+wqvkJXTnA/J6KJqZ3rAeVVeJlAewKuxIH9z
	HWXic9Fhyfoqj0g1/DWr3+40Mbh/iidwZMXb1eDtz23rCHJkM+ocNtwWgDmsF5nQ2HyWtNh3Hu7x2
	s/oWWBg/Jgt3zPYK6cOQwSFPKbR7lYFPqw2SerY/AI65aBrggbIplZpgvdfiwhQxd9/iKmpnYVp7z
	aKkP8pptIA9oEmyfsEqx+AgYhqdK6Iw6d4meHTTB8Au/xxRiNkCKREazDVh3ixBOnsu/38qxjqdwx
	qE7AXbOnn+uDMoFCoraA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbfe-00027Q-Q0; Mon, 20 May 2019 06:21:14 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbfb-000274-6t
 for kexec@lists.infradead.org; Mon, 20 May 2019 06:21:12 +0000
Received: by mail-io1-f65.google.com with SMTP id z4so10143912iol.0
 for <kexec@lists.infradead.org>; Sun, 19 May 2019 23:21:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PZhlZQDH0UX81lkJWWOeHSTJfZZYrpPxyp1pvS+ZbMc=;
 b=fPDekg5fOo3CL0Zd3YmlVOfjr7VGfxQqrw/AeM4RkzFsZQFHPbgZVy5D18xKKlpwmx
 ORSe6FnzFsGHo+lRzEVclr0CgX8ft06GL/4n/2TkVI5poMttF9joRSoFtgbeTXSoZO1B
 raOf4MDQUULzs31fzLHRQ8VH0bcEH/rbep3y6XfbwhFIH99cuFoB+qF6IU6PBzv2BVDu
 VeBKc/A5RJiI4kIArvQdTPnGibp52LNGk4k9P8DB/EROniR+RXsOY/eAFLlSPQ9eIF7D
 +uUzWfObm9XKUJbT0JC7/jwIshi7mqxKuSDZssF3c9VpfzFQ/nT52opwGOCTe4r/Ge+b
 eIRQ==
X-Gm-Message-State: APjAAAWEuJUKGJ349FYGFNTbAQ9xDJffeeB0+MM6XaZQ+pGTrhtmnQlY
 qz/e+NFyJzet6vQcp/wEeKkt8CHprShlwv3/o5Ox6w==
X-Google-Smtp-Source: APXvYqxR/Fql4KDJcKRZJv3CUfV3aTUUKWMg8Py+x6jf/u0nHU+OipajcVLbiGvRSBLCjm5Y6f/MWnsEvmIbiSDEH50=
X-Received: by 2002:a6b:7d0d:: with SMTP id c13mr9484096ioq.249.1558333269784; 
 Sun, 19 May 2019 23:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190510102051.25647-1-kasong@redhat.com>
 <4f453ec6-67a6-2c8f-2aab-acb54ae55645@redhat.com>
 <CACPcB9d-h75MEMrjREe7sMvjRqvxBhGxaeR3_k7An2-BDsDy4Q@mail.gmail.com>
 <1b170096-b47b-2178-b27a-c4ec351f564d@redhat.com>
In-Reply-To: <1b170096-b47b-2178-b27a-c4ec351f564d@redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 20 May 2019 14:20:58 +0800
Message-ID: <CACPcB9dJKUOZtGU5MQ1DNrQkajdDQDo3Z8bds6zYNoCAOr8+sw@mail.gmail.com>
Subject: Re: [RFC PATCH] vmcore: Add a kernel cmdline device_dump_limit
To: Bhupesh Sharma <bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_232111_252958_1E6D167B 
X-CRM114-Status: GOOD (  35.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Mon, May 20, 2019 at 1:55 PM Bhupesh Sharma <bhsharma@redhat.com> wrote:
>
> On 05/16/2019 01:49 PM, Kairui Song wrote:
> > On Fri, May 10, 2019 at 7:17 PM Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >>
> >> Hi Kairui,
> >>
> >> Thanks for the patch. Please see my comments in-line:
> >>
> >> On 05/10/2019 03:50 PM, Kairui Song wrote:
> >>> Device dump allow drivers to add device related dump data to vmcore as
> >>> they want. This have a potential issue, the data is stored in memory,
> >>> drivers may append too much data and use too much memory. The vmcore is
> >>> typically used in a kdump kernel which runs in a pre-reserved small
> >>> chunk of memory. So as a result it will make kdump unusable at all due
> >>> to OOM issues.
> >>>
> >>> So introduce new device_dump_limit= kernel parameter, and set the
> >>> default limit to 0, so device dump is not enabled unless user specify
> >>> the accetable maxiam
> >>
> >>         ^^^^ acceptable maximum
> >
> > Will fix this typo.
>
> Ok.
>
> >>> memory usage for device dump data. In this way user
> >>> will also have the chance to adjust the kdump reserved memory
> >>> accordingly.
> >>
> >> Hmmm., this doesn't give much confidence with the
> >> PROC_VMCORE_DEVICE_DUMP feature in its current shape. Rather shouldn't
> >> we be enabling config PROC_VMCORE_DEVICE_DUMP only under EXPERT mode for
> >> now, considering that this feature needs further thrashing and testing
> >> with real setups including platforms where drivers append large amounts
> >> of data to vmcore:
> >
> > I think no need to move it to expert mode, just leave it disabled by
> > default should be better, that should be enough to make sure driver
> > won't append that much memory and cause OOM, while it could still be
> > enabled without changing the kernel, so this feature won't bring extra
> > risk, and could be enabled anytime easily.
>
> I have seen some arm64 users report issues on mailing lists with
> PROC_VMCORE_DEVICE_DUMP enabled as this causes frequent OOM in the arm64
> crash dump kernel.
>
> I think they are using this infrastructure to extend/enable device
> driver debugging on some arm64 platforms and finding issues with the
> crash dump kernel.
>
> I will do some analysis later-on (when I get some spare time) and post a
> patch (if needed) to put the same under EXPERT mode for now.
>
> >> diff --git a/fs/proc/Kconfig b/fs/proc/Kconfig
> >> index 817c02b13b1d..c47a12cf7fc0 100644
> >> --- a/fs/proc/Kconfig
> >> +++ b/fs/proc/Kconfig
> >> @@ -45,7 +45,7 @@ config PROC_VMCORE
> >>            Exports the dump image of crashed kernel in ELF format.
> >>
> >>    config PROC_VMCORE_DEVICE_DUMP
> >> -       bool "Device Hardware/Firmware Log Collection"
> >> +       bool "Device Hardware/Firmware Log Collection" if EXPERT
> >>           depends on PROC_VMCORE
> >>           default n
> >>           help
> >> @@ -59,6 +59,12 @@ config PROC_VMCORE_DEVICE_DUMP
> >>             If you say Y here, the collected device dumps will be added
> >>             as ELF notes to /proc/vmcore.
> >>
> >> +         Considering that there can be device drivers which append
> >> +         large amounts of data to vmcore, you should say N here unless
> >> +         you are reserving a large chunk of memory for crashdump
> >> +         kernel, because otherwise the crashdump kernel might become
> >> +         unusable due to OOM issues.
> >> +
> >>
> >> May be you can add a 'Fixes:' tag here.
> >
> > Problem is previous commit seems not broken, just bring extra memory
> > stress. Is "Fixes:" tag suitable for this commit?
>
> I think since the earlier patch causes an OOM, it would be better to
> atleast mention it in the git log (for easier git bisect later on).
>
> If not the 'Fixes:' tag may be we can use a 'Since commit ..' like
> wording in the commit log.
>
> >>> Signed-off-by: Kairui Song <kasong@redhat.com>
> >>> ---
> >>>    fs/proc/vmcore.c | 20 ++++++++++++++++++++
> >>>    1 file changed, 20 insertions(+)
> >>>
> >>> diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> >>> index 3fe90443c1bb..e28695ef2439 100644
> >>> --- a/fs/proc/vmcore.c
> >>> +++ b/fs/proc/vmcore.c
> >>> @@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
> >>>    /* Device Dump list and mutex to synchronize access to list */
> >>>    static LIST_HEAD(vmcoredd_list);
> >>>    static DEFINE_MUTEX(vmcoredd_mutex);
> >>> +
> >>> +/* Device Dump Limit */
> >>> +static size_t vmcoredd_limit;
> >>>    #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >>>
> >>>    /* Device Dump Size */
> >>> @@ -1465,6 +1468,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >>>        data_size = roundup(sizeof(struct vmcoredd_header) + data->size,
> >>>                            PAGE_SIZE);
> >>>
> >>> +     if (vmcoredd_orig_sz + data_size >= vmcoredd_limit) {
> >>> +             ret = -ENOMEM;
> >>
> >> Should we be adding a WARN() here to let the user know that the device
> >> dump data will not be available in vmcore?
> >
> > Yes, that could be very helpful. How about pr_err_once? WARN is too
> > noise, just give a hint to the user that device dump is disabled
> > should be enough, so user will know why device dump data is not
> > present and will just enable it.
>
> Sure, pr_err() should be OK as well.
>
> >>> +             goto out_err;
> >>> +     }
> >>> +
> >>>        /* Allocate buffer for driver's to write their dumps */
> >>>        buf = vmcore_alloc_buf(data_size);
> >>>        if (!buf) {
> >>> @@ -1502,6 +1510,18 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >>>        return ret;
> >>>    }
> >>>    EXPORT_SYMBOL(vmcore_add_device_dump);
> >>> +
> >>> +static int __init parse_vmcoredd_limit(char *arg)
> >>> +{
> >>> +     char *end;
> >>> +
> >>> +     if (!arg)
> >>> +             return -EINVAL;
> >>> +     vmcoredd_limit = memparse(arg, &end);
> >>> +     return end > arg ? 0 : -EINVAL;
> >>> +
> >>> +}
> >>> +__setup("device_dump_limit=", parse_vmcoredd_limit);
> >>
> >> We should be adding this boot argument and its description to
> >> 'Documentation/admin-guide/kernel-parameters.txt'
> >
> > Good suggestion, will update the document.
> >
> >>
> >>>    #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >>>
> >>>    /* Free all dumps in vmcore device dump list */
> >>>
>
> Thanks,
> Bhupesh

Thanks for the reply, I've updated the patch accordingly and sent V2.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
