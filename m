Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E0615CF5B
	for <lists+kexec@lfdr.de>; Fri, 14 Feb 2020 02:08:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxXFiyDN/SZiBQxM8lZwlh3j40LnHaNMPJ/G2EnUd5I=; b=AfH6QXaAzTyihE
	A9jPW9Be8eo8crLDMpX9HLGpTQ/9J/m3ODs6mV3nD06tbTzXL6de4UE2sf4G+4IoDPpixP64s6goD
	Uav9Xs9SABg3Aw59yrqpdLSNoWmGmxEZhXHAx8YxLB/TIPqF2g1PkKshri+XpFsUjqbEcLV7xVV2B
	UBTzQalRw6Zei7YojzNdpJ+P0kBYEquqROZyzNjJoK/Ubnw9FyVWCfSWdMvo4pNzOlJ6gYCUgrQw8
	MeZ5DC/dmCmpYR2YgJznPc+OWrXWQWPeGqiocCnzvbG0uvFFF0wZ3U1pWnuR5SkAq057Pe9PdjDQ8
	vHv3eqlC9zFKqFkn5Sqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2PSb-000200-7q; Fri, 14 Feb 2020 01:08:01 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2PSY-0001za-G1
 for kexec@lists.infradead.org; Fri, 14 Feb 2020 01:07:59 +0000
Received: by mail-pl1-x641.google.com with SMTP id d9so3040304plo.11
 for <kexec@lists.infradead.org>; Thu, 13 Feb 2020 17:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=3CPCapu1GC3zKeozUVk/96Rk3HOBQ2hayAYwRebPM/Q=;
 b=HFpHZ5jey714qrgQOWFv5LsO1c0xeYgTZ6kfhpdZ5Et0raLU1SaiBPFLShRc/8A/1R
 sTjlilcCAlpFlegVgoq8H7ksteFvpS15E2LVmoGkXb6rAdMIum8M22TTqjddmuvRQ5II
 8SznGO6UmaLebdD0335Ff16adN3Ad7DoVGULlf33PCKQ/EnyFbL0IQFzpOH9CKDJLb/7
 74qfpc+EGryGmVB4bw+eTXU12t4aiEYPdzaDUoMJXVTDLjUgdv/+VP4GSUn/JPTHtX9V
 9TUD7s99AzmksXTxEUGoJv7HOpRa8pPW4AyV2ujGGd1SC5zKTgor12o+0B2w5JJ9TpYQ
 4oSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3CPCapu1GC3zKeozUVk/96Rk3HOBQ2hayAYwRebPM/Q=;
 b=ScaE+vqxjWJ4QtJfAoPzTxNIsyozlBl/rMzw+bGnMI/g/lnVwPNl5KKulbUPIAVU1C
 3s9JuPXann7e4NLL9H14XaVbGThoyit/oePI52GIfEx+H248Ry2wxzF64+qS1IlNeoaJ
 C7bU/G5q28cP/dDHURAktRW5o2YBJJ2AZbYWOpFXIyBBPjzOiCvKXQC1I/PIYEJPaSGA
 iSYYwTjKj2Tz0aMCt9kjztORPknKfRdRvqsN6xVPk7doWsTc3aHBf61tm25p1vB/d3or
 4tgtgBvw9bDebDeilkZAqsCTuqTmCLT7vDygocrV+6x96nsFTcufkU2vbPN1zWHSvupJ
 DO9Q==
X-Gm-Message-State: APjAAAVKGIE8GdgBUBU/uzaKoeXo+i+fiCY0NY1s3Auqpe2nohOsSgIp
 CMyu5l0l4pookZjDXekzkKE=
X-Google-Smtp-Source: APXvYqwfqxrXmr5gzsXHXHDZ/siiAgsJ3md5k3TstMkBABjkXqBrfETvfO7gRdCR0gz4XtHzr/NFDA==
X-Received: by 2002:a17:902:694b:: with SMTP id
 k11mr693763plt.334.1581642477752; 
 Thu, 13 Feb 2020 17:07:57 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id 3sm4468953pfi.13.2020.02.13.17.07.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 17:07:56 -0800 (PST)
Date: Fri, 14 Feb 2020 10:07:55 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200214010755.GA13877@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
 <20200205044848.GH41358@google.com>
 <20200205050204.GI41358@google.com>
 <88827ae2-7af5-347b-29fb-cffb94350f8f@redhat.com>
 <20200205063640.GJ41358@google.com> <877e11h0ir.fsf@linutronix.de>
 <cd7509a5-48fd-e652-90f4-1e0fe2311134@redhat.com>
 <87sgjp9foj.fsf@linutronix.de>
 <20200213130720.j4e5qv37am2bapup@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213130720.j4e5qv37am2bapup@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_170758_536665_15A02D67 
X-CRM114-Status: GOOD (  16.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky.work[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrea Parri <parri.andrea@gmail.com>, lijiang <lijiang@redhat.com>,
 John Ogness <john.ogness@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/13 14:07), Petr Mladek wrote:
> On Wed 2020-02-05 17:12:12, John Ogness wrote:
> > On 2020-02-05, lijiang <lijiang@redhat.com> wrote:
> > > Do you have any suggestions about the size of CONFIG_LOG_* and
> > > CONFIG_PRINTK_* options by default?
> > 
> > The new printk implementation consumes more than double the memory that
> > the current printk implementation requires. This is because dictionaries
> > and meta-data are now stored separately.
> > 
> > If the old defaults (LOG_BUF_SHIFT=17 LOG_CPU_MAX_BUF_SHIFT=12) were
> > chosen because they are maximally acceptable defaults, then the defaults
> > should be reduced by 1 so that the final size is "similar" to the
> > current implementation.
> >
> > If instead the defaults are left as-is, a machine with less than 64 CPUs
> > will reserve 336KiB for printk information (128KiB text, 128KiB
> > dictionary, 80KiB meta-data).
> > 
> > It might also be desirable to reduce the dictionary size (maybe 1/4 the
> > size of text?).
> 
> Good questions. It would be great to check the usage on some real
> systems.

[..]

> I wish the dictionaries were never added ;-) They complicate the code
> and nobody knows how many people actually use the information.

Maybe we can have CONFIG_PRINTK_EXTRA_PAYLOAD [for dicts] so people can
compile it out if it's not needed. This can save several bytes here and
there.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
