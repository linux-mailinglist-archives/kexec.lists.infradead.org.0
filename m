Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8831A1D4AD2
	for <lists+kexec@lfdr.de>; Fri, 15 May 2020 12:24:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgBDahGm+qh8lFreK/hGfPNnN6YvetMOKLhL8NUm3UY=; b=d/lG3G2SlpDwvd
	8xEidDjvqsSL6FzErsyLBtBDFL6NPJI1cWkgTr5NS1XWh5Wo/T8YiJFpbk3SJK1dmeckWw741/zmN
	20vFVoUvHNcZOd0RCnLqytAe/EZWw8H3JDnUuE4hFFkSnSRta/Se9KOLbWbJAXrrm/OS5zlR05DT6
	nYioYpE6fR+ML3ROM0BYID3Zfjr1N45fN/fq3fo/DT4hfGe7j81F6A4iSO54f/uBW+0Mv9lkW6/8O
	uVwlqmYbOVQrVjSKISZ35tahSPB1YOykQiZC8WhDMxSNS22F9mad8XODDJt0h9RHOgY6fOZghuc6K
	VK1avuUi0C+fRgpmMvvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXW5-00085C-QS; Fri, 15 May 2020 10:24:33 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXW3-00080h-BD
 for kexec@lists.infradead.org; Fri, 15 May 2020 10:24:32 +0000
Received: by mail-pj1-x1042.google.com with SMTP id s69so720375pjb.4
 for <kexec@lists.infradead.org>; Fri, 15 May 2020 03:24:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PGybp4d555g//9H3GiWo4hvFh60jsI+s9m8Oige6iHM=;
 b=mU7NZ5lTbT5eBu8L5irKydmLWQdyjrqCs7Ncjj9uLohQKJ+Sh7nq+Cqcks/IQjyMdv
 UY4CkOMjWuf/EhUm8Nrme9nle0BqJSr4o/wrW5VM61L8fiQb6STCQ6g9aMEZvrOYO5r1
 hr7orQ8oqmedWZ9EuLxi0lBJDoPtlhJ0CvoRL65sUXi3tgyd7Y8O9/dc4DZF4FSmsB3Z
 a4icTgldsj7/BpPxyMOQbVqmglv6HatFAXiryJA0Y2q05fOSETGzE6Mi0zafN585zwGp
 NQQRqo2xZtOkjOPmHaqHwwt/krpwfxFW2+yh1lWvBNr6GIDjXhbVmyFVfXxUz5raBCSe
 IXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PGybp4d555g//9H3GiWo4hvFh60jsI+s9m8Oige6iHM=;
 b=I7ovoVH6cIG6C3o4hlO7YOOWE+zbtdaJhshmNG8v3YAZROp6Bdq/DvBB+uRILaIVcQ
 j3MKrSJjpXxj05t65YAK4bsA1zzbQ7mEVSD778Rz5aQ7fCwYj9mgwLvDvYn6vikzmFgY
 j7NPu2fnpJXmHCpm7hOCqRjb8Vtxb5R4p8mfEVlAMI9GZm9yD7ozldOx1zXy2KUgb9wV
 s7drE5vMcEocyFm6LoWZWRGW7hMsff+LZJrvWRXF/15CfOTbVZbQI2qfkkmd427FHQET
 UyKGxyoIg/Tp1w6YLDQoo47WG5IpG+YaMXbnAmBwo4qx1F4knRKUNJbWWz8aPsfhMySE
 o/iQ==
X-Gm-Message-State: AOAM530X6GYpryx2tmJlthdlWgBfZ9bLQxUrJkRC4+X5zuVr/ElJJB3O
 HFuR1rxUhp9BMKx7HQd0Ki0=
X-Google-Smtp-Source: ABdhPJyNmjuyT3RDx6u+RHl1lI/BSy3F2aEZvDw9NwTz8Dsv0aIVB/7o/9VsJm7v+zskOFPCOOoCGA==
X-Received: by 2002:a17:90a:e147:: with SMTP id
 ez7mr2724356pjb.128.1589538270185; 
 Fri, 15 May 2020 03:24:30 -0700 (PDT)
Received: from localhost ([2409:10:2e40:5100:6e29:95ff:fe2d:8f34])
 by smtp.gmail.com with ESMTPSA id gn20sm1301945pjb.24.2020.05.15.03.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 03:24:29 -0700 (PDT)
From: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>
X-Google-Original-From: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Date: Fri, 15 May 2020 19:24:27 +0900
To: John Ogness <john.ogness@linutronix.de>
Subject: Re: [PATCH v2 0/3] printk: replace ringbuffer
Message-ID: <20200515102427.GB42471@jagdpanzerIV.localdomain>
References: <20200501094010.17694-1-john.ogness@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501094010.17694-1-john.ogness@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_032431_407859_25C4CA3B 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergey.senozhatsky[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On (20/05/01 11:46), John Ogness wrote:
> Hello,
> 
> Here is a v2 for the first series to rework the printk subsystem. The
> v1 and history are here [0]. This first series only replaces the
> existing ringbuffer implementation. No locking is removed. No
> semantics/behavior of printk are changed.
> 
> The VMCOREINFO is updated. RFC patches for the external tools
> crash(8) [1] and makedumpfile(8) [2] have been submitted that allow
> the new ringbuffer to be correctly read.
> 
> This series is in line with the agreements [3] made at the meeting
> during LPC2019 in Lisbon, with 1 exception: support for dictionaries
> will not be discontinued [4]. Dictionaries are stored in a separate
> buffer so that they cannot interfere with the human-readable buffer.

I'm willing to bless this. The code looks good to me, nice job guys.

Acked-by: Sergey Senozhatsky <sergey.senozhatsky@gmail.com>

	-ss

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
