Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5F0161512
	for <lists+kexec@lfdr.de>; Mon, 17 Feb 2020 15:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8w9ojYo4bbGJvRRwxM3bZR+CQm9UBOfX5Y9U6E+WEg=; b=plUxV4Y93NaEmt
	x4i3QLdQu0osKVJ33axSy3LBpYeZfa39Pg2DYLFBma8UVXuVP5EZbziIhHf+m4pIhHtfQl/liqrmf
	2WChEBN9SZMLO1TomGMdQBotMSZiy4h6xRosRRcy/cUWTSeMNFfqfqwEmXDbnStFuVfJaHnbHzKVp
	cuIk86Fj/4D0WG0UnyU7OGhI1g+vnm2MItVxCh1gum/qjbdU2Lgei4yl4+8qlUiqGXCIG+21d7hH5
	dnqWZOmNhmM6RYe7FUin2s3IN2fehuBfJkDNR/tJDkZ5FQIWMehlVVZtT1FJ2Lhu/mLHGW+EqiMbV
	E6tVqkYU5RDfHS8LSirw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3hj6-0002x9-10; Mon, 17 Feb 2020 14:50:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3hj2-0002wK-BV
 for kexec@lists.infradead.org; Mon, 17 Feb 2020 14:50:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 23A52B47D;
 Mon, 17 Feb 2020 14:50:17 +0000 (UTC)
Date: Mon, 17 Feb 2020 15:50:16 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200217145016.7r6b7i5o6tqkaa2x@pathway.suse.cz>
References: <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
 <20200214155639.m5yp3rd2t3vdzfj7@pathway.suse.cz>
 <87blpxbh62.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87blpxbh62.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_065020_541958_85FD9190 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon 2020-02-17 12:13:25, John Ogness wrote:
> On 2020-02-14, Petr Mladek <pmladek@suse.com> wrote:
> >> I oversaw that devkmsg_open() setup a printk_record and so I did not
> >> see to add the extra NULL initialization of text_line_count. There
> >> should be be an initializer function/macro to avoid this danger.
> >> 
> >> John Ogness
> >> 
> >> The quick fixup:
> >> 
> >> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> >> index d0d24ee1d1f4..5ad67ff60cd9 100644
> >> --- a/kernel/printk/printk.c
> >> +++ b/kernel/printk/printk.c
> >> @@ -883,6 +883,7 @@ static int devkmsg_open(struct inode *inode, struct file *file)
> >>  	user->record.text_buf_size = sizeof(user->text_buf);
> >>  	user->record.dict_buf = &user->dict_buf[0];
> >>  	user->record.dict_buf_size = sizeof(user->dict_buf);
> >> +	user->record.text_line_count = NULL;
> >
> > The NULL pointer hidden in the structure also complicates the code
> > reading. It is less obvious when the same function is called
> > only to get the size/count and when real data.
> 
> OK.
> 
> > I played with it and created extra function to get this information.
> >
> > In addition, I had problems to follow the code in
> > record_print_text_inline(). So I tried to reuse the new function
> > and the existing record_printk_text() there.
> >
> > Please, find below a patch that I ended with. I booted a system
> > with this patch. But I guess that I actually did not use the
> > record_print_text_inline(). So, it might be buggy.
> 
> Yes, there are several bugs. But I see where you want to go with this:
> 
> - introduce prb_count_lines() to handle line counting
> 
> - introduce prb_read_valid_info() for only reading meta-data and getting
>   the line count
> 
> - also use prb_count_lines() internally

In addition, I would like share the code between
record_print_text_inline() and record_print_text().

They both do very similar thing and the logic in far from
trivial.

Alternative solution would be to get rid of record_print_text()
and use record_print_text_inline() everywhere. It will have some
advantages:

  + _inline() variant will get real testing
  + no code duplication
  + saving the extra buffer also in console, sysfs, and devkmsg interface.


> I will include these changes in v2. I will still introduce the static
> inlines to initialize records because readers and writers do it
> differently.

Sounds good.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
