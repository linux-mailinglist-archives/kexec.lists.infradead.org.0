Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2C51FC5F9
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 08:05:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PgVvchuMNuTjwNPa7O+tzJJMlgFiI3O4+FQDJ7P+FtU=; b=RYA3pKkJDYbqmFYw7e5y7fwDp
	8LBN9xHgxXPKxGVFKv4eqIh8fpWZY/Gf953Cld2N4BAuIgBtXlgXm2yTMt7OFgsZunKJl2rqycetj
	AIOOp4NnT1Msa69AcsZwS6j8Idxxiafqs9EDgtWaaKqB9cdj6zKERygXZ6u23pMHPTfR/pQR9mTaQ
	oM/ajk2t0lZ+7YrmlvHvAZrVM1czP9RApGP4I79j4nN8JR4YCrloxpCZo6DuUjuVp1sgNjv1vDGhD
	XgXxWEEhAtlvPkFQNIXOGHwN/uifWmEU0tS2PCultBGa9ThMW2sJuwNHXCsm4MtzH23UkxRjvLVqN
	5H8oN0K4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlRBx-0001e5-23; Wed, 17 Jun 2020 06:04:57 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlRBt-0001dV-Bz
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 06:04:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id t7so748806pgt.3
 for <kexec@lists.infradead.org>; Tue, 16 Jun 2020 23:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=+W1HskNxeMqmgYOmVvqy0OMnUXy8c78K9pX9cxdCWkg=;
 b=AerThIy8W5NjPzus3O6oc0DurA5f17iYlxWXW/rE8ReH9SyjfP5yA6uY1duCKNMltk
 wtnGFR5QlIZAMlrESr1tAiR0XPoClsVFK3zAwQff+rl1K+zwRGxB6ppnR3ZmQMaMpeOp
 jUepAOa0o9ha9dKyVpOLjoAufW3hf5QEvJ5rs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=+W1HskNxeMqmgYOmVvqy0OMnUXy8c78K9pX9cxdCWkg=;
 b=AfyL4ikEbbXgJjz6mKni8PZueF1LLHh2FBcbK8Q+UkpVuBXgF4fXC64NsSxxQE4W+J
 lxgeEq2PAzABc8pFEAuAPZP8cWSwfI9C3gM+tm4mtp2VTa9kBgTJsAZMAA3mCuk1/8+Z
 5DfvtGDVdU0IPy7eeIrVnpv7rrA21rIi87rTcw6np+sTobBqd5xZp2OmulEADAByPeJD
 Bb08IADCmRAx6WWPvoVpjXKjLZpWL3Dwn3Vzne4aU6Bo0EXzmG3y/K+HJQ2z1Ruq/ldF
 DsA6s9ZAr8+hsVHpRBDWoPFWy/ePU93IWrhnO/Hp/8wwQfJItmVkK5EeJuvizS6ddomz
 M+gg==
X-Gm-Message-State: AOAM5308kUfiacFfJteqQCd7xxPDeR9tv5SWeSEUTPEWDohtTdhDxjXS
 792whuM4lQQZ12oUCq7VvF4J8Q==
X-Google-Smtp-Source: ABdhPJwsHOJcpJiPWpog9WnRcLYf0++sxWkr4zCCyszCJLrbOv3D5/SciaDYJ7vzeuO6a1I6Fam7+Q==
X-Received: by 2002:a62:9242:: with SMTP id o63mr5456277pfd.310.1592373892584; 
 Tue, 16 Jun 2020 23:04:52 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id t76sm17095737pfc.220.2020.06.16.23.04.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 23:04:51 -0700 (PDT)
Subject: Re: [PATCH] fs: move kernel_read_file* to its own include file
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20200617033152.16883-1-scott.branden@broadcom.com>
 <20200617052633.GA1351336@kroah.com>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <8d70da48-7c3c-5d24-ed43-2d705417e7b5@broadcom.com>
Date: Tue, 16 Jun 2020 23:04:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200617052633.GA1351336@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_230453_407779_F6FD7BD0 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [192.19.228.250 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-security-module@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, selinux@vger.kernel.org,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, kexec@lists.infradead.org,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 linux-kernel@vger.kernel.org, Paul Moore <paul@paul-moore.com>,
 Luis Chamberlain <mcgrof@kernel.org>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Eric Biederman <ebiederm@xmission.com>, Jessica Yu <jeyu@kernel.org>,
 linux-fsdevel@vger.kernel.org, Eric Paris <eparis@parisplace.org>,
 linux-integrity@vger.kernel.org, "Serge E . Hallyn" <serge@hallyn.com>,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Greg,

On 2020-06-16 10:26 p.m., Greg Kroah-Hartman wrote:
> On Tue, Jun 16, 2020 at 08:31:52PM -0700, Scott Branden wrote:
>> Move kernel_read_file* to it own kernel_read_file.h include file.
> That says what you did, but not _why_ you are doing it :(
>
I have no real opinion as to where these functions end up.
I simply wish to add kernel_pread_file* support and current comment is 
the existing kernel_read_file* functions
are in linux/fs.h and I shouldn't add more to that file.

I'd be quite happy to leave them in linux/fs.h if that is desired as well.

I can update the commit according to Christoph's comment:

"Can you also move kernel_read_* out of fs.h?  That header gets pulled
in just about everywhere and doesn't really need function not related
to the general fs interface."







_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
