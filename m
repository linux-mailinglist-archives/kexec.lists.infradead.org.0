Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2021F128984
	for <lists+kexec@lfdr.de>; Sat, 21 Dec 2019 15:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kS80zD1ZhvDdHtrFOacs/FGX91CUU2mJAvdry0nqnCc=; b=MNcC/NSb0+PsQi
	ZU48V925wnnojmO3D31r5ZzlQyzsOQXmNExIQunuJjFY1gt/LZfxIoTm6ikTERY7Ta75mW1f5vPCq
	3hob94IOf8P3aR5tMs5a4h9O6jXV2ZICumO0kAdsOJLxzTkOdP1p2Mk72u+B3MjeuvDDCXaNCaI3w
	ODL7eHutlh/NAALG9IteQ7aBujJR/qRlKLjBftUrgMHilvw+6enZJfdrKxxDZvp6Kov/tTHYpLAeU
	bTa1YIkg22I+b6HGRwhzxPW3JotPiBiTb4t9RHgScXgUzSvJfH6JZeThPEWGhys7iCfyG5dKHvq1a
	vbYyJXw48HFxhZdVE7Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iifeb-0003Ms-5e; Sat, 21 Dec 2019 14:22:49 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iifeX-0003M5-5f
 for kexec@lists.infradead.org; Sat, 21 Dec 2019 14:22:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id f129so11982496wmf.2
 for <kexec@lists.infradead.org>; Sat, 21 Dec 2019 06:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tAExSifujBqvj9jopiXqxarAHCCzEVY7vXvNLNSXQ5I=;
 b=aK5ubXSh0mGJIF0c/hJ4q4+R15cKMuXITa/XGA4SlvsJsMbCxQDDcNB4fIkNj2yoXn
 bB1mBa9IZ3aAfTCQFnLid6Y8Twr+gi/L4yEhK4T2a0MEdMTcaaQXT0HReE1N1y7onJKV
 OcFzTJl2GcoaX09ScfZw6rQObUiyr57kUT93ajqoQCweGf267m8BxsuJy9MB2yJjkAno
 svn3ih1ZJP4xDTvrB10ocJDH/iY3KtLGFUg4w7PmtSUyb/h/S/XELuHF9tX1dBj1B6Gn
 /e7mC8kApnp2Ijbs5/jTDP0ZBkhncjeDJVdCqCiaaJhNX52A+y72p6XJvhEfvXYJsq3k
 Fl5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tAExSifujBqvj9jopiXqxarAHCCzEVY7vXvNLNSXQ5I=;
 b=uHTulahgD4Yfz219/WG6CJMjyanbziGs7C2KjZcVQXunHGrOjNR1KgdIAyH7rFCFEo
 DroHehFQaarvUHAc+7KAhWEgLcUyoWrlZw2IQ4YjQRwEbPPbquFgHMx87Tu1eTr+MbaZ
 XR9QFEkV0KxegZ7om44dKcJuHSkPLTHQdYACs+CLy9r6ULjcem8MA02afBOBAPJISGkz
 Q7dQtFvi6OPROhHvvhp0CwqikDj2BaZ8xKsFjo5ihV/wq1tRxiVodx/acLAJIkFAHLi0
 c3obVXK/Uab6ZJ+0oVz9F9mqPiPt82FehBEzQeh5w8yf/8eh+Kb/la3+CKYwV/CfpYwj
 9xbQ==
X-Gm-Message-State: APjAAAXKIv+hivaP/3HO6/LubeXVuEZDfnxvT3hzRgI1dy4EpBh0lyFg
 qrHBaMI7UdUPymEoAA0WZIw=
X-Google-Smtp-Source: APXvYqx0fkrceGwLFdcxtfkaBwk9Er1huMVEuf/3WZPs6M60RN0IBs69HBrkYa4PIzqHy8wfAWYH3w==
X-Received: by 2002:a7b:c407:: with SMTP id k7mr22916761wmi.46.1576938161638; 
 Sat, 21 Dec 2019 06:22:41 -0800 (PST)
Received: from andrea (ip-213-220-200-127.net.upcbroadband.cz.
 [213.220.200.127])
 by smtp.gmail.com with ESMTPSA id i5sm13531276wml.31.2019.12.21.06.22.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Dec 2019 06:22:40 -0800 (PST)
Date: Sat, 21 Dec 2019 15:22:35 +0100
From: Andrea Parri <parri.andrea@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191221142235.GA7824@andrea>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-2-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_062245_238066_D9975FA7 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (parri.andrea[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi John,

Sorry for the delay.

I don't have an overall understanding of the patch(-set) yet, so I limit
to a couple of general questions about the memory barriers introduced by
the path.  Please see inline comments.


> +	*desc_out = READ_ONCE(*desc);
> +
> +	/* Load data before re-checking state. */
> +	smp_rmb(); /* matches LMM_REF(desc_reserve:A) */

I looked for a matching WRITE_ONCE() or some other type of marked write,
but I could not find it.  What is the rationale?  Or what did I miss?


> +	do {
> +		next_lpos = get_next_lpos(data_ring, begin_lpos, size);
> +
> +		if (!data_push_tail(rb, data_ring,
> +				    next_lpos - DATA_SIZE(data_ring))) {
> +			/* Failed to allocate, specify a data-less block. */
> +			blk_lpos->begin = INVALID_LPOS;
> +			blk_lpos->next = INVALID_LPOS;
> +			return NULL;
> +		}
> +	} while (!atomic_long_try_cmpxchg(&data_ring->head_lpos, &begin_lpos,
> +					  next_lpos));
> +
> +	/*
> +	 * No barrier is needed here. The data validity is defined by
> +	 * the state of the associated descriptor. They are marked as
> +	 * invalid at the moment. And only the winner of the above
> +	 * cmpxchg() could write here.
> +	 */

The (successful) CMPXCHG provides a full barrier.  This comment suggests
that that could be somehow relaxed?  Or the comment could be improved?

(The patch introduces a number of CMPXCHG: similar questions would apply
to those other instances...)

Thanks,
  Andrea

P. S.  Please use my @gmail.com address for future communications.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
