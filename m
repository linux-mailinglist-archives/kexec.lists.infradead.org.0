Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4AB81AED2
	for <lists+kexec@lfdr.de>; Mon, 13 May 2019 04:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLtRCeAPDc4kw5vHBdkSJmCSP6XxY42EJ0G7VCGOwdE=; b=Y/rsCUfztlJqTk
	XFewFCdxtmzNrj7T5A/vYafYiMGlWVK4p+be0hCMSf3TUMwt33Hv0mdQkA98cFnVOTb2A7Pf296pk
	l7ihiutjVvs/IN++fOssz1NcHMMYPEXKcmeYFVnqdZhejknv+4+UVsbzQ7j/Oa7PV84hdv/dmrUj5
	YaOP6YYRvpuWHdnqxfyrgVWBukb19yWUk8oWsVsoTlToFblQ9YYKeFMTVCBxzs05q3Qw+v9I7Kt0c
	MjSt2xMn6T0wMxa+TzgEKtHIvS1SR2SNwkheX0763h0geWtwiVgOKwUvCoTezYVy7CMaUnl4DWnjB
	5sQdcJSsEXvSLovjrz+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ0Yo-0005u1-FV; Mon, 13 May 2019 02:19:26 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ0Yj-0005tK-IL
 for kexec@lists.infradead.org; Mon, 13 May 2019 02:19:23 +0000
Received: by mail-io1-f67.google.com with SMTP id q21so5581529iog.13
 for <kexec@lists.infradead.org>; Sun, 12 May 2019 19:19:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0YBhbwDYDQaaP8Q10VnTc/btcudJfr9E3ZfK2SxCdhk=;
 b=FmAz1DsG0/IIi+ivYAYUf7j956NTOvn9OWi+9GfKdCtHSHwSTVlie+Bp7wzolbySho
 oKOrBHg6KtlF4JG2hI0qgLPKi43rcIrJKrze2RnAI2qDlWmDisCdq5/dIluxZmE21qbh
 HxmtWVnh5EjcTzIUTUYHSp8hQ+Nc+VOFuxe+KLdRofz4LXtQHoS7aFlQNnFLd0addw02
 ol8JLU/Y2RSUnM81vM20S4rEJDMSl8okacgmZ9oASUahXUEsJJwiRh08RCwYR6HUKcqe
 viUXnbqJG5889n/J5jMxbyQzu4YYgC5BlLhRe+D4q8vp3k5RC/HXuAZZ+/bT4IgBd865
 Hkng==
X-Gm-Message-State: APjAAAXSZRApO8t0hraRaRcffCqW31yL+4J0rBFFTco7ELc8jpUombeP
 70fo6yqPJEwxCoVnGZkx5Klwmy2H/LlfUKmuQ/65hQ==
X-Google-Smtp-Source: APXvYqxSjKkZk82Y54ujLVRJgcrrrKogjwMJkYhxpeZmx46iKS1c74Y9SdqcEl/G4NjTc0/EPvfw8FuBhmHk3VLVwAY=
X-Received: by 2002:a5d:83c5:: with SMTP id u5mr14476328ior.137.1557713959523; 
 Sun, 12 May 2019 19:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190510102051.25647-1-kasong@redhat.com>
 <20190513015241.GA8515@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190513015241.GA8515@dhcp-128-65.nay.redhat.com>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 13 May 2019 10:19:09 +0800
Message-ID: <CACPcB9ezEbAzGadCwvVQGgCA+XP2tzCZbvT7ytiSk98O_unXZQ@mail.gmail.com>
Subject: Re: [RFC PATCH] vmcore: Add a kernel cmdline device_dump_limit
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_191921_607433_6E7748E4 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
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
 Alexey Dobriyan <adobriyan@gmail.com>, Ganesh Goudar <ganeshgr@chelsio.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 9:52 AM Dave Young <dyoung@redhat.com> wrote:
>
> On 05/10/19 at 06:20pm, Kairui Song wrote:
> > Device dump allow drivers to add device related dump data to vmcore as
> > they want. This have a potential issue, the data is stored in memory,
> > drivers may append too much data and use too much memory. The vmcore is
> > typically used in a kdump kernel which runs in a pre-reserved small
> > chunk of memory. So as a result it will make kdump unusable at all due
> > to OOM issues.
> >
> > So introduce new device_dump_limit= kernel parameter, and set the
> > default limit to 0, so device dump is not enabled unless user specify
> > the accetable maxiam memory usage for device dump data. In this way user
> > will also have the chance to adjust the kdump reserved memory
> > accordingly.
>
> The device dump is only affective in kdump 2nd kernel, so add the
> limitation seems not useful.  One is hard to know the correct size
> unless one does some crash test.  If one did the test and want to eanble
> the device dump he needs increase crashkernel= size in 1st kernel and
> add the limit param in 2nd kernel.
>
> So a global on/off param sounds easier and better, something like
> vmcore_device_dump=on  (default is off)

Yes, on/off could be another way to solve this issue, the size limit
could being more flexibility, if device dump is not asking for too
much memory then it would just work but bring extra complexity indeed.
Considering it's actually hard to know how much memory is needed for
the device dump drivers to work, I'll update to use the on/off cmdline
then.

>
> >
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >  fs/proc/vmcore.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/fs/proc/vmcore.c b/fs/proc/vmcore.c
> > index 3fe90443c1bb..e28695ef2439 100644
> > --- a/fs/proc/vmcore.c
> > +++ b/fs/proc/vmcore.c
> > @@ -53,6 +53,9 @@ static struct proc_dir_entry *proc_vmcore;
> >  /* Device Dump list and mutex to synchronize access to list */
> >  static LIST_HEAD(vmcoredd_list);
> >  static DEFINE_MUTEX(vmcoredd_mutex);
> > +
> > +/* Device Dump Limit */
> > +static size_t vmcoredd_limit;
> >  #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >
> >  /* Device Dump Size */
> > @@ -1465,6 +1468,11 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >       data_size = roundup(sizeof(struct vmcoredd_header) + data->size,
> >                           PAGE_SIZE);
> >
> > +     if (vmcoredd_orig_sz + data_size >= vmcoredd_limit) {
> > +             ret = -ENOMEM;
> > +             goto out_err;
> > +     }
> > +
> >       /* Allocate buffer for driver's to write their dumps */
> >       buf = vmcore_alloc_buf(data_size);
> >       if (!buf) {
> > @@ -1502,6 +1510,18 @@ int vmcore_add_device_dump(struct vmcoredd_data *data)
> >       return ret;
> >  }
> >  EXPORT_SYMBOL(vmcore_add_device_dump);
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
> >  #endif /* CONFIG_PROC_VMCORE_DEVICE_DUMP */
> >
> >  /* Free all dumps in vmcore device dump list */
> > --
> > 2.20.1
> >
>
> Thanks
> Dave



-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
