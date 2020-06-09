Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E21271F3DCD
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 16:19:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hq9TYmlDK+jkH3n4z1YYC51laZLl5GiBG/mJ8Fb0PPU=; b=AxDnEVDLO5Hrai
	ns7d9Tm1TmtnMS0+6OwxqAno62LS8Nmkrh+BULZK4jE+6XVIrjL3MrifM5Ax/9qE1DWzIvJYOoZlD
	W0iDC7d8EpB3gLLlHg7SgVetmsRXllqY7ejHRHpIwWUlYtL4H0gzvcvany+YoPHbqYRedevGO8Cxm
	Qfh+Ai/29Offtd+XcttMfW0ocsA5ImD4gaO/z3IRgt+DEd3olsgBxyZh9+wouOaGv/DdFi7pwngFH
	gz4yFbZ6xLdqWsO5rZJh8VI070++GSkPcNh65xPMlhX72CkMtm7RUDdD87582AN+x3iVrTHjUm+f4
	Wau5hTer03pu04CBdyng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jif5j-0004yP-3D; Tue, 09 Jun 2020 14:19:03 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jif5f-0004wi-7V
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 14:19:00 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jif5N-0002Lk-Jo; Tue, 09 Jun 2020 16:18:41 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: blk->id read race: was: [PATCH v2 2/3] printk: add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609071030.GA23752@linux-b0ei>
Date: Tue, 09 Jun 2020 16:18:35 +0200
In-Reply-To: <20200609071030.GA23752@linux-b0ei> (Petr Mladek's message of
 "Tue, 9 Jun 2020 09:10:30 +0200")
Message-ID: <87tuzkuxtw.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071859_415458_0C605BB6 
X-CRM114-Status: GOOD (  18.37  )
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
>> + * Given a data ring (text or dict), put the associated descriptor of each
>> + * data block from @lpos_begin until @lpos_end into the reusable state.
>> + *
>> + * If there is any problem making the associated descriptor reusable, either
>> + * the descriptor has not yet been committed or another writer task has
>> + * already pushed the tail lpos past the problematic data block. Regardless,
>> + * on error the caller can re-load the tail lpos to determine the situation.
>> + */
>> +static bool data_make_reusable(struct printk_ringbuffer *rb,
>> +			       struct prb_data_ring *data_ring,
>> +			       unsigned long lpos_begin,
>> +			       unsigned long lpos_end,
>> +			       unsigned long *lpos_out)
>> +{
>> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
>> +	struct prb_data_blk_lpos *blk_lpos;
>> +	struct prb_data_block *blk;
>> +	unsigned long tail_lpos;
>> +	enum desc_state d_state;
>> +	struct prb_desc desc;
>> +	unsigned long id;
>> +
>> +	/*
>> +	 * Using the provided @data_ring, point @blk_lpos to the correct
>> +	 * blk_lpos within the local copy of the descriptor.
>> +	 */
>> +	if (data_ring == &rb->text_data_ring)
>> +		blk_lpos = &desc.text_blk_lpos;
>> +	else
>> +		blk_lpos = &desc.dict_blk_lpos;
>> +
>> +	/* Loop until @lpos_begin has advanced to or beyond @lpos_end. */
>> +	while ((lpos_end - lpos_begin) - 1 < DATA_SIZE(data_ring)) {
>> +		blk = to_block(data_ring, lpos_begin);
>> +		id = READ_ONCE(blk->id); /* LMM(data_make_reusable:A) */
>
> This would deserve some comment:
>
> 1. Compiler could not optimize out the read because there is a data
>    dependency on lpos_begin.
>
> 2. Compiler could not postpone the read because it is followed by
>    smp_rmb().
>
> So, is READ_ONCE() realy needed?

I agree that it is not needed. Both the READ_ONCE() and its countering
WRITE_ONCE() (data_alloc:B) only document the lockless shared access. I
will remove both for the next version.

Do we still need a comment? Is it not obvious that there is a data
dependency on @lpos_begin?

        blk = to_block(data_ring, lpos_begin);
        id = blk->id;

> Well, blk->id clearly can be modified in parallel so we need to be
> careful. There is smp_rmb() right below. Do we needed smp_rmb() also
> before?
>
> What about the following scenario?:
>
>
> CPU0						CPU1
>
> 						data_alloc()
> 						  data_push_tail()
>
> 						blk = to_block(data_ring, begin_lpos)
> 						WRITE_ONCE(blk->id, id); /* LMM(data_alloc:B) */
>
> desc_push_tail()
>   data_push_tail()
>
>     tail_lpos = data_ring->tail_lpos;
>     // see data_ring->tail_lpos already updated by CPU1
>
>     data_make_reusable()
>
>       // lpos_begin = tail_lpos via parameter
>       blk = to_block(data_ring, lpos_begin);
>       id = blk->id
>
> Now: CPU0 might see outdated blk->id before CPU1 wrote new value
>      because there is no read barrier betwen reading tail_lpos
>      and blk->id here.

In your example, CPU1 is pushing the tail and then setting the block ID
for the _newly_ allocated block, that is located is _before_ the new
tail. If CPU0 sees the new tail already, it is still reading a valid
block ID, which is _not_ from the block that CPU1 is in the process of
writing.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
