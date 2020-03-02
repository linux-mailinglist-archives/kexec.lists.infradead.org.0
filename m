Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 075C8175BFB
	for <lists+kexec@lfdr.de>; Mon,  2 Mar 2020 14:43:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zpDapGfColdaw3EMkloPIb2wuEircp3BHyNMDUAMfJA=; b=dClYgjcIvXCisz
	RuqsyIMPbaJh8ELvoq0Px9s4f0cO7zwO6/zcmWCspS8+pSbb5m/nCTBTSLjs4aVMDwug31BpGaWHk
	or/sLBW7HYg6895Qf88pURbvA3l0UqglOayCEpG+OowF/BbGLRiaPDEn+SjxQKKLvTyopAEnvHmCe
	yRp08gC6Fr6Yvq05m/edw5dlm0fzCqvje4GciCoEzjgraip9I0KFjKgM/Wb0fpdYftmYIYjH8iW5P
	RsJYRuxIFhb8mrf9oKMT5f1BF61JEcgYQse/px34VHOw3mFs/dfq1dbiurO1z18mjB8zH1y4wD1Uk
	cH+ZfUE/F/mdOVOpIC9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lML-0004ph-Mz; Mon, 02 Mar 2020 13:43:49 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lMJ-0004p0-Fm
 for kexec@lists.infradead.org; Mon, 02 Mar 2020 13:43:48 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j8lMF-0001qQ-E2; Mon, 02 Mar 2020 14:43:43 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
 <87r1ybujm5.fsf@linutronix.de>
 <20200302123249.6khdqpneu7t6l35s@pathway.suse.cz>
Date: Mon, 02 Mar 2020 14:43:41 +0100
In-Reply-To: <20200302123249.6khdqpneu7t6l35s@pathway.suse.cz> (Petr Mladek's
 message of "Mon, 2 Mar 2020 13:32:49 +0100")
Message-ID: <87a74yrhwy.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_054347_667126_751D3AC8 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 2020-03-02, Petr Mladek <pmladek@suse.com> wrote:
>>>> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
>>>> new file mode 100644
>>>> index 000000000000..796257f226ee
>>>> --- /dev/null
>>>> +++ b/kernel/printk/printk_ringbuffer.c
>>>> +/*
>>>> + * Read the record @id and verify that it is committed and has the sequence
>>>> + * number @seq. On success, 0 is returned.
>>>> + *
>>>> + * Error return values:
>>>> + * -EINVAL: A committed record @seq does not exist.
>>>> + * -ENOENT: The record @seq exists, but its data is not available. This is a
>>>> + *          valid record, so readers should continue with the next seq.
>>>> + */
>>>> +static int desc_read_committed(struct prb_desc_ring *desc_ring,
>>>> +			       unsigned long id, u64 seq,
>>>> +			       struct prb_desc *desc)
>>>> +{
>
> OK, what about having desc_read_by_seq() instead?

Well, it isn't actually "reading by seq". @seq is there for additional
verification. Yes, prb_read() is deriving @id from @seq. But it only
does this once and uses that value for both calls.

> Also there is a bug in current desc_read_commited().
> desc->info.seq might contain a garbage when d_state is desc_miss
> or desc_reserved.

It is not a bug. In both of those cases, -EINVAL is the correct return
value.

> I would change it to:
>
> static enum desc_state
> desc_read_by_seq(struct prb_desc_ring *desc_ring,
> 		 u64 seq, struct prb_desc *desc)
> {
> 	struct prb_desc *rdesc = to_desc(desc_ring, seq);
> 	atomic_long_t *state_var = &rdesc->state_var;
> 	id = DESC_ID(atomic_long_read(state_var));

I think it is error-prone to re-read @state_var here. It is lockless
shared data. desc_read_committed() is called twice in prb_read() and it
is expected that both calls are using the same @id.

> 	enum desc_state d_state;
>
> 	d_state = desc_read(desc_ring, id, desc);
> 	if (d_state == desc_miss ||
> 	    d_state == desc_reserved ||
> 	    desc->info.seq != seq)
> 		return -EINVAL;
>
> 	if (d_state == desc_reusable)
> 		return -ENOENT;

I can use this refactoring.

>
> 	if (d_state != desc_committed)
> 		return -EINVAL;

I suppose you meant to remove this check and leave in the @blk_lpos
check instead. If we're trying to minimize lines of code, the @blk_lpos
check could be combined with the "== desc_reusable" check as well.

>
> 	return 0;
> }

Thanks.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
