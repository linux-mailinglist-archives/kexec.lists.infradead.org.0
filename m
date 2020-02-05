Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42E115284A
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 10:28:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzZ5LLO1kVBWskY99ViegSqPRbeqRJcTuGbTvA5IoYo=; b=WELuqhS0SX2Lsu
	xVGk69dgST2nM6RF5LhnfmeUlUPTe6yVUVHaZorEzHoPmDtN/KbvXhBHOZz4hcqTml9or3gys6+ET
	HQ5poehzBqtFZX33dk6dX6Hzle4kKZDzL+YdfXrwQhfC6ZPC1ZIezscFjvnSbZCboxjWU+dfXVR1V
	IUJHWux9C12s5BR6BLzID9FjkAju1UAZ5oMgjXbSChTppn5xgKTEyH8mI21bR5OiO7Fpi/d8pBmD3
	UfVg1JVuyf++Ul5QI49lUPmteJHrWmkgyl5BAwbDmOjhc10dXqNgksd6tzcW5ksJD4rHWlhHZMte2
	5BiozbSlhyP6bEbkhkig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izGz3-0001lj-7m; Wed, 05 Feb 2020 09:28:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izGz0-0001lA-9l
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 09:28:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id y5so888626pfb.11
 for <kexec@lists.infradead.org>; Wed, 05 Feb 2020 01:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=liob+tcspnBh7kjnzeK4GDhJtl3bgaUNO40RmaJUskg=;
 b=Ny13oo+2/v8HZux/gQqptKX/feLcx/SPhfu1sSFbZGi7EiDPe3YTQ2MIQfV4Hglze5
 Obh0QfSNSthtLjKLd5BSSYrwDRj7lqSe5LASBPEXuZuN5cSXE0P9/2KoAHzgE/RuMEIC
 z3FrE1eXaSEUgn57j7A12rmGdDV2I9N3k3JQKbmgbwdIWvlRqP+t1RDmRQL5sdR28a2+
 gMu05bWsmuh/RuRfYAdSvRIiGuNXHWiogUhG6g91w3OMN5EHMO18AmHbewv37NKCDcvg
 /0CNwvWzFKm8knuGy4NxwGTVEuqz/L6LkmQaJcazaasdwdzxaqwtVL7txzqP1USkjVwe
 GuDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=liob+tcspnBh7kjnzeK4GDhJtl3bgaUNO40RmaJUskg=;
 b=Zn4Z+B9xcQGpWbrYL0Or0troVKf/QjXvrh5QW8ERXZXccpcvFyJ/DtqkW/Iqmg927Z
 4DVy74xh5OLxNZy+7lKgX9BAIu57KyAySp9278xTFSWRX4fWbO+xndSIqyOVbmknwCgK
 xfHk+GdFjvs78BiUlCfcxlgpeAeYBKZ3OjcEMsjLht65mXXLX5quPdRh8Y9cvPpeiFOx
 G157fRZ+SJ2hdQIAqoAPu5QvjXeVXiGh9zDeXS4LZXiOVperEoH94a+vk13hHGT3Thfh
 5sQ+VDD8tbYTmhjbwoZp8ExHWH6MF5Pq1ID06E3c3PpZxFcwe7pse+2MCKEjq4RsBwhd
 Pq0w==
X-Gm-Message-State: APjAAAX2NI1rAY2aL06e6qtrRPge8xpOslKT0MY/Qa8ZDZIAWN2cCzdT
 OuIHTnxm+Be+/1DUjr6E/1Q=
X-Google-Smtp-Source: APXvYqzUYD89tqXl79RKxou+u3SeMQ0FtR+fULgDjk/MJ00FgHfxk1gW7p/8zC4D8efHq3LFNXJ8ng==
X-Received: by 2002:a62:5447:: with SMTP id i68mr36327053pfb.44.1580894909513; 
 Wed, 05 Feb 2020 01:28:29 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id d3sm26115099pfn.113.2020.02.05.01.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2020 01:28:28 -0800 (PST)
Date: Wed, 5 Feb 2020 18:28:26 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200205092826.GL41358@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <877e11h0ir.fsf@linutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_012830_343264_477865FA 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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

On (20/02/05 10:00), John Ogness wrote:
> On 2020-02-05, Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com> wrote:
> >>>> So there is a General protection fault. That's the type of a
> >>>> problem that kills the boot for me as well (different backtrace,
> >>>> tho).
> >>> 
> >>> Do you have CONFIG_RELOCATABLE and CONFIG_RANDOMIZE_BASE (KASLR)
> >>> enabled?
> >> 
> >> Yes. These two options are enabled.
> >> 
> >> CONFIG_RELOCATABLE=y
> >> CONFIG_RANDOMIZE_BASE=y
> >
> > So KASLR kills the boot for me. So does KASAN.
> 
> Sergey, thanks for looking into this already!

Hey, no prob! I can't see how and why that would be KASLR related,
and most likely it's not. Probably we just hit some fault sooner
with it enabled.

So far it seems that reads from /dev/kmsg are causing problems
on my laptop, but it's a bit hard to debug.

Nothing printk-related in my boot params.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
