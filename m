Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 655CB15348C
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 16:48:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eal+ohHa+CtZV/kYjqktPqtXCmduxG78bhDwIvJB61A=; b=K/1B1ndR0vKsZe
	BEihzIs0KEp6mEEvwmbRzBZq3guD06iU6KhVMl3V+h3CUizBz3aVkCYU2UXJpXIpRcq2b92+JfTWK
	GG/+PCnkq3hlCam2C4QffV1xo9zhGpksFKLrrQGxLKXdwZ8l5BiQgpH6dBbFZ04fEMFa8Z0pYl69e
	VpD2faQ1pTGggy+Aff1m6U1gagvozXG6oovZ0JujmF0osGWwoWXmie3PzLsIbQXzR3azsdk8sP/1e
	u59k6jlTirk8Wnsc0/qu0rewtO4hpGJ+acCyPBaWGyf1bNiXZQLOOGDYiptBeoHH0wMRM0h9mo2eq
	KZjtQ7tJ15KrJuBwcr8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izMuy-0004hD-QJ; Wed, 05 Feb 2020 15:48:44 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izMuv-0004ge-Kk
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 15:48:42 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1izMus-0004bD-Iv; Wed, 05 Feb 2020 16:48:38 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
Date: Wed, 05 Feb 2020 16:48:32 +0100
In-Reply-To: <20200205110522.GA456@jagdpanzerIV.localdomain> (Sergey
 Senozhatsky's message of "Wed, 5 Feb 2020 20:07:44 +0900")
Message-ID: <87wo919grz.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_074841_826403_4F3558EA 
X-CRM114-Status: GOOD (  10.73  )
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
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-02-05, Sergey Senozhatsky <sergey.senozhatsky@gmail.com> wrote:
> 3BUG: KASAN: wild-memory-access in copy_data+0x129/0x220>
> 3Write of size 4 at addr 5a5a5a5a5a5a5a5a by task cat/474>

The problem was due to an uninitialized pointer.

Very recently the ringbuffer API was expanded so that it could
optionally count lines in a record. This made it possible for me to
implement record_print_text_inline(), which can do all the kmsg_dump
multi-line madness without requiring a temporary buffer. Rather than
passing an extra argument around for the optional line count, I added
the text_line_count pointer to the printk_record struct. And since line
counting is rarely needed, it is only performed if text_line_count is
non-NULL.

I oversaw that devkmsg_open() setup a printk_record and so I did not see
to add the extra NULL initialization of text_line_count. There should be
be an initializer function/macro to avoid this danger.

John Ogness

The quick fixup:

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index d0d24ee1d1f4..5ad67ff60cd9 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -883,6 +883,7 @@ static int devkmsg_open(struct inode *inode, struct file *file)
 	user->record.text_buf_size = sizeof(user->text_buf);
 	user->record.dict_buf = &user->dict_buf[0];
 	user->record.dict_buf_size = sizeof(user->dict_buf);
+	user->record.text_line_count = NULL;
 
 	logbuf_lock_irq();
 	user->seq = prb_first_seq(prb);

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
