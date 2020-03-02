Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D100517588E
	for <lists+kexec@lfdr.de>; Mon,  2 Mar 2020 11:39:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=sBtXst9v9bRHQHzlIQ2e6tzFctW6bypPnuw2WKW2WbM=; b=S3smF7+++MYhUC
	HGQDtMbRxUcjFJuQNzoLpFoDda9Ej1QlRCiJn5MI2iw4iqh9ouVGjOBBC29BghFdIlvXvPyWl8Yan
	IwCLiWepIhhlxUn9zrujz9GsRuHPfa1BLvV+IRGNff29yUMVcqDHEl1MnAwg74FR+ILLduUzLDryR
	VkymPnw6lHu0Ha7nhTQqAeJeBZ9DM1yUcZ/3FrMo4vKnCAqg5uJM69doX6wZ68kxZjo1jTT+3FskY
	TWe5lqadNfdzPOMXyg533zO8NMrAxbnLhvm3hEmmYwOFKzynci0vk0SeuvmTHzKCfaaXF2Y28Hbya
	MZV97O8at35Wn0L19R5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iTQ-0006Mo-Rz; Mon, 02 Mar 2020 10:38:56 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iTN-0006Le-33
 for kexec@lists.infradead.org; Mon, 02 Mar 2020 10:38:54 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j8iTF-0007Y6-Vv; Mon, 02 Mar 2020 11:38:46 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
Date: Mon, 02 Mar 2020 11:38:42 +0100
Message-ID: <87r1ybujm5.fsf@linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_023853_272217_A265BAAF 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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

On 2020-02-21, Petr Mladek <pmladek@suse.com> wrote:
>> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
>> new file mode 100644
>> index 000000000000..796257f226ee
>> --- /dev/null
>> +++ b/kernel/printk/printk_ringbuffer.c
>> +static struct prb_data_block *to_block(struct prb_data_ring *data_ring,
>> +				       unsigned long begin_lpos)
>> +{
>> +	char *data = &data_ring->data[DATA_INDEX(data_ring, begin_lpos)];
>> +
>> +	return (struct prb_data_block *)data;
>
> Nit: Please, use "blk" instead of "data". I was slightly confused
> because "data" is also one member of struct prb_data_block.

OK.

>> +/* The possible responses of a descriptor state-query. */
>> +enum desc_state {
>> +	desc_miss,	/* ID mismatch */
>> +	desc_reserved,	/* reserved, but still in use by writer */
>> +	desc_committed, /* committed, writer is done */
>> +	desc_reusable,	/* free, not used by any writer */
>
> s/not used/not yet used/

OK.

>> +EXPORT_SYMBOL(prb_reserve);
>
> Please, do not export symbols if there are no plans to actually
> use them from modules. It will be easier to rework the code
> in the future. Nobody would need to worry about external
> users.
>
> Please, do so everywhere in the patchset.

You are correct.

The reason I exported them is that I could run my test module. But since
the test module will not be part of the kernel source, I'll just hack
the exports in when doing my testing.

>> +static char *get_data(struct prb_data_ring *data_ring,
>> +		      struct prb_data_blk_lpos *blk_lpos,
>> +		      unsigned long *data_size)
>> +{
>> +	struct prb_data_block *db;
>> +
>> +	/* Data-less data block description. */
>> +	if (blk_lpos->begin == INVALID_LPOS &&
>> +	    blk_lpos->next == INVALID_LPOS) {
>> +		return NULL;
>
> Nit: There is no need for "else" after return. checkpatch.pl usually
> complains about it ;-)

OK.

>> +/*
>> + * Read the record @id and verify that it is committed and has the sequence
>> + * number @seq. On success, 0 is returned.
>> + *
>> + * Error return values:
>> + * -EINVAL: A committed record @seq does not exist.
>> + * -ENOENT: The record @seq exists, but its data is not available. This is a
>> + *          valid record, so readers should continue with the next seq.
>> + */
>> +static int desc_read_committed(struct prb_desc_ring *desc_ring,
>> +			       unsigned long id, u64 seq,
>> +			       struct prb_desc *desc)
>> +{
>
> I was few times confused whether this function reads the descriptor
> a safe way or not.
>
> Please, rename it to make it clear that does only a check.
> For example, check_state_commited().

This function _does_ read. It is a helper function of prb_read() to
_read_ the descriptor. It is an extended version of desc_read() that
also performs various checks that the descriptor is committed.

I will update the function description to be more similar to desc_read()
so that it is obvious that it is "getting a copy of a specified
descriptor".

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
