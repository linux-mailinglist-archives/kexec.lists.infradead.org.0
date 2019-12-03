Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0992710FFBE
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 15:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAHJWjNB7fs8ApR7518nDuRUnUq5BCQ08P4mb0iIYuQ=; b=tJdPQwvDyt6wLP
	t5WtbPrGIOEOJrxyJTfhh1OteGbXEmmyPd38Sh8mJ9dF1S5it3/aQvXVs+3Evh0gw6O9W5PUTQBW9
	S3VP5LZBz6J7V0DrT8OkQtzaP3gA8Nf5Q2PP6AaO5wa73gAGn4bGp45c8QYqJC3Ov0zo4FJd3A1Ze
	GKk1xv+/9dq7iAFIfWAIXOra7BBiPaLtjVj9if6Gd0+dvv3ZcnRMBbqkStXm6mfJrTqYleaIN/dqv
	bkKyV7sJ/fmBWgw+cS+O08FdfUQ6HKo2V0Rmu+LdLpSwiZ9AfUy5tYQzMDGVK2Kh1/PLLOPlg1NXu
	/h1/JfwCkKFkGO16NRYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic8vw-000353-Ur; Tue, 03 Dec 2019 14:13:44 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic8vt-00034C-EB
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 14:13:42 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1ic8vq-0002i0-2z; Tue, 03 Dec 2019 15:13:38 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
Date: Tue, 03 Dec 2019 15:13:36 +0100
In-Reply-To: <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz> (Petr Mladek's
 message of "Mon, 2 Dec 2019 16:48:41 +0100")
Message-ID: <87fti1bipb.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_061341_626809_0495354C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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

On 2019-12-02, Petr Mladek <pmladek@suse.com> wrote:
>> +/*
>> + * Sanity checker for reserve size. The ringbuffer code assumes that a data
>> + * block does not exceed the maximum possible size that could fit within the
>> + * ringbuffer. This function provides that basic size check so that the
>> + * assumption is safe.
>> + */
>> +static bool data_check_size(struct prb_data_ring *data_ring, unsigned int size)
>> +{
>> +	struct prb_data_block *db = NULL;
>> +
>> +	/* Writers are not allowed to write data-less records. */
>> +	if (size == 0)
>> +		return false;
>
> I would personally let this decision to the API caller.
>
> The code actually have to support data-less records. They are used
> when the descriptor is reserved but the data block can't get reserved.

Exactly. Data-less records are how the ringbuffer identifies that data
has been lost. If users were allowed to store data-less records, that
destinction is no longer possible (unless I created some extra field in
the descriptor). Does it even make sense for printk to store data-less
records explicitly?

The current printk implementation silently ignores empty messages.

> The above statement might create false feeling that it could not
> happen later in the code. It might lead to bugs in writer code.

Then let me change the statement to describe that data-less records are
used internally by the ringbuffer and cannot be explicitly created by
writers.

> Also reader API users might not expect to get a "valid" data-less
> record.

Readers will never see them. The reader API implementation skips over
data-less records.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
