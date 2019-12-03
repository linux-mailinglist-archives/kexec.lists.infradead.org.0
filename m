Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E91210F470
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 02:17:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSeisnDpQfT7VWKrlgBaeMAyhf0YWo1j3Ctb6q1XgiU=; b=SrwYwPEw8/bWxj
	UY2uu5Wp9tbFLEHfb3nu1NKBM1z7+009DGJ06306iIWRtwMOotNmmwNpfoEbtNkA6ZoY1nnKjmrV5
	+XKTPHfH8fLbWKbXrNNJ4pwXQ30Q5j5EeCuQ16GDRVaYbVOWdNZGqkNfdVkHl8Z86oiC+mgGuhqJc
	52f8ioQocSf82zhv360hHtqA3zObSaP8M6jSIEbT3qG2s1suHh7kZARDKtJQDQ6dyitjc62T1qPSZ
	bl1C6Vyd2VwpHLgzuLEMN7YT37N0vIyg2ZJvvfpShwrhWL+gR1zqd7zN9a+IfKGSmhgC29rqRVyct
	qvR5O40sCKbJOdrrPnKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibwol-0006vA-JH; Tue, 03 Dec 2019 01:17:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibwog-0006uJ-MR
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 01:17:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id y206so869878pfb.0
 for <kexec@lists.infradead.org>; Mon, 02 Dec 2019 17:17:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=gpkHGfMnAbBIyHMTVJxkg4C53iHTuLlw5bP50AIqABQ=;
 b=OJazjn4dJQ2XU6QMdTYDi6Ehk3RROAXULx0PZwJwrEaOSDdgV8+QBKBRvGgeMeagGq
 TIkbnayPo6OF/dIVaHgqcMMPUaHrI4/x3eEStiS1gPp0Q5PCkolFxlAuryJVK+dtJxLh
 VVyf1pHutzWfgdDczDBABWJXcr6nw8xVebRMxvc6wzLFRrhUweoLVxjbMzvo+XH200b0
 MwKRgYXfb3zZiLaE1s8OEOm3BBvQow/HcDe/aduPyTagEA2kuiITxdU+TFxeuwZK09aa
 1uHjdwxlDp5VHHkOpWJ+hC7acOg2rNiwxqXQLJEgoB4PAk2zFelZkWOCKTb4LNAInDj4
 X4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=gpkHGfMnAbBIyHMTVJxkg4C53iHTuLlw5bP50AIqABQ=;
 b=sZkk0gBKF1dPfOO+I4fbXI1cBED5h2FEF6L9Z8EiwPJc6hYopiGgwT3KhFCCqOHjvQ
 iH2Gi6rJppoTQ9G4RyxdeWY0UWwQIQVg+eaqAmhHktcGY8J3rybF0cc4+KmYC7Uousm5
 gCrPfG7t52OJ3tBFfD1jAjK/ipCi/wr0UFe3Zd3scepAgUCk0aDKOOJYON39mXGvxxxs
 pTZPuBQC/kAk7+JQmfiZr6WotFmnpArmnFSznGiHNQ42GCJcDd/8z3cjsOHNBgHc14WJ
 fHVffj3Pbj36H3Y7NRDuz5xy/4cysIquF/IaSJAT1dOLS0fOplaCaI/wfq4Y6+vxIKe7
 RBlw==
X-Gm-Message-State: APjAAAXVBVL2GTb0uUl/999NtH/VMqWSflKP4M8XH0yt8tESt2AfemVF
 rrbNeh7ntod+CZzL/8nrrPZOg8SG
X-Google-Smtp-Source: APXvYqw+oWcJw/VMWxq5kNurpKlY83AoJh5RMHYhCrN1w0WetKruGwPmnt8fYYpvNRw67u0Z84DT6g==
X-Received: by 2002:a65:578e:: with SMTP id b14mr2442103pgr.444.1575335844294; 
 Mon, 02 Dec 2019 17:17:24 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id i3sm738898pfd.154.2019.12.02.17.17.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Dec 2019 17:17:23 -0800 (PST)
Date: Tue, 3 Dec 2019 10:17:21 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191203011721.GH93017@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
 <20191202155955.meawljmduiciw5t2@pathway.suse.cz>
 <87sgm2fzuh.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgm2fzuh.fsf@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_171726_759824_48D96415 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Petr Mladek <pmladek@suse.com>,
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

On (19/12/02 17:37), John Ogness wrote:
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

ftrace dumps from NMI (DUMP_ALL type ftrace_dump_on_oops on a $BIG
machine)? 1G seems large enough, but who knows.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
