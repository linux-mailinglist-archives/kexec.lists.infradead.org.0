Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA42A1F6EAE
	for <lists+kexec@lfdr.de>; Thu, 11 Jun 2020 22:25:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xeKcsAa3c3QZQuuVELpmoXttyGZ/8JRWLqG23sDdYFU=; b=Wo3+r6cC+hDHd0
	xwG4QdjjKHPRqbhvmLxSYnaVdfY3SbnmoxjmxjFWwwFu3NTLCrXb8aZnDPICb/0g25w0WKR/HOZUB
	nHLiiau2IJnUDvC8Cf1SHTqBLVfZKyYCwUG/+lC4muXvfAD4HXSnUunPY2CEXXkuPEEC3+n6KQkgJ
	BirE4vaJaNCwa2Xjwl3L4qyoIO/3IGwv77ESeBVggnTy5bns6EW5RCxNCQB3iCH35SVX0WN3Epvc8
	eMMTX4m6YQ8VqjZ/d6IQr0hlYjzH8WC8IeZNc6Fvbp6R5SM54AJI+lFHbEbgBesZeQpTstsvBF0Oi
	9DkoIoO3JobqRj7WFXrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjTlE-0004Zd-J4; Thu, 11 Jun 2020 20:25:16 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjTlA-0004ZC-6o
 for kexec@lists.infradead.org; Thu, 11 Jun 2020 20:25:14 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jjTl5-0005Yc-Ps; Thu, 11 Jun 2020 22:25:07 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: redundant check in make_data_reusable(): was [PATCH v2 2/3]
 printk: add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609093103.GB23752@linux-b0ei>
 <87lfkwuwg1.fsf@vostro.fn.ogness.net>
 <20200610093835.GB4311@linux-b0ei>
 <87o8prp6bi.fsf@vostro.fn.ogness.net>
 <20200611135509.GE6581@linux-b0ei>
Date: Thu, 11 Jun 2020 22:25:06 +0200
In-Reply-To: <20200611135509.GE6581@linux-b0ei> (Petr Mladek's message of
 "Thu, 11 Jun 2020 15:55:09 +0200")
Message-ID: <87pna5mjtp.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_132512_393157_5E363846 
X-CRM114-Status: GOOD (  26.57  )
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

On 2020-06-11, Petr Mladek <pmladek@suse.com> wrote:
>>>>>> --- /dev/null
>>>>>> +++ b/kernel/printk/printk_ringbuffer.c
>>>>>> +/*
>>>>>> + * Given a data ring (text or dict), put the associated descriptor of each
>>>>>> + * data block from @lpos_begin until @lpos_end into the reusable state.
>>>>>> + *
>>>>>> + * If there is any problem making the associated descriptor reusable, either
>>>>>> + * the descriptor has not yet been committed or another writer task has
>>>>>> + * already pushed the tail lpos past the problematic data block. Regardless,
>>>>>> + * on error the caller can re-load the tail lpos to determine the situation.
>>>>>> + */
>>>>>> +static bool data_make_reusable(struct printk_ringbuffer *rb,
>>>>>> +			       struct prb_data_ring *data_ring,
>>>>>> +			       unsigned long lpos_begin,
>>>>>> +			       unsigned long lpos_end,
>>>>>> +			       unsigned long *lpos_out)
>>>>>> +{
>>>>>> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
>>>>>> +	struct prb_data_blk_lpos *blk_lpos;
>>>>>> +	struct prb_data_block *blk;
>>>>>> +	unsigned long tail_lpos;
>>>>>> +	enum desc_state d_state;
>>>>>> +	struct prb_desc desc;
>>>>>> +	unsigned long id;
>>>>>> +
>>>>>> +	/*
>>>>>> +	 * Using the provided @data_ring, point @blk_lpos to the correct
>>>>>> +	 * blk_lpos within the local copy of the descriptor.
>>>>>> +	 */
>>>>>> +	if (data_ring == &rb->text_data_ring)
>>>>>> +		blk_lpos = &desc.text_blk_lpos;
>>>>>> +	else
>>>>>> +		blk_lpos = &desc.dict_blk_lpos;
>>>>>> +
>>>>>> +	/* Loop until @lpos_begin has advanced to or beyond @lpos_end. */
>>>>>> +	while ((lpos_end - lpos_begin) - 1 < DATA_SIZE(data_ring)) {
>>>>>> +		blk = to_block(data_ring, lpos_begin);
>>>>>> +		id = READ_ONCE(blk->id); /* LMM(data_make_reusable:A) */
>>>>>> +
>>>>>> +		/*
>>>>>> +		 * Guarantee the block ID is loaded before checking the tail
>>>>>> +		 * lpos. The loaded block ID can only be considered valid if
>>>>>> +		 * the tail lpos has not overtaken @lpos_begin. This pairs
>>>>>> +		 * with data_alloc:A.
>>>>>> +		 *
>>>>>> +		 * Memory barrier involvement:
>>>>>> +		 *
>>>>>> +		 * If data_make_reusable:A reads from data_alloc:B, then
>>>>>> +		 * data_make_reusable:C reads from data_push_tail:D.
>>>>>> +		 *
>>>>>> +		 * Relies on:
>>>>>> +		 *
>>>>>> +		 * MB from data_push_tail:D to data_alloc:B
>>>>>> +		 *    matching
>>>>>> +		 * RMB from data_make_reusable:A to data_make_reusable:C
>>>>>> +		 *
>>>>>> +		 * Note: data_push_tail:D and data_alloc:B can be different
>>>>>> +		 *       CPUs. However, the data_alloc:B CPU (which performs
>>>>>> +		 *       the full memory barrier) must have previously seen
>>>>>> +		 *       data_push_tail:D.
>>>>>> +		 */
>>>>>> +		smp_rmb(); /* LMM(data_make_reusable:B) */
>>>>>> +
>>>>>> +		tail_lpos = atomic_long_read(&data_ring->tail_lpos
>>>>>> +					); /* LMM(data_make_reusable:C) */
>>>>>> +
>>>>>> +		/*
>>>>>> +		 * If @lpos_begin has fallen behind the tail lpos, the read
>>>>>> +		 * block ID cannot be trusted. Fast forward @lpos_begin to the
>>>>>> +		 * tail lpos and try again.
>>>>>> +		 */
>>>>>> +		if (lpos_begin - tail_lpos >= DATA_SIZE(data_ring)) {
>>>>>> +			lpos_begin = tail_lpos;
>>>>>> +			continue;
>>>>>> +		}
>>>>>
>>>>> I am sorry if we have had this discussion already in past.
>>>> 
>>>> We have [0]. (Search for "Ouch.")
>>>
>>> I see. Thanks a lot for the pointer.
>>>
>>>>> Well, it would just prove that it really needs a comment why this
>>>>> check is necessary.
>>>> 
>>>> The comment says why it is necessary. The previous read of the block ID
>>>> cannot be trusted if the the tail has been pushed beyond it.
>>>
>>> Not really. The comment describes what the check does. But it does not
>>> explain why it is needed. The reason might be described be something like:
>>>
>>> 		* Make sure that the id read from tail_lpos is really
>>> 		* pointing to this lpos. The block might have been
>>> 		* reused in the meantime. Make sure to do not make
>>> 		* the new owner reusable.
>> 
>> That is _not_ what this check is doing. I recommend looking closely at
>> the example you posted. This is not about whether or not a descriptor is
>> pointing to this lpos. In your example you showed that ID, state, and
>> lpos values could all look good, but it is for the _new_ record and we
>> should _not_ invalidate that one.
>
> OK, let's make sure that we are talking about the same example.
> I was talking about this one from
> https://lore.kernel.org/lkml/87ftecy343.fsf@linutronix.de/
>
> % [*] Another problem would be when data_make_reusable() see the new
> %     data already in the committed state. It would make fresh new
> %     data reusable.
> %
> %     I mean the following:
> %
> % CPU0				CPU1
> %
> % data_alloc()
> %   begin_lpos = dr->head_lpos
> %   data_push_tail()
> %     lpos = dr->tail_lpos
> %				prb_reserve()
> %				  # reserve the location of current
> %				  # dr->tail_lpos
> %				prb_commit()
> %
> %     id = blk->id
> %     # read id for the freshly written data on CPU1
> %     # and happily make them reusable
> %     data_make_reusable()
>
> Sigh, sigh, sigh, there is a hugely misleading comment in the example:
>
> %				  # reserve the location of current
> %				  # dr->tail_lpos
>
> It is true that it reserves part of this location. But it will use
> data_ring->head_lpos for the related desc->text_blk_lpos.begin !!!

Aaargh! You are right!

> If blk->id comes from the new descriptor written by CPU1 then
> blk_lpos->begin is based on the old data_ring->head_lpos.
> Then it is different from lpos_begin.
>
> Let's put it another way. The state of the descriptor defines validity
> of the data. Descriptor in committed state _must not_ point to invalid
> data block!!!
>
> If a descriptor in committed state point to lpos that was in invalid
> range before reading the descriptor then we have a huge hole in the
> design.
>
> This is why I believe that the check of the descriptor must be enough.

You are right. The smp_rmb (data_make_reusable:B) and its following tail
check are not needed. Since data_make_reusable:A can read garbage even
if we pass the tail check, we might as well always allow garbage and
rely on the descriptor/lpos checks to catch it. (Actually, that was the
design!)

However, the pairing smp_mb (data_alloc:A) is still needed, but it will
then pair with data_push_tail:A. If data_make_reusable() reads garbage
(maybe newly written garbage), it is important that a new data tail is
visible.

The comment for data_alloc:A would change to something like:

	/*
	 * Guarantee any updated tail lpos is stored before modifying
	 * the newly allocated data area. Another context may be in
	 * data_make_reusable() and is reading a block ID from this
	 * area. data_make_reusable() can handle reading a garbage block
	 * ID value, but then it must be able to load a new tail lpos.
	 * This pairs with data_push_tail:A.
	 */
	smp_mb(); /* LMM(data_alloc:A) */

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
