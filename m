Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A958112C92
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 14:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7KVpGbN/EnsNlRr0sJ2D4gOxwCSBcXIYE4ZZI3GSmc=; b=CeqBJ91pc9igiw
	s1OVoab35/bP0jdVROhMj2nlUEY/Lj8HQuQVVSzYFbFddy/Mr0FGkGoDlbckjorUZaQePdsr3vXS2
	bFoIuLIK/hfXLL1/0WEFvNMAV+sOIEhqfmSBFMUAR6UjLjAFzkb/O042XJG/mDKzRAkN41YgNxYfp
	64aaK9CcTeihv3w6ut1pNSadSDnpWyysv92phOqxjwgrNY4gn8y71r0PCADVRu/pJk+aluk24Lg+S
	u3aZ3guG93dI/r7HBBeQXmqzs5XfJs/lGX8qzEb5h2FZvxZ1LeGCVdTSsJjjVZb1i2KLl+pXvxOo/
	sAdPYdtMGDCd493WgW7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icUiF-0007Ip-KI; Wed, 04 Dec 2019 13:29:03 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icUiB-0007F6-2j
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 13:29:00 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1icUi2-0000ZT-Cy; Wed, 04 Dec 2019 14:28:50 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [RFC PATCH v5 2/3] printk-rb: new printk ringbuffer
 implementation (reader)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-3-john.ogness@linutronix.de>
 <20191203120622.zux33do54rmjafns@pathway.suse.cz>
 <87pnh5bjz4.fsf@linutronix.de>
 <20191204125450.ob5b7xi3gevor4qz@pathway.suse.cz>
Date: Wed, 04 Dec 2019 14:28:48 +0100
In-Reply-To: <20191204125450.ob5b7xi3gevor4qz@pathway.suse.cz> (Petr Mladek's
 message of "Wed, 4 Dec 2019 13:54:50 +0100")
Message-ID: <87a788fcdr.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_052859_270486_0F343DB4 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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

On 2019-12-04, Petr Mladek <pmladek@suse.com> wrote:
>> +	} else if ((DATA_WRAPS(data_ring, blk_lpos->begin) + 1 ==
>> +		    DATA_WRAPS(data_ring, blk_lpos->next)) ||
>> +		   ((DATA_WRAPS(data_ring, blk_lpos->begin) ==
>> +		     DATA_WRAPS(data_ring, -1UL)) &&
>> +		    (DATA_WRAPS(data_ring, blk_lpos->next) == 0))) {
>
> I wonder if the following might be easier to understand even for
> people like me ;-)
>
> 	} else if (DATA_WRAPS(data_ring, blk_lpos->begin + DATA_SIZE(data_ring)) ==
> 		    DATA_WRAPS(data_ring, blk_lpos->next)) {

Yes, this is clear and covers both cases. Thanks.

John

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
