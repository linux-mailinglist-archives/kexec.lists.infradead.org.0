Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A00D8FA84
	for <lists+kexec@lfdr.de>; Fri, 16 Aug 2019 07:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdAcGSXkshJwqThXudmyKg05GusuGXRPtDcWD99fDSY=; b=XwfM2h2qDeIHvx
	MZwhzIZfbKrG1pUYCTCK3kd4Q7jnp1sefB0HHqUfrneDMwLVdh/f7smBgYSX2/R3jjZPB15QsOYq7
	43Lc0nmGOpJWQU268aK91lSZNf/kBGkDqR9qlVV45lsfMY47HwSIDzEUHCoL50aR8bOh+2FPCjaAs
	N4sqbxJFVj3Si7VsLRGDENH6+I/WzoRRs2QDyHqZN+u6tGpRD6mK5yJGUuNhcYO7fJqZYnXVb8UAC
	TZ2FfAqbDEtYbSmpTwNOu/6qaGr2Pbu5+16q+CTesfTBul47Wxuy5F05HwEX3aLgiObQ/hDJ6wL0I
	UzxmOnwZyAoiux27kl1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyVC2-0002KC-1a; Fri, 16 Aug 2019 05:54:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyVBx-0002Js-KI
 for kexec@lists.infradead.org; Fri, 16 Aug 2019 05:54:26 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 32C2D308FC20;
 Fri, 16 Aug 2019 05:54:25 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-126.pek2.redhat.com
 [10.72.12.126])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B528F5C1D6;
 Fri, 16 Aug 2019 05:54:19 +0000 (UTC)
Date: Fri, 16 Aug 2019 13:54:16 +0800
From: Dave Young <dyoung@redhat.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v4 9/9] printk: use a new ringbuffer implementation
Message-ID: <20190816055416.GA4460@dhcp-128-65.nay.redhat.com>
References: <20190807222634.1723-1-john.ogness@linutronix.de>
 <20190807222634.1723-10-john.ogness@linutronix.de>
 <20190816054651.GA4403@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816054651.GA4403@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Fri, 16 Aug 2019 05:54:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_225425_700041_687C4AD0 
X-CRM114-Status: GOOD (  21.88  )
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Petr Mladek <pmladek@suse.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Simon Horman <horms@verge.net.au>, Thomas Gleixner <tglx@linutronix.de>,
 David Woodhouse <dwmw2@infradead.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/16/19 at 01:46pm, Dave Young wrote:
> John, can you cc kexec list for your later series?
> 
> On 08/08/19 at 12:32am, John Ogness wrote:
> > This is a major change because the API (and underlying workings)
> > of the new ringbuffer are completely different than the previous
> > ringbuffer. Since there are several components of the printk
> > infrastructure that use the ringbuffer API (console, /dev/kmsg,
> > syslog, kmsg_dump), there are quite a few changes throughout the
> > printk implementation.
> > 
> > This is also a conservative change because it continues to use the
> > logbuf_lock raw spinlock even though the new ringbuffer is lockless.
> > 
> > The externally visible changes are:
> > 
> > 1. The exported vmcore info has changed:
> > 
> >     - VMCOREINFO_SYMBOL(log_buf);
> >     - VMCOREINFO_SYMBOL(log_buf_len);
> >     - VMCOREINFO_SYMBOL(log_first_idx);
> >     - VMCOREINFO_SYMBOL(clear_idx);
> >     - VMCOREINFO_SYMBOL(log_next_idx);
> >     + VMCOREINFO_SYMBOL(printk_rb_static);
> >     + VMCOREINFO_SYMBOL(printk_rb_dynamic);
> 
> I assumed this needs some userspace work in kexec,  how did you test
> them?
> 
> makedumpfile should need changes to dump the kernel log.
> 
> Also kexec-tools includes a vmcore-dmesg.c to extrace dmesg from
> /proc/vmcore.
> 
> > 
> > 2. For the CONFIG_PPC_POWERNV powerpc platform, kernel log buffer
> >    registration is no longer available because there is no longer
> >    a single contigous block of memory to represent all of the
> >    ringbuffer.
> > 
> > Signed-off-by: John Ogness <john.ogness@linutronix.de>
> > ---
> >  arch/powerpc/platforms/powernv/opal.c |  22 +-
> >  include/linux/kmsg_dump.h             |   6 +-
> >  include/linux/printk.h                |  12 -
> >  kernel/printk/printk.c                | 745 ++++++++++++++------------
> >  kernel/printk/ringbuffer.h            |  24 +
> >  5 files changed, 415 insertions(+), 394 deletions(-)
> > 

[snip]

Seems kexec list has 40k limitation for msg body.  Simon and David, maybe it is
too small?

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
