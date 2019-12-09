Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3AA51168E5
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 10:09:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mv0LTm4UxXAGK821z24xBqYiX7ymI+v97Ys1P0G/vNs=; b=p0+PNw0DiLmypp
	l1PkF4ziXjjTNEf/j5QWxQs4m9qmnkVTzxZAGAJHOZKys24vectceyFgCQRq/shdTwvwvoooE3l54
	YMjGW6fJSC59/SPXkLd3LSdESVHPAt2EqjTcCvFN0Nvl4kAVDqektwiw3tW/WNpEwCyJQe8tdbydU
	SowULeDCwhcT8WzNmQcrHMMXABbhDELqshdpvWnPB2guSi19+c6Qud/fj91ost74BI2XBywzyFxjH
	efBxvHGKToM31Lm3hjY463V4bSP2/q5mkRRkGYZVPZ4ODCLDNZZwyJsPfOit3aTbr1D65RQyL/pEz
	l0LA+jZdToza6vBQ5FJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieF2j-0004au-6l; Mon, 09 Dec 2019 09:09:25 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieF2f-0004aX-Je
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 09:09:23 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1ieF2c-0005Gv-91; Mon, 09 Dec 2019 10:09:18 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [RFC PATCH v5 2/3] printk-rb: new printk ringbuffer
 implementation (reader)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-3-john.ogness@linutronix.de>
 <20191209084300.GD88619@google.com>
Date: Mon, 09 Dec 2019 10:09:16 +0100
In-Reply-To: <20191209084300.GD88619@google.com> (Sergey Senozhatsky's message
 of "Mon, 9 Dec 2019 17:43:00 +0900")
Message-ID: <87r21dzwzn.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_010921_790181_4E1A6533 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Petr Mladek <pmladek@suse.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2019-12-09, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>> +/* Given @blk_lpos, copy an expected @len of data into the provided buffer. */
>> +static bool copy_data(struct prb_data_ring *data_ring,
>> +		      struct prb_data_blk_lpos *blk_lpos, u16 len, char *buf,
>> +		      unsigned int buf_size)
>> +{
>> +	unsigned long data_size;
>> +	char *data;
>> +
>> +	/* Caller might not want the data. */
>> +	if (!buf || !buf_size)
>> +		return true;
>> +
>> +	data = get_data(data_ring, blk_lpos, &data_size);
>> +	if (!data)
>> +		return false;
>> +
>> +	/* Actual cannot be less than expected. */
>> +	if (WARN_ON_ONCE(data_size < len))
>> +		return false;
>> +
>> +	data_size = min_t(u16, buf_size, len);
>> +
>> +	if (!WARN_ON_ONCE(!data_size))
>> +		memcpy(&buf[0], data, data_size);
>> +	return true;
>> +}
>> +
>> +/*
>> + * Read the record @id and verify that it is committed and has the sequence
>> + * number @seq.
>> + *
>> + * Error return values:
>> + * -EINVAL: The record @seq does not exist.
>> + * -ENOENT: The record @seq exists, but its data is not available. This is a
>> + *          valid record, so readers should continue with the next seq.
>> + */
>> +static int desc_read_committed(struct prb_desc_ring *desc_ring, u32 id,
>> +			       u64 seq, struct prb_desc *desc)
>> +{
>> +	enum desc_state d_state;
>> +
>> +	d_state = desc_read(desc_ring, id, desc);
>> +	if (desc->info.seq != seq)
>> +		return -EINVAL;
>> +	else if (d_state == desc_reusable)
>> +		return -ENOENT;
>> +	else if (d_state != desc_committed)
>> +		return -EINVAL;
>> +
>> +	return 0;
>> +}
>> +
>> +/*
>> + * Copy the ringbuffer data from the record with @seq to the provided
>> + * @r buffer. On success, 0 is returned.
>> + *
>> + * See desc_read_committed() for error return values.
>> + */
>> +static int prb_read(struct printk_ringbuffer *rb, u64 seq,
>> +		    struct printk_record *r)
>> +{
>> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
>> +	struct prb_desc *rdesc = to_desc(desc_ring, seq);
>> +	atomic_t *state_var = &rdesc->state_var;
>> +	struct prb_desc desc;
>> +	int err;
>> +	u32 id;
>> +
>> +	/* Get a reliable local copy of the descriptor and check validity. */
>> +	id = DESC_ID(atomic_read(state_var));
>> +	err = desc_read_committed(desc_ring, id, seq, &desc);
>> +	if (err)
>> +		return err;
>> +
>> +	/* If requested, copy meta data. */
>> +	if (r->info)
>> +		memcpy(r->info, &desc.info, sizeof(*(r->info)));
>
> I wonder if those WARN_ON-s will trigger false positive sometimes.
>
> A theoretical case.
>
> What if reader gets preempted/interrupted in the middle of
> desc_read_committed()->desc_read()->memcpy(). The context which
> interrupts the reader recycles the descriptor and pushes new
> data. Suppose that reader was interrupted right after it copied
> ->info.seq and ->info.text_len.  So the first desc_read_committed()
> will pass - we have matching ->seq and committed state. copy_data(),
> however, most likely, will generate WARNs. The final
> desc_read_committed() will notice that local copy of desc was in
> non-consistent state and everything is fine, but we have WARNs in the
> log buffer now.

Be aware that desc_read_committed() is filling a copy of the descriptor
in the local variable @desc. If desc_read_committed() succeeded, that
local copy _must_ be consistent. If the WARNs trigger, either
desc_read_committed() or the writer code is broken.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
