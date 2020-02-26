Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E1916FB60
	for <lists+kexec@lfdr.de>; Wed, 26 Feb 2020 10:55:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJRHu/ajfFwg69M9Cwv+6KuoBmT4pZXFUiCT4lel6Go=; b=dpqJHs7XqEQxsn
	LWkq82Enl9Kycuvj6gu04bA5f9a9CGuD3KnEa9dF4ACVeSMu6TbIHKM/OU+3qe2KlTLfqC6tfJAWF
	HLcDxqL455WiXt1QcpCa6IDae44ZheCHIjmsmZKg6xHza5iUlYP3ptoswYut9ynsNFHxAdyCMXNlV
	z6VdEAgZ85WGOypqp2cs1CYrCQewZU7c2K8ImmQXx+kq6WfEap8pDjptxYjg2sOSrxdbIZ3JVoo2I
	lu1GSCatiwQKPsP0hd5Cy34+QIXaoMxCuWJ4U7GdBUUFWoPLx79QrYSbu+AlSrKhVN8qlz68iEVO0
	dOkZJvxWCD9WcjmpuAiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6tPG-0002Mb-1B; Wed, 26 Feb 2020 09:55:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6tPB-0001uo-UP
 for kexec@lists.infradead.org; Wed, 26 Feb 2020 09:55:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 4AD63AAB8;
 Wed, 26 Feb 2020 09:54:57 +0000 (UTC)
Date: Wed, 26 Feb 2020 10:54:56 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: misc details: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200226095456.zrp256asr5ozvlf3@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200217144110.xiqlzhs6ynoqdpun@pathway.suse.cz>
 <87h7zeqvf0.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87h7zeqvf0.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_015502_157071_481367DC 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue 2020-02-25 21:11:31, John Ogness wrote:
> >> --- a/kernel/printk/printk.c
> >> +++ b/kernel/printk/printk.c
> >> - * Every record carries the monotonic timestamp in microseconds, as well as
> >> - * the standard userspace syslog level and syslog facility. The usual
> >> + * Every record meta-data carries the monotonic timestamp in microseconds, as
> >
> > I am afraid that we could not guarantee monotonic timestamp because
> > the writers are not synchronized. I hope that it will not create
> > real problems and we could just remove the word "monotonic" ;-)
> 
> I removed "monotonic". I hope userspace doesn't require the ringbuffer
> to be chronologically sorted. That would explain why the safe buffers
> use bogus timestamps. :-/

The timestamp was not stored into the safe buffers to keep the code
simple. And people request to add the proper timestamps from time
to time.

IMHO, the precise timestamps are more important than ordering. So
people should love the lockless ringbuffer from this POV ;-)


> >> @@ -1974,9 +1966,9 @@ asmlinkage int vprintk_emit(int facility, int level,
> >>  
> >>  	/* This stops the holder of console_sem just where we want him */
> >>  	logbuf_lock_irqsave(flags);
> >> -	curr_log_seq = log_next_seq;
> >> +	pending_output = !prb_read_valid(prb, console_seq, NULL);
> >>  	printed_len = vprintk_store(facility, level, dict, dictlen, fmt, args);
> >> -	pending_output = (curr_log_seq != log_next_seq);
> >> +	pending_output &= prb_read_valid(prb, console_seq, NULL);
> >
> > The original code checked whether vprintk_store() stored the text
> > into the main log buffer or only into the cont buffer.
> >
> > The new code checks whether console is behind which is something
> > different.
> 
> I would argue that they are the same thing in this context. Keep in mind
> that we are under the logbuf_lock. If there was previously nothing
> pending and now there is, this context is the only one that could have
> added it.

Right.

> This logic will change significantly when we remove the locks (and it
> will disappear once we go to kthreads). But we aren't that far at this
> stage and I'd like to keep the general logic somewhat close to the
> current mainline implementation for now.

OK, it is not a big deal from my POV. It is just an optimization.
It can be removed or improved later.

It caught my eyes primary because prb_read_valid() was relatively
complex function. I was not sure if it was worth the effort. But
I am fine with keeping your code for now. It will help to reduce
unrelated behavior changes.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
