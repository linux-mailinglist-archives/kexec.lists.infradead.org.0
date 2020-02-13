Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6E415CE28
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 23:36:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qP6Pnj+SAyxulaNyBxdsSG9STQ1eJwWulhI2l0TsbR0=; b=N6XIKxbz8pDZWk
	4QdDHXjdg7mQ05t/oy39awc1PPAM0UPOrF0Ujyf8bSkPj0T0+fAyIfMPhP6fvV926w+e1eYT/BQRT
	WKkTcbTt2sovrN2u6v32mG7RdmrQ+mYNiU+XPNiQyJwEBWxdulEc9xdIY3goxBNNOFzVZg49N4cgq
	vrr0reNasTCZEHC76ztYstPphP9R3dCkLYbasBg51fTvOFyQ6lrOc6g5nBJoTxeTPk/FkwP14KYXu
	K3kn4NjS7pZfDKbATmFww4dsYDopLVaMwD766DgwgKpOW1RYzSf5fs6UWo1DrPCgItHCmVu81FLG3
	zUwn12R4UDVIDneOjl6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2N67-0003y5-KA; Thu, 13 Feb 2020 22:36:39 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2N61-0003qy-KS
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 22:36:35 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j2N5v-0004iY-OO; Thu, 13 Feb 2020 23:36:27 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200213090757.GA36551@google.com> <87v9oarfg4.fsf@linutronix.de>
 <20200213115957.GC36551@google.com>
Date: Thu, 13 Feb 2020 23:36:25 +0100
In-Reply-To: <20200213115957.GC36551@google.com> (Sergey Senozhatsky's message
 of "Thu, 13 Feb 2020 20:59:57 +0900")
Message-ID: <87pneiyv12.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_143633_826486_54BB051E 
X-CRM114-Status: GOOD (  20.40  )
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
>>>> @@ -890,30 +758,26 @@ static ssize_t devkmsg_read(struct file *file, char __user *buf,
>>>>  
>>>>  		logbuf_unlock_irq();
>>>>  		ret = wait_event_interruptible(log_wait,
>>>> -					       user->seq != log_next_seq);
>>>> +					prb_read_valid(prb, user->seq, r));
>>>>  		if (ret)
>>>>  			goto out;
>>>>  		logbuf_lock_irq();
>>>>  	}
>>>>  
>>>> -	if (user->seq < log_first_seq) {
>>>> -		/* our last seen message is gone, return error and reset */
>>>> -		user->idx = log_first_idx;
>>>> -		user->seq = log_first_seq;
>>>> +	if (user->seq < r->info->seq) {
>>>> +		/* the expected message is gone, return error and reset */
>>>> +		user->seq = r->info->seq;
>>>>  		ret = -EPIPE;
>>>>  		logbuf_unlock_irq();
>>>>  		goto out;
>>>>  	}
>>>
>>> Sorry, why doesn't this do something like
>>>
>>> 	if (user->seq < prb_first_seq(prb)) {
>>> 		/* the expected message is gone, return error and reset */
>>> 		user->seq = prb_first_seq(prb);
>>> 		ret = -EPIPE;
>>> 		...
>>> 	}
>> 
>> Here prb_read_valid() was successful, so a record _was_ read. The
>> kerneldoc for the prb_read_valid() says:
>
> Hmm, yeah. That's true.
>
> OK, something weird...
>
> I ran some random printk-pressure test (mostly printks from IRQs;
> + some NMI printk-s, but they are routed through nmi printk-safe
> buffers; + some limited number of printk-safe printk-s, routed
> via printk-safe buffer (so, once again, IRQ); + user-space
> journalctl -f syslog reader), and after the test 'cat /dev/kmsg'
> is terminally broken
>
> [..]
> cat /dev/kmsg
> cat: /dev/kmsg: Broken pipe

In mainline you can have this "problem" as well. Once the ringbuffer has
wrapped, any read to a newly opened /dev/kmsg when a new message arrived
will result in an EPIPE. This happens quite easily once the ringbuffer
has wrapped because each new message is overwriting the oldest message.

Although it can be convenient, cat(1) is actually a poor tool for
viewing the ringbuffer for this reason. Unfortunately dmesg(1) is
sub-optimal as well because it does not show the sequence numbers. So
with dmesg(1) you cannot see if a message was dropped. :-/

> So I printed seq numbers from devksmg read to a seq buffer and dumped
> it via procfs, just seq numbers before we adjust user->seq (set to
> r->seq) and after
>
> +                       offt += snprintf(BUF + offt,
> +                                       sizeof(BUF) - offt,
> +                                       "%s: devkmsg_read() error %llu %llu %llu\n",
> +                                       current->comm,
> +                                       user->seq,
> +                                       r->info->seq,
> +                                       prb_first_seq(prb));
>
>
> ...
> systemd-journal: devkmsg_read() error 1979281 1982465 1980933
> systemd-journal: corrected seq 1982465 1982465
> cat: devkmsg_read() error 1980987 1982531 1980987
> cat: corrected seq 1982531 1982531
> cat: devkmsg_read() error 1981015 1982563 1981015
> cat: corrected seq 1982563 1982563

The situation with a data-less record is the same as when the ringbuffer
wraps: cat is hitting that EPIPE. But re-opening the file descriptor is
not going to help because it will not be able to get past that data-less
record.

We could implement it such that devkmsg_read() will skip over data-less
records instead of issuing an EPIPE. (That is what dmesg does.) But then
do we need EPIPE at all? The reader can see that is has missed records
by tracking the sequence number, so could we just get rid of EPIPE? Then
cat(1) would be a great tool to view the raw ringbuffer. Please share
your thoughts on this.


On a side note (but related to data-less records): I hacked the
ringbuffer code to inject data-less records at various times in order to
verify your report. And I stumbled upon a bug in the ringbuffer, which
can lead to an infinite loop in console_unlock(). The problem occurs at:

    retry = prb_read_valid(prb, console_seq, NULL);

which will erroneously return true if console_seq is pointing to a
data-less record but there are no valid records after it. The following
patch fixes the bug. And yes, for v2 I have added comments to the
desc_read_committed() code.

I now have 2 bugfixes queued up for v2. The first one is here[0].

[0] https://lkml.kernel.org/r/87wo919grz.fsf@linutronix.de

John Ogness


diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
index 796257f226ee..31893051ad6b 100644
--- a/kernel/printk/printk_ringbuffer.c
+++ b/kernel/printk/printk_ringbuffer.c
@@ -1074,6 +1071,7 @@ static int desc_read_committed(struct prb_desc_ring *desc_ring,
 			       unsigned long id, u64 seq,
 			       struct prb_desc *desc)
 {
+	struct prb_data_blk_lpos *blk_lpos = &desc->text_blk_lpos;
 	enum desc_state d_state;
 
 	d_state = desc_read(desc_ring, id, desc);
@@ -1084,6 +1082,11 @@ static int desc_read_committed(struct prb_desc_ring *desc_ring,
 	else if (d_state != desc_committed)
 		return -EINVAL;
 
+	if (blk_lpos->begin == INVALID_LPOS &&
+	    blk_lpos->next == INVALID_LPOS) {
+		return -ENOENT;
+	}
+
 	return 0;
 }
 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
