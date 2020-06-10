Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2A91F522C
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 12:24:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ktKtfTqdYgu6LDxSDxzl64M98zTrf+OpkwKMO1uInLQ=; b=Alj5/6qruH+sNi
	nPIVuatqQk5IH3yeNogy6AMwkoTcZZ9dJYkJXcHj62bCHsGfpKueKW8A3grdZ/AdFyCRIpJ8G+nvp
	fMYdUwvO2MBgRi5E9OVTgkd7LAjCv+0xe7vl+OLrVSYMqIbVlRO6P0JsZMOI6zJKQFJlythB8iQfx
	f7tqCRK5PlGj8IgL7ccVoy5WKnFrnBSGOJUWew4fKZquONl/r9W9nUV0AswXFMsdPq7kUVUCeywqH
	EGIzU42W++bXMAKjbjdo2hvE059fBtgcI3nJ+ceuvVegov2vFujyo0qgMjqZKEof6bATdaxQbCdkL
	mbMYJ0BGyd7xrU1R5WUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixu0-0002s1-5D; Wed, 10 Jun 2020 10:24:12 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixtw-0002rb-GI
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 10:24:10 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jixtr-0001UN-2F; Wed, 10 Jun 2020 12:24:03 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: redundant check in make_data_reusable(): was [PATCH v2 2/3]
 printk: add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609093103.GB23752@linux-b0ei>
 <87lfkwuwg1.fsf@vostro.fn.ogness.net>
 <20200610093835.GB4311@linux-b0ei>
Date: Wed, 10 Jun 2020 12:24:01 +0200
In-Reply-To: <20200610093835.GB4311@linux-b0ei> (Petr Mladek's message of
 "Wed, 10 Jun 2020 11:38:35 +0200")
Message-ID: <87o8prp6bi.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_032408_684917_A89B60A3 
X-CRM114-Status: GOOD (  29.34  )
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

On 2020-06-10, Petr Mladek <pmladek@suse.com> wrote:
>> >> --- /dev/null
>> >> +++ b/kernel/printk/printk_ringbuffer.c
>> >> +/*
>> >> + * Given a data ring (text or dict), put the associated descriptor of each
>> >> + * data block from @lpos_begin until @lpos_end into the reusable state.
>> >> + *
>>>> + * If there is any problem making the associated descriptor reusable, either
>>>> + * the descriptor has not yet been committed or another writer task has
>>>> + * already pushed the tail lpos past the problematic data block. Regardless,
>>>> + * on error the caller can re-load the tail lpos to determine the situation.
>>>> + */
>>>> +static bool data_make_reusable(struct printk_ringbuffer *rb,
>>>> +			       struct prb_data_ring *data_ring,
>>>> +			       unsigned long lpos_begin,
>>>> +			       unsigned long lpos_end,
>>>> +			       unsigned long *lpos_out)
>>>> +{
>>>> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
>>>> +	struct prb_data_blk_lpos *blk_lpos;
>>>> +	struct prb_data_block *blk;
>>>> +	unsigned long tail_lpos;
>>>> +	enum desc_state d_state;
>>>> +	struct prb_desc desc;
>>>> +	unsigned long id;
>>>> +
>>>> +	/*
>>>> +	 * Using the provided @data_ring, point @blk_lpos to the correct
>>>> +	 * blk_lpos within the local copy of the descriptor.
>>>> +	 */
>>>> +	if (data_ring == &rb->text_data_ring)
>>>> +		blk_lpos = &desc.text_blk_lpos;
>>>> +	else
>>>> +		blk_lpos = &desc.dict_blk_lpos;
>>>> +
>>>> +	/* Loop until @lpos_begin has advanced to or beyond @lpos_end. */
>>>> +	while ((lpos_end - lpos_begin) - 1 < DATA_SIZE(data_ring)) {
>>>> +		blk = to_block(data_ring, lpos_begin);
>>>> +		id = READ_ONCE(blk->id); /* LMM(data_make_reusable:A) */
>>>> +
>>>> +		/*
>>>> +		 * Guarantee the block ID is loaded before checking the tail
>>>> +		 * lpos. The loaded block ID can only be considered valid if
>>>> +		 * the tail lpos has not overtaken @lpos_begin. This pairs
>>>> +		 * with data_alloc:A.
>>>> +		 *
>>>> +		 * Memory barrier involvement:
>>>> +		 *
>>>> +		 * If data_make_reusable:A reads from data_alloc:B, then
>>>> +		 * data_make_reusable:C reads from data_push_tail:D.
>>>> +		 *
>>>> +		 * Relies on:
>>>> +		 *
>>>> +		 * MB from data_push_tail:D to data_alloc:B
>>>> +		 *    matching
>>>> +		 * RMB from data_make_reusable:A to data_make_reusable:C
>>>> +		 *
>>>> +		 * Note: data_push_tail:D and data_alloc:B can be different
>>>> +		 *       CPUs. However, the data_alloc:B CPU (which performs
>>>> +		 *       the full memory barrier) must have previously seen
>>>> +		 *       data_push_tail:D.
>>>> +		 */
>>>> +		smp_rmb(); /* LMM(data_make_reusable:B) */
>>>> +
>>>> +		tail_lpos = atomic_long_read(&data_ring->tail_lpos
>>>> +					); /* LMM(data_make_reusable:C) */
>>>> +
>>>> +		/*
>>>> +		 * If @lpos_begin has fallen behind the tail lpos, the read
>>>> +		 * block ID cannot be trusted. Fast forward @lpos_begin to the
>>>> +		 * tail lpos and try again.
>>>> +		 */
>>>> +		if (lpos_begin - tail_lpos >= DATA_SIZE(data_ring)) {
>>>> +			lpos_begin = tail_lpos;
>>>> +			continue;
>>>> +		}
>>>
>>> I am sorry if we have had this discussion already in past.
>> 
>> We have [0]. (Search for "Ouch.")
>
> I see. Thanks a lot for the pointer.
>
>>> Well, it would just prove that it really needs a comment why this
>>> check is necessary.
>> 
>> The comment says why it is necessary. The previous read of the block ID
>> cannot be trusted if the the tail has been pushed beyond it.
>
> Not really. The comment describes what the check does. But it does not
> explain why it is needed. The reason might be described be something like:
>
> 		* Make sure that the id read from tail_lpos is really
> 		* pointing to this lpos. The block might have been
> 		* reused in the meantime. Make sure to do not make
> 		* the new owner reusable.

That is _not_ what this check is doing. I recommend looking closely at
the example you posted. This is not about whether or not a descriptor is
pointing to this lpos. In your example you showed that ID, state, and
lpos values could all look good, but it is for the _new_ record and we
should _not_ invalidate that one.

We can detect the scenario you pointed out by verifying the tail has not
moved beyond the data block that the ID was read from. The comment for
this check says:

    If @lpos_begin has fallen behind the tail lpos,
    the read block ID cannot be trusted.

This is exactly the why. It is only about whether we can trust that a
non-garbage block ID was read. Or do you want me to add:

    ... because data read that is behind the tail lpos must be
    considered garbage.

> But wait! This situation should get caught by the two existing descriptor
> checks:
>
>>		case desc_committed:
>>			/*
>>			 * This data block is invalid if the descriptor
>>			 * does not point back to it.
>>			 */
>>			if (blk_lpos->begin != lpos_begin)
>>				return false;
>>			desc_make_reusable(desc_ring, id);
>>			break;
>>		case desc_reusable:
>>			/*
>>			 * This data block is invalid if the descriptor
>>			 * does not point back to it.
>>			 */
>>			if (blk_lpos->begin != lpos_begin)
>>				return false;
>>			break;

No. Your example showed that it is not caught here.

> Here again the comments describe what the check does but not why.
> I would write something like:
>
> 			/*
> 			 * The block might have already been
> 			 * reused. Make sure that the descriptor really
> 			 * points back to the checked lpos. It covers
> 			 * both situations. Random data might point to
> 			 * a valid descriptor just by chance. Or the block
> 			 * has been already reused by another descriptor.
> 			 */

OK. I will expand the comments to something similar to this.

> So, I think that the lpos range check is still redundant. We might
> describe it as an extra paranoid check but I am not sure if it is
> worth it.
>
> But I would remove it and keep the code "simple" and design "clear".
> Well, I do not resist on it.

If we remove it, we end up back at your bug report. ;-)

John Ogness

[0] https://lkml.kernel.org/r/87ftecy343.fsf@linutronix.de

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
