Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EE7116877
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 09:43:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+V8oV+Ioecb2Vi3HA29f449hyX0SY0GoZjhNW00W0c=; b=S/BY6hpmEyAu+b
	thAugTDtN4qfHt8y1bXAAOHl0NxftrOhyI6hFCU3z5aigoFEDcyQDmBC7CFs9s9USQEZolhuqQ2FM
	oJVyU4FWERxIY9MFi9yAfxhw9+klWCmF49G02J4g5rUy2jEpxJnFWsJgUs7z/GMpXMtW55N2kvOGP
	aM8aFilB9blLfvr7UeqL5W6yEpqiszZAOupviwjfDdXT9ycPreqLCLDcWBFUyWZ5aI3TDAsNTKmbd
	nnd6vSnifV8Wwd6XY79Axkd9S2wzjrNTzqQQKE1/gheZd3HIm2fL6Q7F10rEWlxDE3vwKQ3e0DBMS
	aQ/KIIqtWS0Yf6Ot3fnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEdH-0001x1-2y; Mon, 09 Dec 2019 08:43:07 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEdE-0001wU-4D
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 08:43:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id k20so5483331pll.13
 for <kexec@lists.infradead.org>; Mon, 09 Dec 2019 00:43:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zYU0p49jaQaWhoON0mWxdDgAlDp+Z2USeQN6YJkq0LU=;
 b=f1nLB4pLihTj7QqOBhMeGoTXcSLn9LcpjRNX2SWnNb75lhCLZ2Z4xleFtyDtWBhC9C
 g95kB+/UOZB9KrpPnTxQF5XttcnBmlkoTVEkUHhH6TwQc0FP3/VmDbZPfU2ZFKul2NSy
 cW2ZAuB2+ipUqx61EFTiK46qUp2xhHvYXrGjtTgmuXluaS+16VZxNFbhF3h3Q3I5FqiC
 Wu8eTfMs1nquL0RXIYyHaXYTPSRFBYHqpIsoehnmuFrSaQonxBy6kAC8Wqhad/t3vahI
 ULyKn6Bcu9cEq9SGnAjVNzRhkXieXIKZuSN5dCJLtPcqBuw2GFlis1dTi18ITvDM9v1B
 FJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zYU0p49jaQaWhoON0mWxdDgAlDp+Z2USeQN6YJkq0LU=;
 b=gzMEagkeRLhUs487nBlQoY3SG/jzY/11IxZGqWG9FeSFKyqvgt54lJpgWtRUBNvdFZ
 +5qFsSCNrUcp+evei197lkDXE5Z9wUoQpjUzzWzskU/qtoJSeart14L/tlwBmB9LNuXG
 3ejuLaCrK+2vXGyne4XzhyO2GqgJ/dpegbh+SaTgmwmvQChue11JGhQrgz6UOvnHFKaP
 3JNyp/b0RLmS5O1o2ayJFFZxX/TXb0Uqe5snkUy5tFpcZ71zvknXhxvMbQgVjS4BdNLX
 2Ccj5IUA7zg0jA41Rpjliut4r/4bZwGB2nJEioTCNkphScx5jznIHv8X66O97OspVkMs
 /tsQ==
X-Gm-Message-State: APjAAAW/pijx1281LrlPsHRJFP8xUCbowLJxpLbbGiH0bQKliadkoetx
 0E58zrzNfPtO7RBWxHZwO9A=
X-Google-Smtp-Source: APXvYqx+eMXHnMMqNF1EO8VX5HOBZ84BJhclLpKNqp3e8sDPXnKAb4vxozfV7CYe/qrlvdnxy07yrQ==
X-Received: by 2002:a17:90a:ca12:: with SMTP id
 x18mr30682084pjt.66.1575880983333; 
 Mon, 09 Dec 2019 00:43:03 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id x12sm25332109pfm.130.2019.12.09.00.43.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:43:02 -0800 (PST)
Date: Mon, 9 Dec 2019 17:43:00 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 2/3] printk-rb: new printk ringbuffer
 implementation (reader)
Message-ID: <20191209084300.GD88619@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-3-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004304_193427_3DDF68E9 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

On (19/11/28 02:58), John Ogness wrote:
> +/* Given @blk_lpos, copy an expected @len of data into the provided buffer. */
> +static bool copy_data(struct prb_data_ring *data_ring,
> +		      struct prb_data_blk_lpos *blk_lpos, u16 len, char *buf,
> +		      unsigned int buf_size)
> +{
> +	unsigned long data_size;
> +	char *data;
> +
> +	/* Caller might not want the data. */
> +	if (!buf || !buf_size)
> +		return true;
> +
> +	data = get_data(data_ring, blk_lpos, &data_size);
> +	if (!data)
> +		return false;
> +
> +	/* Actual cannot be less than expected. */
> +	if (WARN_ON_ONCE(data_size < len))
> +		return false;
> +
> +	data_size = min_t(u16, buf_size, len);
> +
> +	if (!WARN_ON_ONCE(!data_size))
> +		memcpy(&buf[0], data, data_size);
> +	return true;
> +}
> +
> +/*
> + * Read the record @id and verify that it is committed and has the sequence
> + * number @seq.
> + *
> + * Error return values:
> + * -EINVAL: The record @seq does not exist.
> + * -ENOENT: The record @seq exists, but its data is not available. This is a
> + *          valid record, so readers should continue with the next seq.
> + */
> +static int desc_read_committed(struct prb_desc_ring *desc_ring, u32 id,
> +			       u64 seq, struct prb_desc *desc)
> +{
> +	enum desc_state d_state;
> +
> +	d_state = desc_read(desc_ring, id, desc);
> +	if (desc->info.seq != seq)
> +		return -EINVAL;
> +	else if (d_state == desc_reusable)
> +		return -ENOENT;
> +	else if (d_state != desc_committed)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +/*
> + * Copy the ringbuffer data from the record with @seq to the provided
> + * @r buffer. On success, 0 is returned.
> + *
> + * See desc_read_committed() for error return values.
> + */
> +static int prb_read(struct printk_ringbuffer *rb, u64 seq,
> +		    struct printk_record *r)
> +{
> +	struct prb_desc_ring *desc_ring = &rb->desc_ring;
> +	struct prb_desc *rdesc = to_desc(desc_ring, seq);
> +	atomic_t *state_var = &rdesc->state_var;
> +	struct prb_desc desc;
> +	int err;
> +	u32 id;
> +
> +	/* Get a reliable local copy of the descriptor and check validity. */
> +	id = DESC_ID(atomic_read(state_var));
> +	err = desc_read_committed(desc_ring, id, seq, &desc);
> +	if (err)
> +		return err;
> +
> +	/* If requested, copy meta data. */
> +	if (r->info)
> +		memcpy(r->info, &desc.info, sizeof(*(r->info)));

I wonder if those WARN_ON-s will trigger false positive sometimes.

A theoretical case.

What if reader gets preempted/interrupted in the middle of
desc_read_committed()->desc_read()->memcpy(). The context which interrupts
the reader recycles the descriptor and pushes new data. Suppose that
reader was interrupted right after it copied ->info.seq and ->info.text_len.
So the first desc_read_committed() will pass - we have matching ->seq
and committed state. copy_data(), however, most likely, will generate
WARNs. The final desc_read_committed() will notice that local copy
of desc was in non-consistent state and everything is fine, but we have
WARNs in the log buffer now.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
