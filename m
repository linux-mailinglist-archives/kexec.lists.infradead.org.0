Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E561F4FA9
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 09:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+p2L9Gyoo0jROk9//PbErlz9NA6LuhdeKWU/e+sNAqM=; b=a0Yxxx+hxgtrXK
	enrBzC7V0zJgf1UOfYdKBR6aWxwPXXbgjHOa9WuQkTmha+o4pXEHzV108owzqh3AFbBzY2A/xvzPr
	uANASkIBVVIT6m3rphB0+ZjHXFkawgOn/KOJaEODfbAXCKVIEKPXFmSDZkxscUwMp0nd2QqZYxlra
	98ykbNRqNgExE7h8rTrpf+GW9EjUvg0VWQUH4N1TYdW7n6AdSwUeBYieL4IfZ3Si8J5qe6GRpCgoD
	JiUJ4Yz8zcmG567A3SWR/51gcB8pwkoYLQzB32UCPpq4A0WGQjIA7SakrfIZuXDV+8c2baR1jvEU6
	y+CdcBSsJc4K9siia9SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivY6-0007Ez-N7; Wed, 10 Jun 2020 07:53:26 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivY3-0007Dl-2g
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 07:53:24 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jivXx-0007m8-Hv; Wed, 10 Jun 2020 09:53:17 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: data_ring head_lpos and tail_lpos synchronization: was [PATCH v2
 2/3] printk: add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609143811.GF23752@linux-b0ei>
Date: Wed, 10 Jun 2020 09:53:16 +0200
In-Reply-To: <20200609143811.GF23752@linux-b0ei> (Petr Mladek's message of
 "Tue, 9 Jun 2020 16:38:11 +0200")
Message-ID: <87wo4fpdar.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_005323_259801_75331C8D 
X-CRM114-Status: GOOD (  16.40  )
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
>> + * Advance the data ring tail to at least @lpos. This function puts
>> + * descriptors into the reusable state if the tail is pushed beyond
>> + * their associated data block.
>> + */
>> +static bool data_push_tail(struct printk_ringbuffer *rb,
>> +			   struct prb_data_ring *data_ring,
>> +			   unsigned long lpos)
>> +{
>> +	unsigned long tail_lpos;
>> +	unsigned long next_lpos;
>> +
>> +	/* If @lpos is not valid, there is nothing to do. */
>> +	if (lpos == INVALID_LPOS)
>> +		return true;
>> +
>> +	tail_lpos = atomic_long_read(&data_ring->tail_lpos);
>
> Hmm, I wonder whether data_ring->tail_lpos and data_ring->head_lpos
> are synchronized enough between each other.
>
> I feel that there should be read barrier here. But it seems that more
> barriers are missing. For example, let's have:
>
>
> CPU0				CPU1
>
> data_alloc()
>   begin_lpos = atomic_read(data_ring->head_lpos);
>
> 				data_alloc()
> 				  data_push_tail()
> 				    cmpxchg(data_ring->tail_lpos);
> 				    // A: no barrier
> 				  cmpxchg(data_ring->head_lpos);
>
>   data_push_tail()
>     // B: no barrier
>     tail_lpos = atomic_read(data_ring->tail_lpos);
>
> Problem 1:
>
>    CPU0 might see random ordering of data_ring->tail_lpos and
>    head_lpos values modified by CPU1. There are missing both
>    write and read barriers.

You need to explain why this is a problem. CPU0 saw some head and some
tail. Both values are at least the current values (i.e. there is no
danger that it sees a tail that is further than the tail really is).

CPU0 then uses the head/tail values to determine how far to advance the
tail and how far to advance the head. Both of these advances use
cmpxchg_relaxed(). So there is no danger of random head/tail
modifications. Upon cmpxchg_relaxed() failure, the new current values
are loaded and it retries based on the new values.

The only issue is if data_push_tail()/data_make_reusable() are able to
recognize that a data area is already recycled. And both functions have
memory barriers in place for that.

> Problem 2:
>
>    There might be still a chance because CPU0 does:
>
>      if (!data_make_reusable())
>        smp_rmb()
>        tail_lpos = atomic_read(data_ring->tail_lpos);
>
>    But CPU0 might still see old data_ring->tail because CPU1 did not
>    do write barrier.

I claim that it does not matter. The smp_rmb() here pairs with the full
memory barrier LMM(desc_reserve:D). The reasoning:

	 * Guarantee any data ring tail changes are stored before
	 * recycling the descriptor. Data ring tail changes can happen
	 * via desc_push_tail()->data_push_tail(). A full memory
	 * barrier is needed since another task may have pushed the
	 * data ring tails. This pairs with data_push_tail:A.

So if data_make_reusable() failed due to a descriptor already being
recycled, we know CPU0 will be able to read an updated tail value (and
try again with the new value).

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
