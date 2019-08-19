Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C04894DD1
	for <lists+kexec@lfdr.de>; Mon, 19 Aug 2019 21:22:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mCQyanki90UEyJxry/O5gQMUYodaRbyR+DK2ugwPumM=; b=GhqQPNM+zfd80A
	lc1ckJNXiwPJRJysCZGri+V9FAKqPr8I0nGGNmCfUer2swt0p0h81rUfYzQf9JYlCUBqTCf493Om3
	u8JtP38TtN6+BDBRth9i7Xb/z0D/tW0B+UzoU762htIepJh9GOmm2Ea9gktWxqgh6qUvrNe/koHth
	pyLmvcH0pPamer64C88P0lzD5+SL9XQXgkA9Pg1X7F4KnIV195urAQgWuVx4Yo26wyLJr/WnVIq3J
	OgCtCsAInPKAZhNpqPslSaYYMYVFsHdIU8h0Up8tOqUr/+MIMCNEUZQ40x5aArYDp5JfpBrpwfa2C
	rLCoB68DeJjN8Ye1uUZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznEq-00072a-1j; Mon, 19 Aug 2019 19:22:44 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznEk-00071k-Qj
 for kexec@lists.infradead.org; Mon, 19 Aug 2019 19:22:40 +0000
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B031F693F5
 for <kexec@lists.infradead.org>; Mon, 19 Aug 2019 19:22:37 +0000 (UTC)
Received: by mail-lj1-f198.google.com with SMTP id m2so719724ljj.0
 for <kexec@lists.infradead.org>; Mon, 19 Aug 2019 12:22:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=shxcrLkfsEBrioelSH6w3/c8mD/d7vbUGU0p8dS0ws0=;
 b=crv+oucQe2jDV4pHvZkUbUpjR3evWyMdkVw36+bAze5rHPnLl4nX7XnzK71rGXL2Ni
 u07b2IuNSkomn25ng6HzabHB2Lv/FGdSHbEFB+INSry4kUVcD18WKZCKQWVZnZOOnmKk
 aZvYcaHP0zxuspFX//CjZmKx3ZdN6DfSLr6og9zRpKGMhe/8HJktjXNC/1zj8xybEUfa
 OEWU27FC8FjuE5WrQbMpN2n7h949wcGrC0E3SSgOiofzuoxkuJg/RatdtDhpyOxPYjmZ
 he0Ye/j/r+UohX9A/+31yLHQBLCEiQsX+9Nu7iYGacwvKRWaakLPZk21M4dHahiZ8tDe
 SVcw==
X-Gm-Message-State: APjAAAVgORMIQcncaUfP9RM3VUES28diVzuNL6jhKN5qHn5ry0pZtNtI
 BxepRY/ChLQ7pSdx1v027Xs68jV+9aZRJ6byoM7Mq9DaOmKP3bZ1PuboOGsb3kuPs6Le7njL4hk
 W2B2QD2WtGixhE1ZUcTXh/WMxOxe42pb9dnCp
X-Received: by 2002:a2e:91d1:: with SMTP id u17mr13041566ljg.98.1566242556198; 
 Mon, 19 Aug 2019 12:22:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyRWNr3I58i6QFNDH/EC72IurPHnix5uQ8Dy07ekPaTunafnFVjFf6lUv7gIQNhXxMGTAuvJOe6EbiacwxwN2I=
X-Received: by 2002:a2e:91d1:: with SMTP id u17mr13041556ljg.98.1566242555985; 
 Mon, 19 Aug 2019 12:22:35 -0700 (PDT)
MIME-Version: 1.0
References: <1d18de74-76e3-823c-7480-fad1d6012026@molgen.mpg.de>
In-Reply-To: <1d18de74-76e3-823c-7480-fad1d6012026@molgen.mpg.de>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 20 Aug 2019 00:52:23 +0530
Message-ID: <CACi5LpMr7dcnZz_THLd=QH==6t7mbkD7Gw-PhodeMXmoM0CaXg@mail.gmail.com>
Subject: Re: Brocken/incomplete `/proc/vmcore`
To: Paul Menzel <pmenzel@molgen.mpg.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122238_905593_1BBC6A47 
X-CRM114-Status: GOOD (  17.56  )
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
Cc: Baoquan He <bhe@redhat.com>, kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dave Young <dyoung@redhat.com>, Donald Buczek <buczek@molgen.mpg.de>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Paul,

On Mon, Aug 19, 2019 at 1:59 PM Paul Menzel <pmenzel@molgen.mpg.de> wrote:
>
> Dear Linux folks,
>
>
> Using Linux 4.19.57 (configuration attached), crashing the system, and
> starting it using the same Linux kernel as crash kernel, the available
> `/proc/vmcore` seems to be incomplete.
>
> Running GDB commands, working with `/proc/kcore`, do not work with
> `/proc/vmcore`, and the addresses are not there.
>
> In the running system, iterating through the tasks works.
>
> ```
> macro define offsetof(type, member) ((size_t)(&((type *)0)->member))
> macro define container_of(ptr,type,member)  ((type *)((size_t)ptr-offsetof(type,member)))
> ```
>
> ### /proc/kcore ###
>
> ```
> Core was generated by `BOOT_IMAGE=/boot/bzImage-4.19.57.mx64.286 root=LABEL=root ro crashkernel=512M c'.
> #0  0x0000000000000000 in irq_stack_union ()
> (gdb) source gdb-macros.txt
> (gdb) set $t=&init_task
> (gdb) print $t->tasks
> $1 = {next = 0xffff889ffbb0f080, prev = 0xffff88bff9b09300}
> (gdb) print $t->pid
> $2 = 0
> (gdb) set $t=container_of($t->tasks->next,struct task_struct,tasks)
> (gdb) print $t->tasks
> $3 = {next = 0xffff889ffbb0e340, prev = 0xffffffff82411a80 <init_task+768>}
> (gdb) print $t->pid
> $4 = 1
> (gdb) set $t=container_of($t->tasks->next,struct task_struct,tasks)
> (gdb) print $t->tasks
> $5 = {next = 0xffff889ffbb530c0, prev = 0xffff889ffbb0f080}
> (gdb) print $t->pid
> $6 = 2
> ```
>
> ### /proc/vmcore ###
>
> After the crash by SysRQ trigger, values in `/proc/vmcore` are incorrect.
>
> ```
> (gdb) set $t=&init_task
> (gdb) print $t->tasks
> $1 = {next = 0xffff889ffbb0f080, prev = 0xffff88bff9b09300}
> (gdb) print $t->pid
> $2 = 0
> (gdb) set $t=container_of($t->tasks->next,struct task_struct,tasks)
> (gdb) print $t->tasks
> $3 = {next = 0x0 <irq_stack_union>, prev = 0x0 <irq_stack_union>}
> (gdb) print $t->pid
> $4 = 0
> ```
>
> We can reproduce this in a virtual machine and on a big server.

Looking at the attached config file it seems the underlying arch is
x86_64, but there are a few things missing from your email which can
help suggest solutions better:

1. Can you please share bootargs provided to the kdump kernel,
2. Please share the kexec-tools version that you are using:
    $ kexec --version
3. Do you notice any specific warning/error messages on the console
when the second (kdump) kernel executes - better still if you can
share a snippet of the second kernel's console messages - it will
further help in suggesting debug points for this issue.

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
