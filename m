Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC291168D4
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 10:03:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DavKWxu6JYbNusDbc2ZqCbBjc44mHtK9DZwv94tyc0U=; b=lUlt3uxx+n71px
	+wMiME+UnZPtlFg7yFWIzuRmUoPYTp+L6XTnBdm4z+1wuedGBWYkptiODTme3eea96lg/2DVDtTv0
	uBy0LSMcvCWyesHWnF/jTi5vKhQM3qxwyENoyF8mpL+vXDfh7H97w98DWeOtLnLgbLQ+cH9gGAJoy
	9FdUxH8DixSbkbqr6jL0uC2xUrp13iRAJMuzOOMQXCzsR5p5sQHE4qj9Gp1YO409VGz044YSHOHhd
	Ym7TCBQk/SGQqvkCcPF5gQFguctuvbGr9cy+RIHjAWoON/SVHShAxWBkunWB2N84Iqotli23fbVj8
	gs/MJFCqH9EH6ioXtIJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEwy-00026Q-8l; Mon, 09 Dec 2019 09:03:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEwu-00025g-Q9
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 09:03:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id y14so6861038pfm.13
 for <kexec@lists.infradead.org>; Mon, 09 Dec 2019 01:03:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=h04+/kyq65eedtQzdgewP9Eey1SBByTI6ESOC8A2z5w=;
 b=csGHgfyhplhdKydGgYEkaWlien9YKSWfKoZaDOGlwGTOGsrnVuzI64STLpfsAfpfZ+
 nyuPCsgiX5bMi8f8tb2/r0ZesQxRAJiQBhWiyJ6JwOKWq6x0Pbd9yYWuuH/jzObv2/o9
 3gkJdkolovWodQCUAPMj6h+mxm9Ot6MyMMh2Lv4duDL01GatJd7ItO3AKUCpryiRuGVF
 q+WEUJrTguu1sMVymPPrfRFAgDrSatP8T0Ef4JtuTFIXojCIFfY5LWgdY8gQeKhJAS9d
 SRTI50jAnp5LRk9SGAVhypvtzd/YIlC27Lkno6z1ensTkgyLFpJFbT9H+unnyhXexgW4
 PzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h04+/kyq65eedtQzdgewP9Eey1SBByTI6ESOC8A2z5w=;
 b=MOPcxYqjwbIZyBwoMZ5b0rc/IGO6oDplfI4Glr03E4tgrVu6GOapIw79zcyQSNxawg
 rb8smvljvWbndDxXnppjIRAN4mZtzJlptNr0xvhXoqWKEpyYSE/zaP/RLtllONrjL2G/
 hMhOp7nMNlO6RE4fRiPEzHnHlI8vGh0YlQSbJfTldhvQbrodWvG125aEYjM/5shK7+KS
 5brJsQTgD0qCppuVW1zKr35pSFSd3uikmWi8BVfRvABvkTSVCmW6OWs9Ar9zJcBu5kp0
 Q/FoeDqEBIcBBtWTOWE+uzx4XpxpEnHWYeB7Rnov/E8WLbXK2h/TBiITOnC5iOdkcP3J
 ySWQ==
X-Gm-Message-State: APjAAAUyID++U8P0Q/WySzy0M83g17qH69E+jf8T/VsiEVt194wfYMFX
 /O4RzOdGVJOZRZ+qc71XBAg=
X-Google-Smtp-Source: APXvYqx0ZOiuMcVoWbPAmczuH0Yy23P9uwMh//zAmKlY8Kf73XuQCvuPrPC1oWkugHqiJG7IYqPJMA==
X-Received: by 2002:a63:1a22:: with SMTP id a34mr16682023pga.403.1575882204085; 
 Mon, 09 Dec 2019 01:03:24 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id i4sm24552332pgc.51.2019.12.09.01.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 01:03:23 -0800 (PST)
Date: Mon, 9 Dec 2019 18:03:21 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [RFC PATCH v5 2/3] printk-rb: new printk ringbuffer
 implementation (reader)
Message-ID: <20191209090321.GF88619@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-3-john.ogness@linutronix.de>
 <20191209084300.GD88619@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209084300.GD88619@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_010324_868855_4EC389E4 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Petr Mladek <pmladek@suse.com>, John Ogness <john.ogness@linutronix.de>,
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

On (19/12/09 17:43), Sergey Senozhatsky wrote:
> > +static int desc_read_committed(struct prb_desc_ring *desc_ring, u32 id,
> > +			       u64 seq, struct prb_desc *desc)
> > +{
> > +	enum desc_state d_state;
> > +
> > +	d_state = desc_read(desc_ring, id, desc);
> > +	if (desc->info.seq != seq)
> > +		return -EINVAL;
> > +	else if (d_state == desc_reusable)
> > +		return -ENOENT;
> > +	else if (d_state != desc_committed)
> > +		return -EINVAL;
> > +
> > +	return 0;
> > +}
> > +
> > +/*
> > + * Copy the ringbuffer data from the record with @seq to the provided
> > + * @r buffer. On success, 0 is returned.
> > + *
> > + * See desc_read_committed() for error return values.
> > + */
> > +static int prb_read(struct printk_ringbuffer *rb, u64 seq,
> > +		    struct printk_record *r)
> > +{
> > +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> > +	struct prb_desc *rdesc = to_desc(desc_ring, seq);
> > +	atomic_t *state_var = &rdesc->state_var;
> > +	struct prb_desc desc;
> > +	int err;
> > +	u32 id;
> > +
> > +	/* Get a reliable local copy of the descriptor and check validity. */
> > +	id = DESC_ID(atomic_read(state_var));
> > +	err = desc_read_committed(desc_ring, id, seq, &desc);
> > +	if (err)
> > +		return err;
> > +
> > +	/* If requested, copy meta data. */
> > +	if (r->info)
> > +		memcpy(r->info, &desc.info, sizeof(*(r->info)));
> 
> I wonder if those WARN_ON-s will trigger false positive sometimes.
> 
> A theoretical case.
> 
> What if reader gets preempted/interrupted in the middle of
> desc_read_committed()->desc_read()->memcpy(). The context which interrupts
> the reader recycles the descriptor and pushes new data. Suppose that
> reader was interrupted right after it copied ->info.seq and ->info.text_len.
> So the first desc_read_committed() will pass - we have matching ->seq
> and committed state. copy_data(), however, most likely, will generate
> WARNs. The final desc_read_committed() will notice that local copy
> of desc was in non-consistent state and everything is fine, but we have
> WARNs in the log buffer now.

Hmm. No, that won't happen. We should get desc_miss first, and then -EINVAL.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
