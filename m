Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 119E8153508
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 17:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/7m73OoN3ba608QmjFikZ+qyDMInSkhg7uOnatmamXY=; b=gPMaRANWC38y+Z
	HkdUHgexjIFyuCKNGqcgZHfFy+no2/wHs0Vaawk24TnjwxxiJjt7O0FiFWrI0ZFx7TVh93St+0gf3
	slLr7eDmlRC1Xb8z188DRglXhe0gElNdLj1OJWDEA3HKb6Yz+ShzhUL15iOPL47pNnQ/DMG29ozsa
	SmSGEHuECS9d2ceO4vCNFtBzQtK4gna5LoSG/5e2ykey59l6+s3QCl7qFiK4hshEtvqQAVtl9CY/E
	KdH2fpo+U0wc3gqsf0dWyWZp7/e7EVaMh2EI/ssluU40wJ8XlUQBG9LMkJ+kcof25Ru+w6WPknjly
	yvX3oa1lFMh4J5L/B98A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izNHp-0005WJ-I7; Wed, 05 Feb 2020 16:12:21 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izNHl-0005VZ-T1
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 16:12:19 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1izNHi-00052E-DZ; Wed, 05 Feb 2020 17:12:14 +0100
From: John Ogness <john.ogness@linutronix.de>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <cd7509a5-48fd-e652-90f4-1e0fe2311134@redhat.com>
Date: Wed, 05 Feb 2020 17:12:12 +0100
In-Reply-To: <cd7509a5-48fd-e652-90f4-1e0fe2311134@redhat.com>
 (lijiang@redhat.com's message of "Wed, 5 Feb 2020 18:19:02 +0800")
Message-ID: <87sgjp9foj.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_081218_081623_D34C5171 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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

On 2020-02-05, lijiang <lijiang@redhat.com> wrote:
> Do you have any suggestions about the size of CONFIG_LOG_* and
> CONFIG_PRINTK_* options by default?

The new printk implementation consumes more than double the memory that
the current printk implementation requires. This is because dictionaries
and meta-data are now stored separately.

If the old defaults (LOG_BUF_SHIFT=17 LOG_CPU_MAX_BUF_SHIFT=12) were
chosen because they are maximally acceptable defaults, then the defaults
should be reduced by 1 so that the final size is "similar" to the
current implementation.

If instead the defaults are left as-is, a machine with less than 64 CPUs
will reserve 336KiB for printk information (128KiB text, 128KiB
dictionary, 80KiB meta-data).

It might also be desirable to reduce the dictionary size (maybe 1/4 the
size of text?). However, since the new printk implementation allows for
non-intrusive dictionaries, we might see their usage increase and start
to be as large as the messages themselves.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
