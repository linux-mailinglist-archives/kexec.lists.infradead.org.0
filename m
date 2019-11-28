Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 416B810C1EF
	for <lists+kexec@lfdr.de>; Thu, 28 Nov 2019 02:53:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CnqyukXpq5MT4TZTajBqt/Z/g9+YykQ3HmhzlF1pkdc=; b=p6w1rZMjpJB+O0
	c58KD/ymJCQna1lz51r8lINRWUx3isiR8eUJoZBaXb8O6ZGBnuol24M382HxF7eKiCiCORuP5Vzj9
	1dZAF7T9YEFWymAuCcJfXMM08JeY9o9ATw9Yh6ubh/i3V22K3jr8jU9lpPfG2CqN8kLd9pfaMaVmT
	BGnexgXvv6cI7X34tIoFRXeeO4Gys293zfAmzbW11GkpdDGBTfN4l8kk2F1BdDipXRp0IkhCnlJBZ
	fnYyOPXIPvEzbIfMVLBNz7w3TBxVk7tt1kIQ/rOqgj6x6gpQQteIxC+QLIe+J8IVdLVlWZ4ue6Z69
	ciWbwW4jzoWnrrT68uXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia90D-0004V1-IS; Thu, 28 Nov 2019 01:53:53 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia905-0004SR-K6
 for kexec@lists.infradead.org; Thu, 28 Nov 2019 01:53:47 +0000
Received: from [5.158.153.53] (helo=g2noscherz.lab.linutronix.de.)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1ia8zI-00083b-6R; Thu, 28 Nov 2019 02:52:57 +0100
From: John Ogness <john.ogness@linutronix.de>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH v5 0/3] printk: new ringbuffer implementation
Date: Thu, 28 Nov 2019 02:58:32 +0106
Message-Id: <20191128015235.12940-1-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_175345_807028_4B3BD989 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
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
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello,

This is a follow-up RFC on the work to re-implement much of the
core of printk. The threads for the previous RFC versions are
here[0][1][2][3].

This RFC includes only the ringbuffer and a test module. This is
a rewrite of the proposed ringbuffer, now based on the proof of
concept[4] from Petr Mladek as agreed at the meeting[5] during
LPC2019 in Lisbon.

The internal structure has been reworked such that the printk
strings are in their own array, each separated by a 32-bit
integer.

A 2nd array contains the dictionary strings (also with each
separated by a 32-bit integer).

A 3rd array is made up of descriptors that contain all the
meta-data for each printk record (sequence number, timestamp,
loglevel, caller, etc.) as well as pointers into the other data
arrays for the text and dictionary data.

The writer interface is somewhat similar to v4, but the reader
interface has changed significantly. Rather than using an
iterator object, readers just specify the sequence number they
want to read. In effect, the sequence number acts as the
iterator.

I have been communicating with Petr the last couple months to
make sure this implementation fits his expectations. This RFC is
mainly to get some feedback from anyone else that may see
something that Petr and I have missed.

This series also includes my test module. On a 16-core ARM64
test machine, the module runs without any errors. I am seeing
the 15 writing cores each writing about 34500 records per
second, while the 1 reading core misses only about 15% of the
total records.

John Ogness

[0] https://lkml.kernel.org/r/20190212143003.48446-1-john.ogness@linutronix.de
[1] https://lkml.kernel.org/r/20190607162349.18199-1-john.ogness@linutronix.de
[2] https://lkml.kernel.org/r/20190727013333.11260-1-john.ogness@linutronix.de
[3] https://lkml.kernel.org/r/20190807222634.1723-1-john.ogness@linutronix.de
[4] https://lkml.kernel.org/r/20190704103321.10022-1-pmladek@suse.com
[5] https://lkml.kernel.org/r/87k1acz5rx.fsf@linutronix.de

John Ogness (3):
  printk-rb: new printk ringbuffer implementation (writer)
  printk-rb: new printk ringbuffer implementation (reader)
  printk-rb: add test module

 kernel/printk/Makefile            |   3 +
 kernel/printk/printk_ringbuffer.c | 910 ++++++++++++++++++++++++++++++
 kernel/printk/printk_ringbuffer.h | 249 ++++++++
 kernel/printk/test_prb.c          | 347 ++++++++++++
 4 files changed, 1509 insertions(+)
 create mode 100644 kernel/printk/printk_ringbuffer.c
 create mode 100644 kernel/printk/printk_ringbuffer.h
 create mode 100644 kernel/printk/test_prb.c

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
