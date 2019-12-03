Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4880610FFFF
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 15:18:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HPnC1LHBpndRhQjS7sctcne2YANfAvwHjGE1xQGd0YM=; b=LmWqfBOxfT5lnt
	wga+tgyJIi8sbzh+dm986f9MJeiAJEZGrjHo10uXdOCG2zJs5zpnfzqN57kkbRiHeWOt17DHpx+uQ
	WTn6rGO+7aJTB36W/jZgsJ9SUK6l9Krl27sbkST4uH87D4AI7my2qTS5EFOZDw0tstT3WBCZtqWkq
	0l7+I2jyBVgYeVf0NWSQ42v/MpKiDjhzYRbG3Bs9F/5lL8xHMmYwo6iGCQWTMem6EK/SnLQdooJeX
	k4mg9niAErljFqfB3QzNGhNI3o22UtPp3VaXAjjzzp/l0F33631YIG2GXSZDIsa0w5Y28GHq8kmkg
	wVA098ZoG0VDQHdwYAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic90s-0005KU-J0; Tue, 03 Dec 2019 14:18:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic90p-0005Jc-5z
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 14:18:48 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE35420684;
 Tue,  3 Dec 2019 14:18:44 +0000 (UTC)
Date: Tue, 3 Dec 2019 09:18:43 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191203091843.678461e4@gandalf.local.home>
In-Reply-To: <20191203011721.GH93017@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
 <20191202155955.meawljmduiciw5t2@pathway.suse.cz>
 <87sgm2fzuh.fsf@linutronix.de> <20191203011721.GH93017@google.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_061847_240337_31375E5F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Petr Mladek <pmladek@suse.com>, John Ogness <john.ogness@linutronix.de>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019 10:17:21 +0900
Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:

> > > BTW: If I am counting correctly. The ABA problem would happen when
> > > exactly 2^30 (1G) messages is written in the mean time.  
> > 
> > All the ringbuffer code assumes that the use of index numbers handles
> > the ABA problem (i.e. there must not be 1 billion printk's within an
> > NMI). If we want to support 1 billion+ printk's within an NMI, then
> > perhaps the index number should be increased. For 64-bit systems it
> > would be no problem to go to 62 bits. For 32-bit systems, I don't know
> > how well the 64-bit atomic operations are supported.  
> 
> ftrace dumps from NMI (DUMP_ALL type ftrace_dump_on_oops on a $BIG
> machine)? 1G seems large enough, but who knows.

ftrace dump from NMI is the most likely case to hit this, but when that
happens, you are in debugging mode, and the system usually becomes
unreliable at this moment. I agree with Petr, that we should not
complicate the code more to handle this theoretical condition.

-- Steve

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
