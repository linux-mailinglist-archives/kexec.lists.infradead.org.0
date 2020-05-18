Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 220881D7FFF
	for <lists+kexec@lfdr.de>; Mon, 18 May 2020 19:23:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Wd9KyEYVQg8xNOz3vF/N5+NWH9RrISTChAvAanlBdo=; b=fgKXjFdcwuz+CP
	si+9C5CDm6VCvqNuhLalV/rbKMNaL4nQyhBAhXBjDs9QR7nwO+skBVIdIKT1nniimbcaltcA1RTT+
	Bn/YMHYFO0QPnTxeV1sJa26e9RGqoLTP4XZrMv6+5jvEgm7OMQC5srGE4H2AFmiIVfY4l+EzU1cLq
	8WBApdV8YIouVSIHessfBHjFxGg4lUEY71uMwUssof2pZFJZ6hLgKtRJJceZ3xUaP2z3PhcPN8W1y
	UGbdDMZb3VqaLVy/ARCe4I1xNR0GqyFRy/W/wknz85SFJ9rGEdT0sUc9pIKjhJZ9xxAL1/ZGvUols
	yPKoZ/lKp+uRHi0T0+Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajTc-0007Mr-FR; Mon, 18 May 2020 17:22:56 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajTZ-0007Lt-Kd
 for kexec@lists.infradead.org; Mon, 18 May 2020 17:22:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id 202so8754095lfe.5
 for <kexec@lists.infradead.org>; Mon, 18 May 2020 10:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qu8M66lDUKLK1WzpQWJe9igp01pFB46NWxsyvCKG6oY=;
 b=WAxyrolK30XZ/8MijRphoQ1WbKWVbqxz0H4gA/Jy0pDcY9RRDe21Oan+4qDj9RDWUv
 LcWGp75Zyqhpcfrh+DYhLDfC9L9hFBI3p+iU/zxywhL1G6tidYQ6GLIuGqXlUMc5RKDx
 2NX8Xzg6Xu2UUpMC93lzFHkjXofk5Qof537hs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qu8M66lDUKLK1WzpQWJe9igp01pFB46NWxsyvCKG6oY=;
 b=TKDWzEMaWhPj0n7Zt34QOHcSKqj/YyE3Fkv9H0QMLAL8SFQ0xJ1xCHQyeDBgplg3LI
 yMtbSUIjXMyQtyfRbMYQzyf/DGgPESlZEh9q2V5b7IUHt0/Fehl3DJ8q43HjL9PTb/dL
 ld56KXxRFPLB3bGIlCQWVLSyIHHjnoGS1iOPQebZTpSxyt+/wBbkJMlrXxwoHRNP3JQi
 tR8bv52ks8Ku0XOS2gD3B/zclCWpMJDupBWbXEgaiAd39rk/2eIum+ltB66UH/ks3T8l
 lPt+mnkwCKQq2yi8H/b2dVx1ii38B8UyRh8fFrIydZX0hVz7BotDQ+ho0bNuSEJTjQUz
 dq1A==
X-Gm-Message-State: AOAM530MLkjikoMB/duyhIszU0Nfp0SW1s0vZ35U5l6qPjpLBlXReWQ1
 UYLOPoqLS5rP0vVzI2i6N0Wx66medsw=
X-Google-Smtp-Source: ABdhPJzogxLtthQb1TlXVhojdUIxtV5aOOhRUPSaYN9eA+r9uqZdMcLYgmJ7ksQIgSJcqpua5C0t5A==
X-Received: by 2002:a19:4b12:: with SMTP id y18mr12274724lfa.169.1589822568277; 
 Mon, 18 May 2020 10:22:48 -0700 (PDT)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com.
 [209.85.167.44])
 by smtp.gmail.com with ESMTPSA id a8sm5962964ljp.102.2020.05.18.10.22.46
 for <kexec@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 10:22:47 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id x27so8649388lfg.9
 for <kexec@lists.infradead.org>; Mon, 18 May 2020 10:22:46 -0700 (PDT)
X-Received: by 2002:a05:6512:62:: with SMTP id
 i2mr3417039lfo.152.1589822566461; 
 Mon, 18 May 2020 10:22:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200501094010.17694-1-john.ogness@linutronix.de>
 <20200501094010.17694-3-john.ogness@linutronix.de>
 <87v9ktcs3q.fsf@vostro.fn.ogness.net>
In-Reply-To: <87v9ktcs3q.fsf@vostro.fn.ogness.net>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 18 May 2020 10:22:30 -0700
X-Gmail-Original-Message-ID: <CAHk-=whSLRiNxehLiuX+ZfHsu8Kpj7R1Sdr3zA7==SMW0zh3ug@mail.gmail.com>
Message-ID: <CAHk-=whSLRiNxehLiuX+ZfHsu8Kpj7R1Sdr3zA7==SMW0zh3ug@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] printk: add lockless buffer
To: John Ogness <john.ogness@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_102253_677129_35AD258F 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Andrea Parri <parri.andrea@gmail.com>, Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 "Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 6:04 AM John Ogness <john.ogness@linutronix.de> wrote:
>
> The cmpxchg() needs to be moved out of the while condition so that a
> continue can be used as intended. Patch below.

This seems pointless and wrong (patch edited to remove the '-' lines
so that you see the end result):

>                 smp_mb(); /* LMM(data_push_tail:C) */
>
> +               if (atomic_long_try_cmpxchg_relaxed(&data_ring->tail_lpos,
> +                               &tail_lpos,
> +                               next_lpos)) { /* LMM(data_push_tail:D) */
> +                       break;
> +               }

Doing an "smp_mb()" followed by a "cmpxchg_relaxed" seems all kinds of
odd and pointless, and is very much non-optimal on x86 for example.,

Just remove the smp_mb(), and use the non-relaxed form of cmpxchg.
It's defined to be fully ordered if it succeeds (and if the cmpxchg
doesn't succeed, it's a no-op and the memory barrier shouldn't make
any difference).

Otherwise you'll do two memory ordering operations on x86 (and
probably some other architectures), since the cmpxchg is always
ordered on x86 and there exists no "relaxed" form of it.

                  Linus

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
