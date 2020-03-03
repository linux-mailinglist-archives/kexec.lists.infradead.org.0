Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F35177ABA
	for <lists+kexec@lfdr.de>; Tue,  3 Mar 2020 16:42:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTf2wyCPEDkUN54+NU1XkKPVnSmtc5alDUg1kAApWRs=; b=lyIu93IxNUIgdG
	+6TbgoBO9rMJctnIaW906CgKFuLUCHf41Zmj697diJQdZxzdgPVWqmqCHv3HxIEfFO2PjHC4iHXPP
	/pVBNEGAfmTD/NDzVK9kXxTApnNWmL7a31CpqB4NScH3Ttpoxx/8FeRxNjbHmUD4tnEJnfeKMzmPo
	SUxcuIExbbcIe9z1sXSBv4CtLPPg/arWQcZOXeyGcfpV3k0nm208OQetWFyOdw1iz16WHd98wVBeG
	1m9XQjkZDtErimt2fiePsRLT9MwNI7PnI1RzrbAQYu5zI0II1Do7lCJZuzni6AXjE+IIPFje82xNg
	+zGMTT/MAS/HHqdh+xzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j99gZ-0004Xa-3e; Tue, 03 Mar 2020 15:42:19 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j99gW-0004Wf-Dt
 for kexec@lists.infradead.org; Tue, 03 Mar 2020 15:42:18 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j99gP-0000fM-Fe; Tue, 03 Mar 2020 16:42:09 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
 <87r1ybujm5.fsf@linutronix.de>
 <20200302123249.6khdqpneu7t6l35s@pathway.suse.cz>
 <87a74yrhwy.fsf@linutronix.de>
 <20200303094758.ubylqjqns7zbg6gb@pathway.suse.cz>
Date: Tue, 03 Mar 2020 16:42:07 +0100
In-Reply-To: <20200303094758.ubylqjqns7zbg6gb@pathway.suse.cz> (Petr Mladek's
 message of "Tue, 3 Mar 2020 10:47:58 +0100")
Message-ID: <87d09tcunk.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_074216_620898_92BC4715 
X-CRM114-Status: GOOD (  21.87  )
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

On 2020-03-03, Petr Mladek <pmladek@suse.com> wrote:
>>>>>> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
>>>>>> new file mode 100644
>>>>>> index 000000000000..796257f226ee
>>>>>> --- /dev/null
>>>>>> +++ b/kernel/printk/printk_ringbuffer.c
>>>>>> +/*
>>>>>> + * Read the record @id and verify that it is committed and has the sequence
>>>>>> + * number @seq. On success, 0 is returned.
>>>>>> + *
>>>>>> + * Error return values:
>>>>>> + * -EINVAL: A committed record @seq does not exist.
>>>>>> + * -ENOENT: The record @seq exists, but its data is not available. This is a
>>>>>> + *          valid record, so readers should continue with the next seq.
>>>>>> + */
>>>>>> +static int desc_read_committed(struct prb_desc_ring *desc_ring,
>>>>>> +			       unsigned long id, u64 seq,
>>>>>> +			       struct prb_desc *desc)
>>>>>> +{
>>>
>>> OK, what about having desc_read_by_seq() instead?
>> 
>> Well, it isn't actually "reading by seq". @seq is there for
>> additional verification. Yes, prb_read() is deriving @id from
>> @seq. But it only does this once and uses that value for both calls.
>
> I do not want to nitpick about words. If I get it properly,
> the "id" is not important here. Any "id" is fine as long as
> "seq" matches. Reading "id" once is just an optimization.

Your statement is incorrect. We are not nitpicking about words. I am
trying to clarify what you are misunderstanding.

@id _is_ very important because that is how descriptors are
read. desc_read() takes @id as an argument and it is @id that identifies
the descriptor. @seq is only meta-data within a descriptor. The only
reason @seq is even checked is because of possible ABA issues with @id
on 32-bit systems.

> I do not resist on the change. It was just an idea how to
> avoid confusion. I was confused more than once. But I might
> be the only one. The more strightforward code looked more
> important to me than the optimization.

I am sorry for the confusion. In preparation for v2 I have changed the
function description to:

/*
 * Get a copy of a specified descriptor and verify that the record is
 * committed and has the sequence number @seq. @seq is checked because
 * of possible ABA issues with @id on 32-bit systems. On success, 0 is
 * returned.
 *
 * Error return values:
 * -EINVAL: A committed record @seq does not exist.
 * -ENOENT: The record @seq exists, but its data is not available. This is a
 *          valid record, so readers should continue with the next seq.
 */

This is using the same language as the description of desc_read() so
that is it is hopefully clear that desc_read_committed() is an extended
version of desc_read().

>>> Also there is a bug in current desc_read_commited().
>>> desc->info.seq might contain a garbage when d_state is desc_miss
>>> or desc_reserved.
>> 
>> It is not a bug. In both of those cases, -EINVAL is the correct return
>> value.
>
> No, it is a bug. If info is not read and contains garbage then the
> following check may pass by chance:
>
> 	if (desc->info.seq != seq)
> 		return -EINVAL;
>
> Then the function would return 0 even when desc_read() returned
> desc_miss or desc_reserved.

0 cannot be returned. The state is checked. Please let us stop this
bug/non-bug discussion. It is distracting us from clarifying this
function and refactoring it to simplify understanding.

>>> I would change it to:
>>>
>>> static enum desc_state
>>> desc_read_by_seq(struct prb_desc_ring *desc_ring,
>>> 		 u64 seq, struct prb_desc *desc)
>>> {
>>> 	struct prb_desc *rdesc = to_desc(desc_ring, seq);
>>> 	atomic_long_t *state_var = &rdesc->state_var;
>>> 	id = DESC_ID(atomic_long_read(state_var));
>> 
>> I think it is error-prone to re-read @state_var here. It is lockless
>> shared data. desc_read_committed() is called twice in prb_read() and
>> it is expected that both calls are using the same @id.
>
> It is not error prone. If "id" changes then "seq" will not match.

@id is set during prb_reserve(). @seq (being mere meta-data) is set
_afterwards_. Your proposed multiple-deriving of @id from @seq would
work because the _state checks_ would catch it, not because @seq would
necessarily change.

But that logic is backwards. @seq is not what is important here. It is
only meta-data. On 64-bit systems the @seq checks could be safely
removed.

You may want to refer back to your private email [0] from last November
where you asked me to move this code out of prb_read() and into a helper
function. That may clarify what we are talking about (although I hope
the new function description is clear enough).

John Ogness

[0] private: 20191122122724.n6wlummg3ap56mn3@pathway.suse.cz

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
