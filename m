Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAEE15BB2D
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 10:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QetqDgt4Em4c4XhzuQfWOerIl3XPCMbykw3UH059XSY=; b=Yg8OoF2/AMI90K
	KhLXrrVV26wRUgYqVNN+JIep9816UZAQSt696t/924V7Jnz+Pd/Yh0Cpqgyx4Vc+NQx954g/TV6lb
	nJz7U3S4Tq0fwx1Y2kHKX+Yt0oA5YM4KlEwN/o4Z5uL6Zi4xYfzEiNocldByP91RweHNt5Rx+9n3c
	LQl4lJ/7gBtBNpZbr2g9G0HIQTlgbRFv0AUWAOxqHaiBfQhmSpCsQjC0ebwyK29K9pIDv5u2lAHV1
	luoNYi35m0VexOyjmO/MBkhSmv0jzarhqSOy/YYI2et13FWSQuhZc5cjUSulRuCy5kIE096OiFByS
	jOcYhQ7jjqerdKtLBVrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ATf-0000i1-3T; Thu, 13 Feb 2020 09:08:07 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ATZ-0000hI-C2
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 09:08:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id k29so2735018pfp.13
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 01:08:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iZ4ALMIQ3+TkLwExvTpCpZXbkNrLF9yBShKjZ2USbmI=;
 b=VjrhEKjg/eQQL39kqbYW4sTUO7Dkc4Lwr+Txc2E6nE9o78H+RPowJ5/THyptvadMzN
 hLmpo02dDGTpF6sjQQJCR2DbqfEUaBtJFqewYeZ3bOzekqvoa8svO7s4rAaeyosodBNM
 oA9Mdq6PTJdrAlcBdB1RVTAyyN84Z/zRhOv8UAQcIIYYQxhdAAz7/fyYYd+KCF6/erkP
 aGxry2onFhnMIN50g04l8s9InEvOyUGkLkBjg5nlXl/9eSq4LnmogJC9hkwR33KFDyB3
 8tuhDKc4Ar5YYgl/hvbYN+sgB1JNdWqsitexCsumRFuDSPkNs2LHsSTNqGhrtEvalu4v
 SlSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iZ4ALMIQ3+TkLwExvTpCpZXbkNrLF9yBShKjZ2USbmI=;
 b=JVQPMCyKAuBFWe3b4kYYD4IEYO7Hq2UK2u/eJMFeUQ/r39jxzRnrW5Lbwffie32iXP
 z4gBRaVCNEnXFOsxsXr9ski28fWXnWyWJxI1b+z/P0gd4AkZ3DiFtAmEt/X8hcVLuPBU
 1uVkROk6puMrXEkW6G6zahuuXhbn2Beq83kn32ui60MJoN0PXAUZ3FT/eNgUEWcL5yXN
 wlYQBvWJMw3psy3YKdPf+yPAijjy5XomUWvj4iuE2LjF6kr/uztDVQg3ZYsdZ4u9BvZS
 /I8DjVCJK1TlX1JrbLFN0ipFPG4XE7wYYt7Jq+oQkTEXlAitpgfDO7PchEkSQL0RM/Xj
 hLsA==
X-Gm-Message-State: APjAAAWcJ0nFU6m+rzbsNUlS1IMRABu2+cZSFoHYp/uIFc95yBWx0IsU
 QPcncpPAHPIjIM08TKavlXc=
X-Google-Smtp-Source: APXvYqzHEVTHskgrdP+FV0zdgL5k5qeBTwi8pTz/gKF/KF6N5daLmf/6qact8sPmkxlTbcKlT6X8vg==
X-Received: by 2002:a62:1a97:: with SMTP id
 a145mr16870284pfa.244.1581584880034; 
 Thu, 13 Feb 2020 01:08:00 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id k1sm2259597pfg.66.2020.02.13.01.07.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 01:07:58 -0800 (PST)
Date: Thu, 13 Feb 2020 18:07:57 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200213090757.GA36551@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128161948.8524-3-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_010801_437160_2EE983BE 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/01/28 17:25), John Ogness wrote:
[..]
> -	while (user->seq == log_next_seq) {
> +	if (!prb_read_valid(prb, user->seq, r)) {
>  		if (file->f_flags & O_NONBLOCK) {
>  			ret = -EAGAIN;
>  			logbuf_unlock_irq();
> @@ -890,30 +758,26 @@ static ssize_t devkmsg_read(struct file *file, char __user *buf,
>  
>  		logbuf_unlock_irq();
>  		ret = wait_event_interruptible(log_wait,
> -					       user->seq != log_next_seq);
> +					prb_read_valid(prb, user->seq, r));
>  		if (ret)
>  			goto out;
>  		logbuf_lock_irq();
>  	}
>  
> -	if (user->seq < log_first_seq) {
> -		/* our last seen message is gone, return error and reset */
> -		user->idx = log_first_idx;
> -		user->seq = log_first_seq;
> +	if (user->seq < r->info->seq) {
> +		/* the expected message is gone, return error and reset */
> +		user->seq = r->info->seq;
>  		ret = -EPIPE;
>  		logbuf_unlock_irq();
>  		goto out;
>  	}

Sorry, why doesn't this do something like

	if (user->seq < prb_first_seq(prb)) {
		/* the expected message is gone, return error and reset */
		user->seq = prb_first_seq(prb);
		ret = -EPIPE;
		...
	}

?

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
