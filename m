Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E2111687E
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 09:44:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uKy/ezyYu+hEP21JsonCQKmtH4YnT2V9+8hHWKm8RTA=; b=bYb3OJx8d4wd8V
	2u38WkF1W1u5b3xEvmjVlmbF1T3aT/0wCgSNIDlcFa80JZhmnHl3LXg8f6Oncx+zVKJzks+7t3tmb
	t0EKaqmP51A2B2xcNHIxwpo38WkZhdkw5Yg0rlBeb8Oy9PKfX7ZuRrBEFKjnYo9i9KZCVLGMydWzR
	Su5RBZyD6D5NOlVieqVDhx8L/EySt8mmZWfLEUR22xlapIL43KVyIV8EOsKG94X8Zyq/JgSKRuCZW
	FGOqueOIZMqX7QYYfM7yy+oDldf4oguM58jU7Y5RSSQjUn2v/IWbGNOVM0WyvLJnZO1co10pSL5R1
	w1rWh9S1AFYT7YoFKdJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieEef-00028d-SB; Mon, 09 Dec 2019 08:44:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieEed-00028K-98
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 08:44:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id x185so6852460pfc.5
 for <kexec@lists.infradead.org>; Mon, 09 Dec 2019 00:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F/iTXjUirb3qLXL3k7S0xJDWbiKE/py2Dc0msDcOD6Y=;
 b=tzxUWqrby/P+AZfMC57Z7Z3WGfEKwBN4zb4cxo+43y65FaZR07nWWw7tB2ox3/a0oX
 tvTsBm5gpegKACO7vkrWFY85oEFqQkGqjg+rs63vq6WMY2XRRzuJCPWVFaxbjhru+BKM
 UNIrZYzmiLqflF2dWDCwgQnRxj8AsCHdA2TToT36GcgHYjghLiFGV9wchGqmldICR/Lc
 zsvcsBiq/P0/Pj3hfDlXDUMiN0iT1dRgwm2AU8utoQiLU9hCMe3LdiQsni8dA1f0trdX
 hl/0106L1n5mY0mEdEgHJfUWxT+3155gC2FEdjO+8fcfWZey+tiF1HXPAhNZCiIdJTq8
 DMbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F/iTXjUirb3qLXL3k7S0xJDWbiKE/py2Dc0msDcOD6Y=;
 b=tphTOr0EXPIy0g3Z5ozd4pBWNlvrdlUV/UjOPTTel7EMw9zAlmRnXdknoRUP8u91wu
 iY6aKzIKJYTv+Ona3RuASCRCtkvi5da+LuHP1bG3G6hMXoSE6A05HyB+/31TPPFjEBoV
 mhxLzB+9ja8imaZzNJP4/ha+srVTApzUwHFsp25WbVb4e9N4c8MjWOA7qshiZQIMBGuN
 pRr7aEV5w9OP2cbUunhlq3clG0EyEb3R6iAokr7rBuq3B/7jVLkRIlRWIRAnmHn4LA1/
 x2FEO9gAChp4/Q6R6jzlIUTVKPqq62gmimSPBOZyQS/hGfJrfpLIPJSc4WCNlHtV88Uq
 1cyw==
X-Gm-Message-State: APjAAAVwC81slorhQ7LdI1Z8/aq37Nw60PU9LNgrljWGUD9R7+qVSE+2
 nBLWP+aETKKXmg1iRzg9Ric=
X-Google-Smtp-Source: APXvYqybX7+sdIIzEOFW9y+rSHNuLGLq4Y2jO1WfkZU+jQSjyqrUnujtXjswtut0UxiAOS7rIR71EQ==
X-Received: by 2002:aa7:989d:: with SMTP id r29mr28989561pfl.142.1575881070580; 
 Mon, 09 Dec 2019 00:44:30 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id o17sm3406988pjq.1.2019.12.09.00.44.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 00:44:29 -0800 (PST)
Date: Mon, 9 Dec 2019 17:44:27 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 3/3] printk-rb: add test module
Message-ID: <20191209084427.GE88619@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-4-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-4-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_004431_320720_5C125367 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
> + * This is a test module that starts "num_online_cpus()" writer threads
> + * that each write data of varying length. They do this as fast as
> + * they can.

Can we also add some IRQ (hard or soft) writers and (if possible) some NMI
writers?

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
