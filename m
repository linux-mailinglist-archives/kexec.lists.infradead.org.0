Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515471772EB
	for <lists+kexec@lfdr.de>; Tue,  3 Mar 2020 10:48:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sxb03YBe3rUCY/wqqMM4IPX4PXXnNeDBpjDnielpHaA=; b=BJt5y/3WEHiPBp
	uJzFMQb/7IEzpY8tD5rSkj13D75CGTyaV531pgId5chCdSNR5eUu2VIxrRoKiL+tf4aridUjGXLTD
	rJ00gmT2jPr7/76/t6E5nDkWw0AyzhXHkp2/0O8PptXxIMVIjIQHvmMwzLtTXcUgPzVOa/O6sjEP7
	7X2N1DW1iHWk4+MFC3gIELHOZmPhenSTBxY/o6Xm+vLp8PsYThBML0CToentX0kTmsvTYfxJRvKXx
	rl9oH7l5Y+nsniA1B2YvZREAhVUKEWxtn+N91fiiXnuVf+FfmwJFUBeEHbpNfR73Fnt26hU5o7znL
	vBpF/6mMA3mb1TrGxHng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j949r-0000HQ-Cz; Tue, 03 Mar 2020 09:48:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j949i-00006U-6p
 for kexec@lists.infradead.org; Tue, 03 Mar 2020 09:48:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D5375AD33;
 Tue,  3 Mar 2020 09:47:58 +0000 (UTC)
Date: Tue, 3 Mar 2020 10:47:58 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
Message-ID: <20200303094758.ubylqjqns7zbg6gb@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
 <87r1ybujm5.fsf@linutronix.de>
 <20200302123249.6khdqpneu7t6l35s@pathway.suse.cz>
 <87a74yrhwy.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87a74yrhwy.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_014802_549416_CFAF1C39 
X-CRM114-Status: GOOD (  24.78  )
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

On Mon 2020-03-02 14:43:41, John Ogness wrote:
> On 2020-03-02, Petr Mladek <pmladek@suse.com> wrote:
> >>>> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> >>>> new file mode 100644
> >>>> index 000000000000..796257f226ee
> >>>> --- /dev/null
> >>>> +++ b/kernel/printk/printk_ringbuffer.c
> >>>> +/*
> >>>> + * Read the record @id and verify that it is committed and has the sequence
> >>>> + * number @seq. On success, 0 is returned.
> >>>> + *
> >>>> + * Error return values:
> >>>> + * -EINVAL: A committed record @seq does not exist.
> >>>> + * -ENOENT: The record @seq exists, but its data is not available. This is a
> >>>> + *          valid record, so readers should continue with the next seq.
> >>>> + */
> >>>> +static int desc_read_committed(struct prb_desc_ring *desc_ring,
> >>>> +			       unsigned long id, u64 seq,
> >>>> +			       struct prb_desc *desc)
> >>>> +{
> >
> > OK, what about having desc_read_by_seq() instead?
> 
> Well, it isn't actually "reading by seq". @seq is there for additional
> verification. Yes, prb_read() is deriving @id from @seq. But it only
> does this once and uses that value for both calls.

I do not want to nitpick about words. If I get it properly,
the "id" is not important here. Any "id" is fine as long as
"seq" matches. Reading "id" once is just an optimization.

I do not resist on the change. It was just an idea how to
avoid confusion. I was confused more than once. But I might
be the only one. The more strightforward code looked more
important to me than the optimization.


> > Also there is a bug in current desc_read_commited().
> > desc->info.seq might contain a garbage when d_state is desc_miss
> > or desc_reserved.
> 
> It is not a bug. In both of those cases, -EINVAL is the correct return
> value.

No, it is a bug. If info is not read and contains garbage then the
following check may pass by chance:

	if (desc->info.seq != seq)
		return -EINVAL;

Then the function would return 0 even when desc_read() returned
desc_miss or desc_reserved.


> > I would change it to:
> >
> > static enum desc_state
> > desc_read_by_seq(struct prb_desc_ring *desc_ring,
> > 		 u64 seq, struct prb_desc *desc)
> > {
> > 	struct prb_desc *rdesc = to_desc(desc_ring, seq);
> > 	atomic_long_t *state_var = &rdesc->state_var;
> > 	id = DESC_ID(atomic_long_read(state_var));
> 
> I think it is error-prone to re-read @state_var here. It is lockless
> shared data. desc_read_committed() is called twice in prb_read() and it
> is expected that both calls are using the same @id.

It is not error prone. If "id" changes then "seq" will not match.

> > 	enum desc_state d_state;
> >
> > 	d_state = desc_read(desc_ring, id, desc);
> > 	if (d_state == desc_miss ||
> > 	    d_state == desc_reserved ||
> > 	    desc->info.seq != seq)
> > 		return -EINVAL;
> >
> > 	if (d_state == desc_reusable)
> > 		return -ENOENT;
> 
> I can use this refactoring.

Yes please, "else" is not needed.

> >
> > 	if (d_state != desc_committed)
> > 		return -EINVAL;
> 
> I suppose you meant to remove this check and leave in the @blk_lpos
> check instead.

Good catch, this check is superfluous.

> If we're trying to minimize lines of code, the @blk_lpos
> check could be combined with the "== desc_reusable" check as well.

Minimizing the lines of code was not my primary goal. I was just
confused by the function name. Also the fact that "seq" was the
important thing was well hidden.

Best Regards,
Petr

PS: I dived into the barriers and got lost. I hope that I will
be able to send something sensible in the end ;-)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
