Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 985311DA2A3
	for <lists+kexec@lfdr.de>; Tue, 19 May 2020 22:34:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzBYRPQLHGpe1Q0aaRLGYPGBkmgLqQfhLLMMI74Mg/U=; b=JWU6jL97zQV+vZ
	sa+CoYMXYvYwlPTgbA9aPQV1T2+gQpDdsUIXpL0HP9Qr6TyOT2CGTvGa6T4jQVq3vzJe0/KxP6sez
	gvKJkLAQ8/QOFcSIooBcoR/wEUFAFkh6mv00AKwKzcHD/a6Nscvhdx+NNbDQJbp5zZuRUjskH8U6X
	FTlzC4B8hMPUkndDB0ML0aSmsTbdQY1gySz/YJZIIq2KiP8/XH5XBHfXplPOfiFp4odrk6cVS0tKh
	xzSHugmAwL1WHa4JUaNI/hc18OEVmn0FiaIvHj+jElCHpmo6XkYi9Bo/VnNDh8BZpAVLvBHbRL4AJ
	rJ0SEB4PgNw8bNRRCN6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb8wY-0007rE-2I; Tue, 19 May 2020 20:34:30 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb8wV-0007qT-Sg
 for kexec@lists.infradead.org; Tue, 19 May 2020 20:34:29 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jb8wP-0001Ip-0I; Tue, 19 May 2020 22:34:21 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v2 2/3] printk: add lockless buffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <87v9ktcs3q.fsf@vostro.fn.ogness.net>
 <CAHk-=whSLRiNxehLiuX+ZfHsu8Kpj7R1Sdr3zA7==SMW0zh3ug@mail.gmail.com>
Date: Tue, 19 May 2020 22:34:19 +0200
In-Reply-To: <CAHk-=whSLRiNxehLiuX+ZfHsu8Kpj7R1Sdr3zA7==SMW0zh3ug@mail.gmail.com>
 (Linus Torvalds's message of "Mon, 18 May 2020 10:22:30 -0700")
Message-ID: <87tv0bhdf8.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133428_068020_3D271FE3 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 "Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-05-18, Linus Torvalds <torvalds@linux-foundation.org> wrote:
>>                 smp_mb(); /* LMM(data_push_tail:C) */
>>
>> +               if (atomic_long_try_cmpxchg_relaxed(&data_ring->tail_lpos,
>> +                               &tail_lpos,
>> +                               next_lpos)) { /* LMM(data_push_tail:D) */
>> +                       break;
>> +               }
>
> Doing an "smp_mb()" followed by a "cmpxchg_relaxed" seems all kinds of
> odd and pointless, and is very much non-optimal on x86 for example.,
>
> Just remove the smp_mb(), and use the non-relaxed form of cmpxchg.
> It's defined to be fully ordered if it succeeds (and if the cmpxchg
> doesn't succeed, it's a no-op and the memory barrier shouldn't make
> any difference).
>
> Otherwise you'll do two memory ordering operations on x86 (and
> probably some other architectures), since the cmpxchg is always
> ordered on x86 and there exists no "relaxed" form of it.

ACK.

All three smp_mb()'s and both smp_wmb()'s sit directly next to
cmpxchg_relaxed() calls. Having explicit memory barriers was helpful for
identifying, proving, and testing a minimal set of pairs (on arm64), but
all will be folded into full cmpxchg()'s for the next version.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
