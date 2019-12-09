Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C234911696E
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 10:35:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OW4v/3+Edg8fSAwzBdsdb+R96naP28utqsdbuRaF1Mo=; b=NYXjyBh3BUHG2Q
	GvgTdyQY4xVjjTOZZJpWnK/P7XbdjSAj+fqV7z3IxfAOaSH7cV3ilP92qCbu56SWHOEDAbVEEJaVM
	lwzeEpx5HJja7YUQ7BaGoYx9ATIKrEsdWS6fwxOtMvR30NOdnIvqussSmyy77LWpvFOeNHNC7xSB5
	b3GGEuzw7HWaqtVlzC4Hwz754KkDlCb8ZFOfFSKDP+uXvE3ZLoYcLEDLLBRov+iNRZ6wn3isL5DBB
	aBUQ4tqANJVLcn6RJkWai/bDY9RX9sxJSZKA2zi1+sr/qg+QfdF4IDa8SfIZD/d2QQpxv0owoC9sx
	cpZ8IWr+DmKYm/UdWVLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFSN-0001cj-Mg; Mon, 09 Dec 2019 09:35:55 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFRc-0008Kb-KE
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 09:35:10 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1ieFRV-0005eV-BF; Mon, 09 Dec 2019 10:35:01 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191209092756.GH88619@google.com>
Date: Mon, 09 Dec 2019 10:34:59 +0100
In-Reply-To: <20191209092756.GH88619@google.com> (Sergey Senozhatsky's message
 of "Mon, 9 Dec 2019 18:27:56 +0900")
Message-ID: <87muc1zvss.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013508_959006_FC36FF74 
X-CRM114-Status: UNSURE (   8.53  )
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
 Petr Mladek <pmladek@suse.com>, Peter Zijlstra <peterz@infradead.org>,
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

On 2019-12-09, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
>> + * Sample reader code::
>> + *
>> + *	struct printk_info info;
>> + *	char text_buf[32];
>> + *	char dict_buf[32];
>> + *	u64 next_seq = 0;
>> + *	struct printk_record r = {
>> + *		.info		= &info,
>> + *		.text_buf	= &text_buf[0],
>> + *		.dict_buf	= &dict_buf[0],
>> + *		.text_buf_size	= sizeof(text_buf),
>> + *		.dict_buf_size	= sizeof(dict_buf),
>> + *	};
>> + *
>> + *	while (prb_read_valid(&rb, next_seq, &r)) {
>> + *		if (info.seq != next_seq)
>> + *			pr_warn("lost %llu records\n", info.seq - next_seq);
>> + *
>> + *		if (info.text_len > r.text_buf_size) {
>> + *			pr_warn("record %llu text truncated\n", info.seq);
>> + *			text_buf[sizeof(text_buf) - 1] = 0;
>> + *		}
>> + *
>> + *		if (info.dict_len > r.dict_buf_size) {
>> + *			pr_warn("record %llu dict truncated\n", info.seq);
>> + *			dict_buf[sizeof(dict_buf) - 1] = 0;
>> + *		}
>> + *
>> + *		pr_info("%llu: %llu: %s;%s\n", info.seq, info.ts_nsec,
>> + *			&text_buf[0], info.dict_len ? &dict_buf[0] : "");
>> + *
>> + *		next_seq = info.seq + 1;
>> + *	}
>> + */
>
> Will this loop ever end? :)
>
> pr_info() adds data to ringbuffer, which prb_read_valid() reads, so
> pr_info() can add more data, which prb_read_valid() will read, so
> pr_info()...

The sample code is assuming that @rb is not the same ringbuffer used by
kernel/printk/printk.c. (For example, the test module is doing that to
stress test the ringbuffer code without actually affecting printk.) I
can add a sentence to clarify that.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
