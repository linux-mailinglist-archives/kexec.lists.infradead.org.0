Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9141A1F3FEF
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 17:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fmj27iyDjc7g9jjLpMQu28qckXwH+ojiNO/MR5BfGZA=; b=NtsM30XtaHfg33
	cNvWgqKuYVY39ioY6hrUnCCyHE1bzuB66e3mXJuFWARscyPKqZbykmqtN1WcS8XOXVbiAAzmN3/Oz
	eX0WXRvcOAwWGVJnX9ZbkIDEILhD7E4Ys2ohhilNpGKIa0YRV1jbsylZvgxF25sv1gbYivYI2OkIN
	FyVPo3M929bdOuN4DIVZq37mgKT3qSmbdKOWcPyXz29kzCfxUmfscvCni3564Uzobh1WD5rqlFhrO
	QNoU6d+Uhpw8/FK3VFJY+57q1XCLz/k1JCzExqw4EMJOoVrTk3bbWzJQI7P51jmojQ2I2jsF+xvV8
	Tj7db3aI+WdZv/mD3Fxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigbo-0006I5-1k; Tue, 09 Jun 2020 15:56:16 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigbk-0006HA-Oa
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 15:56:14 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jigbe-00044i-C0; Tue, 09 Jun 2020 17:56:06 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: Barrier before pushing desc_ring tail: was [PATCH v2 2/3] printk:
 add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609113751.GD23752@linux-b0ei>
Date: Tue, 09 Jun 2020 17:56:03 +0200
In-Reply-To: <20200609113751.GD23752@linux-b0ei> (Petr Mladek's message of
 "Tue, 9 Jun 2020 13:37:51 +0200")
Message-ID: <87d068utbg.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_085612_960068_1BAF5AC5 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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

On 2020-06-09, Petr Mladek <pmladek@suse.com> wrote:
>> --- /dev/null
>> +++ b/kernel/printk/printk_ringbuffer.c
>> +/*
>> + * Advance the desc ring tail. This function advances the tail by one
>> + * descriptor, thus invalidating the oldest descriptor. Before advancing
>> + * the tail, the tail descriptor is made reusable and all data blocks up to
>> + * and including the descriptor's data block are invalidated (i.e. the data
>> + * ring tail is pushed past the data block of the descriptor being made
>> + * reusable).
>> + */
>> +static bool desc_push_tail(struct printk_ringbuffer *rb,
>> +			   unsigned long tail_id)
>> +{
>> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
>> +	enum desc_state d_state;
>> +	struct prb_desc desc;
>> +
>> +	d_state = desc_read(desc_ring, tail_id, &desc);
>> +
>> +	switch (d_state) {
>> +	case desc_miss:
>> +		/*
>> +		 * If the ID is exactly 1 wrap behind the expected, it is
>> +		 * in the process of being reserved by another writer and
>> +		 * must be considered reserved.
>> +		 */
>> +		if (DESC_ID(atomic_long_read(&desc.state_var)) ==
>> +		    DESC_ID_PREV_WRAP(desc_ring, tail_id)) {
>> +			return false;
>> +		}
>> +
>> +		/*
>> +		 * The ID has changed. Another writer must have pushed the
>> +		 * tail and recycled the descriptor already. Success is
>> +		 * returned because the caller is only interested in the
>> +		 * specified tail being pushed, which it was.
>> +		 */
>> +		return true;
>> +	case desc_reserved:
>> +		return false;
>> +	case desc_committed:
>> +		desc_make_reusable(desc_ring, tail_id);
>> +		break;
>> +	case desc_reusable:
>> +		break;
>> +	}
>> +
>> +	/*
>> +	 * Data blocks must be invalidated before their associated
>> +	 * descriptor can be made available for recycling. Invalidating
>> +	 * them later is not possible because there is no way to trust
>> +	 * data blocks once their associated descriptor is gone.
>> +	 */
>> +
>> +	if (!data_push_tail(rb, &rb->text_data_ring, desc.text_blk_lpos.next))
>> +		return false;
>> +	if (!data_push_tail(rb, &rb->dict_data_ring, desc.dict_blk_lpos.next))
>> +		return false;
>> +
>> +	/*
>> +	 * Check the next descriptor after @tail_id before pushing the tail
>> +	 * to it because the tail must always be in a committed or reusable
>> +	 * state. The implementation of prb_first_seq() relies on this.
>> +	 *
>> +	 * A successful read implies that the next descriptor is less than or
>> +	 * equal to @head_id so there is no risk of pushing the tail past the
>> +	 * head.
>> +	 */
>> +	d_state = desc_read(desc_ring, DESC_ID(tail_id + 1),
>> +			    &desc); /* LMM(desc_push_tail:A) */
>> +	if (d_state == desc_committed || d_state == desc_reusable) {
>> +		/*
>> +		 * Any CPU that loads the new tail ID, must see that the
>> +		 * descriptor at @tail_id is in the reusable state. See the
>> +		 * read memory barrier part of desc_reserve:D for details.
>> +		 */
>> +		atomic_long_cmpxchg_relaxed(&desc_ring->tail_id, tail_id,
>> +			DESC_ID(tail_id + 1)); /* LMM(desc_push_tail:B) */
>
> I was quite confused by the above comment. Does it mean that we need
> a barrier here? Or does it explain why the cmpxchg has its own
> LMM marker?

This LMM marker is referenced quite often, but since it is a relaxed
cmpxchg(), its significance is not immediately clear. I was hoping to
add some hints as to why it is significant. The comment that it is
referring to is:

	/*
	 * Guarantee the tail ID is read before validating the
	 * recycled descriptor state. A read memory barrier is
	 * sufficient for this. This pairs with data_push_tail:C.
	 *
	 * Memory barrier involvement:
	 *
	 * If desc_reserve:C reads from desc_push_tail:B, then
	 * desc_reserve:F reads from desc_make_reusable:A.
	 *
	 * Relies on:
	 *
	 * MB from desc_make_reusable:A to desc_push_tail:B
	 *    matching
	 * RMB from desc_reserve:C to desc_reserve:F
	 *
	 * Note: desc_make_reusable:A, desc_push_tail:B, and
	 *       data_push_tail:C can all be different CPUs. However,
	 *       the desc_push_tail:B CPU must have previously seen
	 *       data_push_tail:D and the data_push_tail:D CPU (which
	 *       performs the full memory barrier) must have
	 *       previously seen desc_make_reusable:A.
	 */

English translation:

In order to push the data tail, a CPU must first see that the associated
descriptor is in the reusable state. Since a full memory barrier is
performed after that sighting and before doing the data tail push, _any_
CPU that sees the pushed data tail will be able to see that the
associated descriptor is in the reusable state.

In order to push the descriptor tail, a CPU must first see that the
associated data tail has been pushed. Therefore, that CPU would also see
that the associated descriptor is in the reusable state.

> I think that we actually need a full barrier here to make sure that
> all CPUs see the changes made by data_push_tail() before we
> allow to rewrite the descriptor. The changes in data_push_tail() might
> be done on different CPUs.

There needs to be a reason why the ordering of data tail pushing and
descriptor tail pushing is important.

> It is similar like the full barrier in data_push_tail() before changing
> data_ring->tail_lpos.

How so? That memory barrier exists to make sure the reusable descriptor
state is stored before pushing the data tail. This is important for
readers (which start from the data tail) so they can notice if the
descriptor has since been invalidated (reusable state).

But where is it important that the data tail change is seen before the
descriptor tail change? How are the data tail and descriptor tail
significantly related to each other?

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
