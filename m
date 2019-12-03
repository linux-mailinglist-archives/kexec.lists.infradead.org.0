Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C4610FD47
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 13:08:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w22JN/FUHoWDnvxShTTTspFehzpM3Q4j+uQy2J8Plks=; b=IMdVAEm+OcvNGm
	P1FEJoZgO7Ih6W7ykK19jmtNErv7vhCfYn0AKiX6QMFMehNa6QKUQ7Pdqi+X65Cr2BXXFaOo3bpLm
	BMkhB9EZ+kj1jTkr7xopgpQAqoh+G11T7Tf0yiFpjP+zTK+Ahrqv1w1D4QKeypwBTIX5OsEyhHbg9
	F/HTUyj4yg0qxORwGOxUC/Bx+N6e3Dgiq5nDJF2lHsUTWbAAk8T7mfFiSj5uSQBU5SQsLn5F7+PAq
	XkMFNHIR9gOeOJQ5tInSzq7rNJ+ICxrXHPI9XlbUFRKWNhzEHj7Ow8H1mHT4ciUJ+8Ea41BFBeLvk
	qZ+8j+FDTvEKpNruKbHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6yU-0006cQ-FH; Tue, 03 Dec 2019 12:08:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6wj-00054h-AW
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 12:06:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 87EC3AD10;
 Tue,  3 Dec 2019 12:06:23 +0000 (UTC)
Date: Tue, 3 Dec 2019 13:06:22 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 2/3] printk-rb: new printk ringbuffer
 implementation (reader)
Message-ID: <20191203120622.zux33do54rmjafns@pathway.suse.cz>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-3-john.ogness@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_040625_705250_B3D83BBE 
X-CRM114-Status: GOOD (  21.60  )
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

On Thu 2019-11-28 02:58:34, John Ogness wrote:
> Add the reader implementation for the new ringbuffer.
> 
> Signed-off-by: John Ogness <john.ogness@linutronix.de>
> ---
>  kernel/printk/printk_ringbuffer.c | 234 ++++++++++++++++++++++++++++++
>  kernel/printk/printk_ringbuffer.h |  12 +-
>  2 files changed, 245 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> index 09c32e52fd40..f85762713583 100644
> --- a/kernel/printk/printk_ringbuffer.c
> +++ b/kernel/printk/printk_ringbuffer.c
> @@ -674,3 +674,237 @@ void prb_commit(struct prb_reserved_entry *e)
>  	local_irq_restore(e->irqflags);
>  }
>  EXPORT_SYMBOL(prb_commit);
> +
> +/*
> + * Given @blk_lpos, return a pointer to the raw data from the data block
> + * and calculate the size of the data part. A NULL pointer is returned
> + * if @blk_lpos specifies values that could never be legal.
> + *
> + * This function (used by readers) performs strict validation on the lpos
> + * values to possibly detect bugs in the writer code. A WARN_ON_ONCE() is
> + * triggered if an internal error is detected.
> + */
> +static char *get_data(struct prb_data_ring *data_ring,
> +		      struct prb_data_blk_lpos *blk_lpos,
> +		      unsigned long *data_size)
> +{
> +	struct prb_data_block *db;
> +
> +	if (blk_lpos->begin == INVALID_LPOS &&
> +	    blk_lpos->next == INVALID_LPOS) {
> +		/* descriptor without a data block */
> +		return NULL;
> +	} else if (DATA_WRAPS(data_ring, blk_lpos->begin) ==
> +		   DATA_WRAPS(data_ring, blk_lpos->next)) {
> +		/* regular data block */
> +		if (WARN_ON_ONCE(blk_lpos->next <= blk_lpos->begin))
> +			return NULL;
> +		db = to_block(data_ring, blk_lpos->begin);
> +		*data_size = blk_lpos->next - blk_lpos->begin;
> +
> +	} else if ((DATA_WRAPS(data_ring, blk_lpos->begin) + 1 ==
> +		    DATA_WRAPS(data_ring, blk_lpos->next)) ||
> +		   ((DATA_WRAPS(data_ring, blk_lpos->begin) ==
> +		     DATA_WRAPS(data_ring, -1UL)) &&
> +		    (DATA_WRAPS(data_ring, blk_lpos->next) == 0))) {

I am a bit confused. I would expect that (-1UL + 1) = 0. So the second
condition after || looks just like a special variant of the first
valid condition.

Or do I miss anything? Is there a problems with type casting?


> +		/* wrapping data block */
> +		db = to_block(data_ring, 0);
> +		*data_size = DATA_INDEX(data_ring, blk_lpos->next);
> +
> +	} else {
> +		WARN_ON_ONCE(1);
> +		return NULL;
> +	}
> +
> +	/* A valid data block will always be aligned to the ID size. */
> +	if (WARN_ON_ONCE(blk_lpos->begin !=
> +			 ALIGN(blk_lpos->begin, sizeof(db->id))) ||
> +	    WARN_ON_ONCE(blk_lpos->next !=
> +			 ALIGN(blk_lpos->next, sizeof(db->id)))) {
> +		return NULL;
> +	}
> +
> +	/* A valid data block will always have at least an ID. */
> +	if (WARN_ON_ONCE(*data_size < sizeof(db->id)))
> +		return NULL;
> +
> +	/* Subtract descriptor ID space from size. */
> +	*data_size -= sizeof(db->id);
> +
> +	return &db->data[0];
> +}
> +
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

I do not have a good feeling that the record gets lost here.

I could imagine that a writer would reserve more space than
needed in the end. Then it would want to modify desc.info.text_len
and could do a mistake.

By other words, I would expect a bug on the writer side here.
And I would try to preserve the data by calling:

pr_warn_once("Wrong data_size (%lu) for data: %.*s\n", data_size,
data_size, data);

Well, I do not resist on it. WARN_ON_ONCE() is fine as well.

> +
> +	data_size = min_t(u16, buf_size, len);
> +
> +	if (!WARN_ON_ONCE(!data_size))
> +		memcpy(&buf[0], data, data_size);
> +	return true;
> +}
> +

Otherwise it looks good to me. I wonder how the conversion
of the printk.c code will look with this API.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
