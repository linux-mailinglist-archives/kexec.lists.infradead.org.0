Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A290F1F39DE
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 13:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZJ+rJ8jlsfOzFzz8PbQu9RqYZvNqOLRHSzrakrEMLFs=; b=Op9tkhxahwpElU
	qhfo5jYe2U7DhzFEfOpTfQU39zoKIU6TDxPpU5d8f4ueFmhD+u9V72nPGQirc0O2PvMtmhRZ641eW
	XU6uY8CI45HYESYcokdr9Gunr+sdZWwjTPxTsCpdBg6tXinlpkRrYGNdgyxfmu0oeBzJs3BxBvPJZ
	p/wuaR40XpYQ/176F0XZ7y9f90TDca8R0VI5AGJDnek4ePuzv+NVmCEX2FWDeI6XBFu+VxT5BH7gz
	BaiLJ2SnS30/c0/N2lQzcP88gIH79aj4MlAi6LwYs6E1oqlDk0r7ImHmHDjnsmo4PuSge80W9y3F/
	G/SBW0Htpd1UlQoZZ6qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicZq-0007eq-Bd; Tue, 09 Jun 2020 11:37:58 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicZm-0007eV-Ha
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 11:37:56 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id EFE53AAC6;
 Tue,  9 Jun 2020 11:37:55 +0000 (UTC)
Date: Tue, 9 Jun 2020 13:37:51 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Barrier before pushing desc_ring tail: was [PATCH v2 2/3] printk:
 add lockless buffer
Message-ID: <20200609113751.GD23752@linux-b0ei>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501094010.17694-3-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_043754_874789_A24B6875 
X-CRM114-Status: GOOD (  29.90  )
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
> + * Advance the desc ring tail. This function advances the tail by one
> + * descriptor, thus invalidating the oldest descriptor. Before advancing
> + * the tail, the tail descriptor is made reusable and all data blocks up to
> + * and including the descriptor's data block are invalidated (i.e. the data
> + * ring tail is pushed past the data block of the descriptor being made
> + * reusable).
> + */
> +static bool desc_push_tail(struct printk_ringbuffer *rb,
> +			   unsigned long tail_id)
> +{
> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> +	enum desc_state d_state;
> +	struct prb_desc desc;
> +
> +	d_state = desc_read(desc_ring, tail_id, &desc);
> +
> +	switch (d_state) {
> +	case desc_miss:
> +		/*
> +		 * If the ID is exactly 1 wrap behind the expected, it is
> +		 * in the process of being reserved by another writer and
> +		 * must be considered reserved.
> +		 */
> +		if (DESC_ID(atomic_long_read(&desc.state_var)) ==
> +		    DESC_ID_PREV_WRAP(desc_ring, tail_id)) {
> +			return false;
> +		}
> +
> +		/*
> +		 * The ID has changed. Another writer must have pushed the
> +		 * tail and recycled the descriptor already. Success is
> +		 * returned because the caller is only interested in the
> +		 * specified tail being pushed, which it was.
> +		 */
> +		return true;
> +	case desc_reserved:
> +		return false;
> +	case desc_committed:
> +		desc_make_reusable(desc_ring, tail_id);
> +		break;
> +	case desc_reusable:
> +		break;
> +	}
> +
> +	/*
> +	 * Data blocks must be invalidated before their associated
> +	 * descriptor can be made available for recycling. Invalidating
> +	 * them later is not possible because there is no way to trust
> +	 * data blocks once their associated descriptor is gone.
> +	 */
> +
> +	if (!data_push_tail(rb, &rb->text_data_ring, desc.text_blk_lpos.next))
> +		return false;
> +	if (!data_push_tail(rb, &rb->dict_data_ring, desc.dict_blk_lpos.next))
> +		return false;
> +
> +	/*
> +	 * Check the next descriptor after @tail_id before pushing the tail
> +	 * to it because the tail must always be in a committed or reusable
> +	 * state. The implementation of prb_first_seq() relies on this.
> +	 *
> +	 * A successful read implies that the next descriptor is less than or
> +	 * equal to @head_id so there is no risk of pushing the tail past the
> +	 * head.
> +	 */
> +	d_state = desc_read(desc_ring, DESC_ID(tail_id + 1),
> +			    &desc); /* LMM(desc_push_tail:A) */
> +	if (d_state == desc_committed || d_state == desc_reusable) {
> +		/*
> +		 * Any CPU that loads the new tail ID, must see that the
> +		 * descriptor at @tail_id is in the reusable state. See the
> +		 * read memory barrier part of desc_reserve:D for details.
> +		 */

I was quite confused by the above comment. Does it mean that we need
a barrier here? Or does it explain why the cmpxchg has its own
LMM marker?

I think that we actually need a full barrier here to make sure that
all CPUs see the changes made by data_push_tail() before we
allow to rewrite the descriptor. The changes in data_push_tail() might
be done on different CPUs.

It is similar like the full barrier in data_push_tail() before changing
data_ring->tail_lpos.

Best Regards,
Petr

> +		atomic_long_cmpxchg_relaxed(&desc_ring->tail_id, tail_id,
> +			DESC_ID(tail_id + 1)); /* LMM(desc_push_tail:B) */
> +	} else {
> +		/*
> +		 * Guarantee the last state load from desc_read() is before
> +		 * reloading @tail_id in order to see a new tail ID in the
> +		 * case that the descriptor has been recycled. This pairs
> +		 * with desc_reserve:D.
> +		 *
> +		 * Memory barrier involvement:
> +		 *
> +		 * If desc_push_tail:A reads from desc_reserve:G, then
> +		 * desc_push_tail:D reads from desc_push_tail:B.
> +		 *
> +		 * Relies on:
> +		 *
> +		 * MB from desc_push_tail:B to desc_reserve:G
> +		 *    matching
> +		 * RMB from desc_push_tail:A to desc_push_tail:D
> +		 *
> +		 * Note: desc_push_tail:B and desc_reserve:G can be different
> +		 *       CPUs. However, the desc_reserve:G CPU (which performs
> +		 *       the full memory barrier) must have previously seen
> +		 *       desc_push_tail:B.
> +		 */
> +		smp_rmb(); /* LMM(desc_push_tail:C) */
> +
> +		/*
> +		 * Re-check the tail ID. The descriptor following @tail_id is
> +		 * not in an allowed tail state. But if the tail has since
> +		 * been moved by another task, then it does not matter.
> +		 */
> +		if (atomic_long_read(&desc_ring->tail_id) ==
> +					tail_id) { /* LMM(desc_push_tail:D) */
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
> +/* Reserve a new descriptor, invalidating the oldest if necessary. */
> +static bool desc_reserve(struct printk_ringbuffer *rb, unsigned long *id_out)
> +{
> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> +	unsigned long prev_state_val;
> +	unsigned long id_prev_wrap;
> +	struct prb_desc *desc;
> +	unsigned long head_id;
> +	unsigned long id;
> +
> +	head_id = atomic_long_read(&desc_ring->head_id
> +						); /* LMM(desc_reserve:A) */
> +
> +	do {
> +		desc = to_desc(desc_ring, head_id);
> +
> +		id = DESC_ID(head_id + 1);
> +		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
> +
> +		/*
> +		 * Guarantee the head ID is read before reading the tail ID.
> +		 * Since the tail ID is updated before the head ID, this
> +		 * guarantees that @id_prev_wrap is never ahead of the tail
> +		 * ID. This pairs with desc_reserve:D.
> +		 *
> +		 * Memory barrier involvement:
> +		 *
> +		 * If desc_reserve:A reads from desc_reserve:E, then
> +		 * desc_reserve:C reads from desc_push_tail:B.
> +		 *
> +		 * Relies on:
> +		 *
> +		 * MB from desc_push_tail:B to desc_reserve:E
> +		 *    matching
> +		 * RMB from desc_reserve:A to desc_reserve:C
> +		 *
> +		 * Note: desc_push_tail:B and desc_reserve:E can be different
> +		 *       CPUs. However, the desc_reserve:E CPU (which performs
> +		 *       the full memory barrier) must have previously seen
> +		 *       desc_push_tail:B.
> +		 */
> +		smp_rmb(); /* LMM(desc_reserve:B) */
> +
> +		if (id_prev_wrap == atomic_long_read(&desc_ring->tail_id
> +						)) { /* LMM(desc_reserve:C) */
> +			/*
> +			 * Make space for the new descriptor by
> +			 * advancing the tail.
> +			 */
> +			if (!desc_push_tail(rb, id_prev_wrap))
> +				return false;
> +		}
> +
> +		/*
> +		 * Guarantee the tail ID is read before validating the
> +		 * recycled descriptor state. A read memory barrier is
> +		 * sufficient for this. This pairs with data_push_tail:C.
> +		 *
> +		 * Memory barrier involvement:
> +		 *
> +		 * If desc_reserve:C reads from desc_push_tail:B, then
> +		 * desc_reserve:F reads from desc_make_reusable:A.
> +		 *
> +		 * Relies on:
> +		 *
> +		 * MB from desc_make_reusable:A to desc_push_tail:B
> +		 *    matching
> +		 * RMB from desc_reserve:C to desc_reserve:F
> +		 *
> +		 * Note: desc_make_reusable:A, desc_push_tail:B, and
> +		 *       data_push_tail:C can all be different CPUs. However,
> +		 *       the desc_push_tail:B CPU must have previously seen
> +		 *       data_push_tail:D and the data_push_tail:D CPU (which
> +		 *       performs the full memory barrier) must have
> +		 *       previously seen desc_make_reusable:A.
> +		 *
> +		 * Guarantee any data ring tail changes are stored before
> +		 * recycling the descriptor. Data ring tail changes can happen
> +		 * via desc_push_tail()->data_push_tail(). A full memory
> +		 * barrier is needed since another task may have pushed the
> +		 * data ring tails. This pairs with data_push_tail:A.
> +		 *
> +		 * Guarantee a new tail ID is stored before recycling the
> +		 * descriptor. A full memory barrier is needed since another
> +		 * task may have pushed the tail ID. This pairs with
> +		 * desc_push_tail:C and prb_first_seq:C.
> +		 *
> +		 * Guarantee the tail ID is stored before storing the head ID.
> +		 * This pairs with desc_reserve:B.
> +		 */
> +		smp_mb(); /* LMM(desc_reserve:D) */
> +
> +	} while (!atomic_long_try_cmpxchg_relaxed(&desc_ring->head_id,
> +				&head_id, id)); /* LMM(desc_reserve:E) */
> +
> +	desc = to_desc(desc_ring, id);
> +
> +	/*
> +	 * If the descriptor has been recycled, verify the old state val.
> +	 * See "ABA Issues" about why this verification is performed.
> +	 */
> +	prev_state_val = atomic_long_read(&desc->state_var
> +						); /* LMM(desc_reserve:F) */
> +	if (prev_state_val && prev_state_val != (id_prev_wrap |
> +						 DESC_COMMITTED_MASK |
> +						 DESC_REUSE_MASK)) {
> +		WARN_ON_ONCE(1);
> +		return false;
> +	}
> +
> +	/*
> +	 * Assign the descriptor a new ID and set its state to reserved.
> +	 * See "ABA Issues" about why cmpxchg() instead of set() is used.
> +	 */
> +	if (!atomic_long_try_cmpxchg_relaxed(&desc->state_var,
> +			&prev_state_val, id | 0)) { /* LMM(desc_reserve:G) */
> +		WARN_ON_ONCE(1);
> +		return false;
> +	}
> +
> +	/*
> +	 * Guarantee the new descriptor ID and state is stored before making
> +	 * any other changes. This pairs with desc_read:D.
> +	 */
> +	smp_wmb(); /* LMM(desc_reserve:H) */
> +
> +	/* Now data in @desc can be modified: LMM(desc_reserve:I) */
> +
> +	*id_out = id;
> +	return true;
> +}

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
