Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42BF14BD95
	for <lists+kexec@lfdr.de>; Tue, 28 Jan 2020 17:20:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFAwYlCTlFocLHmBdoRvVWUzdrZad94Wn+Lmu21EZys=; b=S536wXUsHUPG4F
	wU9I85ZZ40654luJzycvZph74yczk8YiELQVrbvu012xU4kxXqvE3kg+0Nb1X1omqa3KlZ1RBwAmI
	XaFFZqzDmJ25Y61zJOpK8ZCkIGuSoNZbC+h1FF38S6YVhuIJ7Nm9uXo/Ywu0XYnZP8i8da0EB7F8p
	5C4btI5wrPxjPD2qiW7S8vhK5i5X8Z9P2szEwo4k00TLWbK5uczWCfD6khGKyTxE15Hb/LKCWVz7U
	Y/lmOBeV4nIjiAIJFs8cXhbZ09WY+RDl8O07SQGOcXCTA08TAwxafAADSOQhM9EWwJLt9xcJy1D5q
	SKzDF2ibO7A1JlzTSOcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwTbC-0006F6-3n; Tue, 28 Jan 2020 16:20:22 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwTb5-0006EP-L5
 for kexec@lists.infradead.org; Tue, 28 Jan 2020 16:20:17 +0000
Received: from [5.158.153.53] (helo=g2noscherz.lab.linutronix.de.)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1iwTap-0001xK-7S; Tue, 28 Jan 2020 17:19:59 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: [PATCH 0/2] printk: replace ringbuffer
Date: Tue, 28 Jan 2020 17:25:46 +0106
Message-Id: <20200128161948.8524-1-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_082015_832454_72604387 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
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

Hello,

After several RFC series [0][1][2][3][4], here is the first set of
patches to rework the printk subsystem. This first set of patches
only replace the existing ringbuffer implementation. No locking is
removed. No semantics/behavior of printk are changed.

The VMCOREINFO is updated, which will require changes to the
external crash [5] tool. I will be preparing a patch to add support
for the new VMCOREINFO.

This series is in line with the agreements [6] made at the meeting
during LPC2019 in Lisbon, with 1 exception: support for dictionaries
will _not_ be discontinued [7]. Dictionaries are stored in a separate
buffer so that they cannot interfere with the human-readable buffer.

John Ogness

[0] https://lkml.kernel.org/r/20190212143003.48446-1-john.ogness@linutronix.de
[1] https://lkml.kernel.org/r/20190607162349.18199-1-john.ogness@linutronix.de
[2] https://lkml.kernel.org/r/20190727013333.11260-1-john.ogness@linutronix.de
[3] https://lkml.kernel.org/r/20190807222634.1723-1-john.ogness@linutronix.de
[4] https://lkml.kernel.org/r/20191128015235.12940-1-john.ogness@linutronix.de
[5] https://github.com/crash-utility/crash
[6] https://lkml.kernel.org/r/87k1acz5rx.fsf@linutronix.de
[7] https://lkml.kernel.org/r/20191007120134.ciywr3wale4gxa6v@pathway.suse.cz

John Ogness (2):
  printk: add lockless buffer
  printk: use the lockless ringbuffer

 include/linux/kmsg_dump.h         |    2 -
 kernel/printk/Makefile            |    1 +
 kernel/printk/printk.c            |  836 +++++++++---------
 kernel/printk/printk_ringbuffer.c | 1370 +++++++++++++++++++++++++++++
 kernel/printk/printk_ringbuffer.h |  328 +++++++
 5 files changed, 2114 insertions(+), 423 deletions(-)
 create mode 100644 kernel/printk/printk_ringbuffer.c
 create mode 100644 kernel/printk/printk_ringbuffer.h

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
