Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023C81F675D
	for <lists+kexec@lfdr.de>; Thu, 11 Jun 2020 14:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hu2np0EG/IptMHZ2ByEmZI8yKRXKk9GG0YIO59XvYdc=; b=QrANQSE/ELTqja
	NWWkdQEdPebXkWLLnTqh90h9/nhiYepc5pBw3oo+kxjRtmW3WXej90zA7fhnrMmvfPxw7XUpEMZph
	VpYBu32bHJMUTnyW0RAF2Gj6O6/+YOyc5vneROXNM6ZnPnZ/QSeaEc0qtzlPoEhG9PuhGyenUs6NV
	+j7zNX1o4YhPcaWPBWlCZz3KOVIvkeGTdOzl0B3w0gigvGRl/pJXp2YE1gc5R5Hnwl/uwh4frqtPO
	ECe4lrBHy0R0GRJLjSU3ipfSdVksc536gURet1trvP2xP241ppFk6OQgo/ZUC5GPFYG8gvPo2S68Z
	nD9v2aMRsypUSebBeysg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLtW-0002dA-LG; Thu, 11 Jun 2020 12:01:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLtS-0002cQ-1w
 for kexec@lists.infradead.org; Thu, 11 Jun 2020 12:01:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CDBC1ACB8;
 Thu, 11 Jun 2020 12:01:12 +0000 (UTC)
Date: Thu, 11 Jun 2020 14:01:08 +0200
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: Barrier before pushing desc_ring tail: was [PATCH v2 2/3]
 printk: add lockless buffer
Message-ID: <20200611120107.GD6581@linux-b0ei>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609113751.GD23752@linux-b0ei>
 <87d068utbg.fsf@vostro.fn.ogness.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d068utbg.fsf@vostro.fn.ogness.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_050114_393477_7C14F83E 
X-CRM114-Status: GOOD (  36.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

On Tue 2020-06-09 17:56:03, John Ogness wrote:
> On 2020-06-09, Petr Mladek <pmladek@suse.com> wrote:
> >> --- /dev/null
> >> +++ b/kernel/printk/printk_ringbuffer.c
> >> +/*
> >> + * Advance the desc ring tail. This function advances the tail by one
> >> + * descriptor, thus invalidating the oldest descriptor. Before advancing
> >> + * the tail, the tail descriptor is made reusable and all data blocks up to
> >> + * and including the descriptor's data block are invalidated (i.e. the data
> >> + * ring tail is pushed past the data block of the descriptor being made
> >> + * reusable).
> >> + */
> >> +static bool desc_push_tail(struct printk_ringbuffer *rb,
> >> +			   unsigned long tail_id)
> >> +{
> >> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> >> +	enum desc_state d_state;
> >> +	struct prb_desc desc;
> >> +
> >> +	d_state = desc_read(desc_ring, tail_id, &desc);
> >> +
> >> +	switch (d_state) {
> >> +	case desc_miss:
> >> +		/*
> >> +		 * If the ID is exactly 1 wrap behind the expected, it is
> >> +		 * in the process of being reserved by another writer and
> >> +		 * must be considered reserved.
> >> +		 */
> >> +		if (DESC_ID(atomic_long_read(&desc.state_var)) ==
> >> +		    DESC_ID_PREV_WRAP(desc_ring, tail_id)) {
> >> +			return false;
> >> +		}
> >> +
> >> +		/*
> >> +		 * The ID has changed. Another writer must have pushed the
> >> +		 * tail and recycled the descriptor already. Success is
> >> +		 * returned because the caller is only interested in the
> >> +		 * specified tail being pushed, which it was.
> >> +		 */
> >> +		return true;
> >> +	case desc_reserved:
> >> +		return false;
> >> +	case desc_committed:
> >> +		desc_make_reusable(desc_ring, tail_id);
> >> +		break;
> >> +	case desc_reusable:
> >> +		break;
> >> +	}
> >> +
> >> +	/*
> >> +	 * Data blocks must be invalidated before their associated
> >> +	 * descriptor can be made available for recycling. Invalidating
> >> +	 * them later is not possible because there is no way to trust
> >> +	 * data blocks once their associated descriptor is gone.
> >> +	 */
> >> +
> >> +	if (!data_push_tail(rb, &rb->text_data_ring, desc.text_blk_lpos.next))
> >> +		return false;
> >> +	if (!data_push_tail(rb, &rb->dict_data_ring, desc.dict_blk_lpos.next))
> >> +		return false;
> >> +
> >> +	/*
> >> +	 * Check the next descriptor after @tail_id before pushing the tail
> >> +	 * to it because the tail must always be in a committed or reusable
> >> +	 * state. The implementation of prb_first_seq() relies on this.
> >> +	 *
> >> +	 * A successful read implies that the next descriptor is less than or
> >> +	 * equal to @head_id so there is no risk of pushing the tail past the
> >> +	 * head.
> >> +	 */
> >> +	d_state = desc_read(desc_ring, DESC_ID(tail_id + 1),
> >> +			    &desc); /* LMM(desc_push_tail:A) */
> >> +	if (d_state == desc_committed || d_state == desc_reusable) {
> >> +		/*
> >> +		 * Any CPU that loads the new tail ID, must see that the
> >> +		 * descriptor at @tail_id is in the reusable state. See the
> >> +		 * read memory barrier part of desc_reserve:D for details.
> >> +		 */
> >> +		atomic_long_cmpxchg_relaxed(&desc_ring->tail_id, tail_id,
> >> +			DESC_ID(tail_id + 1)); /* LMM(desc_push_tail:B) */
> >
> > I was quite confused by the above comment. Does it mean that we need
> > a barrier here? Or does it explain why the cmpxchg has its own
> > LMM marker?
> 
> This LMM marker is referenced quite often, but since it is a relaxed
> cmpxchg(), its significance is not immediately clear. I was hoping to
> add some hints as to why it is significant. The comment that it is
> referring to is:
> 
> 	/*
> 	 * Guarantee the tail ID is read before validating the
> 	 * recycled descriptor state. A read memory barrier is
> 	 * sufficient for this. This pairs with data_push_tail:C.
> 	 *
> 	 * Memory barrier involvement:
> 	 *
> 	 * If desc_reserve:C reads from desc_push_tail:B, then
> 	 * desc_reserve:F reads from desc_make_reusable:A.
> 	 *
> 	 * Relies on:
> 	 *
> 	 * MB from desc_make_reusable:A to desc_push_tail:B
> 	 *    matching
> 	 * RMB from desc_reserve:C to desc_reserve:F
> 	 *
> 	 * Note: desc_make_reusable:A, desc_push_tail:B, and
> 	 *       data_push_tail:C can all be different CPUs. However,
> 	 *       the desc_push_tail:B CPU must have previously seen
> 	 *       data_push_tail:D and the data_push_tail:D CPU (which
> 	 *       performs the full memory barrier) must have
> 	 *       previously seen desc_make_reusable:A.
> 	 */
> 
> English translation:
> 
> In order to push the data tail, a CPU must first see that the associated
> descriptor is in the reusable state. Since a full memory barrier is
> performed after that sighting and before doing the data tail push, _any_
> CPU that sees the pushed data tail will be able to see that the
> associated descriptor is in the reusable state.
> 
> In order to push the descriptor tail, a CPU must first see that the
> associated data tail has been pushed. Therefore, that CPU would also see
> that the associated descriptor is in the reusable state.

Thanks a lot for this detailed description. It helped a lot.

Let me try another description from slightly different angle:

All this relies on the fact the the full barrier is called in
data_push_tail() and data_push_tail() is called right above.
But there are two situations where the barrier is not called.
It is when:

  1. desc.text_blk_lpos.next already is behind data_ring->tail_lpos.

     This is safe.

     It might happen when there was a race in the past. CPU1 reserved
     a descriptor before CPU2 and CPU2 was able to allocate data block
     before CPU1.

     As a result, both descriptors and both data blocks were moved
     into reusable state when the earlier descriptor was reused.
     It is because it pointed to newer data block and the older data
     block must have been invalidated together with the newer
     descriptor.

     Now, the full barrier was called before tail_lpos was moved.
     Both descriptors must have been in the reusable state already.


  2. desc.text_blk_lpos == INVALID_LPOS.

     It seems that this is not synchronized and other CPUs might see
     the old state.

     It happens for data blocks that do not have any data. So it
     probably does not cause real problems but ...



> > I think that we actually need a full barrier here to make sure that
> > all CPUs see the changes made by data_push_tail() before we
> > allow to rewrite the descriptor. The changes in data_push_tail() might
> > be done on different CPUs.
> 
> How so? That memory barrier exists to make sure the reusable descriptor
> state is stored before pushing the data tail. This is important for
> readers (which start from the data tail) so they can notice if the
> descriptor has since been invalidated (reusable state).
> 
> But where is it important that the data tail change is seen before the
> descriptor tail change? How are the data tail and descriptor tail
> significantly related to each other?

I have to admit that I did not think about it deeply enough. It was
more about feeling and seeing similar pattern.

You have a point. The state value of the descriptor is the central
point. It is used to synchronize operations with both desc_ring and
data_ring.

The state is modified only once. So one (full) memory barrier should
be enough to synchronize all CPUs.

The state has to be modified before the data block could be reused.
Therefore the full barrier has to be already in the data_ring code.

The question is what to do with the empty data case. I see three
possibilities:

  1. Ignore the case with empty block because it (probably) does not
     cause real problems.

  2. Call the full barrier in data_push_tail() even when the data
     block is empty.

  3. Call the full barrier also in desc_push_tail() as I suggested.


My opinion:

I prefer 3rd solution. The barrier would be superfluous in the most
common situation. But it would create more error-proof code.
We could always optimize it when it causes problems.

Anyway, I would feel very uneasy about the the 1st solution. And the
2nd solution is weird. It would be hard to explain.


Best Regards,
Petr

PS: I start feeling more confident about the code. The more barriers
the less possible races ;-)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
