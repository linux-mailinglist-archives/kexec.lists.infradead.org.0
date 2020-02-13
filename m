Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9AB15BBE1
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 10:43:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dAtvtA0FkMvZabJXhWxJEY6LX2J0OjRvOij4fqKM1A=; b=mnY+mnkRT2RKIZ
	KQnKvdc8+3RqESk2yVHNHYBqGgx8zV29o4H0Fe5m2bpv9JIdD8xGpL82xRXlcEFF2uNAoYRppqe9t
	lTEX+kZKp+rjZuuPVK5OsRRbwk7YAUs63Kh0wZZjEq0Gg3bLFoMzW29W7PBkUUkiKBTdBqL3GdQ1s
	bvgka9+av1aT1rl6WNs4/fHqchuI57Ce6QoiTFo3TWeltvmfCZzXz4NOVGn9Q17CHLBI7/CROskbY
	LI4NQlR/4tuxH+wf+xaBbpvCfshE5rcD4iVkG2ks7kfnJgoFENZ5v3g0HvZ5euoBvG+QFZGQe/Ciu
	Bshtz7tAcJghsAkqpWLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2B1W-0007ci-Fd; Thu, 13 Feb 2020 09:43:06 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2B19-0007Ds-QG
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 09:42:45 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j2B13-0006Ng-1r; Thu, 13 Feb 2020 10:42:37 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200213090757.GA36551@google.com>
Date: Thu, 13 Feb 2020 10:42:35 +0100
In-Reply-To: <20200213090757.GA36551@google.com> (Sergey Senozhatsky's message
 of "Thu, 13 Feb 2020 18:07:57 +0900")
Message-ID: <87v9oarfg4.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_014244_028789_195528AD 
X-CRM114-Status: GOOD (  13.86  )
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
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

On 2020-02-13, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>> -	while (user->seq == log_next_seq) {
>> +	if (!prb_read_valid(prb, user->seq, r)) {
>>  		if (file->f_flags & O_NONBLOCK) {
>>  			ret = -EAGAIN;
>>  			logbuf_unlock_irq();
>> @@ -890,30 +758,26 @@ static ssize_t devkmsg_read(struct file *file, char __user *buf,
>>  
>>  		logbuf_unlock_irq();
>>  		ret = wait_event_interruptible(log_wait,
>> -					       user->seq != log_next_seq);
>> +					prb_read_valid(prb, user->seq, r));
>>  		if (ret)
>>  			goto out;
>>  		logbuf_lock_irq();
>>  	}
>>  
>> -	if (user->seq < log_first_seq) {
>> -		/* our last seen message is gone, return error and reset */
>> -		user->idx = log_first_idx;
>> -		user->seq = log_first_seq;
>> +	if (user->seq < r->info->seq) {
>> +		/* the expected message is gone, return error and reset */
>> +		user->seq = r->info->seq;
>>  		ret = -EPIPE;
>>  		logbuf_unlock_irq();
>>  		goto out;
>>  	}
>
> Sorry, why doesn't this do something like
>
> 	if (user->seq < prb_first_seq(prb)) {
> 		/* the expected message is gone, return error and reset */
> 		user->seq = prb_first_seq(prb);
> 		ret = -EPIPE;
> 		...
> 	}

Here prb_read_valid() was successful, so a record _was_ read. The
kerneldoc for the prb_read_valid() says:

 * On success, the reader must check r->info.seq to see which record was
 * actually read.

The value will either be the requested user->seq or some higher value
because user->seq is not available.

There are 2 reasons why user->seq is not available (and a later record
_is_ available):

1. The ringbuffer overtook user->seq. In this case, comparing and then
   setting using prb_first_seq() could be appropriate. And r->info->seq
   might even already be what prb_first_seq() would return. (More on
   this below.)

2. The record with user->seq has no data because the writer failed to
   allocate dataring space. In this case, resetting back to
   prb_first_seq() would be incorrect. And since r->info->seq is the
   next valid record, it is appropriate that the next devkmsg_read()
   starts there.

Rather than checking these cases separately, it is enough just to check
for the 2nd case. For the 1st case, prb_first_seq() could be less than
r->info->seq if all the preceeding records have no data. But this just
means the whole set of records with missing data are skipped, which
matches existing behavior. (For example, currently when devkmsg is
behind 10 messages, there are not 10 -EPIPE returns. Instead it
immediately catches up to the next available record.)

Perhaps the new comment should be:

/*
 * The expected message is gone, return error and
 * reset to the next available message.
 */

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
