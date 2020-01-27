Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 399CE14A3B7
	for <lists+kexec@lfdr.de>; Mon, 27 Jan 2020 13:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwypgDIdGzH/fV+GgdjsVK3U6tphj2wOOjVr15NHKD8=; b=ZiQ6PPgPKlTAYg
	VpSos6ZQHnN4xatVN3ORn7pzc77cvvn1N3BoWxF8OEM0goVvTjRot9as3V0CKzm1dbOZ8Z0yUQ4F8
	WZPot8ynMy0JHMx13Fy+XalynhopfKLbC4FkqOsvw3iuKb7x8tr3StzgQIyC19ZWfKJP1HUGVgR6z
	p2CWeewwgU9UlrTNg/6789/aygUHKP3D4RMlXn3XAUHdD3MWk099YlLeytSAJJBAN2zuX7eVZ2gPN
	hEcWG6DkvERe4ajcKtNUijMMvZMM+KCOgg+49Q/o/Mg6JxoSSkrtn+UzOSEF5Vhdehy+RNQE81eXd
	B+hPH0pi49+DaDBttBzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw3OL-0002Z8-Jr; Mon, 27 Jan 2020 12:21:21 +0000
Received: from smtp1.de.adit-jv.com ([93.241.18.167])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw3OE-0002XQ-Er
 for kexec@lists.infradead.org; Mon, 27 Jan 2020 12:21:16 +0000
Received: from localhost (smtp1.de.adit-jv.com [127.0.0.1])
 by smtp1.de.adit-jv.com (Postfix) with ESMTP id 7A5CF3C0594;
 Mon, 27 Jan 2020 13:21:06 +0100 (CET)
Received: from smtp1.de.adit-jv.com ([127.0.0.1])
 by localhost (smtp1.de.adit-jv.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kE-ke1A_4OPT; Mon, 27 Jan 2020 13:21:01 +0100 (CET)
Received: from HI2EXCH01.adit-jv.com (hi2exch01.adit-jv.com [10.72.92.24])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by smtp1.de.adit-jv.com (Postfix) with ESMTPS id 2978E3C00C5;
 Mon, 27 Jan 2020 13:20:43 +0100 (CET)
Received: from lxhi-065.adit-jv.com (10.72.93.66) by HI2EXCH01.adit-jv.com
 (10.72.92.24) with Microsoft SMTP Server (TLS) id 14.3.468.0; Mon, 27 Jan
 2020 13:20:42 +0100
Date: Mon, 27 Jan 2020 13:20:39 +0100
From: Eugeniu Rosca <erosca@de.adit-jv.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 0/3] printk: new ringbuffer implementation
Message-ID: <20200127122039.GA2358@lxhi-065.adit-jv.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-1-john.ogness@linutronix.de>
X-Originating-IP: [10.72.93.66]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_042114_649301_0594BC4D 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Eugeniu Rosca <roscaeugeniu@gmail.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eugeniu Rosca <erosca@de.adit-jv.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi John,

On Thu, Nov 28, 2019 at 02:58:32AM +0106, John Ogness wrote:
> Hello,
> 
> This is a follow-up RFC on the work to re-implement much of the
> core of printk. The threads for the previous RFC versions are
> here[0][1][2][3].
> 
> This RFC includes only the ringbuffer and a test module. This is
> a rewrite of the proposed ringbuffer, now based on the proof of
> concept[4] from Petr Mladek as agreed at the meeting[5] during
> LPC2019 in Lisbon.
> 
> [0] https://lkml.kernel.org/r/20190212143003.48446-1-john.ogness@linutronix.de
> [1] https://lkml.kernel.org/r/20190607162349.18199-1-john.ogness@linutronix.de
> [2] https://lkml.kernel.org/r/20190727013333.11260-1-john.ogness@linutronix.de
> [3] https://lkml.kernel.org/r/20190807222634.1723-1-john.ogness@linutronix.de
> [4] https://lkml.kernel.org/r/20190704103321.10022-1-pmladek@suse.com
> [5] https://lkml.kernel.org/r/87k1acz5rx.fsf@linutronix.de
> 
> John Ogness (3):
>   printk-rb: new printk ringbuffer implementation (writer)
>   printk-rb: new printk ringbuffer implementation (reader)
>   printk-rb: add test module

As a follow-up to the discussion started in [*], I would like to stress
once again that it is extremely convenient to have the context of the
console drivers detached from the printk callers, particularly to
mitigate the issue described in [*].

I gave the test module from this series a try, by running it overnight
on R-Car H3ULCB, and spotted no issues whatsoever. I won't post any
signatures, as this is RFC, but I would be willing to do so for any
upcoming non-RFC series. Looking forward to that!

[*] https://lore.kernel.org/linux-serial/20200120230522.GA23636@lxhi-065.adit-jv.com/

-- 
Best Regards
Eugeniu Rosca

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
