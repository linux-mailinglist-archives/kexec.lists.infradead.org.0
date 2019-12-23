Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC4112988B
	for <lists+kexec@lfdr.de>; Mon, 23 Dec 2019 17:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=LTBJkq3n39s1CCByw+HwQnMgBTOGMryTntVCKGENHpw=; b=BAC5JGelGqq1/0
	RG4Ujb4EOIuvjEiMdnEO7cnQYGEhpaAj+kzD38T0pNC3EPekzIS4gekhFxyv0MiH93Ke7ofZxfUPV
	lgNtgIJsoGIQpQeVrHHvKYZDHqrMCGynrjNJXujOIBuhqeB4NBnuP6d62RBVQefWaXgSocC8+ZPc/
	LyInVxfYRx5DGsy17UIE4YlLmhHq7uJFnjM/WNEkljwOiPgD8nH1HijQCuwh7DKOEnNVA89fkwxnS
	kdstLtG/n4Vj3gXNjT+er8f3T7iMC320ViYTmXqPBVPRlnGFb+Dm0Ob5acagCG6dk5FvJRqwWLIlM
	YuiHGc/sNKp/ZNt5gDTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijQ98-0005Dx-3H; Mon, 23 Dec 2019 16:01:26 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijQ8t-0005A8-24
 for kexec@lists.infradead.org; Mon, 23 Dec 2019 16:01:12 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1ijQ8k-0004jA-Bx; Mon, 23 Dec 2019 17:01:02 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Andrea Parri <parri.andrea@gmail.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191221142235.GA7824@andrea>
Date: Mon, 23 Dec 2019 17:01:00 +0100
Message-ID: <87imm7820z.fsf@linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_080111_242409_47A78000 
X-CRM114-Status: GOOD (  10.81  )
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
Cc: Petr Mladek <pmladek@suse.com>,
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

Hi Andrea,

On 2019-12-21, Andrea Parri <parri.andrea@gmail.com> wrote:
>> +	*desc_out = READ_ONCE(*desc);
>> +
>> +	/* Load data before re-checking state. */
>> +	smp_rmb(); /* matches LMM_REF(desc_reserve:A) */
>
> I looked for a matching WRITE_ONCE() or some other type of marked write,
> but I could not find it.  What is the rationale?  Or what did I miss?

This smp_rmb() matches LMM_TAG(desc_reserve:A).

>> +	do {
>> +		next_lpos = get_next_lpos(data_ring, begin_lpos, size);
>> +
>> +		if (!data_push_tail(rb, data_ring,
>> +				    next_lpos - DATA_SIZE(data_ring))) {
>> +			/* Failed to allocate, specify a data-less block. */
>> +			blk_lpos->begin = INVALID_LPOS;
>> +			blk_lpos->next = INVALID_LPOS;
>> +			return NULL;
>> +		}
>> +	} while (!atomic_long_try_cmpxchg(&data_ring->head_lpos, &begin_lpos,
>> +					  next_lpos));
>> +
>> +	/*
>> +	 * No barrier is needed here. The data validity is defined by
>> +	 * the state of the associated descriptor. They are marked as
>> +	 * invalid at the moment. And only the winner of the above
>> +	 * cmpxchg() could write here.
>> +	 */
>
> The (successful) CMPXCHG provides a full barrier.  This comment suggests
> that that could be somehow relaxed?  Or the comment could be improved?

You are correct. There is no need for the full barrier here. This code
is based on Petr's POC. I focussed on making sure needed barriers are in
place, but did not try to eliminate excessive barriers.

> (The patch introduces a number of CMPXCHG: similar questions would
> apply to those other instances...)

LMM_TAG(data_push_tail:A) is the only CMPXCHG that requires its full
barrier. All others can be relaxed. I will make this change for the next
series.

Thanks for taking time for this.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
