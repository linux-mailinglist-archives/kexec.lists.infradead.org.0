Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA34178E0E
	for <lists+kexec@lfdr.de>; Wed,  4 Mar 2020 11:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6VFbm5K+McB2s8gJQqzKdWRvxb9pZGrgrewAGXvdX6A=; b=dOpNeAx7ZzTjmP
	0LORfD3IkSP3in7hrD5czvavAI8zCylsZfF6fHQ3s4PeGwCrzVLEM/iKhjnGSk5pULzqFOweQaiK2
	3nV65MMpv7B55/i21JY84oAFnSeFby4/9HcBoNfkdv01OWmSMRT71Q9TAEMvIO2jxF4fhZPh7a6e4
	a/9j5yPQYO+DkmiEph2DBE43zLyrnTQbYeKGrUQWVBqG+z02T2YwSW3XoglE7E1scsQA1fUYsa+ax
	ZzQz6UJVy8sXfNydf8lRsalwB1jHl8ghnz3OGK2MOqe2V7LhqnuHeGPEGl6XrIbP56ZTZav8GhZAM
	8FFVNSc/+XvmpWK5iOsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9QyE-0003NW-EX; Wed, 04 Mar 2020 10:09:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9QyB-0003Mq-81
 for kexec@lists.infradead.org; Wed, 04 Mar 2020 10:09:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 79181AF62;
 Wed,  4 Mar 2020 10:09:37 +0000 (UTC)
Date: Wed, 4 Mar 2020 11:09:36 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: misc nits Re: [PATCH 1/2] printk: add lockless buffer
Message-ID: <20200304100936.dfsdfd3wgabopfzd@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
 <20200221120557.lxpeoy6xuuqxzu5w@pathway.suse.cz>
 <87r1ybujm5.fsf@linutronix.de>
 <20200302123249.6khdqpneu7t6l35s@pathway.suse.cz>
 <87a74yrhwy.fsf@linutronix.de>
 <20200303094758.ubylqjqns7zbg6gb@pathway.suse.cz>
 <87d09tcunk.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87d09tcunk.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_020939_583132_C0CF91E6 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Tue 2020-03-03 16:42:07, John Ogness wrote:
> On 2020-03-03, Petr Mladek <pmladek@suse.com> wrote:
> >>>>>> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> >>>>>> new file mode 100644
> >>>>>> index 000000000000..796257f226ee
> >>>>>> --- /dev/null
> >>>>>> +++ b/kernel/printk/printk_ringbuffer.c
> >>>>>> +/*
> >>>>>> + * Read the record @id and verify that it is committed and has the sequence
> >>>>>> + * number @seq. On success, 0 is returned.
> >>>>>> + *
> >>>>>> + * Error return values:
> >>>>>> + * -EINVAL: A committed record @seq does not exist.
> >>>>>> + * -ENOENT: The record @seq exists, but its data is not available. This is a
> >>>>>> + *          valid record, so readers should continue with the next seq.
> >>>>>> + */
> >>>>>> +static int desc_read_committed(struct prb_desc_ring *desc_ring,
> >>>>>> +			       unsigned long id, u64 seq,
> >>>>>> +			       struct prb_desc *desc)
> >>>>>> +{
> >>>
> @id _is_ very important because that is how descriptors are
> read. desc_read() takes @id as an argument and it is @id that identifies
> the descriptor. @seq is only meta-data within a descriptor. The only
> reason @seq is even checked is because of possible ABA issues with @id
> on 32-bit systems.

I think that the different view is because I look at this API
from the reader API side. It is called the following way:

prb_read_valid(, seq, )
  _prb_read_valid( , &seq, )
    prb_read( , *seq, )
        # id is read from address defined by seq
	rdesc = dr->descs[seq & MASK];
	id = rdesc->state_var && MASK_ID;

        desc_read_commited( , id, seq, )
	  desc_read( , id, )
	    # desc is the same as rdesc above because
	    # seq & MASK == id & MASK
	    desc = dr->descs[id & MASK];

Note that prb_read_valid() and prb_read() are addressed by seq.

It would be perfectly fine to pass only seq to desc_read_committed()
and read id from inside.

The name desc_read_committed() suggests that the important condition
is that the descriptor is in the committed state. It is not obvious
that seq is important as well.

From my POV, it will be more clear to pass only seq and rename the
function to desc_read_by_seq() or so:

  + seq is enough for addressing
  + function returns true only when the stored seq matches
  + the stored seq is valid only when the state is committed
    or reusable


Please, do not reply to this mail. Either take the idea or keep
the code as is. I could live with it. And it is not important
enough to spend more time on it. I just wanted to explain my view.
But it is obviously just a personal preference.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
