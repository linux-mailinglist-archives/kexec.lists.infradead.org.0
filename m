Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 744AF16EEF5
	for <lists+kexec@lfdr.de>; Tue, 25 Feb 2020 20:28:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QroCuoVbQOzSK6p2MrMAIemaJvkdWHsjKGiSFm6kNqM=; b=cjyP18fJcx42uB
	iZ6TqNm1t345qLkgvZTLnatlgvuH0DDxGPjUw245b8fXshb4HYRzuorlmRPWry2yPmZJcyFEeyJFi
	0CTccLeUPbxtoxg9hMTMCNckVqFw7tl6cHIqdUgQHaWgyGqC9/VOlrqYlCZEuSdu7bngGImkO25Tf
	5fhgUDsoqtXFjsNPi+2ymzDr7Ka/vkz3RKI4RajS9iHhwPJ7NbJOVDYU9qCP+4X84Mfn+IsDqYLvJ
	wP5eMbIUvsVXxC0QfzJZ2xg+v6d4WnGiZJPLXJqFzsyAiIBjfdv3bm/likHQt6szcvczZa62W9hK0
	PRya1M0ik6p37aSdr1Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6fs5-0006jH-N5; Tue, 25 Feb 2020 19:27:57 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6frz-0006ih-Rg
 for kexec@lists.infradead.org; Tue, 25 Feb 2020 19:27:53 +0000
Received: from localhost ([127.0.0.1] helo=vostro.local)
 by Galois.linutronix.de with esmtp (Exim 4.80)
 (envelope-from <john.ogness@linutronix.de>)
 id 1j6frr-0001Sp-KB; Tue, 25 Feb 2020 20:27:43 +0100
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
References: <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
 <20200214155639.m5yp3rd2t3vdzfj7@pathway.suse.cz>
 <87blpxbh62.fsf@linutronix.de>
 <20200217145016.7r6b7i5o6tqkaa2x@pathway.suse.cz>
Date: Tue, 25 Feb 2020 20:27:40 +0100
In-Reply-To: <20200217145016.7r6b7i5o6tqkaa2x@pathway.suse.cz> (Petr Mladek's
 message of "Mon, 17 Feb 2020 15:50:16 +0100")
Message-ID: <87lfoqqxg3.fsf@linutronix.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.4 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_112752_036540_AF72D5ED 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Andrea Parri <parri.andrea@gmail.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-02-17, Petr Mladek <pmladek@suse.com> wrote:
> Alternative solution would be to get rid of record_print_text()
> and use record_print_text_inline() everywhere. It will have some
> advantages:
>
>   + _inline() variant will get real testing
>   + no code duplication
>   + saving the extra buffer also in console, sysfs, and devkmsg
>     interface.

In preparation for my v2, I implemented this alternate approach. Rather
than introducing record_print_text_inline(), I changed
record_print_text() to work inline and also it will no longer handle the
counting case. The callers of record_print_text() for counting will now
call the new counting functions. IMHO it is a nice cleanup and also
removes the static printk_record structs for console and syslog.

Thanks.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
