Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0EC1527ED
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 10:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQ4OcMZWcfIhw0fKnDgzvFA2HHs8MKUgfaIKSAzgovc=; b=Pwm41ZcMflZs+i
	+As3Na5u5XFLCK6WyC59yD1+cl/Ind2k6jyu90O/Aq5In0lI7FjdTQ9g5E7bj7Nz+XMTofgsfsazO
	g0kcoGZdSaUOWCgTvcDWobbcC5ATXhwUIDtzsboux3KklDrGXOb29WbYMYTQFlRreI/xFJ5jY2L20
	c2msNJSC3mFu8Yq/JoL7VclOr2eTD/UwUxwhcW2j0KFgj4SZoIfk/Cburc+XeIMKqyKMp7SJ1nvXw
	07OlveN1mOqY4VSrF8BDcOkkpevFRe7fSoW/gvVi4MFd9pUFuyy5UYz+MzWnmFnL1rEgNA0gPRMIq
	pzIQFJRjMvOo+FHJXgxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izGXs-0007D3-42; Wed, 05 Feb 2020 09:00:28 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izGXo-0007Av-Ix
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 09:00:26 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1izGXg-00061C-83; Wed, 05 Feb 2020 10:00:16 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com>
Date: Wed, 05 Feb 2020 10:00:12 +0100
In-Reply-To: <20200205063640.GJ41358@google.com> (Sergey Senozhatsky's message
 of "Wed, 5 Feb 2020 15:36:40 +0900")
Message-ID: <877e11h0ir.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_010025_460250_75FA152E 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
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
 lijiang <lijiang@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-02-05, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>>>> So there is a General protection fault. That's the type of a
>>>> problem that kills the boot for me as well (different backtrace,
>>>> tho).
>>> 
>>> Do you have CONFIG_RELOCATABLE and CONFIG_RANDOMIZE_BASE (KASLR)
>>> enabled?
>> 
>> Yes. These two options are enabled.
>> 
>> CONFIG_RELOCATABLE=y
>> CONFIG_RANDOMIZE_BASE=y
>
> So KASLR kills the boot for me. So does KASAN.

Sergey, thanks for looking into this already!

> John, do you see any of these problems on your test machine?

For x86 I have only been using qemu. (For hardware tests I use arm64-smp
in order to verify memory barriers.) With qemu-x86_64 I am unable to
reproduce the problem.

Lianbo, thanks for the report. Can you share your boot args? Anything
special in there (like log_buf_len=, earlyprintk, etc)?

Also, could you share your CONFIG_LOG_* and CONFIG_PRINTK_* options?

I will move to bare metal x86_64 and hopefully see it as well.

John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
