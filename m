Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B6D1F5141
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 11:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UTDEdXDPt9pR9cC+ovOYnnwVpLh8GI+r/n9keDZlds=; b=Zj3wZrBhXldHVx
	VvlTnk3edRo3GsKx/h0a3baUKu905zQFxxKT7lQQPipfNUvRfLQrzJI+DlOak0uXeT8XSHNyIJKD0
	pPU3hBt98jrej3Sf14PJhfeBZ1/Vjp9jQQQfWpj2omoLGmF+sHuas2gZf3l+FbbKI4c5tDAJm6hQ4
	lO95PpxLoRg0fLFSCtF9OqAh1gzOlNnhQCU8GJ6/o8RfMsAppgJ+rI5IkYuo/t/xu/qULyb6LJAMo
	2rBhaO8Yknr9QrlBTv4T7RbTj3EmEOldbvbaT87gWpXo4Glro6/cejGchjR5a1QtUnp/Nfgv7v0NN
	8faswUFBiVcejn8bRF/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixC4-0006LV-EH; Wed, 10 Jun 2020 09:38:48 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixBx-0006Ki-A0
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 09:38:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AB83EAAC6;
 Wed, 10 Jun 2020 09:38:40 +0000 (UTC)
Date: Wed, 10 Jun 2020 11:38:35 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: redundant check in make_data_reusable(): was [PATCH v2 2/3]
 printk: add lockless buffer
Message-ID: <20200610093835.GB4311@linux-b0ei>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609093103.GB23752@linux-b0ei>
 <87lfkwuwg1.fsf@vostro.fn.ogness.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lfkwuwg1.fsf@vostro.fn.ogness.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_023841_639354_8A34E4E6 
X-CRM114-Status: GOOD (  27.18  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Paul McKenney <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue 2020-06-09 16:48:30, John Ogness wrote:
> On 2020-06-09, Petr Mladek <pmladek@suse.com> wrote:
> >> --- /dev/null
> >> +++ b/kernel/printk/printk_ringbuffer.c
> >> +/*
> >> + * Given a data ring (text or dict), put the associated descriptor of each
> >> + * data block from @lpos_begin until @lpos_end into the reusable state.
> >> + *
> >> + * If there is any problem making the associated descriptor reusable, either
> >> + * the descriptor has not yet been committed or another writer task has
> >> + * already pushed the tail lpos past the problematic data block. Regardless,
> >> + * on error the caller can re-load the tail lpos to determine the situation.
> >> + */
> >> +static bool data_make_reusable(struct printk_ringbuffer *rb,
> >> +			       struct prb_data_ring *data_ring,
> >> +			       unsigned long lpos_begin,
> >> +			       unsigned long lpos_end,
> >> +			       unsigned long *lpos_out)
> >> +{
> >> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> >> +	struct prb_data_blk_lpos *blk_lpos;
> >> +	struct prb_data_block *blk;
> >> +	unsigned long tail_lpos;
> >> +	enum desc_state d_state;
> >> +	struct prb_desc desc;
> >> +	unsigned long id;
> >> +
> >> +	/*
> >> +	 * Using the provided @data_ring, point @blk_lpos to the correct
> >> +	 * blk_lpos within the local copy of the descriptor.
> >> +	 */
> >> +	if (data_ring == &rb->text_data_ring)
> >> +		blk_lpos = &desc.text_blk_lpos;
> >> +	else
> >> +		blk_lpos = &desc.dict_blk_lpos;
> >> +
> >> +	/* Loop until @lpos_begin has advanced to or beyond @lpos_end. */
> >> +	while ((lpos_end - lpos_begin) - 1 < DATA_SIZE(data_ring)) {
> >> +		blk = to_block(data_ring, lpos_begin);
> >> +		id = READ_ONCE(blk->id); /* LMM(data_make_reusable:A) */
> >> +
> >> +		/*
> >> +		 * Guarantee the block ID is loaded before checking the tail
> >> +		 * lpos. The loaded block ID can only be considered valid if
> >> +		 * the tail lpos has not overtaken @lpos_begin. This pairs
> >> +		 * with data_alloc:A.
> >> +		 *
> >> +		 * Memory barrier involvement:
> >> +		 *
> >> +		 * If data_make_reusable:A reads from data_alloc:B, then
> >> +		 * data_make_reusable:C reads from data_push_tail:D.
> >> +		 *
> >> +		 * Relies on:
> >> +		 *
> >> +		 * MB from data_push_tail:D to data_alloc:B
> >> +		 *    matching
> >> +		 * RMB from data_make_reusable:A to data_make_reusable:C
> >> +		 *
> >> +		 * Note: data_push_tail:D and data_alloc:B can be different
> >> +		 *       CPUs. However, the data_alloc:B CPU (which performs
> >> +		 *       the full memory barrier) must have previously seen
> >> +		 *       data_push_tail:D.
> >> +		 */
> >> +		smp_rmb(); /* LMM(data_make_reusable:B) */
> >> +
> >> +		tail_lpos = atomic_long_read(&data_ring->tail_lpos
> >> +					); /* LMM(data_make_reusable:C) */
> >> +
> >> +		/*
> >> +		 * If @lpos_begin has fallen behind the tail lpos, the read
> >> +		 * block ID cannot be trusted. Fast forward @lpos_begin to the
> >> +		 * tail lpos and try again.
> >> +		 */
> >> +		if (lpos_begin - tail_lpos >= DATA_SIZE(data_ring)) {
> >> +			lpos_begin = tail_lpos;
> >> +			continue;
> >> +		}
> >
> > I am sorry if we have had this discussion already in past.
> 
> We have [0]. (Search for "Ouch.")

I see. Thanks a lot for the pointer.

> > Well, it would just prove that it really needs a comment why this
> > check is necessary.
> 
> The comment says why it is necessary. The previous read of the block ID
> cannot be trusted if the the tail has been pushed beyond it.

Not really. The comment describes what the check does. But it does not
explain why it is needed. The reason might be described be something like:

		* Make sure that the id read from tail_lpos is really
		* pointing to this lpos. The block might have been
		* reused in the meantime. Make sure to do not make
		* the new owner reusable.

But wait! This situation should get caught by the two existing descriptor
checks:

>		case desc_committed:
>			/*
>			 * This data block is invalid if the descriptor
>			 * does not point back to it.
>			 */
>			if (blk_lpos->begin != lpos_begin)
>				return false;
>			desc_make_reusable(desc_ring, id);
>			break;
>		case desc_reusable:
>			/*
>			 * This data block is invalid if the descriptor
>			 * does not point back to it.
>			 */
>			if (blk_lpos->begin != lpos_begin)
>				return false;
>			break;

Here again the comments describe what the check does but not why.
I would write something like:

			/*
			 * The block might have already been
			 * reused. Make sure that the descriptor really
			 * points back to the checked lpos. It covers
			 * both situations. Random data might point to
			 * a valid descriptor just by chance. Or the block
			 * has been already reused by another descriptor.
			 */

BTW: In theory, it might happen that the ringbuffer is reused many
times in the meantime and (blk_lpos->begin == lpos_begin) again.
But then lpos_begin would be valid lpos again and even the range
check would not catch this as well.

So, I think that the lpos range check is still redundant. We might
describe it as an extra paranoid check but I am not sure if it is
worth it.

But I would remove it and keep the code "simple" and design "clear".
Well, I do not resist on it.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
