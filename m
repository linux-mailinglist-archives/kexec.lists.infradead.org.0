Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F4C15CF89
	for <lists+kexec@lfdr.de>; Fri, 14 Feb 2020 02:41:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZugsmLOZHquXrhtUtV+9dvaGKgVyWLpzr8ilEXkUXWw=; b=NA0M4CwfdBhEZU
	ouWs7ilWBNE0fus8Qq6SOexJ0XeCY5J7+kSOpYd2Qq0vGwJ7Oa5ZGOd1eLFeHjj+BmzmVC6slujxL
	JTMZW3P/1m2IFRu6tqoRwrXkmvaJAfx1oNOpLcstEO5Tm7kBMAcBjvGduT6ezKG3L6rN/pR4CKhoP
	nWxCFLMn/Kiot+tgfICgxwK3KOcyDadUO0hUAI+cMydYc62Dq+/f5H/i2OjttdtOf8v9murzj/Kv2
	NWziLT9j28n7HZYlr/8XjDCKBUjjJ+S4XYjbbVne/hyNhVX62whgpzl1FChh0oN9X7IuJGBzIob4I
	mX9io7CXJd0MpVYRhdtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Pyq-0004y2-S6; Fri, 14 Feb 2020 01:41:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Pyn-0004xi-II
 for kexec@lists.infradead.org; Fri, 14 Feb 2020 01:41:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so3065455pll.13
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 17:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=c2ojux6FXooiV+cY1VHCB4d8TJTAMOsLW/ga74jHrnI=;
 b=Kooq3mZ8zJw5wVcmKrFeSvbQ95GWdZbqTW/U9u066iso/gdBz9rgicyPA6gmmPS07w
 3ZCwwgy7iu7uSjkho0/9aUisW7DTRu+xUXImwlzqGMmYCkVhdwvl6OFrFcQl7hf0SiJ7
 6IvN/RiKcRoA8viEwDJIJwmwN1+Jp/I3jAvgqQuGelonzOtapFGfdF92tLKmMsDn+0IO
 oJ/8Uu6N7IFVko6hFD36GVdYHveIGlr4/sl0XX2MjLyqmR136JmxYKJzoqOol7D3r6fX
 oBC533l652zJFSVFb4TJKQscEjF1RIzGfJTIN/ZZeh8yJrJPITX00SCLE9pxb6EM+NV9
 9JVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c2ojux6FXooiV+cY1VHCB4d8TJTAMOsLW/ga74jHrnI=;
 b=TX+VFlo+VbV9NoLKTGDh0WcfQoIVIXDcGKrSSB+8htXhEkD4zPIVkNat48vLhOENC5
 WhWKc8mp8QTIDXcGC4r6mOwsE/4UvYSGEeaM4Q9dlPntmDQEm4L0CTq7w5OnjvWfia7p
 QMs4dI6UclFXJwxD9ImIwo4BygLip3s8rHb6d2f8btwX6fzgBzTKu9d4NxcW4hllHYoy
 wvQBiw14XSkdsGCzRY5fJ/HGEVaSrbaZ6RysI/A497O1ABOhvBtFQ+BDsuiJWiTM5UjV
 oq7R+sXZVL9BRtNpBuZyc7udYYdfCeIQRRvze6ty8qAVvO0xC6P8Ip3I4hWtgjaxwDWl
 cgng==
X-Gm-Message-State: APjAAAXDPn0A5JH5p1LZqLwTtxDPMvyj2TIByzt/IaaxuE6bPBRhgqbs
 hGynrTtFLnrnTkDg4xZYJ3o=
X-Google-Smtp-Source: APXvYqxACI5wvy1P+Ss2WDCfxZR2etZcuD5WjozSgkzxkUFlyakumVDXYF9Ju5+WUTLCXGPA4TrqqA==
X-Received: by 2002:a17:902:bf41:: with SMTP id
 u1mr784632pls.207.1581644476512; 
 Thu, 13 Feb 2020 17:41:16 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id f3sm4612335pga.38.2020.02.13.17.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 17:41:15 -0800 (PST)
Date: Fri, 14 Feb 2020 10:41:13 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200214014113.GE36551@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200213090757.GA36551@google.com> <87v9oarfg4.fsf@linutronix.de>
 <20200213115957.GC36551@google.com> <87pneiyv12.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pneiyv12.fsf@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_174117_630456_E6B5A369 
X-CRM114-Status: GOOD (  22.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
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

On (20/02/13 23:36), John Ogness wrote:
> >> Here prb_read_valid() was successful, so a record _was_ read. The
> >> kerneldoc for the prb_read_valid() says:
> >
> > Hmm, yeah. That's true.
> >
> > OK, something weird...
> >
> > I ran some random printk-pressure test (mostly printks from IRQs;
> > + some NMI printk-s, but they are routed through nmi printk-safe
> > buffers; + some limited number of printk-safe printk-s, routed
> > via printk-safe buffer (so, once again, IRQ); + user-space
> > journalctl -f syslog reader), and after the test 'cat /dev/kmsg'
> > is terminally broken
> >
> > [..]
> > cat /dev/kmsg
> > cat: /dev/kmsg: Broken pipe
>
> In mainline you can have this "problem" as well. Once the ringbuffer has
> wrapped, any read to a newly opened /dev/kmsg when a new message arrived
> will result in an EPIPE. This happens quite easily once the ringbuffer
> has wrapped because each new message is overwriting the oldest message.

Hmm. Something doesn't add up.

Looking at the numbers, both r->info->seq and prb_first_seq(prb)
do increase, so there are new messages in the ring buffer

                           u->seq    r->seq    prb_first_seq
[..]
cat: devkmsg_read() error 1981080   1982633   1981080
cat: devkmsg_read() error 1981080   1982633   1981080
cat: devkmsg_read() error 1981095   1982652   1981095
cat: devkmsg_read() error 1981095   1982652   1981095
cat: devkmsg_read() error 1981095   1982652   1981095
[..]

but 'cat' still wouldn't read anything from the logbuf - EPIPE.

NOTE: I don't run 'cat /dev/kmsg' during the test. I run the test first,
then I run 'cat /dev/kmsg', after the test, when printk-pressure is gone.

I can't reproduce it with current logbuf. 'cat' reads from /dev/kmsg after
heavy printk-pressure test. So chances are some loggers can also experience
problems. This might be a regression.

> > ...
> > systemd-journal: devkmsg_read() error 1979281 1982465 1980933
> > systemd-journal: corrected seq 1982465 1982465
> > cat: devkmsg_read() error 1980987 1982531 1980987
> > cat: corrected seq 1982531 1982531
> > cat: devkmsg_read() error 1981015 1982563 1981015
> > cat: corrected seq 1982563 1982563
>
> The situation with a data-less record is the same as when the ringbuffer
> wraps: cat is hitting that EPIPE. But re-opening the file descriptor is
> not going to help because it will not be able to get past that data-less
> record.

So maybe this is the case with broken 'cat' on my system?

> We could implement it such that devkmsg_read() will skip over data-less
> records instead of issuing an EPIPE. (That is what dmesg does.) But then
> do we need EPIPE at all? The reader can see that is has missed records
> by tracking the sequence number, so could we just get rid of EPIPE? Then
> cat(1) would be a great tool to view the raw ringbuffer. Please share
> your thoughts on this.

Looking at systemd/src/journal/journald-kmsg.c : server_read_dev_kmsg()
-EPIPE is just one of the erronos they handle, nothing special. Could it
be the case that some other loggers would have special handling for EPIPE?
I'm not sure, let's look around.

I'd say that EPIPE removal looks OK to me. But before we do that, I'm
not sure that we have clear understanding of 'cat /dev/kmsg' behaviour
change.

> On a side note (but related to data-less records): I hacked the
> ringbuffer code to inject data-less records at various times in order to
> verify your report. And I stumbled upon a bug in the ringbuffer, which
> can lead to an infinite loop in console_unlock(). The problem occurs at:
> 
>     retry = prb_read_valid(prb, console_seq, NULL);
> 
> which will erroneously return true if console_seq is pointing to a
> data-less record but there are no valid records after it. The following
> patch fixes the bug. And yes, for v2 I have added comments to the
> desc_read_committed() code.

That's great to know!

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
