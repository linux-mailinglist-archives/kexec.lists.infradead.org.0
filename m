Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1318716165E
	for <lists+kexec@lfdr.de>; Mon, 17 Feb 2020 16:40:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/HlfDkTfrX/HLgD1UopkEav8x+T1CyPkShqbD3Nnmk=; b=E1n0hSUUh+TF4q
	m5ZLI0isylT3PMp7T8n3ym8b6+Nr/WbWT73Ae/eehR/ylSjcTGb+uNJ9Qmz2Eso8Bphizn70kSviv
	a1V/W67B2zrMGHUQ67e+SbJ4GKdYZt8GnmcvUQul450VRxXykbPZbxxLZER/QuPEPM5KfkWV1IsEN
	MPsYPuFvvSYzLms1BxwIDUj5dDIRG4CAlst1I39B7PxnjQ9DM3nGBxnc47oDVRddGHtmcW60wqwuB
	Xtl1KbOb7HjV2exEKcQ9nNOouSkitLzCM+LorYUl75x4XvVljEmUJ8ITjYSeQiQLy1dxBvHuWLu6r
	RKhRGzK7CAcMRycpff4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3iVg-0002O2-RY; Mon, 17 Feb 2020 15:40:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3iVZ-0002GE-Qy
 for kexec@lists.infradead.org; Mon, 17 Feb 2020 15:40:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7242BADD9;
 Mon, 17 Feb 2020 15:40:27 +0000 (UTC)
Date: Mon, 17 Feb 2020 16:40:26 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: crashdump: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200217154026.7x2xyrklprgql4if@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
 <ccbe1383-a4a4-41f8-3330-972f03c97429@redhat.com>
 <87zhdle0s5.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhdle0s5.fsf@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_074030_026159_EA315BFD 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Fri 2020-02-14 14:50:02, John Ogness wrote:
> Hi Lianbo,
> 
> On 2020-02-14, lijiang <lijiang@redhat.com> wrote:
> >> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> >> index 1ef6f75d92f1..d0d24ee1d1f4 100644
> >> --- a/kernel/printk/printk.c
> >> +++ b/kernel/printk/printk.c
> >> @@ -1062,21 +928,16 @@ void log_buf_vmcoreinfo_setup(void)
> >>  {
> >>  	VMCOREINFO_SYMBOL(log_buf);
> >>  	VMCOREINFO_SYMBOL(log_buf_len);
> >
> > I notice that the "prb"(printk tb static) symbol is not exported into
> > vmcoreinfo as follows:
> >
> > +	VMCOREINFO_SYMBOL(prb);
> >
> > Should the "prb"(printk tb static) symbol be exported into vmcoreinfo?
> > Otherwise, do you happen to know how to walk through the log_buf and
> > get all kernel logs from vmcore?
> 
> You are correct. This will need to be exported as well so that the
> descriptors can be accessed. (log_buf is only the pure human-readable
> text.) I am currently hacking the crash tool to see exactly what needs
> to be made available in order to access all the data of the ringbuffer.

I am not sure which parts you are working on. Are you going to provide
also patch for makedumpfile, please? I get the following failure when
creating the crashdump using:

    echo c >/proc/sysrq-trigger


The kernel version is not supported.
The makedumpfile operation may be incomplete.
dump_dmesg: Can't find variable-length record symbols
makedumpfile Failed.
Running makedumpfile --dump-dmesg /proc/vmcore failed (1).


Best Regards,
Petr

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
