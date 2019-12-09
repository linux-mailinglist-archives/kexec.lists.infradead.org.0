Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894DE116907
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 10:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azEOwPHbDfc68o51BhqgB3bPhCw27QXseH1bIU6HDjA=; b=jLQkAWUaD8TjzQ
	t5taN+buJU4VrDLat1BoHbU6RM6C7LWOpc8MFUMq2xgUT1sXMaK2VXTJkZK+gbKKRIWE8TvWgnt9u
	AdOpeilI10tJJzOURJ/KbUa6O3rixbySz0cvRLJnsj6fBJNML+qjnnoqe0SeH/ZQTtusNZ/4B2/z0
	B8qgHdRa4it+xF3E0GvUiD7+8HEA/MFWtsoACuulDkGkRD9v7GrzBw23JPUEvlsXXjqIrFIJVKR0e
	i7Vl35VtQepe3J+5Z70nM/O8igz1bFxdWquURhRln7nbNpZViN8rNSmXSOWW5T4psACo9kmuU81Pb
	yT+y1D9MOG2nbuThajgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFD1-0000Gz-12; Mon, 09 Dec 2019 09:20:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFCw-0000Gg-R3
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 09:20:00 +0000
Received: by mail-pf1-x441.google.com with SMTP id q8so6897219pfh.7
 for <kexec@lists.infradead.org>; Mon, 09 Dec 2019 01:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=rblqrVWgHOkLe8re4/2fq7AZG311veSlNYjEA4Bdios=;
 b=irbGLck+knp1Ju7e9pP0NpD0AzNpAOlf8ABivW0Ml5lBNACQwxbCqw/lIuUQizc3ib
 Q39CrDMnBtHy6nZ4ffYTzmFtVgCPgXeaxEwC7sOuahuvXz3logOsd1CHSEqCmTmjvFcm
 HoMTL/HXPWOcQWNsKWs44ZibzyoQpOiPd6j6mYchuVyS1hEEt5Q0PyzsXr2IRXIB1MV6
 8rCxtypGhoVBovjl7cZFdfLYsZg+zZa7RVIZmPXwgQ9j6yivgaIl+XEJyK1+vrsNtspY
 gs7pgnuI6VDhcVzKE1fQ9mT9V0x/5Zja7pJG5ZZeRvBGAqroID0CX6KivVSqEkyHPJO6
 HJzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rblqrVWgHOkLe8re4/2fq7AZG311veSlNYjEA4Bdios=;
 b=d5J0gPrMUMtCxwK0ThfluUaHTEoJZ+fLc2jlCFApZC/wiLxwGnw9F5HSGRyWM2gUAY
 1E4cmK4Rhok+LsAgxO1+CG0TilKNafpS2ggq5EAmnoFZ9XNUbgQgRwYcn2gPFbrtLbdL
 FJhkPRrSMxFJjX61iQXajeFcsRiO/7uQnxDnbR5sMkKqrLme+li5/NdO4w9kjT4wqpxW
 ibgIYHg9A6S+TQANRVc8f2eA7pJ9MSEQrRGFChKplbhzAVygkOHzm+tU7OZHnBjWRzTY
 Q4nZhDT71e9WWAZorhCv4kWyBf6s1fWveZANpr2OUr8lm10CE9bytVR735yz6u2gehAS
 RrnQ==
X-Gm-Message-State: APjAAAUdz0FaU+nQ7YakXqGN18Sv7b6/bt6iVm+RFIwdqa9+fKA8dWbM
 XKu6uoyB454SyGATJGK9M90=
X-Google-Smtp-Source: APXvYqw2ZlZOWUS2rME9afylFB5pXb3oqENJCiCE0CvOZ4S8LNdoJJ6zejKVkEIpVL2q9JwflgtFyw==
X-Received: by 2002:a63:1447:: with SMTP id 7mr17603167pgu.22.1575883197881;
 Mon, 09 Dec 2019 01:19:57 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:250d:e71d:5a0a:9afe])
 by smtp.gmail.com with ESMTPSA id z64sm26719931pfz.23.2019.12.09.01.19.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 01:19:56 -0800 (PST)
Date: Mon, 9 Dec 2019 18:19:54 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: Petr Mladek <pmladek@suse.com>
Subject: Re: [RFC PATCH v5 1/3] printk-rb: new printk ringbuffer
 implementation (writer)
Message-ID: <20191209091954.GG88619@google.com>
References: <20191128015235.12940-1-john.ogness@linutronix.de>
 <20191128015235.12940-2-john.ogness@linutronix.de>
 <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202154841.qikvuvqt4btudxzg@pathway.suse.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_011958_876104_0370BCEA 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sergey.senozhatsky.work[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrea Parri <andrea.parri@amarulasolutions.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
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

On (19/12/02 16:48), Petr Mladek wrote:
> Hi,
> 
> I have seen few prelimitary versions before this public one.
> I am either happy with it or blind to see new problems[*].

I guess I'm happy with it.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
