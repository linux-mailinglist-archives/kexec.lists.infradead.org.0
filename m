Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E8F1D5AAC
	for <lists+kexec@lfdr.de>; Fri, 15 May 2020 22:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=128W49AcuZ7enzo7WNwkRgufgFnY4SpzXI0e/5DgwOo=; b=KzE4Nx73/6Yg27
	m/SyWRx2ahMssnSb77z8wON17ZOynLF+umTgemYtLoB3eMPpitiLI7TYVcj3FLjHthB+F5NkR/5hC
	8WhY/JzTHg16LAIPUxioq2G3B+YRWrQ2LQXG8aMTHL1yU+3948tLu2tQs9SHtA1gVGeKX8hWYoSpp
	H3RxtgYys3HMJAk4aoP0NEXmbybDjo9FFn/f40CHFIOmbR8lvIninzG10NPuL2HL6v/ogvyOhc6GA
	h5/u4sqoKV5772ebtWhfMMObUaqXm3VJLPw0jOHhW1ki/PxWbonQ2qZwiEdLOf3KewfPQf9u645kx
	EowZqPTNp8SYA4kiZh0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZgvB-0002iQ-1A; Fri, 15 May 2020 20:27:05 +0000
Received: from mail-pg1-f196.google.com ([209.85.215.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZgv8-0002hx-MR
 for kexec@lists.infradead.org; Fri, 15 May 2020 20:27:04 +0000
Received: by mail-pg1-f196.google.com with SMTP id f6so1537286pgm.1
 for <kexec@lists.infradead.org>; Fri, 15 May 2020 13:26:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BjLEoH1/onS9gWc/WGPUDHWQzqwo7CrmGrZOV7KWi24=;
 b=NCsXJXs8Q+b89HC502ZuL6qy4GWeFgkr4izsOOLqMKecyuSxH6MhM8Ld+h/+ZrHx0e
 jr99wQa2TQcTpbn+sFOm0b5BvCxSMzYLEahELuiysLLWS1LEUhx0vO6JFjkjw3jptIgQ
 f3MJ8HGV+10cCmCRrDdu30p793r6JupAZaskPnJYQGQb8YYdEz8nG0UoPBczSrOI13o5
 0toinemzBd8kC3PaAXBk1rNbQeZG4lDcFNOyzB4aj3w+36v2KITZFOCqO0/foqIOQINy
 w9nm39mi2TXluJmm8+E/1nRFSFAmUcrMjswnqJiIdsXHREOXbiCczL5iuP9YHa0xfhLf
 Q08Q==
X-Gm-Message-State: AOAM532vTL8XngFx1l2FcAYjsf1M4IlZMNvtIGHIK3xVmD7B9KVPCSIK
 DQni9ff0h5Soj0deACDCO6A=
X-Google-Smtp-Source: ABdhPJw55POBvLJW1yTqamx/YQ9pJ9208HAhysD6+dQoHJdWvvegvrWWTUXGJdA6DaxsTXI4n7DFIw==
X-Received: by 2002:a65:608c:: with SMTP id t12mr4951599pgu.46.1589574418563; 
 Fri, 15 May 2020 13:26:58 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id d18sm2638767pfq.177.2020.05.15.13.26.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 13:26:57 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id B49A240246; Fri, 15 May 2020 20:26:56 +0000 (UTC)
Date: Fri, 15 May 2020 20:26:56 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v5] kernel: add panic_on_taint
Message-ID: <20200515202656.GZ11244@42.do-not-panic.com>
References: <20200515175502.146720-1-aquini@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515175502.146720-1-aquini@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_132702_734175_99F81B1F 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-doc@vger.kernel.org, tiwai@suse.de, jeffm@suse.com, bhe@redhat.com,
 corbet@lwn.net, labbott@redhat.com, dyoung@redhat.com, AnDavis@suse.com,
 rpalethorpe@suse.de, keescook@chromium.org, jikos@kernel.org, cai@lca.pw,
 bunk@kernel.org, tytso@mit.edu, jeyu@suse.de, gregkh@linuxfoundation.org,
 rdunlap@infradead.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:55:02PM -0400, Rafael Aquini wrote:
> Analogously to the introduction of panic_on_warn, this patch introduces a kernel
> option named panic_on_taint in order to provide a simple and generic way to stop
> execution and catch a coredump when the kernel gets tainted by any given flag.
> 
> This is useful for debugging sessions as it avoids having to rebuild the kernel
> to explicitly add calls to panic() into the code sites that introduce the taint
> flags of interest. For instance, if one is interested in proceeding with a
> post-mortem analysis at the point a given code path is hitting a bad page
> (i.e. unaccount_page_cache_page(), or slab_bug()), a coredump can be collected
> by rebooting the kernel with 'panic_on_taint=0x20' amended to the command line.
> 
> Another, perhaps less frequent, use for this option would be as a mean for
> assuring a security policy case where only a subset of taints, or no single
> taint (in paranoid mode), is allowed for the running system.
> The optional switch 'nousertaint' is handy in this particular scenario,
> as it will avoid userspace induced crashes by writes to sysctl interface
> /proc/sys/kernel/tainted causing false positive hits for such policies.
> 
> Suggested-by: Qian Cai <cai@lca.pw>
> Signed-off-by: Rafael Aquini <aquini@redhat.com>

Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
