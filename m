Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9171C1073
	for <lists+kexec@lfdr.de>; Fri,  1 May 2020 11:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aVYYZBKCra1BJdeezMxg+Zk3QHIUUxEsrDP5fqzBCvo=; b=kZHn4HQxMtRz66
	R5Ej0NMwmGs95bsGXNfne4hwo02QetLLk359u58n7258uw7jaASTYGN40ge0UXXHXFSL5NKk2XJd5
	VggzOXXrJB6F+VRvgFyzbS/NGwpdvJtzisfDISm2wBUsyNft4AYRMkHo0csm3d6+GJYyxUsIPZFgO
	kF/c18VLaUvWnGVQE2lLw8X/2d1z7YsQbgwVuecQRGVtyiJA83ODI/6L44zCJSjAHd600zDGCi/Fr
	xBJgTHbv+SCyFAlJQq8LwdRdLqHO95fqxzd2TD0H+utp9dlhlI2DDopF2JW8sECKFOO1/VqIkUv9O
	7me/GBlQpUr8FOs11F3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUSA4-0007jA-E5; Fri, 01 May 2020 09:40:48 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUS9z-0007h0-KA
 for kexec@lists.infradead.org; Fri, 01 May 2020 09:40:45 +0000
Received: from [5.158.153.53] (helo=g2noscherz.lab.linutronix.de.)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jUS9k-00038k-Tk; Fri, 01 May 2020 11:40:29 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: [PATCH v2 0/3] printk: replace ringbuffer
Date: Fri,  1 May 2020 11:46:07 +0206
Message-Id: <20200501094010.17694-1-john.ogness@linutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_024043_802480_B8369B72 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 BUG6152_INVALID_DATE_TZ_ABSURD No description available.
 0.6 INVALID_DATE_TZ_ABSURD Invalid Date: header (timezone does not
 exist)
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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

Here is a v2 for the first series to rework the printk subsystem. The
v1 and history are here [0]. This first series only replaces the
existing ringbuffer implementation. No locking is removed. No
semantics/behavior of printk are changed.

The VMCOREINFO is updated. RFC patches for the external tools
crash(8) [1] and makedumpfile(8) [2] have been submitted that allow
the new ringbuffer to be correctly read.

This series is in line with the agreements [3] made at the meeting
during LPC2019 in Lisbon, with 1 exception: support for dictionaries
will not be discontinued [4]. Dictionaries are stored in a separate
buffer so that they cannot interfere with the human-readable buffer.

The list of changes since v1:

printk_ringbuffer
=================
- documentation formatting/wording cleanup
- main memory barrier comments moved from memory accesses to
  memory barriers
- remove all symbol exporting of printk_ringbuffer functions
- add prb_count_lines() for line counting so printk.c can also use
  this functionality
- add prb_read_valid_info() to just read record meta-data
- remove @line_count out of printk_record (there is now an interface
  for line counting)
- to_block(): remove intermediate (char *) typecast
- data_alloc(): use WRITE_ONCE for writing block ID
- data_push_tail(): fix test condition for tail LPOS already pushed
- data_push_tail(): continue loop rather than try cmpxchg() if
  tail LPOS was pushed
- data_push_tail(): add memory barrier before pushing tail LPOS so
  readers can recognize if data has expired while reading the
  descriptor
- data_make_reusable(): added memory barrier and logic to protect
  against invalid read of block ID
- data_alloc(): add memory barrier to guarantee the tail ID is stored
  before updating the block ID
- desc_reserve(): add memory barrier before checking ID to make sure
  the head ID is read before the tail ID
- desc_reserve(): move memory barrier to before the head ID is pushed
  to guarantee the tail ID is stored before the head ID

printk.c
========
- remove static syslog_record/console_record (use dynamic allocation
  and in-place buffer manipulation instead)
- reduce expected average message size from 64 to 32
- add printk_record initializers to simplify reader and writer code
- fix wrong return value when log_store() truncates
- add full VMCOREINFO needed by makedumpfile(8)
- change record_print_text() to add prefix data to the buffer
  in-place instead of requiring a 2nd buffer
- add helper to calculate text size when prefix added:
  get_record_text_size() (used together with prb_count_lines() or
  prb_read_valid_info() to get full text size, rather than abusing
  record_print_text() for this purpose)
- syslog_print_all(): fix missing break if copy_to_user() failed
- moved "messages dropped" printing to call_console_drivers()

John Ogness

[0] https://lkml.kernel.org/r/20200128161948.8524-1-john.ogness@linutronix.de
[1] https://www.redhat.com/archives/crash-utility/2020-April/msg00080.html
[2] https://lists.infradead.org/pipermail/kexec/2020-April/024906.html
[3] https://lkml.kernel.org/r/87k1acz5rx.fsf@linutronix.de
[4] https://lkml.kernel.org/r/20191007120134.ciywr3wale4gxa6v@pathway.suse.cz

John Ogness (3):
  crash: add VMCOREINFO macro for anonymous structs
  printk: add lockless buffer
  printk: use the lockless ringbuffer

 include/linux/crash_core.h        |    3 +
 include/linux/kmsg_dump.h         |    2 -
 kernel/printk/Makefile            |    1 +
 kernel/printk/printk.c            |  938 +++++++++--------
 kernel/printk/printk_ringbuffer.c | 1626 +++++++++++++++++++++++++++++
 kernel/printk/printk_ringbuffer.h |  369 +++++++
 6 files changed, 2491 insertions(+), 448 deletions(-)
 create mode 100644 kernel/printk/printk_ringbuffer.c
 create mode 100644 kernel/printk/printk_ringbuffer.h

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
