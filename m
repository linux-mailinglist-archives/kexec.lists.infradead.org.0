Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9284514C50C
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 04:53:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9sev8WuAlZyOC/8AB4wnEhjF7myXfgvQ+TzRfkBvjtw=; b=aCuc13ljGpfBVY
	zcSJyHuMVNPZgwuB8y6tpfuMRFbhk9UQ3p+yFn7gCXzSwOJ3rlXEU6gRCYXeiohSOrdncWnIiWwl5
	yk9SkNJ76W5x+vAvqfEvLyNP5eCeS0ft3bu9nwY/T5xfRSdDX4pfKodHBRWvUrka/YjPyyQntXWaG
	AJHGVDolDz+vHB22Ntmdvv7G7BNgyx8Hyon+ZGrAZXCaQZy0olPBb+FG6vRQqnNVQIWrad+0zMi50
	qNqzLCjB9TMuETDFmuvsLZ+wWfhbpup/Gp1PsSYbsU9mbrMRVbi/JqOlP51fg4YkTe9MDSanBBPpJ
	2NT8iK2bd54nRljCxzBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwePr-0003r4-GA; Wed, 29 Jan 2020 03:53:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwePo-0003qg-JT
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 03:53:22 +0000
Received: from rorschach.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7B459207FF;
 Wed, 29 Jan 2020 03:53:18 +0000 (UTC)
Date: Tue, 28 Jan 2020 22:53:16 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 1/2] printk: add lockless buffer
Message-ID: <20200128225316.0a735187@rorschach.local.home>
In-Reply-To: <20200128161948.8524-2-john.ogness@linutronix.de>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-2-john.ogness@linutronix.de>
X-Mailer: Claws Mail 3.17.4git76 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_195320_691519_742AD951 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 17:25:47 +0106
John Ogness <john.ogness@linutronix.de> wrote:

> diff --git a/kernel/printk/printk_ringbuffer.c b/kernel/printk/printk_ringbuffer.c
> new file mode 100644
> index 000000000000..796257f226ee
> --- /dev/null
> +++ b/kernel/printk/printk_ringbuffer.c
> @@ -0,0 +1,1370 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <linux/kernel.h>
> +#include <linux/irqflags.h>
> +#include <linux/string.h>
> +#include <linux/errno.h>
> +#include <linux/bug.h>
> +#include "printk_ringbuffer.h"
> +
> +/**
> + * DOC: printk_ringbuffer overview
> + *
> + * Data Structure
> + * --------------
> + * The printk_ringbuffer is made up of 3 internal ringbuffers::
> + *
> + *   * desc_ring:      A ring of descriptors. A descriptor contains all record
> + *                     meta data (sequence number, timestamp, loglevel, etc.)
> + *                     as well as internal state information about the record
> + *                     and logical positions specifying where in the other
> + *                     ringbuffers the text and dictionary strings are
> + *                     located.
> + *
> + *   * text_data_ring: A ring of data blocks. A data block consists of an
> + *                     unsigned long integer (ID) that maps to a desc_ring
> + *                     index followed by the text string of the record.
> + *
> + *   * dict_data_ring: A ring of data blocks. A data block consists of an
> + *                     unsigned long integer (ID) that maps to a desc_ring
> + *                     index followed by the dictionary string of the record.
> + *
> + * Implementation
> + * --------------
> + *
> + * ABA Issues
> + * ~~~~~~~~~~
> + * To help avoid ABA issues, descriptors are referenced by IDs (index values
> + * with tagged states) and data blocks are referenced by logical positions
> + * (index values with tagged states). However, on 32-bit systems the number
> + * of tagged states is relatively small such that an ABA incident is (at
> + * least theoretically) possible. For example, if 4 million maximally sized

4 million? I'm guessing that maximally sized printk messages are 1k?

Perhaps say that, otherwise one might think this is a mistake. "4
million maximally sized (1k) printk messages"

> + * printk messages were to occur in NMI context on a 32-bit system, the
> + * interrupted task would not be able to recognize that the 32-bit integer
> + * wrapped and thus represents a different data block than the one the
> + * interrupted task expects.
> + *
> + * To help combat this possibility, additional state checking is performed
> + * (such as using cmpxchg() even though set() would suffice). These extra
> + * checks will hopefully catch any ABA issue that a 32-bit system might
> + * experience.
> + *
[..]

> + * Usage
> + * -----
> + * Here are some simple examples demonstrating writers and readers. For the
> + * examples a global ringbuffer (test_rb) is available (which is not the
> + * actual ringbuffer used by printk)::
> + *
> + *	DECLARE_PRINTKRB(test_rb, 15, 5, 3);
> + *
> + * This ringbuffer allows up to 32768 records (2 ^ 15) and has a size of
> + * 1 MiB (2 ^ 20) for text data and 256 KiB (2 ^ 18) for dictionary data.

 (2 ^ (15 + 5)) ... (2 ^ (15 + 3)) ?

I'll play around more with this this week. But so far it looks good.

-- Steve

> + *
> + * Sample writer code::
> + *
> + *	struct prb_reserved_entry e;
> + *	struct printk_record r;
> + *
> + *	// specify how much to allocate
> + *	r.text_buf_size = strlen(textstr) + 1;
> + *	r.dict_buf_size = strlen(dictstr) + 1;
> + *
> + *	if (prb_reserve(&e, &test_rb, &r)) {
> + *		snprintf(r.text_buf, r.text_buf_size, "%s", textstr);
> + *
> + *		// dictionary allocation may have failed
> + *		if (r.dict_buf)
> + *			snprintf(r.dict_buf, r.dict_buf_size, "%s", dictstr);
> + *
> + *		r.info->ts_nsec = local_clock();
> + *
> + *		prb_commit(&e);
> + *	}
> + *

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
