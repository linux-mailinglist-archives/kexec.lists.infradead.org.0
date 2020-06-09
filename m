Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AEF1F3E5C
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 16:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMGgcC8zLM721NHAN/0wXwXYILTlNFM6YE4YBFT6D+s=; b=DtSjNsq9QdC5n1
	5GCxb8zRhsgIalVWlIf72cgLoCKpP70mkpozS00QFlEshC7FMMqCsP61d73psX92+54vD6y92iQTy
	Pj0VtJ5KgBHmlZBoozEKhqxlKNEyMqiA4LPxCL4Wl9p8cVH0ZHrHZcPHq4TD7ZqawIBIKhjpkItxu
	/Uc1jpI0rkuRJbTUAKQZbIERSqfF+yPuCvQPmnyLgGa2M/NKnF5fr/qhcZym8vBNFAszUckX2HKad
	4JRXa4anXC/l+AlNZRyeUYoBXN8lXVIPHm2sCp2xPjKro1mA0FN8PlwpEtnMuEMclWCT+5nSSRT11
	XdHs+r1hlpfiwmKnt6sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifON-0002l5-JN; Tue, 09 Jun 2020 14:38:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifOJ-0002kf-MC
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 14:38:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 5D16BAAC3;
 Tue,  9 Jun 2020 14:38:16 +0000 (UTC)
Date: Tue, 9 Jun 2020 16:38:11 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: data_ring head_lpos and tail_lpos synchronization: was [PATCH v2
 2/3] printk: add lockless buffer
Message-ID: <20200609143811.GF23752@linux-b0ei>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501094010.17694-3-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_073816_019325_A9F0B3A8 
X-CRM114-Status: GOOD (  26.20  )
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
> --- /dev/null
> +++ b/kernel/printk/printk_ringbuffer.c
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

Hmm, I wonder whether data_ring->tail_lpos and data_ring->head_lpos
are synchronized enough between each other.

I feel that there should be read barrier here. But it seems that more
barriers are missing. For example, let's have:


CPU0				CPU1

data_alloc()
  begin_lpos = atomic_read(data_ring->head_lpos);

				data_alloc()
				  data_push_tail()
				    cmpxchg(data_ring->tail_lpos);
				    // A: no barrier
				  cmpxchg(data_ring->head_lpos);

  data_push_tail()
    // B: no barrier
    tail_lpos = atomic_read(data_ring->tail_lpos);

Problem 1:

   CPU0 might see random ordering of data_ring->tail_lpos and
   head_lpos values modified by CPU1. There are missing both
   write and read barriers.


Problem 2:

   There might be still a chance because CPU0 does:

     if (!data_make_reusable())
       smp_rmb()
       tail_lpos = atomic_read(data_ring->tail_lpos);

   But CPU0 might still see old data_ring->tail because CPU1 did not
   do write barrier.


My proposal:

1. There should be full memory barrier on the location A before
   updating data_ring->head_lpos. It will be the same as the full
   barriers needed before updating data_ring->tail_lpos.

   data_ring->tail_lpos might have been pushed by another CPU.
   We need to make sure that all CPUs see all needed changes
   before we data_alloc() pushes head_lpos.


2. There should be read memory barrier in the location B.

   It is not strictly necessary because data_push_tail() tries
   to re-read data_ring->tail_lpos after a read barrier. But
   the re-read is just a fallback.

   The read barrier before the first read should be there to
   keep "clean" design ;-) Or there should be at least some
   comment about why the barrier is not there.

Best Regards,
Petr

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
> +
> +/*
> + * Allocate a new data block, invalidating the oldest data block(s)
> + * if necessary. This function also associates the data block with
> + * a specified descriptor.
> + */
> +static char *data_alloc(struct printk_ringbuffer *rb,
> +			struct prb_data_ring *data_ring, unsigned long size,
> +			struct prb_data_blk_lpos *blk_lpos, unsigned long id)
> +{
> +	struct prb_data_block *blk;
> +	unsigned long begin_lpos;
> +	unsigned long next_lpos;
> +
> +	if (!data_ring->data || size == 0) {
> +		/* Specify a data-less block. */
> +		blk_lpos->begin = INVALID_LPOS;
> +		blk_lpos->next = INVALID_LPOS;
> +		return NULL;
> +	}
> +
> +	size = to_blk_size(size);
> +
> +	begin_lpos = atomic_long_read(&data_ring->head_lpos);
> +
> +	do {
> +		next_lpos = get_next_lpos(data_ring, begin_lpos, size);
> +
> +		if (!data_push_tail(rb, data_ring,
> +				    next_lpos - DATA_SIZE(data_ring))) {
> +			/* Failed to allocate, specify a data-less block. */
> +			blk_lpos->begin = INVALID_LPOS;
> +			blk_lpos->next = INVALID_LPOS;
> +			return NULL;
> +		}
> +	} while (!atomic_long_try_cmpxchg_relaxed(&data_ring->head_lpos,
> +						  &begin_lpos, next_lpos));
> +
> +	/*
> +	 * Guarantee any updated tail lpos is stored before setting the new
> +	 * block ID. This allows block IDs to be trusted based on the tail
> +	 * lpos. A full memory barrier is needed since another task may
> +	 * have updated the tail lpos. This pairs with data_make_reusable:B.
> +	 */
> +	smp_mb(); /* LMM(data_alloc:A) */
> +
> +	blk = to_block(data_ring, begin_lpos);
> +	WRITE_ONCE(blk->id, id); /* LMM(data_alloc:B) */
> +
> +	if (DATA_WRAPS(data_ring, begin_lpos) !=
> +	    DATA_WRAPS(data_ring, next_lpos)) {
> +		/* Wrapping data blocks store their data at the beginning. */
> +		blk = to_block(data_ring, 0);
> +
> +		/*
> +		 * Store the ID on the wrapped block for consistency.
> +		 * The printk_ringbuffer does not actually use it.
> +		 */
> +		blk->id = id;
> +	}
> +
> +	blk_lpos->begin = begin_lpos;
> +	blk_lpos->next = next_lpos;
> +
> +	return &blk->data[0];
> +}

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
