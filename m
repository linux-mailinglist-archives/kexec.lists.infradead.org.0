Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CF815D4FB
	for <lists+kexec@lfdr.de>; Fri, 14 Feb 2020 10:49:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deXgVmGOuv5gPOcZrF1pbG5CciNETrcmmncH5yDXDkI=; b=iYjBSjO8/wl3CN
	v/8TgcaGJS6tPBdJZeFFGPvlFoCjdo7GMHNdm2O7DoVVXZWDNLPzgiFWk1g73+TVeNHa5LGj7hFVx
	Ib4m+fyz/U7/gNabE74yoxpKZ2s+zuj2ezcnbnRrWrM2Y76sV1SvRas5AjcI0KRKPe59BUByWemeI
	K+eL2l4Kh3ANlqpBXO5KX4GxMEKZc3fk4tMqtc8gmNLspNE3eq/VvSXKDap7rNRjLoUgAephMUJak
	KuBcjYs/9GSab4JG+VMlvIctq32ADLf8mS7RmkpqO5vHK2NiJAR7A+dywUWs1llBirb2I+J4WOtYV
	ucnq2sKEEeqA93EYKitw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Xas-0006ec-Vd; Fri, 14 Feb 2020 09:49:06 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Xan-0006dl-3T
 for kexec@lists.infradead.org; Fri, 14 Feb 2020 09:49:02 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j2Xae-0002qg-U4; Fri, 14 Feb 2020 10:48:53 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <20200213090757.GA36551@google.com> <87v9oarfg4.fsf@linutronix.de>
 <20200213115957.GC36551@google.com> <87pneiyv12.fsf@linutronix.de>
 <20200214014113.GE36551@google.com>
Date: Fri, 14 Feb 2020 10:48:51 +0100
In-Reply-To: <20200214014113.GE36551@google.com> (Sergey Senozhatsky's message
 of "Fri, 14 Feb 2020 10:41:13 +0900")
Message-ID: <87r1yxh530.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_014901_287437_E659991F 
X-CRM114-Status: GOOD (  22.43  )
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

On 2020-02-14, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>>> cat /dev/kmsg
>>> cat: /dev/kmsg: Broken pipe
>>
>> In mainline you can have this "problem" as well. Once the ringbuffer
>> has wrapped, any read to a newly opened /dev/kmsg when a new message
>> arrived will result in an EPIPE. This happens quite easily once the
>> ringbuffer has wrapped because each new message is overwriting the
>> oldest message.
>
> Hmm. Something doesn't add up.
>
> Looking at the numbers, both r->info->seq and prb_first_seq(prb)
> do increase, so there are new messages in the ring buffer
>
>                            u->seq    r->seq    prb_first_seq
> [..]
> cat: devkmsg_read() error 1981080   1982633   1981080
> cat: devkmsg_read() error 1981080   1982633   1981080
> cat: devkmsg_read() error 1981095   1982652   1981095
> cat: devkmsg_read() error 1981095   1982652   1981095
> cat: devkmsg_read() error 1981095   1982652   1981095
> [..]
>
> but 'cat' still wouldn't read anything from the logbuf - EPIPE.
>
> NOTE: I don't run 'cat /dev/kmsg' during the test. I run the test
> first, then I run 'cat /dev/kmsg', after the test, when
> printk-pressure is gone.

Sure. The problem is not the printk-pressure. The problem is you have
data-less records in your ringbuffer (from your previous
printk-pressure). If you used your own program that continued to read
after EPIPE, then you would see the sequence numbers jumping over the
data-less records.

> I can't reproduce it with current logbuf. 'cat' reads from /dev/kmsg
> after heavy printk-pressure test. So chances are some loggers can also
> experience problems. This might be a regression.

Mainline doesn't have data-less records. In mainline such failed
printk's are silently ignored (after attepting truncation). So for
mainline you can only reproduce the overflow case.

1. Boot 5.6.0-rc1 (without any console= slowing down printk)

2. Fill the ringbuffer and let it overflow with:

   $ while true; do echo filling buffer > /dev/kmsg; done &

3. Once you can see the ringbuffer has overflowed (and continues to
   overflow), try to read from /dev/kmsg

   $ strace head /dev/kmsg

In most cases you will see:

read(3, 0x7f7307ac1000, 4096)           = -1 EPIPE (Broken pipe)

Current readers need to be able to handle EPIPE. cat(1) does not and so
(unfortunately) is not a good candidate for reading the ringbuffer.

>>> ...
>>> systemd-journal: devkmsg_read() error 1979281 1982465 1980933
>>> systemd-journal: corrected seq 1982465 1982465
>>> cat: devkmsg_read() error 1980987 1982531 1980987
>>> cat: corrected seq 1982531 1982531
>>> cat: devkmsg_read() error 1981015 1982563 1981015
>>> cat: corrected seq 1982563 1982563
>>
>> The situation with a data-less record is the same as when the ringbuffer
>> wraps: cat is hitting that EPIPE. But re-opening the file descriptor is
>> not going to help because it will not be able to get past that data-less
>> record.
>
> So maybe this is the case with broken 'cat' on my system?

I think it is appropriate for an application to close the descriptor
after an EPIPE. /dev/kmsg is special because the reader should continue
reading anyway.

>> We could implement it such that devkmsg_read() will skip over data-less
>> records instead of issuing an EPIPE. (That is what dmesg does.) But then
>> do we need EPIPE at all? The reader can see that is has missed records
>> by tracking the sequence number, so could we just get rid of EPIPE? Then
>> cat(1) would be a great tool to view the raw ringbuffer. Please share
>> your thoughts on this.
>
> Looking at systemd/src/journal/journald-kmsg.c :
> server_read_dev_kmsg() -EPIPE is just one of the erronos they handle,
> nothing special.

Yes, but what does systemd-journald do when the EPIPE is _not_ returned
and instead there is a jump in the sequence number? Looking at
dev_kmsg_record(), systemd actually does it the way I would hope. It
tracks the sequence number correctly.

    /* Did we lose any? */
    if (serial > *s->kernel_seqnum)
         server_driver_message(s, 0,
                               "MESSAGE_ID="
                               SD_MESSAGE_JOURNAL_MISSED_STR,
                               LOG_MESSAGE("Missed %"PRIu64" kernel messages",
                               serial - *s->kernel_seqnum),
                               NULL);

> Could it be the case that some other loggers would have special
> handling for EPIPE?  I'm not sure, let's look around.
>
> I'd say that EPIPE removal looks OK to me. But before we do that, I'm
> not sure that we have clear understanding of 'cat /dev/kmsg' behaviour
> change.

In mainline, with regard to /dev/kmsg, sequence numbers will never
jump. If there would be a jump (due to lost messages) then EPIPE is
issued. The reader can either:

1. continue reading and see the jump

2. reopen the file descriptor, possibly having missed a ton more
   messages due to reopening, and then start from the oldest available
   message

With my series, #2 is no longer an option because the lost messages
could exist in a part of the ringbuffer not yet overwritten.

If we remove EPIPE, then readers will need to track the sequence number
to identify jumps. systemd-journald does this already. And tools like
cat(1) would "just work" because cat does not care if messages were
lost.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
