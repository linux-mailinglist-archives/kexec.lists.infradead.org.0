Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEA81F3ED5
	for <lists+kexec@lfdr.de>; Tue,  9 Jun 2020 17:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/883SbJWIU3bpBFKeqCIwz2oAk0JoUmA8gGN5VMc2WQ=; b=sBR/CzHaHR8Knf
	qtedoIGB+NofUCMK3cTC1VNFjQOfA/N3eeAI4gLrKt+PCoUZP09xH836maiw5lL5yJqVrIXJilps6
	JYhr6sTrdrdAgirvdCR9pFcRO1oIG257GcE8RpNr8jZKZ75vHzxwSDHAK98H811h0Vel7MQ9iyOh+
	rfuLpNRsLblymrHw7Qqa26ALDGRv/fAr66Cfx7+AnmTCM3susFpXrXGmCJytgsIwusMYfP2wOi1Bk
	udsVx2nTei4SjA9J+Ykacm5mo0jMuITDhWi826s8FEOpyQQFbHAM0FZ/DC8HYWsaA2TlilJx+oU4A
	Dv81RGS1Dza4uQWxvMaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifnJ-0002pR-72; Tue, 09 Jun 2020 15:04:05 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifnF-0002o5-1c
 for kexec@lists.infradead.org; Tue, 09 Jun 2020 15:04:02 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jifnA-0003HL-4R; Tue, 09 Jun 2020 17:03:56 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: Full barrier in data_push_tail(): was [PATCH v2 2/3] printk: add
 lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <20200609094820.GC23752@linux-b0ei>
Date: Tue, 09 Jun 2020 17:03:54 +0200
In-Reply-To: <20200609094820.GC23752@linux-b0ei> (Petr Mladek's message of
 "Tue, 9 Jun 2020 11:48:20 +0200")
Message-ID: <87h7vkuvqd.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_080401_237395_C205F254 
X-CRM114-Status: GOOD (  12.98  )
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

On 2020-06-09, Petr Mladek <pmladek@suse.com> wrote:
>> --- /dev/null
>> +++ b/kernel/printk/printk_ringbuffer.c
>> +static bool data_push_tail(struct printk_ringbuffer *rb,
>> +			   struct prb_data_ring *data_ring,
>> +			   unsigned long lpos)
>> +{
>> ...
>> +
>> +		/*
>> +		 * Guarantee any descriptor states that have transitioned to
>> +		 * reusable are stored before pushing the tail lpos. This
>> +		 * allows readers to identify if data has expired while
>> +		 * reading the descriptor. This pairs with desc_read:D.
>> +		 */
>> +		smp_mb(); /* LMM(data_push_tail:C) */
>
> The comment does not explain why we need a full barrier here.
>
> I would add something like:
>
> 		* Full barrier is necessary because the descriptors
> 		* might have been made reusable also by other CPUs.

Agreed. Somehow I missed that explanation for this comment.

> For people like me, it would be great to add also link to a more
> detailed explanation, for example, the litmus tests, or something
> even more human readable ;-) I think that it is a "rather" common
> problem. I wonder whether it is already documented somewhere.

I believe that memory barriers need to be formally documented. Perhaps
in such a way that litmus tests can be easily generated. Tools could
greatly assist with this. It is my hope that my memory barrier
documentation can spark some ideas about how we could do this. (Doing
all this manually really sucks!)

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
