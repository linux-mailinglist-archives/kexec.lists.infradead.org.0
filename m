Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB9B1F3714
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 11:31:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaU5yE0ZZw+FCgrdGS7hn94bK8L7LkOG1HRk8xHEDW8=; b=XiAdtzAXIuvE58
	vU8BpIgfScSQduh6wJc7s2BvmzTJoytKv/x2jz8xlGvRVvyGF66goECAKAJcaTgOuO6dUaek6ljqS
	pFN3EvhlNThHFax4j4d1ZPWzfOrCM7iTFVl9BPNVOEnYHtFIjoYnegUo7WxGBtACzAEcXHu6vjJuX
	12M1g2GKbXE/3sPSEAc7UZJAX/2tYtb+B7vaIDBw+LTDFSvTZgwOrkoxrsuHp8La4qr35oyYXOJQo
	rs9fuKo3V8r9Nw4SL4WQJKORe+5C48U7LU8wWK6VPBqIte2ZPILEII8eVNbVZJpque1hNkoa5qXJo
	7yzv08elXlZg2SoMjb4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiabD-0002rl-VX; Tue, 09 Jun 2020 09:31:15 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiab6-0002qy-S3
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 09:31:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 315A1AE2D;
 Tue,  9 Jun 2020 09:31:08 +0000 (UTC)
Date: Tue, 9 Jun 2020 11:31:03 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: redundant check in make_data_reusable(): was [PATCH v2 2/3] printk:
 add lockless buffer
Message-ID: <20200609093103.GB23752@linux-b0ei>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501094010.17694-3-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_023109_195494_A07E924A 
X-CRM114-Status: GOOD (  31.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri 2020-05-01 11:46:09, John Ogness wrote:
> Introduce a multi-reader multi-writer lockless ringbuffer for storing
> the kernel log messages. Readers and writers may use their API from
> any context (including scheduler and NMI). This ringbuffer will make
> it possible to decouple printk() callers from any context, locking,
> or console constraints. It also makes it possible for readers to have
> full access to the ringbuffer contents at any time and context (for
> example from any panic situation).
> 
> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> new file mode 100644
> index 000000000000..e0a66468d4f3
> --- /dev/null
> +++ b/kernel/printk/printk_ringbuffer.c
> +/*
> + * Given a data ring (text or dict), put the associated descriptor of each
> + * data block from @lpos_begin until @lpos_end into the reusable state.
> + *
> + * If there is any problem making the associated descriptor reusable, either
> + * the descriptor has not yet been committed or another writer task has
> + * already pushed the tail lpos past the problematic data block. Regardless,
> + * on error the caller can re-load the tail lpos to determine the situation.
> + */
> +static bool data_make_reusable(struct printk_ringbuffer *rb,
> +			       struct prb_data_ring *data_ring,
> +			       unsigned long lpos_begin,
> +			       unsigned long lpos_end,
> +			       unsigned long *lpos_out)
> +{
> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> +	struct prb_data_blk_lpos *blk_lpos;
> +	struct prb_data_block *blk;
> +	unsigned long tail_lpos;
> +	enum desc_state d_state;
> +	struct prb_desc desc;
> +	unsigned long id;
> +
> +	/*
> +	 * Using the provided @data_ring, point @blk_lpos to the correct
> +	 * blk_lpos within the local copy of the descriptor.
> +	 */
> +	if (data_ring == &rb->text_data_ring)
> +		blk_lpos = &desc.text_blk_lpos;
> +	else
> +		blk_lpos = &desc.dict_blk_lpos;
> +
> +	/* Loop until @lpos_begin has advanced to or beyond @lpos_end. */
> +	while ((lpos_end - lpos_begin) - 1 < DATA_SIZE(data_ring)) {
> +		blk = to_block(data_ring, lpos_begin);
> +		id = READ_ONCE(blk->id); /* LMM(data_make_reusable:A) */
> +
> +		/*
> +		 * Guarantee the block ID is loaded before checking the tail
> +		 * lpos. The loaded block ID can only be considered valid if
> +		 * the tail lpos has not overtaken @lpos_begin. This pairs
> +		 * with data_alloc:A.
> +		 *
> +		 * Memory barrier involvement:
> +		 *
> +		 * If data_make_reusable:A reads from data_alloc:B, then
> +		 * data_make_reusable:C reads from data_push_tail:D.
> +		 *
> +		 * Relies on:
> +		 *
> +		 * MB from data_push_tail:D to data_alloc:B
> +		 *    matching
> +		 * RMB from data_make_reusable:A to data_make_reusable:C
> +		 *
> +		 * Note: data_push_tail:D and data_alloc:B can be different
> +		 *       CPUs. However, the data_alloc:B CPU (which performs
> +		 *       the full memory barrier) must have previously seen
> +		 *       data_push_tail:D.
> +		 */
> +		smp_rmb(); /* LMM(data_make_reusable:B) */
> +
> +		tail_lpos = atomic_long_read(&data_ring->tail_lpos
> +					); /* LMM(data_make_reusable:C) */
> +
> +		/*
> +		 * If @lpos_begin has fallen behind the tail lpos, the read
> +		 * block ID cannot be trusted. Fast forward @lpos_begin to the
> +		 * tail lpos and try again.
> +		 */
> +		if (lpos_begin - tail_lpos >= DATA_SIZE(data_ring)) {
> +			lpos_begin = tail_lpos;
> +			continue;
> +		}

I am sorry if we have had this discussion already in past. Well, it
would just prove that it really needs a comment why this check is
necessary. I looks redundant or just an optimization to me.

IMHO, the following check of the descriptor state should be enough:

1. This function returns "false" when the descriptor is in desc_misc or
   desc_reusable state or when it does not point back to the data.

   In this case, data_push_tail() does similar check. It loads
   data_ring->tail_lpos as well. It returns false when the tail did
   not move. Otherwise, it calls data_make_reusable() again and has
   the same effect as the continue here.


2. This function returns true only when the descriptor is in committed
   or reusable state and points back to the same data block. In this,
   case it really contains consistent data.

   OK, it is possible that the block is already reused when the
   descriptor is in reusable state. But it is possible only when
   data_ring->tail_lpos moved. In this case, cmpxchg in
   data_push_tail() would fail and we would go back as well.

Do I miss anything, please?

See also a nit below.

> +
> +		d_state = desc_read(desc_ring, id,
> +				    &desc); /* LMM(data_make_reusable:D) */
> +
> +		switch (d_state) {
> +		case desc_miss:
> +			return false;
> +		case desc_reserved:
> +			return false;
> +		case desc_committed:
> +			/*
> +			 * This data block is invalid if the descriptor
> +			 * does not point back to it.
> +			 */
> +			if (blk_lpos->begin != lpos_begin)
> +				return false;
> +			desc_make_reusable(desc_ring, id);
> +			break;
> +		case desc_reusable:
> +			/*
> +			 * This data block is invalid if the descriptor
> +			 * does not point back to it.
> +			 */
> +			if (blk_lpos->begin != lpos_begin)
> +				return false;
> +			break;
> +		}
> +
> +		/* Advance @lpos_begin to the next data block. */
> +		lpos_begin = blk_lpos->next;
> +	}
> +
> +	*lpos_out = lpos_begin;
> +	return true;
> +}
> +
> +/*
> + * Advance the data ring tail to at least @lpos. This function puts
> + * descriptors into the reusable state if the tail is pushed beyond
> + * their associated data block.
> + */
> +static bool data_push_tail(struct printk_ringbuffer *rb,
> +			   struct prb_data_ring *data_ring,
> +			   unsigned long lpos)
> +{
> +	unsigned long tail_lpos;
> +	unsigned long next_lpos;
> +
> +	/* If @lpos is not valid, there is nothing to do. */
> +	if (lpos == INVALID_LPOS)
> +		return true;
> +
> +	tail_lpos = atomic_long_read(&data_ring->tail_lpos);
> +
> +	do {
> +		/* Done, if the tail lpos is already at or beyond @lpos. */
> +		if ((lpos - tail_lpos) - 1 >= DATA_SIZE(data_ring))
> +			break;
> +
> +		/*
> +		 * Make all descriptors reusable that are associated with
> +		 * data blocks before @lpos.
> +		 */
> +		if (!data_make_reusable(rb, data_ring, tail_lpos, lpos,
> +					&next_lpos)) {
> +			/*
> +			 * Guarantee the descriptor state loaded in
> +			 * data_make_reusable() is performed before reloading
> +			 * the tail lpos. The failed data_make_reusable() may
> +			 * be due to a newly recycled descriptor causing
> +			 * the tail lpos to have been previously pushed. This
> +			 * pairs with desc_reserve:D.
> +			 *
> +			 * Memory barrier involvement:
> +			 *
> +			 * If data_make_reusable:D reads from desc_reserve:G,
> +			 * then data_push_tail:B reads from data_push_tail:D.
> +			 *
> +			 * Relies on:
> +			 *
> +			 * MB from data_push_tail:D to desc_reserve:G
> +			 *    matching
> +			 * RMB from data_make_reusable:D to data_push_tail:B
> +			 *
> +			 * Note: data_push_tail:D and desc_reserve:G can be
> +			 *       different CPUs. However, the desc_reserve:G
> +			 *       CPU (which performs the full memory barrier)
> +			 *       must have previously seen data_push_tail:D.
> +			 */
> +			smp_rmb(); /* LMM(data_push_tail:A) */
> +
> +			next_lpos = atomic_long_read(&data_ring->tail_lpos
> +						); /* LMM(data_push_tail:B) */

I have been a bit confused whether next_lpos variable is used
correctly everywhere. The primary purpose is to use a value provided
by data_make_reusable() in the cmpxchg below.

But it is (mis)used here to temporary store the current tail_lpos
value. Could we please use another variable here? IMHO, the following
code would be more clear:

	tail_lpos_old = tail_lpos;
	tail_lpos = atomic_long_read(&data_ring->tail_lpos); /* LMM(data_push_tail:B) */

	if (tail_lpos == tail_lpos_old)
		return false;

> +			if (next_lpos == tail_lpos)
> +				return false;
> +
> +			/* Another task pushed the tail. Try again. */
> +			tail_lpos = next_lpos;
> +			continue;
> +		}
> +
> +		/*
> +		 * Guarantee any descriptor states that have transitioned to
> +		 * reusable are stored before pushing the tail lpos. This
> +		 * allows readers to identify if data has expired while
> +		 * reading the descriptor. This pairs with desc_read:D.
> +		 */
> +		smp_mb(); /* LMM(data_push_tail:C) */
> +
> +	} while (!atomic_long_try_cmpxchg_relaxed(&data_ring->tail_lpos,
> +			&tail_lpos, next_lpos)); /* LMM(data_push_tail:D) */
> +
> +	return true;
> +}

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
