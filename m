Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D311406F
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 13:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=9Cb3ZhlVW/uIISB4iohymbnG/teTrRrqpKFvO7DQuu4=; b=hyFSiB6cW8EwkW
	8QMqAreXKn+XwfwZQ2N/uqR4i4UWIcMYyCox4UAn6R2NrD7JK5Gsf/Axl/kv6byMEPL/T0/0GEfSB
	K+InAfibJRFVENp2xCz44ZoZ01WJfnYVek4u1BtzQStdx7x/IBxTsmc37sk3n2TtS3CRxyoyKQewQ
	TssHqMA7HNsdgKpYwGzBAJgGmL9wDhAO4NC4W2beTbCdU/2I74DPq0ywU047ODFROsHQllFsZ4kSU
	+EKT6sz00Topp6aCKtBi4j+CmZsaqBjUVhwtWx5tOT5J1jJSDo9o1CA+W3X8o1uuV0B61IsjVo22g
	gbf7h/GIqp+X1yDnYryw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icppD-0005JZ-6c; Thu, 05 Dec 2019 12:01:39 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icppA-0005J8-1K
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 12:01:37 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1icpp4-0001Gy-Jw; Thu, 05 Dec 2019 13:01:30 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
 <20191202155955.meawljmduiciw5t2@pathway.suse.cz>
 <87sgm2fzuh.fsf@linutronix.de> <20191203011721.GH93017@google.com>
 <20191203091843.678461e4@gandalf.local.home>
Date: Thu, 05 Dec 2019 13:01:28 +0100
Message-ID: <874kyf56cn.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_040136_223297_B3D9EF3C 
X-CRM114-Status: GOOD (  26.38  )
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
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2019-12-03, Steven Rostedt <rostedt@goodmis.org> wrote:
>>>>> +/* Reserve a new descriptor, invalidating the oldest if necessary. */
>>>>> +static bool desc_reserve(struct printk_ringbuffer *rb, u32 *id_out)
>>>>> +{
>>>>> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
>>>>> +	struct prb_desc *desc;
>>>>> +	u32 id_prev_wrap;
>>>>> +	u32 head_id;
>>>>> +	u32 id;
>>>>> +
>>>>> +	head_id = atomic_read(&desc_ring->head_id);
>>>>> +
>>>>> +	do {
>>>>> +		desc = to_desc(desc_ring, head_id);
>>>>> +
>>>>> +		id = DESC_ID(head_id + 1);
>>>>> +		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
>>>>> +
>>>>> +		if (id_prev_wrap == atomic_read(&desc_ring->tail_id)) {
>>>>> +			if (!desc_push_tail(rb, id_prev_wrap))
>>>>> +				return false;
>>>>> +		}
>>>>> +	} while (!atomic_try_cmpxchg(&desc_ring->head_id, &head_id, id));
>>>>
>>>> Hmm, in theory, ABA problem might cause that we successfully
>>>> move desc_ring->head_id when tail has not been pushed yet.
>>>>
>>>> As a result we would never call desc_push_tail() until
>>>> it overflows again.
>>>>
>>>> I am not sure if we need to take care of it. The code is called
>>>> with interrupts disabled. IMHO, only NMI could cause ABA problem in
>>>> reality. But the game (debugging) is lost anyway when NMI ovewrites
>>>> the buffer several times.
>>>>
>>>> Also it should not be a complete failure. We still could bail out
>>>> when the previous state was not reusable. We are on the safe side
>>>> when it was reusable.
>>>>
>>>> Also we could probably detect when desc_ring->tail_id is not
>>>> updated any longer and do something about it.
>>>>
>>>> BTW: If I am counting correctly. The ABA problem would happen when
>>>> exactly 2^30 (1G) messages is written in the mean time.
>>> 
>>> All the ringbuffer code assumes that the use of index numbers
>>> handles the ABA problem (i.e. there must not be 1 billion printk's
>>> within an NMI). If we want to support 1 billion+ printk's within an
>>> NMI, then perhaps the index number should be increased. For 64-bit
>>> systems it would be no problem to go to 62 bits. For 32-bit systems,
>>> I don't know how well the 64-bit atomic operations are supported.
>> 
>> ftrace dumps from NMI (DUMP_ALL type ftrace_dump_on_oops on a $BIG
>> machine)? 1G seems large enough, but who knows.
>
> ftrace dump from NMI is the most likely case to hit this, but when
> that happens, you are in debugging mode, and the system usually
> becomes unreliable at this moment. I agree with Petr, that we should
> not complicate the code more to handle this theoretical condition.

I will change the data block ID size to "unsigned long". Then it is
really only an issue for 32-bit systems.

AFAICT, the only real issue is that the head can be pushed to the
descriptor index that the tail is pointing to. From there, the head can
be advanced beyond and the tail may never move again. So writers just
need to make sure the tail gets pushed beyond the newly reserved head
before making any changes to that descriptor.

Aside from moving to "unsigned long" ID's, I believe this can be handled
with the following 4 changes when reserving a new descriptor:

- also push the tail forward if it falls behind

- after pushing the head, re-check if the tail is still ok

- verify the state of the reserved descriptor before changing it

- use cmpxchg() to change it

Below is the patch snippet I use for this. (Note that the patch is
against a version where ID's have already been changed to unsigned
longs.)

John Ogness


@@ -468,19 +470,53 @@ static bool desc_reserve(struct printk_ringbuffer *rb, unsigned long *id_out)
 		id = DESC_ID(head_id + 1);
 		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
 
-		if (id_prev_wrap == atomic_long_read(&desc_ring->tail_id)) {
-			if (!desc_push_tail(rb, id_prev_wrap))
+		/*
+		 * Make space for the new descriptor by pushing the tail
+		 * beyond the descriptor to be reserved. Normally this only
+		 * requires pushing the tail once. But due to possible ABA
+		 * problems with the ID, the tail could be too far behind.
+		 * Use a loop to push the tail where it needs to be.
+		 */
+		tail_id = atomic_long_read(&desc_ring->tail_id);
+		while (DESC_ID(id_prev_wrap - tail_id) <
+		       DESCS_COUNT(desc_ring)) {
+
+			if (!desc_push_tail(rb, tail_id))
 				return false;
+			tail_id = DESC_ID(tail_id + 1);
 		}
 	} while (!atomic_long_try_cmpxchg(&desc_ring->head_id, &head_id, id));
 
+	/*
+	 * Before moving the head, it was ensured that the tail was pushed to
+	 * where it needs to be. Due to possible ABA problems with the ID, the
+	 * reserved descriptor may not be what was expected. Re-check the tail
+	 * to see if it is still where it needs to be.
+	 */
+	tail_id = atomic_long_read(&desc_ring->tail_id);
+	if (DESC_ID(id_prev_wrap - tail_id) < DESCS_COUNT(desc_ring))
+		return false;
+
 	desc = to_desc(desc_ring, id);
 
+	/* If the descriptor has been recycled, verify the old state val. */
+	prev_state_val = atomic_long_read(&desc->state_var);
+	if (prev_state_val && prev_state_val != (id_prev_wrap |
+						 DESC_COMMITTED_MASK |
+						 DESC_REUSE_MASK)) {
+		/* Unexpected value. Hit ABA issue for ID? */
+		return false;
+	}
+
+	/*
+	 * Set the descriptor's ID and also set its state to reserved.
+	 * The new ID/state is stored before making any other changes.
+	 */
+	if (!atomic_long_try_cmpxchg(&desc->state_var, &prev_state_val,
+				id | 0)) { /* LMM_TAG(desc_reserve:A) */
+		/* Unexpected value. Hit ABA issue for ID? */
+		return false;
+	}
-	/* Set the descriptor's ID and also set its state to reserved. */
-	atomic_long_set(&desc->state_var, id | 0);
-
-	/* Store new ID/state before making any other changes. */
-	smp_wmb(); /* LMM_TAG(desc_reserve:A) */
 
 	*id_out = id;
 	return true;

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
