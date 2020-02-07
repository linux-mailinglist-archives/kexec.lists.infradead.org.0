Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB375155328
	for <lists+kexec@lfdr.de>; Fri,  7 Feb 2020 08:44:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4YUH0Q/gyC41iBBOvFBvMBiyiQFnnz2FqZEYgMY/T0=; b=jttob7Zcb9fYrJ
	wqds+nZhzJTaWLgl80ba2HNoa5Jr+FiGaRG/B91+glV23JD8r0i2CcfBJx92FK/oqbNiE11adUaYy
	Uo1W0zlYUDN66A52liWIvuASbP4EODabR1bxEXAxpL+asgsoAhZHx8tt70KT5gm0mHU2Jw6FBeVfx
	WwZdDgkj+j6nKRRnnAvIDOIwP7FxBBdwkY9SRwhVFT26adtCPXSj2Jj5jTvl+j7ZlEvFEcNnsnb1l
	ND9WK21YdQQiRnenJfHzfdpBMvuiD3yuftiZQXM782r4h7e/lZDF7VeHst1QOu1a8cB8Cjaz5fz9A
	fKS6EAqDaUSdceXA7gUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izyIt-0003e2-KD; Fri, 07 Feb 2020 07:43:55 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izyIn-0003dF-LY
 for kexec@lists.infradead.org; Fri, 07 Feb 2020 07:43:50 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1izyIf-00071r-RG; Fri, 07 Feb 2020 08:43:41 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
 <20200206204012.0cbfc941@oasis.local.home>
Date: Fri, 07 Feb 2020 08:43:39 +0100
In-Reply-To: <20200206204012.0cbfc941@oasis.local.home> (Steven Rostedt's
 message of "Thu, 6 Feb 2020 20:40:12 -0500")
Message-ID: <87k14yx2ok.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_234349_843434_25D37B79 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-02-07, Steven Rostedt <rostedt@goodmis.org> wrote:
>> The quick fixup:
>> 
>> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
>> index d0d24ee1d1f4..5ad67ff60cd9 100644
>> --- a/kernel/printk/printk.c
>> +++ b/kernel/printk/printk.c
>> @@ -883,6 +883,7 @@ static int devkmsg_open(struct inode *inode, struct file *file)
>>  	user->record.text_buf_size = sizeof(user->text_buf);
>>  	user->record.dict_buf = &user->dict_buf[0];
>>  	user->record.dict_buf_size = sizeof(user->dict_buf);
>> +	user->record.text_line_count = NULL;
>>  
>>  	logbuf_lock_irq();
>>  	user->seq = prb_first_seq(prb);
>
> FYI, I used your patch set to test out Konstantin's new get-lore-mbox
> script, and then applied them. It locked up on boot up as well, and
> applying this appears to fix it.

Yes, this is a horrible bug. In preparation for my v2 I implemented:

    prb_rec_init_rd()
    prb_rec_init_wr()

as static inline functions to initialize the records. There is a reader
and writer variant because they initialize the records differently:
readers provide buffers, writers request buffers. This eliminates the
manual twiddling with the record struct and ensures that the struct is
always properly initialized.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
