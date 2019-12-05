Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB45114248
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 15:06:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kQ0QLuByDhh1jewNYiRzqdu2qqszQULAyXp4DVGMVY=; b=dnOVO/RFO00I9H
	reLPmELFjOGcm9CniFfYZSuXMkCjeQ6rCW0j8t6p7CFW0fS6YGpbvKXbWI7VIDH1hrnETHvUGPf8c
	JhUsO1/mU50UiQcQ9Gvnd2beRM28GPnZYQPTVLEr/DLkGnm07Ca/EBq2njb4hz0MglNpKx+aBTMXu
	8Je+8VKN2X8YCAbW83KCDV38PodvdKf4n65wmFn1B0nuPd2gQ/GNMehjaNsRTr5PiVsiFd553ZP1k
	vA0NIKY5ZJ50tGKtkn9RNga0UFPZANqonKkd6LgiQjVJ387EYskTs9o3PSThjL969AyPXYxhvTb9c
	cvqVcUaLF0OSRUoFgbZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icrlv-00055v-Gu; Thu, 05 Dec 2019 14:06:23 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icrls-00055Z-8h
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 14:06:21 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1icrlU-00030b-96; Thu, 05 Dec 2019 15:05:56 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Prarit Bhargava <prarit@redhat.com>
Subject: Re: [RFC PATCH v5 0/3] printk: new ringbuffer implementation
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191205134652.12631-1-prarit@redhat.com>
Date: Thu, 05 Dec 2019 15:05:54 +0100
In-Reply-To: <20191205134652.12631-1-prarit@redhat.com> (Prarit Bhargava's
 message of "Thu, 5 Dec 2019 08:46:52 -0500")
Message-ID: <87zhg6zx31.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_060620_442980_1D614881 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: andrea.parri@amarulasolutions.com, pmladek@suse.com,
 sergey.senozhatsky.work@gmail.com, peterz@infradead.org,
 gregkh@linuxfoundation.org, brendanhiggins@google.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 sergey.senozhatsky@gmail.com, tglx@linutronix.de,
 torvalds@linux-foundation.org, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Prarit,

On 2019-12-05, Prarit Bhargava <prarit@redhat.com> wrote:
> Based on the comments there is going to be a v6 but in any case I am
> starting testing of this patchset on several large core systems across
> multiple architectures (x86_64, ARM64, s390, ppc64le).  Some of those
> systems are known to fail boot due to the large amount of printk output so
> it will be good to see if these changes resolve those issues.

Right now the patches only include the ringbuffer as a separate entity
with a test module. So they do not yet have any effect on printk.

If you apply the patches and then build the "modules" target, you will
have a new test_prb.ko module. Loading that module will start some heavy
testing of the ringbuffer. As long as the testing is successful, the
module will keep testing. During this time the machine will be very
slow, but should still respond.

The test can be stopped by unloading the module. If the test stops on
its own, then a problem was found. The output of the test is put into
the ftrace buffer.

It would be nice if you could run the test module on some fat machines,
at least for a few minutes to see if anything explodes. ARM64 and
ppc64le will probably be the most interesting, due to memory barrier
testing.

Otherwise I will definitely be reaching out to you when we are ready to
perform actual printk testing with the newly agreed up semantics
(lockless, per-console printing threads, synchronous panic
consoles). Thanks for your help with this.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
