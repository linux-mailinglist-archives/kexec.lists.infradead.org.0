Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D9B15BEF3
	for <lists+kexec@lfdr.de>; Thu, 13 Feb 2020 14:07:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10FTkyRDnBjsI+a3/s7uE+B0IycpezAlj9bmjT8beaU=; b=MXN2a2DkuDhFQM
	6+0XuvDNsY69st3BA0c0GQA62FdSOQF33+fwBsWIWdplU5vycpDQe453tLOPfwW55jt9sQUSwgihF
	ESKjDo6OooSekgB4GWvfhA3d5UdpD8LXJ9i2Mkc9toQ6B9Pr2te+ThCCuM7dGy8JyAE86uYPYWaj1
	0PiEwhnfJf4WWYtYRynumiR4ijEBmL6pHhJsgl0bbe3+YQtXc47dYa0fsm/02R6GZgISiB2P2SFwi
	tnKISMK4uP13OBSm3+4ssReXH2Nzj02q1uDXae2KvSr/KvtOI3h+Ww6s5U6UPV8IqdoctHLu7rRq7
	a2NYzeNEWD3BSWh0KSYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EDG-0003nf-OK; Thu, 13 Feb 2020 13:07:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EDE-0003n2-7e
 for kexec@lists.infradead.org; Thu, 13 Feb 2020 13:07:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B13ECACD9;
 Thu, 13 Feb 2020 13:07:21 +0000 (UTC)
Date: Thu, 13 Feb 2020 14:07:20 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200213130720.j4e5qv37am2bapup@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <cd7509a5-48fd-e652-90f4-1e0fe2311134@redhat.com>
 <87sgjp9foj.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87sgjp9foj.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_050724_417739_6E7CCC59 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrea Parri <parri.andrea@gmail.com>, lijiang <lijiang@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed 2020-02-05 17:12:12, John Ogness wrote:
> On 2020-02-05, lijiang <lijiang@redhat.com> wrote:
> > Do you have any suggestions about the size of CONFIG_LOG_* and
> > CONFIG_PRINTK_* options by default?
> 
> The new printk implementation consumes more than double the memory that
> the current printk implementation requires. This is because dictionaries
> and meta-data are now stored separately.
> 
> If the old defaults (LOG_BUF_SHIFT=17 LOG_CPU_MAX_BUF_SHIFT=12) were
> chosen because they are maximally acceptable defaults, then the defaults
> should be reduced by 1 so that the final size is "similar" to the
> current implementation.
>
> If instead the defaults are left as-is, a machine with less than 64 CPUs
> will reserve 336KiB for printk information (128KiB text, 128KiB
> dictionary, 80KiB meta-data).
> 
> It might also be desirable to reduce the dictionary size (maybe 1/4 the
> size of text?).

Good questions. It would be great to check the usage on some real
systems.

In each case, we should inform users when messages and/or dictionaries
were lost.

Also it would be great to have a way (function) that would show how
big parts of the two ring buffers are occupied by valid data. It might
be useful also to detect problems with the ring buffer:

   + too many space reserved but not commited

   + too many records invalidated because of different ordering
     in desc ring and data ring.


> However, since the new printk implementation allows for
> non-intrusive dictionaries, we might see their usage increase and start
> to be as large as the messages themselves.

I wish the dictionaries were never added ;-) They complicate the code
and nobody knows how many people actually use the information.

Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
