Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECC815500E
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 02:40:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZ0m3fooRlnnRhC8jobmUG6114E/Jr5G0nlrBAbXbvI=; b=ZGNgTCD7qb/D+w
	q+wLe6AWyjtZEHNVVFeiNXiM9NaG4tA7bXdHKSOm9C4ua267KGuqizZCTkcMx3M/+voP9aF4l6kvN
	bGVxgiDuEnj7bksJHX/XKnvlS6n5tPRHd3XRvf4xJ1nFRK3HSBbBZhfLWox9maqyXqCjs8sSdRJZO
	kZODgj6eh+gvpeBbWc0PFlYOX07I5NQylKpXbTmlC7Kayc4wcrm/nP7vcIXc66O7uc5PCbjPXrnr1
	1sqvXHfOeAhNoSUlZdxFEU6PYu+XkX+0Jldbg/Xe6nLZBxUXaNk43dLmONf48/OQgPfJ4GSXeW5wl
	aa8lbJS4dkaKbkn7yTcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izsd5-0001pj-AZ; Fri, 07 Feb 2020 01:40:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izsd2-0001oq-4d
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 01:40:21 +0000
Received: from oasis.local.home (unknown [12.174.139.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8DAD220838;
 Fri,  7 Feb 2020 01:40:14 +0000 (UTC)
Date: Thu, 6 Feb 2020 20:40:12 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200206204012.0cbfc941@oasis.local.home>
In-Reply-To: <87wo919grz.fsf@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_174020_205522_71ABB967 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, 05 Feb 2020 16:48:32 +0100
John Ogness <john.ogness@linutronix.de> wrote:

> The quick fixup:
> 
> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> index d0d24ee1d1f4..5ad67ff60cd9 100644
> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c
> @@ -883,6 +883,7 @@ static int devkmsg_open(struct inode *inode, struct file *file)
>  	user->record.text_buf_size = sizeof(user->text_buf);
>  	user->record.dict_buf = &user->dict_buf[0];
>  	user->record.dict_buf_size = sizeof(user->dict_buf);
> +	user->record.text_line_count = NULL;
>  
>  	logbuf_lock_irq();
>  	user->seq = prb_first_seq(prb);

FYI, I used your patch set to test out Konstantin's new get-lore-mbox
script, and then applied them. It locked up on boot up as well, and
applying this appears to fix it.

-- Steve

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
