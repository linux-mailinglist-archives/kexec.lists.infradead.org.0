Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9801F5646
	for <lists+kexec@lfdr.de>; Wed, 10 Jun 2020 15:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3o4axhKLafIIih9Dt+s0DkNUGZOSgrj7zKK6T012/ks=; b=uyyydXhlFdZFim
	Purr3LIDFuN8+9HVdWarKHxQnkNmddAlKyEZstzuxYaRVr1eXBwIGds3VAach9ialEi3vZqPQcN9R
	aY4LiYF04Ay89woeKWFdtbXJan4VLF2r+pKpFVrSgoykQSkd90aTjOYPsYRkWZNeUAG7t+rORIBiE
	aOInXItjVSrRTe0hKKHsRv/KjJ4bJCLSNHTWEkMBuIkEoCxbJIrHCHFUZIRizJsk9j+e6Nx8zCbA8
	UBCHYiJ7aY0cBrFeq2wg8P8vaO9dfJxx+PgjE7xe71ozbjth8hK62OXxb8ez+oN2wPGQAj13LN0DP
	qks/pCC8vq9J8xZRgKSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1CD-0003RY-QN; Wed, 10 Jun 2020 13:55:13 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1C9-0002KE-NB
 for kexec@lists.infradead.org; Wed, 10 Jun 2020 13:55:11 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jj1C1-0005zZ-Ex; Wed, 10 Jun 2020 15:55:01 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: blk->id read race: was: [PATCH v2 2/3] printk: add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609071030.GA23752@linux-b0ei>
 <87tuzkuxtw.fsf@vostro.fn.ogness.net>
 <20200610084248.GA4311@linux-b0ei>
Date: Wed, 10 Jun 2020 15:55:00 +0200
In-Reply-To: <20200610084248.GA4311@linux-b0ei> (Petr Mladek's message of
 "Wed, 10 Jun 2020 10:42:48 +0200")
Message-ID: <87k10fowjv.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_065509_920297_3FA266AF 
X-CRM114-Status: GOOD (  17.22  )
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
>>>> --- /dev/null
>>>> +++ b/kernel/printk/printk_ringbuffer.c
>>>> +/*
>>>> + * Given a data ring (text or dict), put the associated descriptor of each
>>>> + * data block from @lpos_begin until @lpos_end into the reusable state.
>>>> + *
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
>>>
>>> This would deserve some comment:
>
> I wonder if the comment might look like:
>
> /*
>  * No barrier is needed between reading tail_lpos and the related
>  * blk->id. Only CPU that modifies tail_lpos via cmpxchg is allowed
>  * to modify the related blk->id. CPUs that see the moved tail_lpos
>  * are looking at another block related to the new tail_lpos.
>  * It does not mater when the previous winner modifies the previous
>  * block.
>  */

Sorry, but this comment does not make sense for me. The tail is pushed
_before_ the block ID is modified. So any kind of barrier here (where we
read the tail, then the block ID, i.e. the same order) would be
inappropriate anyway.

Also, this comment only talks about when a new value is seen, but not
about when the old value is seen. IMO it is seeing the old value that is
worthy of a comment since that is the only case with a data race.

In preparation for my next version I have added the following comment:

        blk = to_block(data_ring, lpos_begin);

        /*
         * When going from lpos to block pointer, the wrap around
         * feature of the lpos value is lost. Since another CPU could
         * invalidate this data area at any time, the data tail must
         * be re-checked after the block ID has been read.
         */

        id = blk->id; /* LMM(data_make_reusable:A) */

I think this comment also helps to further clarify "why" the following
data tail check occurs.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
