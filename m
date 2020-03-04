Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A309E17981D
	for <lists+kexec@lfdr.de>; Wed,  4 Mar 2020 19:40:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJp60GDYGX2CfaH+b8lbHkOzDFiYBNEYV3QzAUe0XMw=; b=RgJdeq9lla4Opq
	ciPblXWW4P6+WoST5/YxDgiHLd5RVUSw4+j4xtyH6c/PXqpCAHADDLa5rZcDJGutyI+MwLYVOh/bP
	og7G4jF88r7t3GPFnfK9PzIcUMwk8waaDgbGkfztqsK5PHyDErfDIKyfBNMGWDLpUO/C7UTzuewno
	lPuYN9kkIRwTBcgrjtu6CbWC/fnpQ+TA2+6ThZ5ffqUYLKcEjRxIAd1v/V6qL8Pa3xuGUOPB+0kqm
	IXRl6nIV1TPLc3IvlsvQ7BwNVFqp16254yqhxs3ucH6THrw1jH7Klz+6dwztc3dAJtwuJ4DTuF2B7
	JmKYOlIUyBIrGMwj2PhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9YwC-0003G8-9S; Wed, 04 Mar 2020 18:40:08 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Yw7-0002XW-6i
 for kexec@lists.infradead.org; Wed, 04 Mar 2020 18:40:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583347200;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=uuSNVy8hpsbKlTHAETnkgvtNNUU4K5+s3PC+VVRjg8M=;
 b=d8mNEXSbhEhLiCDa9wmnypMALSyttQLL7HyUecGsbWuMAo2S2GbP/UGKNf1Hv8puEkJcWz
 5KEEJloesDfbde9diIAS3mYtTQ6j4Z/e7DZo96aw7jVqfnxuAazUCrPXNASX3qHs/65kXH
 dF5EVZUMalqv9yO17T7cmIrIHycB2zE=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-7JQMRjq3MfKUkQlmHivEDw-1; Wed, 04 Mar 2020 13:39:58 -0500
X-MC-Unique: 7JQMRjq3MfKUkQlmHivEDw-1
Received: by mail-ed1-f69.google.com with SMTP id d12so2248979edq.16
 for <kexec@lists.infradead.org>; Wed, 04 Mar 2020 10:39:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZmnJHa5KlWXTMfbJflMqdNxD1WQv07ftMVGlneG8eLE=;
 b=jHUl2z392gC4ZbZ5swTJn4zBqnn9v8EKG4Z/xJkgNmAjp4twnibIdBtP8cJI/SYKfh
 8qCDrShl8cuDtT2KD1RRE01Xzc9YDl1k8UuRtWBHf36m0i8YtXpDd7W+hL7Q1TzX/Pe5
 7P3rBszrHGZdhIE39OHcM5MZSeTWDO8Mavp7XDhD/hBtb3RRMgk3mptgUWvIvFDaiU+4
 AxtpYW+vSLVYAGX/o1LX7RMIL0dfJY/+Q6NwByJvvSg/8Pu46kivxt/RphPZFplLyvPm
 9UFVeqk55pewR2v1ZkD9bADnw9R1IiAX0Om5sl+BTSULe6w3ViwHKAmGtivT148eenE3
 3D5Q==
X-Gm-Message-State: ANhLgQ02oWYSwkUocNjCEvVVeHGsV+D+qZDoCXXiMIXI/nTyfSu1yt6A
 z0y2RgAzMjLj+80JnUGdBhJFhNFfjcvfBi9ddI8uo19Fz+YLMSyPFgD8CBPI/lLNTIAjaog0l/L
 Xl8rp/phphlPPztdq5p5su47QGfC+Ss3/b1J+
X-Received: by 2002:a17:906:f90b:: with SMTP id
 lc11mr3549161ejb.169.1583347194671; 
 Wed, 04 Mar 2020 10:39:54 -0800 (PST)
X-Google-Smtp-Source: ADFU+vs4tOb29bPjaEhe0AAJJMeoruWmnCVIgJa3JO1FNW5sL+ZwhyUM/dvWLqEI7E6VPXwExbYY7Z7R1b4dBCteQPI=
X-Received: by 2002:a17:906:f90b:: with SMTP id
 lc11mr3549143ejb.169.1583347194361; 
 Wed, 04 Mar 2020 10:39:54 -0800 (PST)
MIME-Version: 1.0
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Thu, 5 Mar 2020 00:09:42 +0530
Message-ID: <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: Dave Young <dyoung@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_104003_346964_73753EC3 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Guowen Shan <gshan@redhat.com>, Baoquan He <bhe@redhat.com>,
 "Guilherme G. Piccoli" <gpiccoli@canonical.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Vivek Goyal <vgoyal@redhat.com>, Gavin Guo <gavin.guo@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

On Mon, Mar 2, 2020 at 1:39 PM Dave Young <dyoung@redhat.com> wrote:
>
> On 03/02/20 at 12:20am, Bhupesh Sharma wrote:
> > Hi Guilherme,
> >
> > On Sat, Feb 29, 2020 at 10:37 PM Guilherme G. Piccoli
> > <gpiccoli@canonical.com> wrote:
> > >
> > > Hi Bhupesh and Dave (and everybody CC'ed here), I'm Guilherme Piccoli
> > > and I'm working in the same issue observed in RH bugzilla 1758323 [0] -
> > > or at least, it seems to be the the same heh
> >
> > Ok.
> >
> > > The reported issue in my case was that the 2nd kexec fails on Nitro
> > > instanced, and indeed it's reproducible. More than this, it shows as an
> > > initrd corruption. I've found 2 workarounds, using the "new" kexec
> > > syscall (by doing kexec -s -l) and keep the initrd memory "un-freed",
> > > using the kernel parameter "retain_initrd".
> >
> > I have a couple of questions:
> > - How do you conclude that you see an initrd corruption across kexec?
> > Do you print the initial hex contents of initrd across kexec?
>
> I'm also interested if any of you can dump the initrd memory in kernel
> printk log, and then save to somewhere to compare with the original
> initrd content.

I did several overnight tests on the aws machine and can confirm kexec
reboot failure issue (multiple tries) can be seen even with
'retain_initrd' in the kernel bootargs or by using kexec_file_load
('kexec -s -l') instead of plain kexec_load ('kexec -l').

- Here are my observations:

1. Adding 'retain_initrd' to the bootargs, helps delay the kexec
reboot failure (when successive kexec reboots are executed), but the
(possible ?) initrd corruption is still seen (as per the panic logs
from the kexec kernel).

2. I printed the first 4M of initrd file via kernel code (both in the
primary and kexec kernel, see
<https://bugzilla.redhat.com/attachment.cgi?id=1667523> and
<https://bugzilla.redhat.com/attachment.cgi?id=1667521>) and
interestingly the first 4M contents are _exactly_ similar for primary
and kexec kernel, even though we see a (possible ?) initrd corruption.
See logs below from kexec kernel in case of panic:

[    4.229170] Call Trace:
[    4.234379]  dump_stack+0x5c/0x80
[    4.239840]  panic+0xe7/0x2a9
[    4.245291]  do_exit.cold.22+0x59/0x81
[    4.251025]  do_group_exit+0x3a/0xa0
[    4.256784]  __x64_sys_exit_group+0x14/0x20
[    4.262905]  do_syscall_64+0x5b/0x1a0
[    4.268537]  entry_SYSCALL_64_after_hwframe+0x65/0xca
[    4.275784] RIP: 0033:0x7ff749106e2e
[    4.281469] Code: Bad RIP value.
[    4.286981] RSP: 002b:00007fffb6d707f8 EFLAGS: 00000206 ORIG_RAX:
00000000000000e7
[    4.298381] RAX: ffffffffffffffda RBX: 00007ff74910f528 RCX: 00007ff749106e2e
[    4.305616] RDX: 000000000000007f RSI: 000000000000003c RDI: 000000000000007f
[    4.313064] RBP: 00007ff749306000 R08: 00000000000000e7 R09: 00007fffb6d70708
[    4.320369] R10: 0000000000000000 R11: 0000000000000206 R12: 0000000000000000
[    4.327671] R13: 0000000000000022 R14: 00007ff749306148 R15: 00007ff749306030
[    4.335396] Kernel Offset: 0x2a400000 from 0xffffffff81000000
(relocation range: 0xffffffff80000000-0xffffffffbfffffff)
[    4.348002] ---[ end Kernel panic - not syncing: Attempted to kill
init! exitcode=0x00007f00
[    4.348002]  ]---
        2020-03-03T09:01:27+00:00

3. So the root-cause seems to be something else. I will do some more
debugging to evaluate the same.

4. I added two scripts (via
<https://bugzilla.redhat.com/attachment.cgi?id=1667561> and
<https://bugzilla.redhat.com/attachment.cgi?id=1667560>) which provide
an automated reproducer.

This reproducer can be run on the Host machine and launches repeated
kexec reboots on the aws machine.

Normally approx. 5-12 runs of the master script (i.e. kexec reboots)
can lead to a panic in the kexec kernel which indicates a (possible ?)
initrd corruption.

@Guilherme: Can you please help verify the observations on your setup
(both amazon and upstream kernel) using the automated test script?
Thanks.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
