Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 785CF11006C
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 15:36:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4m29MetiA/qi+W6Ci3Tzwff/7hlKuBFjqAHTn9rSSM=; b=NIUdOSpFx+tw1b
	fIJBxg+PcBro8cVR9GQudrI72es5ChZmra+qN+SEb7X8ugJgJiaubrZWktvf9zItiisC72oBKPs/a
	YuAgUt/HPP/+yRQ37pxXlgVmiWPBoaRF8uZSdF+vbkZ1DYox8on2POY91IO29OKoH/4w3UR0ro+48
	FcGreSp/xj6mWwZrk7+uAuVsHORu6sacz/G2SpZu4kjQOJvwNJqwrtmSVU+vEnMuiqhdkKL9Ahaoy
	rWawCcWN/yT1/Z+8eD7d9YLL3NH/b8yxQVqN7i23uSeI084m0Iy1FQyp5VNdm4XT06b/Fb0dhKZZV
	T2PgPU3A01R6bgirBNnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic9I9-0004cf-Ni; Tue, 03 Dec 2019 14:36:41 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic9I6-0004bx-Ic
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 14:36:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C21A3B365;
 Tue,  3 Dec 2019 14:36:36 +0000 (UTC)
Date: Tue, 3 Dec 2019 15:36:35 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191203143635.cc6hh6bscr6kw4zw@pathway.suse.cz>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
 <87fti1bipb.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fti1bipb.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_063638_760529_50DCEB05 
X-CRM114-Status: GOOD (  19.15  )
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

On Tue 2019-12-03 15:13:36, John Ogness wrote:
> On 2019-12-02, Petr Mladek <pmladek@suse.com> wrote:
> >> +/*
> >> + * Sanity checker for reserve size. The ringbuffer code assumes that a data
> >> + * block does not exceed the maximum possible size that could fit within the
> >> + * ringbuffer. This function provides that basic size check so that the
> >> + * assumption is safe.
> >> + */
> >> +static bool data_check_size(struct prb_data_ring *data_ring, unsigned int size)
> >> +{
> >> +	struct prb_data_block *db = NULL;
> >> +
> >> +	/* Writers are not allowed to write data-less records. */
> >> +	if (size == 0)
> >> +		return false;
> >
> > I would personally let this decision to the API caller.
> >
> > The code actually have to support data-less records. They are used
> > when the descriptor is reserved but the data block can't get reserved.
> 
> Exactly. Data-less records are how the ringbuffer identifies that data
> has been lost. If users were allowed to store data-less records, that
> destinction is no longer possible (unless I created some extra field in
> the descriptor). Does it even make sense for printk to store data-less
> records explicitly?

From my POV, it does not make much sense.

> The current printk implementation silently ignores empty messages.

I am not able to find it. I only see that empty continuous framgments
are ignored in log_output(). Normal empty lines seems to be strored.

Well, I can't see any usecase for this. I think that we could ignore
all empty strings.


> > The above statement might create false feeling that it could not
> > happen later in the code. It might lead to bugs in writer code.
> 
> Then let me change the statement to describe that data-less records are
> used internally by the ringbuffer and cannot be explicitly created by
> writers.

Sounds godo to me.

> > Also reader API users might not expect to get a "valid" data-less
> > record.
> 
> Readers will never see them. The reader API implementation skips over
> data-less records.

Yeah. They will see bump in the seq number. We would need to
distinguish empty records and lost records as you wrote above.
It looks better to ignore empty records already during write.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
