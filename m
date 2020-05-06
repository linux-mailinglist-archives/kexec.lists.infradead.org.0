Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C941C7351
	for <lists+kexec@lfdr.de>; Wed,  6 May 2020 16:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CAZA/2Q2rcc6u6Ct3hB9soYCC6ttNwMcQDJJkXyeF30=; b=KZzzVv5VZzGcpf
	9dnhMhdZCUIzfOeAyHTJpL9buA/szK9ptzvAmhe4GydTVOoTEZKUYfbUwSPkGskYrXUNTjr/5vhec
	e+eutRWsua/60hyUfmljpCOKtqZYSKbWHPzjXpJRis5Q5Fs7EJQBhcexsK/S+qCmukZG+JtVSw3J0
	w/+g6C/i75+nuVl51+W4rE8vf/VeNQkYSjyBFXUmUxPYwzI15IlyibV/BtYz8pzrifU7LkiXLTKtN
	8f0IGkdFDtWy45M1IILSDZvuOrxDNZ9d9s7g0pNabTt06+kn6pm0fXipQ5ixBpvd8ojIT05idLVjU
	5lR6SeX8fcwncRziHWRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLO1-0000pA-Sp; Wed, 06 May 2020 14:51:01 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLNy-0000Zs-LB
 for kexec@lists.infradead.org; Wed, 06 May 2020 14:51:00 +0000
Received: from localhost ([127.0.0.1] helo=vostro)
 by Galois.linutronix.de with esmtps (TLS1.2:RSA_AES_256_CBC_SHA1:256)
 (Exim 4.80) (envelope-from <john.ogness@linutronix.de>)
 id 1jWLNr-000527-91; Wed, 06 May 2020 16:50:51 +0200
From: John Ogness <john.ogness@linutronix.de>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH v2 3/3] printk: use the lockless ringbuffer
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-4-john.ogness@linutronix.de>
Date: Wed, 06 May 2020 16:50:49 +0200
In-Reply-To: <20200501094010.17694-4-john.ogness@linutronix.de> (John Ogness's
 message of "Fri, 1 May 2020 11:46:10 +0206")
Message-ID: <87ftcd86d2.fsf@vostro.fn.ogness.net>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_075058_839997_6469B8E1 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a0a:51c0:0:12e:550:0:0:1 listed in] [list.dnswl.org]
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

Hi,

I discovered a bug while preparing my next series, which also made me
realize I had never tested the extended mode feature of netconsole. :-/
The only other user of extended output is /dev/kmsg, and it is doing it
correctly.

Explanation and patch below.

On 2020-05-01, John Ogness <john.ogness@linutronix.de> wrote:
> diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
> index 9a9b6156270b..0d74ca748b82 100644
> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c
> @@ -2395,12 +2443,17 @@ void console_unlock(void)
>  	static char text[LOG_LINE_MAX + PREFIX_MAX];
>  	unsigned long flags;
>  	bool do_cond_resched, retry;
> +	struct printk_info info;
> +	struct printk_record r;
>  
>  	if (console_suspended) {
>  		up_console_sem();
>  		return;
>  	}
>  
> +	prb_rec_init_rd(&r, &info, text, sizeof(text), ext_text,
> +			sizeof(ext_text));
> +

Using @ext_text for the dictionary buffer. But extended mode will need
that buffer for generating extended output!

>  	/*
>  	 * Console drivers are called with interrupts disabled, so
>  	 * @console_may_schedule should be cleared before; however, we may
> @@ -2470,19 +2514,20 @@ void console_unlock(void)
>  			exclusive_console = NULL;
>  		}
>  
> -		len += msg_print_text(msg,
> +		len = record_print_text(&r,
>  				console_msg_format & MSG_FORMAT_SYSLOG,
> -				printk_time, text + len, sizeof(text) - len);
> +				printk_time);
>  		if (nr_ext_console_drivers) {
> -			ext_len = msg_print_ext_header(ext_text,
> +			ext_len = info_print_ext_header(ext_text,
>  						sizeof(ext_text),
> -						msg, console_seq);
> +						r.info);
>  			ext_len += msg_print_ext_body(ext_text + ext_len,
>  						sizeof(ext_text) - ext_len,
> -						log_dict(msg), msg->dict_len,
> -						log_text(msg), msg->text_len);
> +						&r.dict_buf[0],
> +						r.info->dict_len,
> +						&r.text_buf[0],
> +						r.info->text_len);

2 problems here:

First, record_print_text() works by modifying the record text buffer
"in-place". So when msg_print_ext_body() creates the extended output, it
will be using a modified text buffer (i.e. one with prefix added).

Second, info_print_ext_header() and msg_print_ext_body() are clobbering
the dictionary buffer because @ext_text _is_ @r.dict_buf.

This can be resolved by giving the record a separate dictionary buffer
and calling record_print_text() after preparing any extended console
text. Patch below...

John Ogness

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index 0d74ca748b82..cc79ad67e6e3 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -2441,6 +2441,7 @@ void console_unlock(void)
 {
 	static char ext_text[CONSOLE_EXT_LOG_MAX];
 	static char text[LOG_LINE_MAX + PREFIX_MAX];
+	static char dict[LOG_LINE_MAX];
 	unsigned long flags;
 	bool do_cond_resched, retry;
 	struct printk_info info;
@@ -2451,8 +2452,7 @@ void console_unlock(void)
 		return;
 	}
 
-	prb_rec_init_rd(&r, &info, text, sizeof(text), ext_text,
-			sizeof(ext_text));
+	prb_rec_init_rd(&r, &info, text, sizeof(text), dict, sizeof(dict));
 
 	/*
 	 * Console drivers are called with interrupts disabled, so
@@ -2514,9 +2514,10 @@ void console_unlock(void)
 			exclusive_console = NULL;
 		}
 
-		len = record_print_text(&r,
-				console_msg_format & MSG_FORMAT_SYSLOG,
-				printk_time);
+		/*
+		 * Handle extended console text first because later
+		 * record_print_text() will modify the record buffer in-place.
+		 */
 		if (nr_ext_console_drivers) {
 			ext_len = info_print_ext_header(ext_text,
 						sizeof(ext_text),
@@ -2528,6 +2529,9 @@ void console_unlock(void)
 						&r.text_buf[0],
 						r.info->text_len);
 		}
+		len = record_print_text(&r,
+				console_msg_format & MSG_FORMAT_SYSLOG,
+				printk_time);
 		console_seq++;
 		raw_spin_unlock(&logbuf_lock);
 
-- 
2.20.1

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
