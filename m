Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD70C1C9E70
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 00:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBHVo4p9h5SeTRUsW+hFoZM/xV3vRBWpf/vWcL32E1k=; b=crmCoW7nAxB+hP
	Lx3/1H/vkfW9LTCkQ5QOpVLMhwwGgkp6jWBWhKZF99WjH/4tNwnyzjaUqMI7jqLYu0co68pm+PM9K
	8uPZBEuubI6vAK5x3EdYs+toz5pWOqYgBFQRMLuvNtggtK2gVkXRfB4OSEuUJNe8sdfvbqtYD2Mzm
	zkMRNM4qgqWJQjhKUBxpeHaMMyj2wWJ8Q+OVBmGPAZE/W1mukzwQycsQsmhFdYX45FCvTLzzejbDb
	BcWF00/11pgebYXDIp9uaimhZ1yyDPF/HqD+W+MnXzwD04Tpeh6wyipS4yYYxbvT6rZG1+HtGXdy/
	BVmxLXZs7JXOJHAFIw0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWoxw-0006wc-Hr; Thu, 07 May 2020 22:26:04 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoxu-0006w7-2i
 for kexec@lists.infradead.org; Thu, 07 May 2020 22:26:03 +0000
Received: by mail-pj1-f65.google.com with SMTP id y6so3289644pjc.4
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 15:26:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DZd2V6aZzC95wLlSgPEBXlyeRSaAQc/BSqmBsSSCJnY=;
 b=OaMS4ZFSQCSJRrVW3M9NrYeFwqeHGBRa3h1KKtSrmiAZYuXrTldGPhWjqatW3LxFMY
 l5OxqfchAk9GLJDsswUgqAWN3dLGEdPT898QDKq0MI1lJDaG1LWchIpw0T33L+oJoGbB
 s7HPmwsXEIHIv6dfkAz7RMjgFKx36PJyboY9GSrGPRBsv5vQtDUuAVUU9XwPbzPrSlPj
 3x2XpFy6tyERrRC6P3ub27A81tao7KMOv0WIiBzFKn+OFee2UyKDf49swyMy2yaGLN7A
 ixXsru7hluN7JqY7WqJDJJDRinNQupIIvEzczpsttcNdg9bAOAF7gUFvHyLRxySbxEFl
 i4bg==
X-Gm-Message-State: AGi0PuaTmra3IexH1NdfLPztGtl815RXEh3W7qpA9rrRIiPq9a5SzcoO
 q33OYWphuoFDGf9qVV/iiyM=
X-Google-Smtp-Source: APiQypIPwdzfOMX951uSbn33ONVVuG6n8WfUdh7gFNW66WEA5AQCyAZiEcEcEVoNy/HcIubnSplBmw==
X-Received: by 2002:a17:90a:d3cc:: with SMTP id
 d12mr2582928pjw.158.1588890360942; 
 Thu, 07 May 2020 15:26:00 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id h5sm769234pjv.4.2020.05.07.15.25.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 15:25:59 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 04A1C403EA; Thu,  7 May 2020 22:25:58 +0000 (UTC)
Date: Thu, 7 May 2020 22:25:58 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507222558.GA11244@42.do-not-panic.com>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
 <20200507184705.GG205881@optiplex-lnx>
 <20200507203340.GZ11244@42.do-not-panic.com>
 <20200507220606.GK205881@optiplex-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507220606.GK205881@optiplex-lnx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_152602_119503_C5019AE8 
X-CRM114-Status: GOOD (  15.96  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, Takashi Iwai <tiwai@suse.de>,
 Jeff Mahoney <jeffm@suse.com>, bhe@redhat.com, corbet@lwn.net,
 Laura Abbott <labbott@redhat.com>, dyoung@redhat.com,
 Ann Davis <AnDavis@suse.com>, Richard Palethorpe <rpalethorpe@suse.de>,
 keescook@chromium.org, Jiri Kosina <jikos@kernel.org>, cai@lca.pw,
 Adrian Bunk <bunk@kernel.org>, Tso Ted <tytso@mit.edu>,
 Jessica Yu <jeyu@suse.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:06:06PM -0400, Rafael Aquini wrote:
> On Thu, May 07, 2020 at 08:33:40PM +0000, Luis Chamberlain wrote:
> > I *think* that a cmdline route to enable this would likely remove the
> > need for the kernel config for this. But even with Vlastimil's work
> > merged, I think we'd want yet-another value to enable / disable this
> > feature. Do we need yet-another-taint flag to tell us that this feature
> > was enabled?
> >
> 
> I guess it makes sense to get rid of the sysctl interface for
> proc_on_taint, and only keep it as a cmdline option. 

That would be easier to support and k3eps this simple.

> But the real issue seems to be, regardless we go with a cmdline-only option
> or not, the ability of proc_taint() to set any arbitrary taint flag 
> other than just marking the kernel with TAINT_USER. 

I think we would have no other option but to add a new TAINT flag so
that we know that the taint flag was modified by a user. Perhaps just
re-using TAINT_USER when proc_taint() would suffice.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
