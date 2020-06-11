Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4422D1F70B9
	for <lists+kexec@lfdr.de>; Fri, 12 Jun 2020 01:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qO4rn7iYkHxmwWjt6k8gJJdUJ6ZX3fKcCSWhmSWVKiA=; b=kbvNT5ezEMHQA4
	AtZ+HYzUMh2uOHRW8Sxh8jwXpaTPHJaGUVVotyCr/eA5ubcrbnDYYf8jkjlcoFad3iI4GqwJDcpkj
	rZyxZBWGlGcFowMgQklbuRTO8XyrG9IvHgzcNgaCJSfLd29KuvHJ2+q1Nnt5BXKij7YwVcT65Q+Ux
	m8Hn9SY2y0AfyPP/klByK4WV+1kVJMw5JCdo2cTvjhns5mKbjoiPGe4pNczhwDR5jfeADkVqiHuCS
	qK9RZF0sbuPWyTniZkdFDF2iQlvj9Vu1RCCAH5ue8xDZHbgx3+WT5EhmfKtWB1ZXHRhlMl6nWME3m
	YpEc3xHYG1LqWoudlisQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjWHT-0003GE-1W; Thu, 11 Jun 2020 23:06:43 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjWHQ-0003FX-99
 for kexec@lists.infradead.org; Thu, 11 Jun 2020 23:06:41 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jjWHH-0008Ah-R0; Fri, 12 Jun 2020 01:06:32 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: Barrier before pushing desc_ring tail: was [PATCH v2 2/3] printk:
 add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609113751.GD23752@linux-b0ei>
 <87d068utbg.fsf@vostro.fn.ogness.net>
 <20200611120107.GD6581@linux-b0ei>
Date: Fri, 12 Jun 2020 01:06:28 +0200
In-Reply-To: <20200611120107.GD6581@linux-b0ei> (Petr Mladek's message of
 "Thu, 11 Jun 2020 14:01:08 +0200")
Message-ID: <87bllpyzgr.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_160640_461901_0D9744CD 
X-CRM114-Status: GOOD (  14.98  )
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

On 2020-06-11, Petr Mladek <pmladek@suse.com> wrote:
> All this relies on the fact the the full barrier is called in
> data_push_tail() and data_push_tail() is called right above.
> But there are two situations where the barrier is not called.
> It is when:
>
>   1. desc.text_blk_lpos.next already is behind data_ring->tail_lpos.
>
>      This is safe.

Yes, and I have since expanded the comment above the data_push_tail()
while loop to mention that:

	/*
	 * Loop until the tail lpos is at or beyond @lpos. This condition
	 * may already be satisfied, resulting in no full memory barrier
	 * from data_push_tail:C being performed. However, since this CPU
	 * sees the new tail lpos, any descriptor states that transitioned to
	 * the reusable state must already be visible.
	 */

>   2. desc.text_blk_lpos == INVALID_LPOS.
>
>      It seems that this is not synchronized and other CPUs might see
>      the old state.

Great catch! This could trigger the WARN_ON at desc_reserve:F and lead
to prb_reserve() unnecessarily failing.

> The question is what to do with the empty data case. I see three
> possibilities:
>
>   1. Ignore the case with empty block because it (probably) does not
>      cause real problems.

It could cause dropped messages.

>   2. Call the full barrier in data_push_tail() even when the data
>      block is empty.

This is the common case, since most records will not have dictionary
data.

>   3. Call the full barrier also in desc_push_tail() as I suggested.
>
> My opinion:
>
> I prefer 3rd solution.

Agreed. For my next version I am folding all smp_mb() and smp_wmb()
calls into their neighboring cmpxchg_relaxed(). This would apply here as
well, changing desc_push_tail:B to a full cmpxchg().

We still need the full memory barrier at data_push_tail:C. Readers rely
on it to be able to verify if their copied data is still valid:

CPU0 (writer0)        CPU1 (writer1)       CPU2 (reader)
                                           desc_read->committed
desc_make_reusable
smp_mb
data_push_tail
                      read new data tail
                      data_push_head
                      smp_mb
                      write new data
                                           read garbage new data
                                           desc_read->reusable

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
