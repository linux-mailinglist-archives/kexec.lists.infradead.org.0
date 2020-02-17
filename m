Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6661614DD
	for <lists+kexec@lfdr.de>; Mon, 17 Feb 2020 15:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/d315dSPnRemCmsJ4DrrSNRNm4rGjhHRP4oXZ3jVXI=; b=A0zmZBCIDG2HIv
	jmFKbKB0jtbOmTiBETCUZRrl3P/1ktTaplMcNZ6bbyGiDi5bN37wqjddOIfVN32tuUK9LHhMHwJ1X
	pk/lzveqmiby1hr1RrnqzEainShB295NDsR7pVDDbhFdZcekoBArmOFOiA3piUU+pccCplzCeskNY
	xTRZL4AuyyLtIX79OOYdZjXr7RZV1hilQrn03DWKdpZt4Ua5XJRrJ3EmZW61yZysUHZ+EEAmbj5D/
	BSdMKA0C+Jkhr40tdodlpf2XK+mvYNY7UctocEwf2ao030giRcS/l6QpR9Ke5FPnrdckGh0GdpTKi
	0O7z5o0riEo7qdZ7phng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3haK-0006qZ-RG; Mon, 17 Feb 2020 14:41:20 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3haF-0006jd-3G
 for kexec@lists.infradead.org; Mon, 17 Feb 2020 14:41:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6786EB489;
 Mon, 17 Feb 2020 14:41:12 +0000 (UTC)
Date: Mon, 17 Feb 2020 15:41:10 +0100
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: misc details: Re: [PATCH 2/2] printk: use the lockless ringbuffer
Message-ID: <20200217144110.xiqlzhs6ynoqdpun@pathway.suse.cz>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <20200128161948.8524-3-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128161948.8524-3-john.ogness@linutronix.de>
User-Agent: NeoMutt/20170912 (1.9.0)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_064115_469698_FFA1990B 
X-CRM114-Status: GOOD (  31.14  )
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

On Tue 2020-01-28 17:25:48, John Ogness wrote:
> Replace the existing ringbuffer usage and implementation with
> lockless ringbuffer usage. Even though the new ringbuffer does not
> require locking, all existing locking is left in place. Therefore,
> this change is purely replacing the underlining ringbuffer.
> 
> - Record meta-data is now stored in a separate array of descriptors.
>   This is an additional 72 * (2 ^ ((CONFIG_LOG_BUF_SHIFT - 6))) bytes
>   for the static array and 72 * (2 ^ ((log_buf_len - 6))) bytes for
>   the dynamic array.

It might help to show some examples. I mean to mention the sizes
when CONFIG_LOG_BUF_SHIFT is 12 or so.


> --- a/kernel/printk/printk.c
> +++ b/kernel/printk/printk.c
> @@ -294,30 +295,22 @@ enum con_msg_format_flags {
>  static int console_msg_format = MSG_FORMAT_DEFAULT;
>  
>  /*
> - * The printk log buffer consists of a chain of concatenated variable
> - * length records. Every record starts with a record header, containing
> - * the overall length of the record.
> + * The printk log buffer consists of a sequenced collection of records, each
> + * containing variable length message and dictionary text. Every record
> + * also contains its own meta-data (@info).
>   *
> - * The heads to the first and last entry in the buffer, as well as the
> - * sequence numbers of these entries are maintained when messages are
> - * stored.
> - *
> - * If the heads indicate available messages, the length in the header
> - * tells the start next message. A length == 0 for the next message
> - * indicates a wrap-around to the beginning of the buffer.
> - *
> - * Every record carries the monotonic timestamp in microseconds, as well as
> - * the standard userspace syslog level and syslog facility. The usual
> + * Every record meta-data carries the monotonic timestamp in microseconds, as

I am afraid that we could not guarantee monotonic timestamp because
the writers are not synchronized. I hope that it will not create
real problems and we could just remove the word "monotonic" ;-)


>  /* record buffer */
> -#define LOG_ALIGN __alignof__(struct printk_log)
> +#define LOG_ALIGN __alignof__(unsigned long)
>  #define __LOG_BUF_LEN (1 << CONFIG_LOG_BUF_SHIFT)
>  #define LOG_BUF_LEN_MAX (u32)(1 << 31)
>  static char __log_buf[__LOG_BUF_LEN] __aligned(LOG_ALIGN);
>  static char *log_buf = __log_buf;
>  static u32 log_buf_len = __LOG_BUF_LEN;
>  
> +/*
> + * Define the average message size. This only affects the number of
> + * descriptors that will be available. Underestimating is better than
> + * overestimating (too many available descriptors is better than not enough).
> + * The dictionary buffer will be the same size as the text buffer.
> + */
> +#define PRB_AVGBITS 6

Do I get it correctly that '6' means 2^6 = 64 characters?

Some ugly counting on my test systems shows the average 49 chars:

$> dmesg | cut -d ']' -f 2- | wc -c
30172
$> dmesg | cut -d ']' -f 2- | wc -l
612
$> echo $((30172 / 612))
49

If I get it correctly then lower number is the more safe side.
So, a more safe default should be 5?


> +
> +_DECLARE_PRINTKRB(printk_rb_static, CONFIG_LOG_BUF_SHIFT - PRB_AVGBITS,
> +		  PRB_AVGBITS, PRB_AVGBITS, &__log_buf[0]);
> +


> @@ -606,60 +488,42 @@ static int log_store(u32 caller_id, int facility, int level,
>  		     const char *dict, u16 dict_len,
>  		     const char *text, u16 text_len)
>  {
> -	struct printk_log *msg;
> -	u32 size, pad_len;
> +	struct prb_reserved_entry e;
> +	struct printk_record r;
>  	u16 trunc_msg_len = 0;
>  
> -	/* number of '\0' padding bytes to next message */
> -	size = msg_used_size(text_len, dict_len, &pad_len);
> +	r.text_buf_size = text_len;
> +	r.dict_buf_size = dict_len;
>  
> -	if (log_make_free_space(size)) {
> +	if (!prb_reserve(&e, prb, &r)) {
>  		/* truncate the message if it is too long for empty buffer */
> -		size = truncate_msg(&text_len, &trunc_msg_len,
> -				    &dict_len, &pad_len);
> +		truncate_msg(&text_len, &trunc_msg_len, &dict_len);
> +		r.text_buf_size = text_len + trunc_msg_len;
> +		r.dict_buf_size = dict_len;
>  		/* survive when the log buffer is too small for trunc_msg */
> -		if (log_make_free_space(size))
> +		if (!prb_reserve(&e, prb, &r))
>  			return 0;
>  	}
>  
> -	if (log_next_idx + size + sizeof(struct printk_log) > log_buf_len) {
> -		/*
> -		 * This message + an additional empty header does not fit
> -		 * at the end of the buffer. Add an empty header with len == 0
> -		 * to signify a wrap around.
> -		 */
> -		memset(log_buf + log_next_idx, 0, sizeof(struct printk_log));
> -		log_next_idx = 0;
> -	}
> -
>  	/* fill message */
> -	msg = (struct printk_log *)(log_buf + log_next_idx);
> -	memcpy(log_text(msg), text, text_len);
> -	msg->text_len = text_len;
> -	if (trunc_msg_len) {
> -		memcpy(log_text(msg) + text_len, trunc_msg, trunc_msg_len);
> -		msg->text_len += trunc_msg_len;

Note that the old code updates msg->text_len.


> -	}
> -	memcpy(log_dict(msg), dict, dict_len);
> -	msg->dict_len = dict_len;
> -	msg->facility = facility;
> -	msg->level = level & 7;
> -	msg->flags = flags & 0x1f;
> +	memcpy(&r.text_buf[0], text, text_len);
> +	if (trunc_msg_len)
> +		memcpy(&r.text_buf[text_len], trunc_msg, trunc_msg_len);

The new one just appends the string.


> +	if (r.dict_buf)
> +		memcpy(&r.dict_buf[0], dict, dict_len);
> +	r.info->facility = facility;
> +	r.info->level = level & 7;
> +	r.info->flags = flags & 0x1f;
>  	if (ts_nsec > 0)
> -		msg->ts_nsec = ts_nsec;
> +		r.info->ts_nsec = ts_nsec;
>  	else
> -		msg->ts_nsec = local_clock();
> -#ifdef CONFIG_PRINTK_CALLER
> -	msg->caller_id = caller_id;
> -#endif
> -	memset(log_dict(msg) + dict_len, 0, pad_len);
> -	msg->len = size;
> +		r.info->ts_nsec = local_clock();
> +	r.info->caller_id = caller_id;
>  
>  	/* insert message */
> -	log_next_idx += msg->len;
> -	log_next_seq++;
> +	prb_commit(&e);
>  
> -	return msg->text_len;
> +	return text_len;

So, this should be text_len + trunc_msg_len.


>  }
>  
>  int dmesg_restrict = IS_ENABLED(CONFIG_SECURITY_DMESG_RESTRICT);
> @@ -1974,9 +1966,9 @@ asmlinkage int vprintk_emit(int facility, int level,
>  
>  	/* This stops the holder of console_sem just where we want him */
>  	logbuf_lock_irqsave(flags);
> -	curr_log_seq = log_next_seq;
> +	pending_output = !prb_read_valid(prb, console_seq, NULL);
>  	printed_len = vprintk_store(facility, level, dict, dictlen, fmt, args);
> -	pending_output = (curr_log_seq != log_next_seq);
> +	pending_output &= prb_read_valid(prb, console_seq, NULL);

The original code checked whether vprintk_store() stored the text
into the main log buffer or only into the cont buffer.

The new code checks whether console is behind which is something
different.

I prefer to call wake_up_klogd() directly from log_output() or
log_store() instead. It might later be used to wake up
printk kthreads as well.

It was done this way because consoles were historically  preferred
over userspace loggers. But the difference will be lower when
consoles are handled by kthread.


>  	logbuf_unlock_irqrestore(flags);
>  
>  	/* If called from the scheduler, we can not call up(). */
> @@ -2406,35 +2405,28 @@ void console_unlock(void)
>  	}
>  
>  	for (;;) {
> -		struct printk_log *msg;
>  		size_t ext_len = 0;
> -		size_t len;
> +		size_t len = 0;
>  
>  		printk_safe_enter_irqsave(flags);
>  		raw_spin_lock(&logbuf_lock);
> -		if (console_seq < log_first_seq) {
> +skip:
> +		if (!prb_read_valid(prb, console_seq, &console_record))
> +			break;
> +
> +		if (console_seq < console_record.info->seq) {
>  			len = sprintf(text,
>  				      "** %llu printk messages dropped **\n",
> -				      log_first_seq - console_seq);
> -
> -			/* messages are gone, move to first one */
> -			console_seq = log_first_seq;
> -			console_idx = log_first_idx;
> -		} else {
> -			len = 0;
> +				      console_record.info->seq - console_seq);
>  		}
> -skip:
> -		if (console_seq == log_next_seq)
> -			break;
> +		console_seq = console_record.info->seq;

This code suggests that it might be possible to get
console_seq > console_record.info->seq and we just
ignore it. I prefer to make it clear by:

		if (console_seq != console_record.info->seq) {
			len = sprintf(text,
				      "** %llu printk messages dropped **\n",
				      log_first_seq - console_seq);
			console_seq = console_record.info->seq;
		}





> -		msg = log_from_idx(console_idx);
> -		if (suppress_message_printing(msg->level)) {
> +		if (suppress_message_printing(console_record.info->level)) {
>  			/*
>  			 * Skip record we have buffered and already printed
>  			 * directly to the console when we received it, and
>  			 * record that has level above the console loglevel.
>  			 */
> -			console_idx = log_next(console_idx);
>  			console_seq++;
>  			goto skip;
>  		}

Otherwise, it looks reasonable.

Best Regards,
Petr

PS: I still have to look at the VMCORE interface, do some testing,
and looks at changes in the 1st patch against the previous version.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
