Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D0B1302B5
	for <lists+kexec@lfdr.de>; Sat,  4 Jan 2020 15:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXXP9QwnfsUqv/08Vsi5m/mwyWsG0POzDXYRY/DLb50=; b=AwZ3xPZf2aRXdo
	Im7r5C4bb8c1Sb39U42xsAJUrwhsGf4SojraBYgo1tq8nnL7Ew7H/mtiDNcje3DJe1rjZwZgyZeEi
	ffct9lkh+EUFQ4ek6aM4BK7Xr08u6J93UcqPix47tQPW7iv6EJAX9HfflmuNjRYqx8QcT73Wg/022
	+uqDINg28Vt6gpMyCmoPSf0ktotF2GFtk4nQfWUkB5lZZNlMzmY/AY0fS7aAfvItCNe/pIjebN/G4
	M7hMMM5j3zoPlxtgcSlQ8K8u6tJKoYly4B9AXSGHeRwAqqpcFqULehyYU0DOG1HG55IcmJEV0BvVo
	LH6JJnh3KUt8Zq/B0hgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inkUd-0002Q7-EM; Sat, 04 Jan 2020 14:33:31 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inkUV-0002Pm-D9
 for kexec@lists.infradead.org; Sat, 04 Jan 2020 14:33:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so44963870wrr.1
 for <kexec@lists.infradead.org>; Sat, 04 Jan 2020 06:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=89bNMHaRa6L3vpJUbDlkwRJl5HZuJPwEMdwIffQFxwc=;
 b=atnmd4Roh9tkaAm3zd5I+/gPbZ6bZ00+TNkaXeP5xsra4QOFaNBEZDLi9PQNEaMg6B
 rAv+/X/ZFsMV5PHNpjs8pnnQlAOF+ulqk1FRUaBO58tChSwwhR8KJHKxQt2vUTd4n5mi
 xCtRXWIbnTeZmks/zThswc0/bCCzENXIk1XPvm1N/pH2UKlXKeW2Qlv6CBjmk5pODIqK
 sTZ5D1+vcoUTTdT4IaFdGEwp76w1U3taEN2WneZKhXDqR03Bv1xY7yoSYn6T+k85RoX0
 /jK56Es7trvUUnyXUzgph+AHwmiru3ARx4UZo8UE0UjD0g3tTVXNSBFHrVPDN3viYimF
 Iy8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=89bNMHaRa6L3vpJUbDlkwRJl5HZuJPwEMdwIffQFxwc=;
 b=Z3XsZBaFCPyzm9jE+8m+/vgHVkE1+kMruHMbPBgjYN4mlEHF5Qks4grHlIankD70xS
 0hsMDln/TBm6bwX6bBsqd1jAcY2SWXv82JpvWhsGuTEFUM2G6rQg84wJCXGVrU2NXLnu
 VRHqwqAS0Py38TxkPDoSUCOyj+elr+nzO6rtEKL5oMP2/YOGZBCjZpxdbcNg+2vvlePv
 9c+cYjGE7Atm7GXFdy6csYLQOzdgNZ1d1HFq2645b6DiMC0DVznUVIyT3TEbdnm5e9+6
 MwWIJqVfe+CZ4HXalRBYmm/8INXDLb4j6YQ5d9dPyjQtzvu3eicWFuUkphMsezZXexeu
 LnbA==
X-Gm-Message-State: APjAAAUCjBG8CZUvCGA1qFgVXAaQPZKVkWR7N/URi7Ozjkzqf+O7CuV+
 pxvRFCZqAx71YmewvghsqaSe7zdd
X-Google-Smtp-Source: APXvYqwYXp6v3I7pyLMrm0npHaao7g16+FX2Olhs4pJQyoDHKOq4Arc3PfiwxFYkR0XFK2uI28TEmg==
X-Received: by 2002:a5d:4d06:: with SMTP id z6mr91702666wrt.339.1578148401442; 
 Sat, 04 Jan 2020 06:33:21 -0800 (PST)
Received: from andrea ([93.187.88.19])
 by smtp.gmail.com with ESMTPSA id n8sm65204186wrx.42.2020.01.04.06.33.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 06:33:20 -0800 (PST)
Date: Sat, 4 Jan 2020 15:33:14 +0100
From: Andrea Parri <parri.andrea@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20200104143314.GA3468@andrea>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191221142235.GA7824@andrea> <87imm7820z.fsf@linutronix.de>
 <20200103102420.n6i5chgxaygfvx5h@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200103102420.n6i5chgxaygfvx5h@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_063323_471679_17604098 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (parri.andrea[at]gmail.com)
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
Cc: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 John Ogness <john.ogness@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
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

On Fri, Jan 03, 2020 at 11:24:20AM +0100, Petr Mladek wrote:
> On Mon 2019-12-23 17:01:00, John Ogness wrote:
> > Hi Andrea,
> > 
> > On 2019-12-21, Andrea Parri <parri.andrea@gmail.com> wrote:
> > >> +	*desc_out = READ_ONCE(*desc);
> > >> +
> > >> +	/* Load data before re-checking state. */
> > >> +	smp_rmb(); /* matches LMM_REF(desc_reserve:A) */
> > >
> > > I looked for a matching WRITE_ONCE() or some other type of marked write,
> > > but I could not find it.  What is the rationale?  Or what did I miss?
> 
> Good question. READ_ONCE() looks superfluous here because it is
> surrounded by two read barriers. In each case, there is no
> corresponding WRITE_ONCE().
> 
> Note that we are copying the entire struct prb_desc here. All values
> are written only when state_val is in desc_reserved state. It happens
> between two full write barriers:
> 
>   + A writer is allowed to modify the descriptor after successful
>     cmpxchg in desc_reserve(), see LMM_TAG(desc_reserve:A).
> 
>   + The writer must not touch the descriptor after changing
>     state_var to committed state, see
>     LMM_TAG(prb_commit:A) in prb_commit().
> 
> These barriers are mentioned in the comments for the two
> read barriers here.

Thanks for these remarks.  As usual, I'd recommend to (try to) map those
comments into litmus tests and check with the LKMM simulator.


> BTW: Documentation/memory-barriers.txt describes various aspects of
> the memory barriers. It describes implicit barriers provided
> by spin locks, mutexes, semaphores, and various scheduler-related
> operations.
> 
> But I can't find any explanation of the various variants of the atomic
> operations: acquire, release, fetch, return, try, relaxed. I can find
> some clues here and there but it is hard to get the picture.

Documentation/atomic_t.txt could serve this purpose.  Please have a look
there and let me know if you have any comments.

Thanks,
  Andrea

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
