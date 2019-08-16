Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD36F8FF34
	for <lists+kexec@lfdr.de>; Fri, 16 Aug 2019 11:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nx12Q2Jx3dY2tT6S58T+KSPYECYeqoNXswNztuvNFlM=; b=hcZjT3efQZfGtj
	7gJ4f978QaYKh2XYAOZ/Hn4PNSVXMC5oh4NEBk42vJt5z+SQ3QfUfjx1tFeQohMt3TKFHau/hRXjA
	tDzbsFgcxKTq+5NFMR1zNMcNW9c+Iy0OZxle8cYn0G5zIGNTShzcrir9mrwguwIjc+woYVcyQLdZ1
	ZIbck3NmT4dSpiTztGRU+Za56ZLuvK5OtsdKZAKdBVOgqPMP99lq/nhC0s+Jv9AeDFHFleFd4UGy7
	WO2p47tlnlQgVmvXXQeth5tOYB4NXCxMqBKdIYpSMgNEkW+mFL1KVioANe2eSj2wuzx/nZWnqy4y6
	bfohkNrzIEgH7o6IgJTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyYjU-0005Ux-Ha; Fri, 16 Aug 2019 09:41:16 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyYjR-0005UM-1A
 for kexec@lists.infradead.org; Fri, 16 Aug 2019 09:41:14 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1hyYjA-0006SV-I7; Fri, 16 Aug 2019 11:40:56 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [RFC PATCH v4 9/9] printk: use a new ringbuffer implementation
References: <20190807222634.1723-1-john.ogness@linutronix.de>
 <20190807222634.1723-10-john.ogness@linutronix.de>
 <20190816054651.GA4403@dhcp-128-65.nay.redhat.com>
Date: Fri, 16 Aug 2019 11:40:54 +0200
In-Reply-To: <20190816054651.GA4403@dhcp-128-65.nay.redhat.com> (Dave Young's
 message of "Fri, 16 Aug 2019 13:46:51 +0800")
Message-ID: <87y2ztwiqh.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_024113_218691_61CD30B0 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
 Petr Mladek <pmladek@suse.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Simon Horman <horms@verge.net.au>, Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2019-08-16, Dave Young <dyoung@redhat.com> wrote:
> John, can you cc kexec list for your later series?

Sure.

> On 08/08/19 at 12:32am, John Ogness wrote:
>> This is a major change because the API (and underlying workings) of
>> the new ringbuffer are completely different than the previous
>> ringbuffer. Since there are several components of the printk
>> infrastructure that use the ringbuffer API (console, /dev/kmsg,
>> syslog, kmsg_dump), there are quite a few changes throughout the
>> printk implementation.
>> 
>> This is also a conservative change because it continues to use the
>> logbuf_lock raw spinlock even though the new ringbuffer is lockless.
>> 
>> The externally visible changes are:
>> 
>> 1. The exported vmcore info has changed:
>> 
>>     - VMCOREINFO_SYMBOL(log_buf);
>>     - VMCOREINFO_SYMBOL(log_buf_len);
>>     - VMCOREINFO_SYMBOL(log_first_idx);
>>     - VMCOREINFO_SYMBOL(clear_idx);
>>     - VMCOREINFO_SYMBOL(log_next_idx);
>>     + VMCOREINFO_SYMBOL(printk_rb_static);
>>     + VMCOREINFO_SYMBOL(printk_rb_dynamic);
>
> I assumed this needs some userspace work in kexec, how did you test
> them?

I did not test any direct userspace access to the ringbuffer structures.

> makedumpfile should need changes to dump the kernel log.
>
> Also kexec-tools includes a vmcore-dmesg.c to extrace dmesg from
> /proc/vmcore.

Thanks for the heads up. I'll take a look at it. The code changes should
be straight forward. I expect there will need to be backwards
compatibility. Perhaps it would check first for "printk_rb_*" then
fallback to "log_*"?

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
