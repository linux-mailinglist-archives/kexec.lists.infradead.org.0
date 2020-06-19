Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B668E2008B9
	for <lists+kexec@lfdr.de>; Fri, 19 Jun 2020 14:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pEoR35g4JATKx9vry2JMxaNgh4LC57neW0EVbdWe6E=; b=F0y0XUgPfsQnXN
	XL4aw3FgpKolfQfARxIrAIlAQ5r7TYxbmYmknGsQGXz8djVnPyez+tD7Uk3Eke3U/bHxLEnNTrNni
	DhDFedpEkkksIxfoNtkve8Kmrv/xOLRh/LKBW7t4V8jOeLuz97t8QF3SiVionrUoM3JDc9m04w95L
	6jSTEKHgBSu5o58O2oeFHZOaAczvLfDN4hXVQzmJM8CmxYgwT2Q47uBmmA1L6zZRHtEVF7CuT1UU8
	kvC9lYheGnZ4tgu3B83FtltfxCAyuhpWhc5AvhpwY8xL5neP0alKUAS4g8ROdwGWQIhdWwEDYn5Vu
	XeOERAOIdyXFZBUlM9nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmG97-0004q8-UI; Fri, 19 Jun 2020 12:29:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmG94-0004pp-W0
 for kexec@lists.infradead.org; Fri, 19 Jun 2020 12:29:24 +0000
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 13B45206C3;
 Fri, 19 Jun 2020 12:29:20 +0000 (UTC)
Date: Fri, 19 Jun 2020 08:29:19 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH] printk: _printk_rb_static_dict can be static
Message-ID: <20200619082919.5d604e58@oasis.local.home>
In-Reply-To: <871rmbim8e.fsf@vostro.fn.ogness.net>
References: <20200618144919.9806-4-john.ogness@linutronix.de>
 <20200618182323.GA72993@4e49555bcca1>
 <871rmbim8e.fsf@vostro.fn.ogness.net>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_052923_048403_2196423C 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>,
 Paul McKenney <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, 19 Jun 2020 08:49:21 +0200
John Ogness <john.ogness@linutronix.de> wrote:

> > +++ b/kernel/printk/printk.c
> > @@ -434,7 +434,7 @@ static u32 log_buf_len = __LOG_BUF_LEN;
> >   */
> >  #define PRB_AVGBITS 5	/* 32 character average length */
> >  
> > -_DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
> > +static _DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
> >  		  PRB_AVGBITS, PRB_AVGBITS, &__log_buf[0]);  
> 
> _DECLARE_PRINTKRB declares multiple variables, so this patch will not
> work as intended. I would like to declare the variables static but am
> not sure how best to go about it.
> 
> In the Linux source I see examples of macros just desclaring the
> variables static. And I see examples of the macros providing a parameter
> where the "static" keyword can be specified.
> 
> Since the ringbuffer was created exclusively to serve printk, I would
> prefer to just have _DECLARE_PRINTKRB (and DECLARE_PRINTKRB) declare all
> the variables as static.

Haven written macros that do such things, I agree with your last
statement. Just have the macro declare all the variables static.

-- Steve

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
