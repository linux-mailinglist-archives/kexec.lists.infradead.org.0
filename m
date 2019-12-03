Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2999A10FA38
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 09:54:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b2DWNKWN4r2mu54Xml6MHVFOa0FujjL1meqpE3E4UNA=; b=pbedtfWyjPOMTN
	jHrJktpc2SmCLXnLwxiCbVnOLdemoD+Pol1z9aWnIJughabYjRXwE9O7MxFJA7tzn0hn5D3kpuJZq
	yN8+KWTrRgwGflFuQ2ij3SnWnx9qtaexHO7Zj4jZ+sgQhgexUjARTKJn4moHEFmkoDhTabkXwM8ZJ
	oPnoYrdf1O/ZNcoObsdJUw80vIf4PZcMG01Rtjd3g7//CgHo9lIMmXBK84rHJwYPque9+gZeCBPuh
	TexvQ1o6sBBxa6kvcXfWDU7l2X8kA5c63b8tuc0uJ7t1YiGr4/xjCgVcI/nlfug47eeQKOw8Hd7vy
	TTX6QJ6guZf6rLj2fMqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3x3-0001be-NW; Tue, 03 Dec 2019 08:54:33 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3x0-0001bA-1G
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 08:54:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id DFB78AE64;
 Tue,  3 Dec 2019 08:54:27 +0000 (UTC)
Date: Tue, 3 Dec 2019 09:54:26 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191203085426.x6n2z4iu3xpcmfr4@pathway.suse.cz>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
 <20191202155955.meawljmduiciw5t2@pathway.suse.cz>
 <87sgm2fzuh.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgm2fzuh.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_005430_369013_6090B464 
X-CRM114-Status: GOOD (  30.47  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 PDS_BTC_ID             FP reduced Bitcoin ID
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

On Mon 2019-12-02 17:37:26, John Ogness wrote:
> On 2019-12-02, Petr Mladek <pmladek@suse.com> wrote:
> >> > +/* Reserve a new descriptor, invalidating the oldest if necessary. */
> >> > +static bool desc_reserve(struct printk_ringbuffer *rb, u32 *id_out)
> >> > +{
> >> > +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> >> > +	struct prb_desc *desc;
> >> > +	u32 id_prev_wrap;
> >> > +	u32 head_id;
> >> > +	u32 id;
> >> > +
> >> > +	head_id = atomic_read(&desc_ring->head_id);
> >> > +
> >> > +	do {
> >> > +		desc = to_desc(desc_ring, head_id);
> >> > +
> >> > +		id = DESC_ID(head_id + 1);
> >> > +		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
> >> > +
> >> > +		if (id_prev_wrap == atomic_read(&desc_ring->tail_id)) {
> >> > +			if (!desc_push_tail(rb, id_prev_wrap))
> >> > +				return false;
> >> > +		}
> >> > +	} while (!atomic_try_cmpxchg(&desc_ring->head_id, &head_id, id));
> >> 
> >> Hmm, in theory, ABA problem might cause that we successfully
> >> move desc_ring->head_id when tail has not been pushed yet.
> >> 
> >> As a result we would never call desc_push_tail() until
> >> it overflows again.
> >> 
> >> I am not sure if we need to take care of it. The code is called with
> >> interrupts disabled. IMHO, only NMI could cause ABA problem
> >> in reality. But the game (debugging) is lost anyway when NMI ovewrites
> >> the buffer several times.
> >
> > BTW: If I am counting correctly. The ABA problem would happen when
> > exactly 2^30 (1G) messages is written in the mean time.
> 
> All the ringbuffer code assumes that the use of index numbers handles
> the ABA problem (i.e. there must not be 1 billion printk's within an
> NMI). If we want to support 1 billion+ printk's within an NMI, then
> perhaps the index number should be increased. For 64-bit systems it
> would be no problem to go to 62 bits. For 32-bit systems, I don't know
> how well the 64-bit atomic operations are supported.

I am not super happy but I really think that it does not make sense
to complicate the code too much because of this theoretical race.

1 billion printks in NMI is crazy. Also the race is a problem only
when we hit exactly the 2^30 message. If we hit 2^30 + 1 and more
than everything is fine again.

In the worst case, printk() will stop working. I think that there
are other situations that are much more likely when printk() will
not work (people will not see the messages).


> >> Also it should not be a complete failure. We still could bail out when
> >> the previous state was not reusable. We are on the safe side
> >> when it was reusable.
> >> 
> >> Also we could probably detect when desc_ring->tail_id is not
> >> updated any longer and do something about it.
> >> 
> >> > +
> >> > +	desc = to_desc(desc_ring, id);
> >> > +
> >> > +	/* Set the descriptor's ID and also set its state to reserved. */
> >> > +	atomic_set(&desc->state_var, id | 0);
> >> 
> >> We should check here that the original state id from the previous
> >> wrap in reusable state (or 0 for bootstrap). On error, we know that
> >> there was the ABA problem and would need to do something about it.
> >
> > I believe that it should be enough to add this check and
> > bail out in case of error.
> 
> I need to go through the code again in detail and see how many locations
> are affected by ABA. All the code was written with the assumption that
> this type of ABA will not happen.
>
> As you've stated, we could add minimal handling so that the ringbuffer
> at least does not break or get stuck.
> 
> BTW: The same assumption is made for logical positions. There are 4
> times as many of these (on 32-bit systems) but logical positions advance
> much faster. I will review these as well.

The logical positions are assigned only when a descriptor is reserved.
Such a descriptor could not be reused until committed and marked
reusable. It limits the logical position movement to:

   max_record_size * number_of_descriptors

Printk records are limited to 1k. So we could safely support
up to 1 million fully sized lines printed when NMI interrupted
printk() on one CPU.

The most important thing is that it must not crash the system.
It would be nice if we are able to detect this situation and
do something about it. But IMHO, it is perfectly fine when
printk() would stop working in this corner case.

The only problem is that it might be hard to debug. But it
should be possible with crashdump. And I think that we will
first hit some other bugs that we do not see at the moment ;-)

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
