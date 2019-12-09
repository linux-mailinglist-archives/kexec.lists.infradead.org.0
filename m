Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E9D1167A4
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 08:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4dYCpmgCTLPmU7ZvKUGdLALumgIVurWLPgGFF7bJiag=; b=u15tBW90ZupI/6
	MycR4iCtANxf64tLoFB6SUzB7+bsrftp/y5Gv8xw44IzH0WdB5lWl25+ikGok+esDYjq9m7Cbhtly
	AYuQEailLuxQnoCGgn+XoL29s18Tn8aG3eKP6RTZacKI9HXvkONTNLD6UeiOEpdQOfQTSvl886ijZ
	E/Ui4yf5DZy/6441dnjJ5IeEeAZlccmylsf57g3i57DG11TncLbEZZpRiqXDML7yfMERHFudCNT/9
	mCLWaSgPXREd0Dyi7hapsSyUJK9Rzl06z6ifR6zq28lfWCo9/PlwI2MT/8ZD/HlJCGq2zXO7nDUm8
	P3YudcNNPSDN/645FcMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieDh3-0004Nj-Qf; Mon, 09 Dec 2019 07:42:57 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieDh0-0004N7-7e
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 07:42:55 +0000
Received: by mail-pg1-x543.google.com with SMTP id b137so6681379pga.6
 for <kexec@lists.infradead.org>; Sun, 08 Dec 2019 23:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mxNFYCmNhlniWht0zpLB7qcISplkfJ5aENS7UtExcLA=;
 b=lxx9TJPYOhlvXmJQSe9z15P6BYI2yXj6oQ8GNUXfIL3FiCkisygeP+qQvp3HVN8snj
 Isp4uPZqrKvaSv00mOpdJ0qgDgi+DFoaf2iGeQ7FFy74iZVgh2P09uzQ9sZebJsp96Gn
 X9QGvPCjTKbhzB20W7QJiu1ncyClbosAqy6kmSECC08dh4P8UkY+kP0a3X0R+7lu7j4w
 GlfbyId7LCcdxC1iOpua5CWGMunkw+dMjJhYGJ7yNAcfPzI4N2Fwiz8tVHJNG+UF5V4e
 /G3BHijeubxOcBLhLr9ZptqyGeLW+e2mllxNHKGJmJbLD/xTlO9m8yLvfqP12Esh/lOn
 Hx/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mxNFYCmNhlniWht0zpLB7qcISplkfJ5aENS7UtExcLA=;
 b=HVmGwYY5W4awh2D9PP9aYATrpW8w10WFS/5wtMrkci9JxHaRaRza57f7fZrckYFIIv
 7ZqfAhh13Kqke7a0wZHAtt93NrVFtz+S7r9hZZ7Qb1IHwb3FowMNMDG9rLoJITnVHLVE
 MEBxCbgILI3CgJkL9ix7PzDNIHEaejP75T+A0+bml6gXtHLHgzTTdTSbDvT6Tee4IfY2
 Z7/Sdwnq7LzPBbYb8uCLSznfBjnO1IBhg1f+1i/WhSnjpr/L77tvGD/kGz0kACuBT48V
 0JVGck7jEBCPZEuZzSjKE2lSnr0LxkS6gTozeqOS+ZWiA6xqayw1dIdhkWUTweR48iYS
 e3zQ==
X-Gm-Message-State: APjAAAWL6ym/Qw3GC4mbOmwBDdk5xM3DsKFUjnDdgInuxcEKI2aV9hMT
 t1dKUUslT3qYet8lsBufNx4=
X-Google-Smtp-Source: APXvYqxungzOwpELSZL1K0j4LdT0TT09X0cVw9RGT4oi/TvELjGrHEQelo+Nyoq/cdgCa8U9HixjWw==
X-Received: by 2002:a65:41cd:: with SMTP id b13mr17584367pgq.385.1575877372852; 
 Sun, 08 Dec 2019 23:42:52 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id m127sm12134958pfm.167.2019.12.08.23.42.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 23:42:52 -0800 (PST)
Date: Mon, 9 Dec 2019 16:42:50 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191209074249.GC88619@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128015235.12940-2-john.ogness@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_234254_292275_8570FEDB 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On (19/11/28 02:58), John Ogness wrote:
[..]
> +
> +#define _DATA_SIZE(sz_bits)		(1UL << (sz_bits))
> +#define _DESCS_COUNT(ct_bits)		(1U << (ct_bits))
> +#define DESC_SV_BITS			(sizeof(int) * 8)
> +#define DESC_COMMITTED_MASK		(1U << (DESC_SV_BITS - 1))

What does SV state for? State Value?

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
