Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2221168CA
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 10:01:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHe5pFSiNI95BVxbJklboTdMqgoFfWYI+ygCwmVL6BM=; b=lwghHZLk1IYGwq
	L6o6DGmGuCFPCCnIDyd2n9UkEFGasZj63RAe8zKO9o9DKAYYpP48OkVn71dhg4LWCGiNffp03cGSd
	AiUOd+8/MVtEstVt22Gh0BVBL8xg5uZC7txddBtiQXD78MvvbdQptfAgBPxVQeeDmv45BbkhNKGkM
	NBg+DEW7kFHZOWw16AWlQyZrDYBDKTSCBY5kVuvhBvUuoeFtQrtu1sjdkHcr+eWKu+kEZBQ+Dn9nL
	ea+XoL5uUdaagLjyGf+9EwyVXP3t1lKA05fo+s0mdbKFnJvZoTVW7xClPnIOjmjeEP843x3zu7yat
	eLgJOb6KhRhHcd5tVP6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEuj-0001BS-1w; Mon, 09 Dec 2019 09:01:09 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEug-0001Ar-0T
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 09:01:07 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1ieEuZ-0005Bv-75; Mon, 09 Dec 2019 10:00:59 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191209074249.GC88619@google.com>
Date: Mon, 09 Dec 2019 10:00:57 +0100
In-Reply-To: <20191209074249.GC88619@google.com> (Sergey Senozhatsky's message
 of "Mon, 9 Dec 2019 16:42:50 +0900")
Message-ID: <87v9qpzxdi.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_010106_194458_13F69001 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
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
>> +#define _DATA_SIZE(sz_bits)		(1UL << (sz_bits))
>> +#define _DESCS_COUNT(ct_bits)		(1U << (ct_bits))
>> +#define DESC_SV_BITS			(sizeof(int) * 8)
>> +#define DESC_COMMITTED_MASK		(1U << (DESC_SV_BITS - 1))
>
> What does SV state for? State Value?

Yes. Originally this thing was just called the state. But it was a bit
confusing in the code because there is also an enum desc_state (used for
state queries), which is _not_ the value that is stored in the state
variable. That's why the code is using state_var/state_val (SV) for the
actual data values, keeping it separate from desc_state/d_state for the
the state queries.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
