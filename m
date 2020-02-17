Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A90D1610CE
	for <lists+kexec@lfdr.de>; Mon, 17 Feb 2020 12:13:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcoYabgCEMUtOhOQ5Y5En1A/jY9BEtTMPALEn2UNmZM=; b=ns/P9eecAkTllM
	nvB44wuHVyT7A93EC9Nj6UjdIH2Wnf0n3njPBaNNRNaal3v5/L6Zg/7o5AQTxkeqNXc+c6Lz8IInw
	DpLERotCAA+TOQhrfcWpfv1ph9UWSipDaNUuEGo/4jyWajB4BAhaEsliIDFQdOXJTsw0CMHU44LNC
	uxJ+E3OGIlwn/U2k1aEnwuwGsNLBmmprqqEsuLzVhvepGXckM9ch1DHajWsnV+mtF7tR4mg7pv/Tr
	nh4fTrhXIl8tjlCsQDbANnh3/EHTenFvmx+EBcmSoizW4cBKeIHrNaS3NgP15O5OcuDqr3sxAzdSa
	UdjmTyKWQZ9gOp5PJNmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eLQ-0005VE-LC; Mon, 17 Feb 2020 11:13:44 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eLK-0005UB-0L
 for kexec@lists.infradead.org; Mon, 17 Feb 2020 11:13:39 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j3eL9-0001PU-Ar; Mon, 17 Feb 2020 12:13:27 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
 <20200214155639.m5yp3rd2t3vdzfj7@pathway.suse.cz>
Date: Mon, 17 Feb 2020 12:13:25 +0100
In-Reply-To: <20200214155639.m5yp3rd2t3vdzfj7@pathway.suse.cz> (Petr Mladek's
 message of "Fri, 14 Feb 2020 16:56:39 +0100")
Message-ID: <87blpxbh62.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031338_188384_3CE5A0EA 
X-CRM114-Status: GOOD (  16.82  )
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-02-14, Petr Mladek <pmladek@suse.com> wrote:
>> I oversaw that devkmsg_open() setup a printk_record and so I did not
>> see to add the extra NULL initialization of text_line_count. There
>> should be be an initializer function/macro to avoid this danger.
>> 
>> John Ogness
>> 
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
>
> The NULL pointer hidden in the structure also complicates the code
> reading. It is less obvious when the same function is called
> only to get the size/count and when real data.

OK.

> I played with it and created extra function to get this information.
>
> In addition, I had problems to follow the code in
> record_print_text_inline(). So I tried to reuse the new function
> and the existing record_printk_text() there.
>
> Please, find below a patch that I ended with. I booted a system
> with this patch. But I guess that I actually did not use the
> record_print_text_inline(). So, it might be buggy.

Yes, there are several bugs. But I see where you want to go with this:

- introduce prb_count_lines() to handle line counting

- introduce prb_read_valid_info() for only reading meta-data and getting
  the line count

- also use prb_count_lines() internally

I will include these changes in v2. I will still introduce the static
inlines to initialize records because readers and writers do it
differently.

Thanks.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
