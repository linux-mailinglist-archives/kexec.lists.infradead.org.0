Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1D015265E
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 07:36:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BRtCqXTXhgafMSIZzQGzPiWwantFLaYwS7QBjsTbGgc=; b=YGqI16xSfzz0fl
	ETYHwx5uscOgwKzqtHnOry4Mx7jf7nCw2Z9SEkBgRiCOCc9OZycZiO5ic20M4JzOi48LdOkFC16Rj
	QCt7PVJReUhM3wD4TMN13r+XwsPWHYIe/B5Hsc985vbR0r0qEWG8/+GEFdu4OD2kTy0HX3XsqskhB
	MvUdQhTACC2CHaMGywGFXed1W0OTsnnlTWwIoacmLpZ+vlx5dTb56e8H8ubvanCbsoMTYEMQkxTr2
	jlJppRQzE/OPcqsfWSwRMVIw4jeiEdaVtFk7A0yCGNqP2hK0B62d3qiyH/febifWZgtzhCGvOa9oR
	Xt3gCN+zbucZ2LNnLAhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izEIo-0006P2-C0; Wed, 05 Feb 2020 06:36:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izEIl-0006Oj-QS
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 06:36:45 +0000
Received: by mail-pj1-x1044.google.com with SMTP id r67so543810pjb.0
 for <kexec@lists.infradead.org>; Tue, 04 Feb 2020 22:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NR5HHqY14nVKiwN1pnGOCIaNnlF4MJl1CZSdtbVmuTk=;
 b=aSEFDeWldjG7yFrvO1YqEPyjmp+WjO9Y1I/fRf1tF8L1//bP8rbNOx542hjgvyowZI
 CJTeFWOLyxLIV/k2cRV3Ln7wCL8kXkqHoejpHlrAqfMzhbdfxbqBUePxgYmOLeZsf6q4
 U5Rd7t7jot8QcZ/9SsBgDC10uZfEvwz4eriiIXuosVy0Fi4Ljqhr0oNfjTlVKkEB8JXX
 MOjIgJqmNAGXdmg0AYR+Biamoehpfz8JYeEe32HFRsCl/uBWLxNq5NQKW0ki9YjnwYIx
 sYuObbHtIaewfpxSU3hzyyPtKPFWMZYihtWHZHRAXrAAKM6+yvROtDfzEM1CWZL+sa1h
 Rpfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NR5HHqY14nVKiwN1pnGOCIaNnlF4MJl1CZSdtbVmuTk=;
 b=W4cKG0w3xFoVAdzorS6BmqhNUFu/oWIcOKmeRlNQhMLmcP6aVr2j3H1L0BOQnu4hYr
 Ggo2m0G/xAJs851wRrdd3U2LNnB50+pUnfuFUH+vEvZMis+b++DlOHjop9SyUzuPxjBe
 Cs6QcUBFDjzY/uigQIwqrVAFfYYAutIxTGrKbdxCOs5jF9ZT5kVADe8xPtmO13atzK5S
 Kp6IMeUNTQrfAxjsvthFCjsFc6FofQ6fOlA1ic4CYcpSSGuGzSjNWaYePN1n8HQuSW+V
 HMNUUbcXEOtmeJe156eaznExjZN3udTj0KmuzZz4/62yjozg1Kr6pIUsgT7amx7wOPqn
 5PKQ==
X-Gm-Message-State: APjAAAUuHJFXh2rdt41JxNAX9SaASqMJ6LeOrOyIIXGO4ftYTLQsMCoL
 L4xcSKfuJWg4ilUdSxp+V8Q=
X-Google-Smtp-Source: APXvYqx+puy+6sb4HFx3KAsl7TfpxjwMo113X6yG3BHkUMt1zGTj2Zqfz0NX9sVKRKwlTQJsjYsYcg==
X-Received: by 2002:a17:90a:6:: with SMTP id 6mr3971648pja.71.1580884602719;
 Tue, 04 Feb 2020 22:36:42 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id 196sm27200499pfy.86.2020.02.04.22.36.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 22:36:41 -0800 (PST)
Date: Wed, 5 Feb 2020 15:36:40 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: lijiang <lijiang@redhat.com>, John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200205063640.GJ41358@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_223643_858985_12A7D17B 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/05 13:38), lijiang wrote:
> > On (20/02/05 13:48), Sergey Senozhatsky wrote:
> >> On (20/02/05 12:25), lijiang wrote:

[..]

> >>
> >> So there is a General protection fault. That's the type of a problem that
> >> kills the boot for me as well (different backtrace, tho).
> > 
> > Do you have CONFIG_RELOCATABLE and CONFIG_RANDOMIZE_BASE (KASLR) enabled?
> > 
> 
> Yes. These two options are enabled.
> 
> CONFIG_RELOCATABLE=y
> CONFIG_RANDOMIZE_BASE=y

So KASLR kills the boot for me. So does KASAN.

John, do you see any of these problems on your test machine?

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
