Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA72A10FF0E
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 14:46:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eiAh8ZkilnLyqsmTx+38mG6uhfNPQxfXMNA5Vgu5sxk=; b=UGbSIKW3j92PKL
	ESFzPmY9YnPdyjxsWPcYYpmH/4qCVXm9E02x0YfF0HpBRJ8U2aitzVoSQ4NezmKn82hPYLS9GLKAN
	v+xVbLTrBmCrKQEf4RurByP7Gg1YPuZ8ukmplVrObqTbG/LodLMDcaDaFHocu1X8TWAEySF3OamTr
	T4P872AEiDEkepdZUtcZ4ukz8Oi9kkrkOJ1IeXpdBNkVMNhI6CtWbQtmpNHpAvFayFZejNLQ+w+Vo
	zAiL4qh4A1jRf15NlK3wL4uX/SQXtecA4E9K40zK2G0ZhjCqzgN54mKSdLyc+uRQRcNtMveZTzSkA
	KPqtKwevHky3tf9jzYjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8VM-0007yl-F6; Tue, 03 Dec 2019 13:46:16 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8VJ-0007yL-GJ
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 13:46:15 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1ic8VE-000255-VF; Tue, 03 Dec 2019 14:46:09 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [RFC PATCH v5 2/3] printk-rb: new printk ringbuffer
 implementation (reader)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-3-john.ogness@linutronix.de>
 <20191203120622.zux33do54rmjafns@pathway.suse.cz>
Date: Tue, 03 Dec 2019 14:46:07 +0100
In-Reply-To: <20191203120622.zux33do54rmjafns@pathway.suse.cz> (Petr Mladek's
 message of "Tue, 3 Dec 2019 13:06:22 +0100")
Message-ID: <87pnh5bjz4.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_054613_683675_561BCC67 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
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

On 2019-12-03, Petr Mladek <pmladek@suse.com> wrote:
>> Add the reader implementation for the new ringbuffer.
>> 
>> Signed-off-by: John Ogness <john.ogness@linutronix.de>
>> ---
>>  kernel/printk/printk_ringbuffer.c | 234 ++++++++++++++++++++++++++++++
>>  kernel/printk/printk_ringbuffer.h |  12 +-
>>  2 files changed, 245 insertions(+), 1 deletion(-)
>> 
>> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
>> index 09c32e52fd40..f85762713583 100644
>> --- a/kernel/printk/printk_ringbuffer.c
>> +++ b/kernel/printk/printk_ringbuffer.c
>> @@ -674,3 +674,237 @@ void prb_commit(struct prb_reserved_entry *e)
>>  	local_irq_restore(e->irqflags);
>>  }
>>  EXPORT_SYMBOL(prb_commit);
>> +
>> +/*
>> + * Given @blk_lpos, return a pointer to the raw data from the data block
>> + * and calculate the size of the data part. A NULL pointer is returned
>> + * if @blk_lpos specifies values that could never be legal.
>> + *
>> + * This function (used by readers) performs strict validation on the lpos
>> + * values to possibly detect bugs in the writer code. A WARN_ON_ONCE() is
>> + * triggered if an internal error is detected.
>> + */
>> +static char *get_data(struct prb_data_ring *data_ring,
>> +		      struct prb_data_blk_lpos *blk_lpos,
>> +		      unsigned long *data_size)
>> +{
>> +	struct prb_data_block *db;
>> +
>> +	if (blk_lpos->begin == INVALID_LPOS &&
>> +	    blk_lpos->next == INVALID_LPOS) {
>> +		/* descriptor without a data block */
>> +		return NULL;
>> +	} else if (DATA_WRAPS(data_ring, blk_lpos->begin) ==
>> +		   DATA_WRAPS(data_ring, blk_lpos->next)) {
>> +		/* regular data block */
>> +		if (WARN_ON_ONCE(blk_lpos->next <= blk_lpos->begin))
>> +			return NULL;
>> +		db = to_block(data_ring, blk_lpos->begin);
>> +		*data_size = blk_lpos->next - blk_lpos->begin;
>> +
>> +	} else if ((DATA_WRAPS(data_ring, blk_lpos->begin) + 1 ==
>> +		    DATA_WRAPS(data_ring, blk_lpos->next)) ||
>> +		   ((DATA_WRAPS(data_ring, blk_lpos->begin) ==
>> +		     DATA_WRAPS(data_ring, -1UL)) &&
>> +		    (DATA_WRAPS(data_ring, blk_lpos->next) == 0))) {
>
> I am a bit confused. I would expect that (-1UL + 1) = 0. So the second
> condition after || looks just like a special variant of the first
> valid condition.
>
> Or do I miss anything? Is there a problems with type casting?

Sorry, this code deserves a comment.

Here we are only comparing the number of wraps. For a wrapping data
block, @begin will be 1 wrap less than @next. The first part of the
check is checking the typical case, making sure that:

   1 + WRAPS(@begin) == WRAPS(@next)

There is also the case when the lpos overflows. In that case the number
of wraps starts over at zero (without having overflowed). (Note: The
lpos overflows, _not_ the number of wraps. This is why the first check
is not enough.) In this case, the number of wraps of the highest
possible lpos value (-1UL) should be the same as the number of wraps of
@begin. And the number of wraps of @next should be 0. The simplified
pseudo-code check is:

   WRAPS(@begin) == WRAPS(-1UL)
      &&
   WRAPS(@next) == 0

>> +		/* wrapping data block */
>> +		db = to_block(data_ring, 0);
>> +		*data_size = DATA_INDEX(data_ring, blk_lpos->next);
>> +
>> +	} else {
>> +		WARN_ON_ONCE(1);
>> +		return NULL;
>> +	}
>> +
>> +	/* A valid data block will always be aligned to the ID size. */
>> +	if (WARN_ON_ONCE(blk_lpos->begin !=
>> +			 ALIGN(blk_lpos->begin, sizeof(db->id))) ||
>> +	    WARN_ON_ONCE(blk_lpos->next !=
>> +			 ALIGN(blk_lpos->next, sizeof(db->id)))) {
>> +		return NULL;
>> +	}
>> +
>> +	/* A valid data block will always have at least an ID. */
>> +	if (WARN_ON_ONCE(*data_size < sizeof(db->id)))
>> +		return NULL;
>> +
>> +	/* Subtract descriptor ID space from size. */
>> +	*data_size -= sizeof(db->id);
>> +
>> +	return &db->data[0];
>> +}
>> +
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
>
> I do not have a good feeling that the record gets lost here.
>
> I could imagine that a writer would reserve more space than
> needed in the end. Then it would want to modify desc.info.text_len
> and could do a mistake.
>
> By other words, I would expect a bug on the writer side here.
> And I would try to preserve the data by calling:
>
> pr_warn_once("Wrong data_size (%lu) for data: %.*s\n", data_size,
> data_size, data);
>
> Well, I do not resist on it. WARN_ON_ONCE() is fine as well.

Since readers will run in their own kthread, the WARN_ON_ONCE() will not
be sufficient to identify the bug. Attempting to print the bad string
would help. (Although I expect we will not hit these WARN_ON's since we
are the ones implementing printk.)

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
