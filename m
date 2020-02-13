Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8E815BE24
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 13:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUApnEAaLSN02k1+AZhh4rVpdkAzxr5eaSn7PgyMpjU=; b=tzRu/3rFW3oyqb
	x6Xf8WooKnXr3e/R2IjPAYFGfXRby4cB0vofanwAu6ri58PEAM5wikmc5y7tDc3M+7Z0UPvknroNE
	o97Hir7rS4iGn/NaqI6q/l3xNa20Ee1k6t8Q5qOyOss2UKEc7mUSdXQzpy9UqKTi413chko1MUl+C
	M0RWeLncAS4E5jrF0t8tZjHOoVkMOHEx1fyZzwT54yQvbNLRYeNYM735MIGMsZ0fI3cvuYBPs+Cw8
	e4wNjrRIb9tRr0kHdzFqYOpfWLz5i/AVPThthILZ3d72dWRWTB6p+wDhVrhJcoc3VcjVx2+cBQx7w
	nrmbQ/8Ac+02hTWEc2hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2DA6-0002Yg-4z; Thu, 13 Feb 2020 12:00:06 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2DA1-0001sJ-TR
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 12:00:03 +0000
Received: by mail-pj1-x1041.google.com with SMTP id d5so2293658pjz.5
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 04:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xnv9vcJaJ4RlveRKToDkYvSVpq7pujagpdh/v4epNFU=;
 b=MvgDCrN6Rt30rPxtVLP6viebK9w3JJ359bCVm42oY401byO1RpR1SfyVW1fORNChy1
 xT/CgOuKHsn6gU8qSn7pR9o/y3HRWLevdwEi2DUcq5eMtUDU2e/lPsnhYUVtuSl33wxu
 68DxPa+lSNwqgFHa5SqImkj1C0tHnulKnghv0fHz4C0fu3X8wK6nm8K4eXlXZG8BPBur
 U80udLDF2WT2KWlw11aajMcdsVwgrbIKjY+hsUlVG6fsjDQ/+GfLD20lMPms5wj65cAP
 FBZ/40HMh/Ma9CIqfqWVL0tjQCpK/PrIm5P8ApVcMMqYMlBqXjdzuTUg7qkp0tQ8Fz7z
 yLeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xnv9vcJaJ4RlveRKToDkYvSVpq7pujagpdh/v4epNFU=;
 b=dGnu2Vk7X3CXrNapHSLFbyhZp7cLpHt/G0vnf6bH6uPqRQ2Fv1+n9igX5fTuThV3hZ
 JVJlC8TMsMlxl6JW9s1bCfnHJKjec1S6C+uQuTnrwUgcINRCJp+s/5lZMWg7y2sShMAK
 0FX8LslGWdJbFcKSnBU3c8ySFi74dDPRwBCBog3Vup+EDg/QrcmARqgO5lSNRWvhZ88f
 YdnWdr1n42A2HPx8SIlVBHWFvCpZon9xloNas36CuemIa4dQFmttGoJjVizIqW8hTDWK
 fD5u2GsQcV8Dx4NgrYON7A/ErsEbs2Ub7mfsgyI/Pb3lSr1fVF+/IZiads+PU3TeUokt
 s0Pg==
X-Gm-Message-State: APjAAAUE3ldRZReSljJakh2eo/wJci6KOEzbzI4MCZ1TLQjdfzd1BQWe
 E+AEzwgoLTQvj69z5/KENCk=
X-Google-Smtp-Source: APXvYqzzsUDvn0Nu0CrpQv0rcR200zqrZ1/2L0Iww16mmu5xqpE9XiMfM9AxTfZmf9GzYoZDWf9MeA==
X-Received: by 2002:a17:90a:8a8f:: with SMTP id
 x15mr4879055pjn.87.1581595200123; 
 Thu, 13 Feb 2020 04:00:00 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id e4sm2797045pgg.94.2020.02.13.03.59.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 03:59:59 -0800 (PST)
Date: Thu, 13 Feb 2020 20:59:57 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200213115957.GC36551@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200213090757.GA36551@google.com> <87v9oarfg4.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87v9oarfg4.fsf@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_040001_966411_36096389 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On (20/02/13 10:42), John Ogness wrote:
> On 2020-02-13, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
> >> -	while (user->seq == log_next_seq) {
> >> +	if (!prb_read_valid(prb, user->seq, r)) {
> >>  		if (file->f_flags & O_NONBLOCK) {
> >>  			ret = -EAGAIN;
> >>  			logbuf_unlock_irq();
> >> @@ -890,30 +758,26 @@ static ssize_t devkmsg_read(struct file *file, char __user *buf,
> >>  
> >>  		logbuf_unlock_irq();
> >>  		ret = wait_event_interruptible(log_wait,
> >> -					       user->seq != log_next_seq);
> >> +					prb_read_valid(prb, user->seq, r));
> >>  		if (ret)
> >>  			goto out;
> >>  		logbuf_lock_irq();
> >>  	}
> >>  
> >> -	if (user->seq < log_first_seq) {
> >> -		/* our last seen message is gone, return error and reset */
> >> -		user->idx = log_first_idx;
> >> -		user->seq = log_first_seq;
> >> +	if (user->seq < r->info->seq) {
> >> +		/* the expected message is gone, return error and reset */
> >> +		user->seq = r->info->seq;
> >>  		ret = -EPIPE;
> >>  		logbuf_unlock_irq();
> >>  		goto out;
> >>  	}
> >
> > Sorry, why doesn't this do something like
> >
> > 	if (user->seq < prb_first_seq(prb)) {
> > 		/* the expected message is gone, return error and reset */
> > 		user->seq = prb_first_seq(prb);
> > 		ret = -EPIPE;
> > 		...
> > 	}
> 
> Here prb_read_valid() was successful, so a record _was_ read. The
> kerneldoc for the prb_read_valid() says:

Hmm, yeah. That's true.

OK, something weird...

I ran some random printk-pressure test (mostly printks from IRQs;
+ some NMI printk-s, but they are routed through nmi printk-safe
buffers; + some limited number of printk-safe printk-s, routed
via printk-safe buffer (so, once again, IRQ); + user-space
journalctl -f syslog reader), and after the test 'cat /dev/kmsg'
is terminally broken

[..]
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
cat /dev/kmsg
cat: /dev/kmsg: Broken pipe
[..]

dmesg works. Reading from /dev/kmsg - doesn't; it did work, however,
before the test.

So I printed seq numbers from devksmg read to a seq buffer and dumped
it via procfs, just seq numbers before we adjust user->seq (set to
r->seq) and after

+                       offt += snprintf(BUF + offt,
+                                       sizeof(BUF) - offt,
+                                       "%s: devkmsg_read() error %llu %llu %llu\n",
+                                       current->comm,
+                                       user->seq,
+                                       r->info->seq,
+                                       prb_first_seq(prb));


...
systemd-journal: devkmsg_read() error 1979235 1979236 1979236
systemd-journal: corrected seq 1979236 1979236
systemd-journal: devkmsg_read() error 1979237 1979243 1979243
systemd-journal: corrected seq 1979243 1979243
systemd-journal: devkmsg_read() error 1979244 1979250 1979250
systemd-journal: corrected seq 1979250 1979250
systemd-journal: devkmsg_read() error 1979251 1979257 1979257
systemd-journal: corrected seq 1979257 1979257
systemd-journal: devkmsg_read() error 1979258 1979265 1979265
systemd-journal: corrected seq 1979265 1979265
systemd-journal: devkmsg_read() error 1979266 1979272 1979272
systemd-journal: corrected seq 1979272 1979272
systemd-journal: devkmsg_read() error 1979272 1979273 1979273
systemd-journal: corrected seq 1979273 1979273
systemd-journal: devkmsg_read() error 1979274 1979280 1979280
systemd-journal: corrected seq 1979280 1979280
systemd-journal: devkmsg_read() error 1979281 1982465 1980933
systemd-journal: corrected seq 1982465 1982465
cat: devkmsg_read() error 1980987 1982531 1980987
cat: corrected seq 1982531 1982531
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981015 1982563 1981015
cat: corrected seq 1982563 1982563
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981080 1982633 1981080
cat: corrected seq 1982633 1982633
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
cat: devkmsg_read() error 1981095 1982652 1981095
cat: corrected seq 1982652 1982652
...


What's up with that user->seq counter?

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
