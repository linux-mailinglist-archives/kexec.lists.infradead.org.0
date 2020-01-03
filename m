Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87D112F6B4
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 11:24:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RQIFJ+QnIbUnVUYBH3n3clw4pUvKU8W3M1cowqEwwmQ=; b=i4Yn/1wpa+eXUf
	VHwcGLfCo8PhTh03zKZt6aq7egmEfqd50yS0+A99mxY3oXUw2wns8IS1RSqh9TQB75abxaiEN3Kij
	ypMFywUoSxJKUazU28netB0nEyw2b7Cyqh3oAt1pMu7u2E01RRKv4VzCjKFBkYtjFShmlE9oxXux+
	IxhEiC0H+v+zykkC9I8EnWAxsxY/thaij/X3TXTK7xPZfXZvbVmHHVKDrHa0ev6BYHRPoEAFo7Z8F
	9kGHEf4FYeTQVxC0rlFWuXLTdoLCnzfJiA+T4ZJjQaytsOV8d8Rnf0Ybz4dCL+K9dxeoq+d5rjWIX
	nAqbkyn48BgzVFloi5iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inK86-0005En-O2; Fri, 03 Jan 2020 10:24:30 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inK83-0005Dn-DF
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 10:24:29 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C2B03B266;
 Fri,  3 Jan 2020 10:24:22 +0000 (UTC)
Date: Fri, 3 Jan 2020 11:24:20 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20200103102420.n6i5chgxaygfvx5h@pathway.suse.cz>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191221142235.GA7824@andrea> <87imm7820z.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87imm7820z.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_022427_733861_80A4DF15 
X-CRM114-Status: GOOD (  20.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon 2019-12-23 17:01:00, John Ogness wrote:
> Hi Andrea,
> 
> On 2019-12-21, Andrea Parri <parri.andrea@gmail.com> wrote:
> >> +	*desc_out = READ_ONCE(*desc);
> >> +
> >> +	/* Load data before re-checking state. */
> >> +	smp_rmb(); /* matches LMM_REF(desc_reserve:A) */
> >
> > I looked for a matching WRITE_ONCE() or some other type of marked write,
> > but I could not find it.  What is the rationale?  Or what did I miss?

Good question. READ_ONCE() looks superfluous here because it is
surrounded by two read barriers. In each case, there is no
corresponding WRITE_ONCE().

Note that we are copying the entire struct prb_desc here. All values
are written only when state_val is in desc_reserved state. It happens
between two full write barriers:

  + A writer is allowed to modify the descriptor after successful
    cmpxchg in desc_reserve(), see LMM_TAG(desc_reserve:A).

  + The writer must not touch the descriptor after changing
    state_var to committed state, see
    LMM_TAG(prb_commit:A) in prb_commit().

These barriers are mentioned in the comments for the two
read barriers here.

> >> +	do {
> >> +		next_lpos = get_next_lpos(data_ring, begin_lpos, size);
> >> +
> >> +		if (!data_push_tail(rb, data_ring,
> >> +				    next_lpos - DATA_SIZE(data_ring))) {
> >> +			/* Failed to allocate, specify a data-less block. */
> >> +			blk_lpos->begin = INVALID_LPOS;
> >> +			blk_lpos->next = INVALID_LPOS;
> >> +			return NULL;
> >> +		}
> >> +	} while (!atomic_long_try_cmpxchg(&data_ring->head_lpos, &begin_lpos,
> >> +					  next_lpos));
> >> +
> >> +	/*
> >> +	 * No barrier is needed here. The data validity is defined by
> >> +	 * the state of the associated descriptor. They are marked as
> >> +	 * invalid at the moment. And only the winner of the above
> >> +	 * cmpxchg() could write here.
> >> +	 */
> >
> > The (successful) CMPXCHG provides a full barrier.  This comment suggests
> > that that could be somehow relaxed?  Or the comment could be improved?
> 
> You are correct. There is no need for the full barrier here. This code
> is based on Petr's POC. I focussed on making sure needed barriers are in
> place, but did not try to eliminate excessive barriers.

I hope that I'll get better understanding of the guarantees
of different atomic operations one day. There are so many variants now.

BTW: Documentation/memory-barriers.txt describes various aspects of
the memory barriers. It describes implicit barriers provided
by spin locks, mutexes, semaphores, and various scheduler-related
operations.

But I can't find any explanation of the various variants of the atomic
operations: acquire, release, fetch, return, try, relaxed. I can find
some clues here and there but it is hard to get the picture.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
