Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F68010ECBD
	for <lists+kexec@lfdr.de>; Mon,  2 Dec 2019 17:00:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeON0Lah4CSLe+zqw44g9+cXKPLfqXdsaKDqp3hhSis=; b=B3CDFmmNe7/34J
	v4vSGglkii4e0gx295HrLa6tSsR2gHZ8vsMvyUZT3yWkdKyXygkIuYlqeJTgOWEkJn6JsrpLbav49
	3q3J5wERRTXryDJO5neNd2GjSTlZSAQqmDYwaM47EVvmUgQyan2v6f4sm/FvEjypsUePlDb4zmIfr
	QG5FoUJzF/XCDqBhUxpYTadfXrllBUxH9i7mmZwEOh9h63uotM7UJ8pnfeHsPJn+8m4Ve8p2+MsAO
	ixn5o2GnEArboa/snzPA/ksm7kVzCIu2gqOR1zdCkjlcfB4X5uIkltJ/mMn0vmiS6wWjjF5aOLnwd
	G8vrrcqMG8dxZ6sZe+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibo7F-00021x-3j; Mon, 02 Dec 2019 16:00:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibo7C-00021N-B4
 for kexec@lists.infradead.org; Mon, 02 Dec 2019 15:59:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A3616B14A;
 Mon,  2 Dec 2019 15:59:56 +0000 (UTC)
Date: Mon, 2 Dec 2019 16:59:55 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191202155955.meawljmduiciw5t2@pathway.suse.cz>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_075958_526733_A57C61F3 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Mon 2019-12-02 16:48:41, Petr Mladek wrote:
> > +/* Reserve a new descriptor, invalidating the oldest if necessary. */
> > +static bool desc_reserve(struct printk_ringbuffer *rb, u32 *id_out)
> > +{
> > +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> > +	struct prb_desc *desc;
> > +	u32 id_prev_wrap;
> > +	u32 head_id;
> > +	u32 id;
> > +
> > +	head_id = atomic_read(&desc_ring->head_id);
> > +
> > +	do {
> > +		desc = to_desc(desc_ring, head_id);
> > +
> > +		id = DESC_ID(head_id + 1);
> > +		id_prev_wrap = DESC_ID_PREV_WRAP(desc_ring, id);
> > +
> > +		if (id_prev_wrap == atomic_read(&desc_ring->tail_id)) {
> > +			if (!desc_push_tail(rb, id_prev_wrap))
> > +				return false;
> > +		}
> > +	} while (!atomic_try_cmpxchg(&desc_ring->head_id, &head_id, id));
> 
> Hmm, in theory, ABA problem might cause that we successfully
> move desc_ring->head_id when tail has not been pushed yet.
> 
> As a result we would never call desc_push_tail() until
> it overflows again.
> 
> I am not sure if we need to take care of it. The code is called with
> interrupts disabled. IMHO, only NMI could cause ABA problem
> in reality. But the game (debugging) is lost anyway when NMI ovewrites
> the buffer several times.

BTW: If I am counting correctly. The ABA problem would happen when
exactly 2^30 (1G) messages is written in the mean time.

> Also it should not be a complete failure. We still could bail out when
> the previous state was not reusable. We are on the safe side
> when it was reusable.
> 
> Also we could probably detect when desc_ring->tail_id is not
> updated any longer and do something about it.
> 
> > +
> > +	desc = to_desc(desc_ring, id);
> > +
> > +	/* Set the descriptor's ID and also set its state to reserved. */
> > +	atomic_set(&desc->state_var, id | 0);
> 
> We should check here that the original state id from the previous
> wrap in reusable state (or 0 for bootstrap). On error, we know that
> there was the ABA problem and would need to do something about it.

I believe that it should be enough to add this check and
bail out in case of error.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
