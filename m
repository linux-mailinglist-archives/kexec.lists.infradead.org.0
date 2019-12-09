Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5485F11694A
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 10:28:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNMkGKxnbFgZngUVumyCG/HvGKmAiZ3XncW799oJeV4=; b=ejmcynMTL+xteD
	avnxX0FN7tchlo55+z/10cze4xZrM+qVKGxdv/wExmiGvJGPOGk2ZRdwUlDzDXVLSgGwk7fbKqxNP
	WWS1NDMJaJI5pajxwyzq7k2UUWNsf7+ZUlx0gJL7yDvoTOaj7Jc5pTr1GdKlhQH8S7CGHl1jlBPDW
	TD8uCBwQMbL5sReMNs3WmtaNmDAN+rmq7VH2biI0+biFBoM5HgOdB5sHwJ3e0nbYtXu85G7KdL/Ft
	ICiTjVUrV5aJItd98A4ALJGpJU0nAINj8IVuVDvhvU7Nw0cPmhsCDTMLjeai7iVV4iU7Z/Z3bT//x
	EtERZmJWmq6ZtZLuEuXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFKk-0004Dy-JS; Mon, 09 Dec 2019 09:28:02 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFKh-0004DO-PY
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 09:28:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id ep17so5629961pjb.4
 for <kexec@lists.infradead.org>; Mon, 09 Dec 2019 01:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rHHQKr0i75mqHj3OhmeZ0+BGxc8hlLVrwIhDe+URYcg=;
 b=ly7daxZy/UDhQUWwKvd7jhbdYl8PZTrdBXVYPA/LGkBGar/kbEow0qUzkwwPARo4Gp
 Pvi91wjoK/CMmeOmdX/bE3oY+FfjVhO9mIHP9k0jd2rXStODOBA3mq+t9xUl+YYlPx+v
 amDe9j28QSKXWUnuP6wZscHm8qwLTAAt3NOSaCzEXgQJP1JTZpKMbFl7/ucc4Vlh+8tT
 N9WIta0wOyWg42uMfurq7gTFg4JTqv5vaIZPlmWCLDK5lGtiYf7VxhCpg4Sebwu8VB/1
 G3qasHMBSSDgwu0KiimykAl6YPD2OfOiyqzH3TT26Ji/wNnzGYPmDxZkIF77oo3N7xRG
 sExQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rHHQKr0i75mqHj3OhmeZ0+BGxc8hlLVrwIhDe+URYcg=;
 b=DjuLBO0Ts6bqhoH0BwayLpYDZVjtNlFu6dNp2Msj/CR8VX6798iLHs7lDz2GGI+qG4
 mvyTAGz4sryCFp2mRopnD5DUcGeaVBwoJjyscRo47xiYFoVSmuE524Ta4WaKfXU6Ndea
 O+3Z9c5D6lR3fQ0SWR06UDfXMpM1CZpW3miP1VmR3VtYFYOijDQconAXM8UP9vJBQLdm
 +lmnJpaEF0KSuvq64o0mM4uuZ3tN+km/khhZFqk07Yv6I1xj4dmJpO9JBHRvhf2BYA5C
 gqiBckkJmQii/Zj9SSLKJCtD8He1C4twlL5lRJ5dT8xXBIhQXEGL7gLAjMEvHXYlnV7g
 XoFg==
X-Gm-Message-State: APjAAAVYpNQbUwnQQv5HZ2btSoG7+XS4ZyfUIkLjqy3ayGgpWnvEYlq/
 smTbdyKN6QEWL+tiv+aon0M=
X-Google-Smtp-Source: APXvYqzCGd3qSvmAfe3R0sLqnFB2USWEhpUozXO8ZhIWbNaRxyD/nWRNvCzlw2bZp99pLhdszeysGQ==
X-Received: by 2002:a17:90a:9f04:: with SMTP id
 n4mr31320455pjp.76.1575883679106; 
 Mon, 09 Dec 2019 01:27:59 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id k13sm16545287pfp.48.2019.12.09.01.27.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 01:27:58 -0800 (PST)
Date: Mon, 9 Dec 2019 18:27:56 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191209092756.GH88619@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-2-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_012759_854631_EDD312D1 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
> + * Sample reader code::
> + *
> + *	struct printk_info info;
> + *	char text_buf[32];
> + *	char dict_buf[32];
> + *	u64 next_seq = 0;
> + *	struct printk_record r = {
> + *		.info		= &info,
> + *		.text_buf	= &text_buf[0],
> + *		.dict_buf	= &dict_buf[0],
> + *		.text_buf_size	= sizeof(text_buf),
> + *		.dict_buf_size	= sizeof(dict_buf),
> + *	};
> + *
> + *	while (prb_read_valid(&rb, next_seq, &r)) {
> + *		if (info.seq != next_seq)
> + *			pr_warn("lost %llu records\n", info.seq - next_seq);
> + *
> + *		if (info.text_len > r.text_buf_size) {
> + *			pr_warn("record %llu text truncated\n", info.seq);
> + *			text_buf[sizeof(text_buf) - 1] = 0;
> + *		}
> + *
> + *		if (info.dict_len > r.dict_buf_size) {
> + *			pr_warn("record %llu dict truncated\n", info.seq);
> + *			dict_buf[sizeof(dict_buf) - 1] = 0;
> + *		}
> + *
> + *		pr_info("%llu: %llu: %s;%s\n", info.seq, info.ts_nsec,
> + *			&text_buf[0], info.dict_len ? &dict_buf[0] : "");
> + *
> + *		next_seq = info.seq + 1;
> + *	}
> + */

Will this loop ever end? :)

pr_info() adds data to ringbuffer, which prb_read_valid() reads, so pr_info()
can add more data, which prb_read_valid() will read, so pr_info()...

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
