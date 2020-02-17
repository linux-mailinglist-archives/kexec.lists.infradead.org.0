Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3746216177B
	for <lists+kexec@lfdr.de>; Mon, 17 Feb 2020 17:14:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvABqpMzULoLyNi+op62TQyxJb06VJEwmScyRwhfvfc=; b=uJ7Ccn+IJ2808Q
	udOSxdP6vP+A5AMQds7U7fjxcaHxMEaciC0uvcg++kUAV05HZ1f7Najt+Em2HDToMyh3mT4p2WM6m
	4orsr7l2XnK260LsgcAs54SkB1ksn9nzIcUPsttnyllsbu7c9Xwk3a/Kw18FFDymeAaymoDJey+As
	WnT3Vf68K/PVNBnBJHltyiLRS6pcIcZWx1AQRpCGn7x/3C5GcHuR2NTFGMEJiBjGamBpTgvc2Lzv9
	IIxnXw5vwZldUN5ZmG/4oh86RO1yEJyUBDc4LVSuaE7tEtULtubmIFMsnKOBofzfbFIkJMcFZBqct
	00iBA9dIDSaXODNP1owQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3j2U-0008Dq-Kq; Mon, 17 Feb 2020 16:14:30 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3j2S-0008DF-3Z
 for kexec@lists.infradead.org; Mon, 17 Feb 2020 16:14:29 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j3j2N-0001Hx-Sj; Mon, 17 Feb 2020 17:14:23 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: crashdump: Re: [PATCH 2/2] printk: use the lockless ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <ccbe1383-a4a4-41f8-3330-972f03c97429@redhat.com>
 <87zhdle0s5.fsf@linutronix.de>
 <20200217154026.7x2xyrklprgql4if@pathway.suse.cz>
Date: Mon, 17 Feb 2020 17:14:22 +0100
In-Reply-To: <20200217154026.7x2xyrklprgql4if@pathway.suse.cz> (Petr Mladek's
 message of "Mon, 17 Feb 2020 16:40:26 +0100")
Message-ID: <87zhdh9oo1.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_081428_288124_DC66CFD7 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Andrea Parri <parri.andrea@gmail.com>, lijiang <lijiang@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-02-17, Petr Mladek <pmladek@suse.com> wrote:
>>> Should the "prb"(printk tb static) symbol be exported into
>>> vmcoreinfo?  Otherwise, do you happen to know how to walk through
>>> the log_buf and get all kernel logs from vmcore?
>> 
>> You are correct. This will need to be exported as well so that the
>> descriptors can be accessed. (log_buf is only the pure human-readable
>> text.) I am currently hacking the crash tool to see exactly what
>> needs to be made available in order to access all the data of the
>> ringbuffer.
>
> I am not sure which parts you are working on. Are you going to provide
> also patch for makedumpfile, please?

I'm working on crash first. makedumpfile is on my list as well.

> I get the following failure when creating the crashdump using:
>
>     echo c >/proc/sysrq-trigger
>
>
> The kernel version is not supported.
> The makedumpfile operation may be incomplete.
> dump_dmesg: Can't find variable-length record symbols
> makedumpfile Failed.
> Running makedumpfile --dump-dmesg /proc/vmcore failed (1).

Yes, the symbols have changed (and some are missing). I will get this
sorted out for v2. And I will provide some heavily hacked code for crash
and makedumpfile to show that the necessary symbols are there and it
works.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
