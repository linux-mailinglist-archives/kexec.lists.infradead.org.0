Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3181525A4
	for <lists+kexec@lfdr.de>; Wed,  5 Feb 2020 05:42:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36drdGUlY2vSqKHPTfo6CtMlZRmhJwwx6IK5iOR4bCc=; b=tb+Y9FVGgNI9Xy
	6QHEhnC45dY5StOLlnf8zLuQnzQsbO9RboOUazc1w2IsqaG4LgVWkRZuVx1ra+1nTdO7UF6W+J6hM
	uwcpF7bcIm8ijtkhFej4QvRi1AVJAdq6tXbv9VaflDi1OS9vseq7yjgJo8P04buAVdPQj+gs8jhy/
	+pXvsd9z/D78++5ZpLQPt+iJbb7ii6pS2O1f4Gtvj3WynzsxHnB9i2kuwWPUf9Mr1vCJFtS1cQ4C/
	M3ec9rkEzNey3YswVgYvwIY3Q2FT+jj7SHiAdIhFVY7uRHPgnmY1xEuNgWFrjSy790nPMS6/xJ96Z
	1iQLQFMzjJCCYtOXjWXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izCWC-0004Ht-BP; Wed, 05 Feb 2020 04:42:28 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izCWA-0004HX-2D
 for kexec@lists.infradead.org; Wed, 05 Feb 2020 04:42:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id j17so418789pjz.3
 for <kexec@lists.infradead.org>; Tue, 04 Feb 2020 20:42:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9STCbbuzxRjANH/8OF1zRC4hgXnZKSXlKFJvi0xPy10=;
 b=s0QmZBtaYq9wJo2YpX882G8dcPqRlZeffRqtA1pRr6NzmdCX6drgxppRxSUmkT3YR3
 ZBGG0DnwvBNW64eDV4GYDLzdLIrDXQE1KTHSbzRdbL4X2GpUls2lbY8jWYYL4RDStb1m
 RBZJtUsHXHET38dFjNc3vUSiaCOiZ06xH+krCTZpDotgW71JNw452hxQt/MaEpzd5FPV
 mDUEU+IAygqTbV0b5wt8n1QAUvfwdqYoLoU/XAJbIkWQubg22QMuTHxFGFMrZFz0Cd4k
 QCyVJIKtG0R90WnRMWZKKnKRPoQTuIY2iLnPt7SqOCumyd5Oky2XKCSQryWAMfVnxSvF
 nrxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9STCbbuzxRjANH/8OF1zRC4hgXnZKSXlKFJvi0xPy10=;
 b=JSHJqwKwWu12MwIgJRg1JdfSuW1LW/cHRsFhvCqnetQlg+uIfVduJ8dFwTOpW81D5j
 TzjpGJRZnz7zUdnAzFPD7el7GVAbXZjFebE/iCOU91h+L0TlFdJKr4nT1PH3P4m/eVOq
 Sgcr0R2zJ6Sf1NUqoX8YksPrUaFvenfm3J/Pm3C3hnvarkP9BPCWoyhBfU4L7HkeVv07
 0IY6alMEmrqUUfp4XvxRmNOrYroEem1LeV0tYit219qIjWTyZZhtZECLPLctJhAipFb6
 JiyRCZHKQsEGIv1cveBSIiH1gcQ12pEYtszyPa7Ax/k/L4tKyQnENCyv7TAXGIACHFkY
 vMOg==
X-Gm-Message-State: APjAAAXIWGFiXWkOP8McFJ/0qPvSYJQ7byO8LXRgzKvNHOk72itk3oWV
 ZHGBI8B4v15ERYzkb0P1YGA=
X-Google-Smtp-Source: APXvYqxmOsNib4rBggoP0d1dSb7To7lUzPBF19d+DrOzknfbGCeWJmN9lff3J+lL3SncHQkJBQ+uEg==
X-Received: by 2002:a17:902:8341:: with SMTP id
 z1mr32369408pln.178.1580877744529; 
 Tue, 04 Feb 2020 20:42:24 -0800 (PST)
Received: from localhost ([2401:fa00:8f:203:5bbb:c872:f2b1:f53b])
 by smtp.gmail.com with ESMTPSA id 144sm24548510pfc.45.2020.02.04.20.42.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 20:42:23 -0800 (PST)
Date: Wed, 5 Feb 2020 13:42:21 +0900
From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 0/2] printk: replace ringbuffer
Message-ID: <20200205044221.GG41358@google.com>
References: <20200128161948.8524-1-john.ogness@linutronix.de>
 <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <dc4ca9b5-d2a2-03af-c186-204a3aad2399@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_204226_356993_7945187B 
X-CRM114-Status: GOOD (  12.01  )
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
 John Ogness <john.ogness@linutronix.de>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On (20/02/05 12:25), lijiang wrote:
> Hi, John Ogness
> 
> Thank you for improving the patch series and making great efforts.
> 
> I'm not sure if I missed anything else. Or are there any other related patches to be applied?
> 
> After applying this patch series, NMI watchdog detected a hard lockup, which caused that kernel can not boot, please refer to
> the following call trace. And I put the complete kernel log in the attachment.

I'm also having some problems running the code on my laptop. But may be
I did something wrong while applying patch 0002 (which didn't apply
cleanly). Will look more.

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
