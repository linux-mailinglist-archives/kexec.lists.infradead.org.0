Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3AC153EC8
	for <lists+kexec@lfdr.de>; Thu,  6 Feb 2020 07:31:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRCGAUV+JAXrDFZcvFAxLbrULNB3xjGJMdD4CCE5nVU=; b=d3pM+Tj5wvnXKO
	09YDPmuG5/8mYgrQFFgVoJQS9KaPxz8W/0VPIVnHWCAXTQbOsnCW6Qs9nBaX1UATrHfH3HwRiAyZC
	PV/87479EUs078gpripuVdYAvNFhS/gRvS58UwPIYVv3/o7JxF3FMaT/pDUpzepbuO9iNefx11eWS
	26W1fxTjIi6sYO2TueFFeeJJCBdNZ/JQNzANPLj3vvGiVOCilcwTUOKRqsIyI2GxGHwOIwaJK/mXH
	ZhsMvSTpIdKYgWNpaC+Dq0qE3d0DTTwQvtQxdcxCnTs59lSpaz902ZriBAlIzyPDJ7bRxC97cytwI
	e9zkKHhsjfQ8qQklgD9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izah5-0003El-0P; Thu, 06 Feb 2020 06:31:19 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izah2-0003E9-L5
 for kexec@lists.infradead.org; Thu, 06 Feb 2020 06:31:18 +0000
Received: by mail-pj1-x1044.google.com with SMTP id j17so2071005pjz.3
 for <kexec@lists.infradead.org>; Wed, 05 Feb 2020 22:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EiT7U6hb4n9/ss5eLUuNHb8HbJPdrNLlNFry2pPtbL8=;
 b=cjPVEqQ8bIU4+SzkdcJ7r1Hismp60wHdUsPx0PSGD1yrI1kkCfr9ExmhcZmNl51yom
 qvyh5lNMSE1OyfMu2MIy2fOGLvCDAQNGxWKiY62A7uy2XaX7t1LYe22XoPPehCaLERFA
 FZ6s+LnHoB/yssJ/Dt/onvF9MgQM+mOGUX7+FDu/Gd8oCjfXepl4o4N8SXiCD6CDCPAt
 p3PkrdvixpY6I8Kr/BGmjNuzHVAoukZlNTH9Nz4wca+9clFk3rsjE+dprySUbZTx1KbY
 7hbv/52fy+ILZSGupGLCwpCh2gMQRoxSKjR2m4NZkxwBi7evZ2qUmBjD71JkfBZsWo2e
 O8PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EiT7U6hb4n9/ss5eLUuNHb8HbJPdrNLlNFry2pPtbL8=;
 b=aC4aZKH2WbOByCMTL0Z/8OO+78IbebvhKDbE1K4c35JpqyA8H6XU+Pc7hEzoLnGa9w
 JSieouqYuL8pSJK2Jsg/rizhYIlXpti0qqaUmE8lx4aes4E1IU115GxLjdZvTl7iUocs
 gicr9ajEnVSZaTTTfVhwsuw4kuoDYvjSyuUbAQI84kEZeguPHLRn5KjLKSffoxQDAJSF
 nsbsbPa4uXy5UbUBKqJ3iPTjLZ0iQq4hgqaXwDu+vjwwNJe69Qm0J+i7cK6nS4HFUQZ7
 8MnK3+AcaBSp/IqcssIWST4EzYEFhc+W/MHeIj79lGGLTT8dcMuFR1S9P5EAFE/I4Kx+
 4ukA==
X-Gm-Message-State: APjAAAVpS5ZLwKGgbDiUEMoo8Sns946ZCCJjB5Ps0CWGP7G8Xvfrx1uv
 Wf3ioQkgjUQdoHG/qV7fmbs=
X-Google-Smtp-Source: APXvYqypyETPNrR3JYXaNRt6EUsTEo/7X5zBbdeACiCaI8LBBQGoPGSg21OcckRO75gVWQWFVeJBpg==
X-Received: by 2002:a17:90a:1f8d:: with SMTP id
 x13mr2502314pja.27.1580970674468; 
 Wed, 05 Feb 2020 22:31:14 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id d26sm1798137pgv.66.2020.02.05.22.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 22:31:13 -0800 (PST)
Date: Thu, 6 Feb 2020 15:31:10 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200206063110.GM41358@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <20200205110522.GA456@jagdpanzerIV.localdomain>
 <87wo919grz.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87wo919grz.fsf@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_223116_717313_A2B8E2D6 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, lijiang <lijiang@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/05 16:48), John Ogness wrote:
> On 2020-02-05, Sergey Senozhatsky <sergey.senozhatsky@gmail.com> wrote:
> > 3BUG: KASAN: wild-memory-access in copy_data+0x129/0x220>
> > 3Write of size 4 at addr 5a5a5a5a5a5a5a5a by task cat/474>
> 
> The problem was due to an uninitialized pointer.
> 
> Very recently the ringbuffer API was expanded so that it could
> optionally count lines in a record. This made it possible for me to
> implement record_print_text_inline(), which can do all the kmsg_dump
> multi-line madness without requiring a temporary buffer. Rather than
> passing an extra argument around for the optional line count, I added
> the text_line_count pointer to the printk_record struct. And since line
> counting is rarely needed, it is only performed if text_line_count is
> non-NULL.
> 
> I oversaw that devkmsg_open() setup a printk_record and so I did not see
> to add the extra NULL initialization of text_line_count. There should be
> be an initializer function/macro to avoid this danger.
> 
> John Ogness
> 
> The quick fixup:
> 
> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> index d0d24ee1d1f4..5ad67ff60cd9 100644
> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c
> @@ -883,6 +883,7 @@ static int devkmsg_open(struct inode *inode, struct file *file)
>  	user->record.text_buf_size = sizeof(user->text_buf);
>  	user->record.dict_buf = &user->dict_buf[0];
>  	user->record.dict_buf_size = sizeof(user->dict_buf);
> +	user->record.text_line_count = NULL;
>  
>  	logbuf_lock_irq();
>  	user->seq = prb_first_seq(prb);

Yes. That should do. It seems that /dev/kmsg reads/writes happen very early in
my system and all the backtraces I saw were from completely unrelated paths -
either a NULL deref at sys_clone()->do_fork()->copy_creds()->prepare_creads(),
or general protection fault in sys_keyctl()->join_session_keyring()->prepare_creds(),
or some weird crashes in ext4. And so on.

I see some more unexplainable lockups on one on my test boards, but I
can't provide more details at this time. Might not be related to the
patch set. Need to investigate further.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
