Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 812C020022C
	for <lists+kexec@lfdr.de>; Fri, 19 Jun 2020 08:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GtJQWTGleUBBVSkTf0s3oeMSEaBOF12SKDQ+Qn9wXEY=; b=WB3PPNYyv/B43m
	/Z4mpVYu8JT1M6H8GJl+6WTDlqEI9RdV5YAUib1zvtkY7m4QYvkagmEoglbF0YVV0XMdQwbEcelbi
	IIsYs5iGgMwEc6r3i0uYuTs+dI3YPPRGULva9Fc1dWTHRwOg3hV0lmeAWTAuMq56PvEoZZPebrvT2
	hZabhXAC8JrP3YcGQ9fVC6FzQC6wcYCCdLLcHbg0Rjk0lJR+VpmMRKEJnkJalUJQXwh/uAwZZhEww
	dFUg8yjiqshc7H9ikoGVDyGN7ETEQWdgdcJyxI0i+w98JTap7lvS6fc/C9V15+G1YuSDoEpUM28NJ
	Mieeo9mXNp/396Q77yNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmAqD-0006g0-UW; Fri, 19 Jun 2020 06:49:33 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmAqA-0006ff-EJ
 for kexec@lists.infradead.org; Fri, 19 Jun 2020 06:49:31 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jmAq3-0001tw-6V; Fri, 19 Jun 2020 08:49:23 +0200
From: John Ogness <john.ogness@linutronix.de>
To: kernel test robot <lkp@intel.com>
Subject: Re: [RFC PATCH] printk: _printk_rb_static_dict can be static
References: <20200618144919.9806-4-john.ogness@linutronix.de>
 <20200618182323.GA72993@4e49555bcca1>
Date: Fri, 19 Jun 2020 08:49:21 +0200
In-Reply-To: <20200618182323.GA72993@4e49555bcca1> (kernel test robot's
 message of "Fri, 19 Jun 2020 02:23:23 +0800")
Message-ID: <871rmbim8e.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_234930_619915_0F014C01 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 kbuild-all@lists.01.org,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Paul McKenney <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 2020-06-18, kernel test robot <lkp@intel.com> wrote:
> Signed-off-by: kernel test robot <lkp@intel.com>
> ---
>  printk.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> index 7642ef634956f..d812ada06735f 100644
> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c
> @@ -434,7 +434,7 @@ static u32 log_buf_len = __LOG_BUF_LEN;
>   */
>  #define PRB_AVGBITS 5	/* 32 character average length */
>  
> -_DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
> +static _DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
>  		  PRB_AVGBITS, PRB_AVGBITS, &__log_buf[0]);

_DECLARE_PRINTKRB declares multiple variables, so this patch will not
work as intended. I would like to declare the variables static but am
not sure how best to go about it.

In the Linux source I see examples of macros just desclaring the
variables static. And I see examples of the macros providing a parameter
where the "static" keyword can be specified.

Since the ringbuffer was created exclusively to serve printk, I would
prefer to just have _DECLARE_PRINTKRB (and DECLARE_PRINTKRB) declare all
the variables as static.

John Ogness

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
