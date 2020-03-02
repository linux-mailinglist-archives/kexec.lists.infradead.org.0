Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 222EF175A8D
	for <lists+kexec@lfdr.de>; Mon,  2 Mar 2020 13:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QY6in/20iBda/FXroQGzV5nCSFCssWbLWf1XrIwW0Y=; b=a3iHfRqDqCPa/k
	h2LOzE0J/TLi/fbeguFEu2kvlYStDlLB6ZqNB613oWnZa90/341tpo04OEFqsLFwcr6Or3y/KRfwc
	889HJs9t+WtP0oaSyxQODZELrFMaE8fu6hO39KrhSadcpRgFT7GMH5bfFu7KA35ECFlUKANgjOCFL
	U5vCAcEKPUt293+nw6Htop4loz0QHGshfd7Y/IMIDzzS1a5+QTXi+RFv5x+wjbMBljUdenJQZPfIm
	1K23MzDSSs+JOw2uBCwdbEkQURr84p5WI6YLyRHWJy49TY7vZ4XZCIbefGxWCrPCWpcJe88NchcZY
	Jrocae00pB+SEq4hNqUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kFn-0001zR-TW; Mon, 02 Mar 2020 12:32:59 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kFl-0001xy-4d
 for kexec@lists.infradead.org; Mon, 02 Mar 2020 12:32:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 8467FAC9A;
 Mon,  2 Mar 2020 12:32:51 +0000 (UTC)
Date: Mon, 2 Mar 2020 13:32:49 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
Message-ID: <20200302123249.6khdqpneu7t6l35s@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
 <87r1ybujm5.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87r1ybujm5.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_043257_327561_365EA794 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon 2020-03-02 11:38:42, John Ogness wrote:
> On 2020-02-21, Petr Mladek <pmladek@suse.com> wrote:
> >> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> >> new file mode 100644
> >> index 000000000000..796257f226ee
> >> --- /dev/null
> >> +++ b/kernel/printk/printk_ringbuffer.c
> >> +/*
> >> + * Read the record @id and verify that it is committed and has the sequence
> >> + * number @seq. On success, 0 is returned.
> >> + *
> >> + * Error return values:
> >> + * -EINVAL: A committed record @seq does not exist.
> >> + * -ENOENT: The record @seq exists, but its data is not available. This is a
> >> + *          valid record, so readers should continue with the next seq.
> >> + */
> >> +static int desc_read_committed(struct prb_desc_ring *desc_ring,
> >> +			       unsigned long id, u64 seq,
> >> +			       struct prb_desc *desc)
> >> +{
> >
> > I was few times confused whether this function reads the descriptor
> > a safe way or not.
> >
> > Please, rename it to make it clear that does only a check.
> > For example, check_state_commited().
> 
> This function _does_ read. It is a helper function of prb_read() to
> _read_ the descriptor. It is an extended version of desc_read() that
> also performs various checks that the descriptor is committed.

I see.

> I will update the function description to be more similar to desc_read()
> so that it is obvious that it is "getting a copy of a specified
> descriptor".

OK, what about having desc_read_by_seq() instead?

Also there is a bug in current desc_read_commited().
desc->info.seq might contain a garbage when d_state is desc_miss
or desc_reserved.

I would change it to:

static enum desc_state
desc_read_by_seq(struct prb_desc_ring *desc_ring,
		 u64 seq, struct prb_desc *desc)
{
	struct prb_desc *rdesc = to_desc(desc_ring, seq);
	atomic_long_t *state_var = &rdesc->state_var;
	id = DESC_ID(atomic_long_read(state_var));
	enum desc_state d_state;

	d_state = desc_read(desc_ring, id, desc);
	if (d_state == desc_miss ||
	    d_state == desc_reserved ||
	    desc->info.seq != seq)
		return -EINVAL;

	if (d_state == desc_reusable)
		return -ENOENT;

	if (d_state != desc_committed)
		return -EINVAL;

	return 0;
}

Best Regards,
Petr

PS: I am going to dive into the barriers again to answer the last
letter about them.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
