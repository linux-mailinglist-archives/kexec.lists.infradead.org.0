Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D26EB1D1AD5
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 18:16:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b9Ett3JkWH1SyF8sTj8rdS5f+sSpgksZRYwY+B9++2o=; b=Xk8M5zeK6M8lS4
	tZSABX55A8udFLnztSsH7RzPuri79aJrq6kprdL30sGfLzQ/dUfsCnkgMctsLhnt2DdB1AY/hDDF/
	fpbe4rK1Ep9VbbS+SZ9ySiaQhW8pRCuL58g0bFY+7fRwoM4wIb/LXu4lhQPRaDNxGl0Myx4tn9sGC
	SQCHDNvA/zMJqV6MewlcEHRpyo3FuzxUQqbQ3ijXrk1abEMTkzAu3fKqbwFv779eO0QSgYF+A7q40
	wtk+O4KzinVn0BqlD1qHWi4dnC8DaD0Fz+dfG21cRfQPPzek1VDcSBDWvLLxvqFL61gP2j9mNjRPt
	YK87958gKAJr3kQJm79g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYu3Y-0006Oc-Ap; Wed, 13 May 2020 16:16:28 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYu3V-0006NA-2K
 for kexec@lists.infradead.org; Wed, 13 May 2020 16:16:26 +0000
Received: by mail-pj1-f65.google.com with SMTP id k7so6328491pjs.5
 for <kexec@lists.infradead.org>; Wed, 13 May 2020 09:16:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MR3hivTTbv7WsNknULGT8vpeXwpVVOP1nEJHvXl4q6Q=;
 b=lI+zNBGSDLRntAmOT4vFBjTjV68arbp8rLcIu82PmEMlnu39uvcS8bRu0eaEAJXwXX
 v8Az+rhVlIhqNzgDaY3HOILe51dMXfcmnWds9zLwGHR6ADPMrJEbHV2N/Dh4duEqPr/N
 mPp2RaE5CszHAe+bPg+NJjyywL8JJfk8vGqpH1dqAcIWa8fD8cT4QPRwJGxwHxjdOm4c
 5G8PQtXMimG3iQVTjFB9Aez23AcDH85axs0fAUNtjSjMVeItPmCIj8u6o8QNToC0NltD
 w0k9pEKsMRm5/1SxKPyWk9I47qc2+wqAiI7fSrfXOD1slO1uqIDOC7/tGFYe4Qfwa2BC
 +KZw==
X-Gm-Message-State: AGi0PuakOCpCQCvQtymbyIJrg0O1XczeQ05EgIzKQ9/NhNWBOGWlD1cJ
 SQLsb8FFbbGU9P5ULk5wiNw=
X-Google-Smtp-Source: APiQypKPVhDd5eVJvoALh7b71wk5lXOmnq50MN3QI/KJHyjv/UYQSNnqyFg2fSxJ63d2CJSyRyXsXg==
X-Received: by 2002:a17:902:ba95:: with SMTP id
 k21mr24684399pls.160.1589386584264; 
 Wed, 13 May 2020 09:16:24 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id b15sm21492pfd.139.2020.05.13.09.16.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 09:16:23 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 452DA4063E; Wed, 13 May 2020 16:16:22 +0000 (UTC)
Date: Wed, 13 May 2020 16:16:22 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>,
 Josh Triplett <josh@joshtriplett.org>
Subject: Re: [PATCH 2/3] security: add symbol namespace for reading file data
Message-ID: <20200513161622.GS11244@42.do-not-panic.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513152108.25669-3-mcgrof@kernel.org>
 <87k11fonbk.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k11fonbk.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_091625_105787_A1DCC33E 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
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
Cc: rafael@kernel.org, zohar@linux.ibm.com, dhowells@redhat.com,
 paul@paul-moore.com, nayna@linux.ibm.com, jmorris@namei.org,
 geert@linux-m68k.org, dan.carpenter@oracle.com, keescook@chromium.org,
 scott.branden@broadcom.com, selinux@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, eparis@parisplace.org, tglx@linutronix.de,
 gregkh@linuxfoundation.org, stephen.smalley.work@gmail.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-security-module@vger.kernel.org, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 10:40:31AM -0500, Eric W. Biederman wrote:
> Luis Chamberlain <mcgrof@kernel.org> writes:
> 
> > Certain symbols are not meant to be used by everybody, the security
> > helpers for reading files directly is one such case. Use a symbol
> > namespace for them.
> >
> > This will prevent abuse of use of these symbols in places they were
> > not inteded to be used, and provides an easy way to audit where these
> > types of operations happen as a whole.
> 
> Why not just remove the ability for the firmware loader to be a module?
> 
> Is there some important use case that requires the firmware loader
> to be a module?
> 
> We already compile the code in by default.  So it is probably just
> easier to remove the modular support all together.  Which would allow
> the export of the security hooks to be removed as well.

Yeah, that's a better solution. The only constaint I am aware of is
we *cannot* change the name of the module from firmware_class since the
old fallback sysfs loader depends on the module name. So, so long as we
take care with that on built-in and document this very well, I think
we should be good.

I checked the commit logs and this was tristate since the code was added
upstream, so I cannot see any good reason it was enabled as modular.

Speaking with a *backports experience* hat on, we did have a use case
to use a module for it in case a new feature was added upstream which
was not present on older kernels. However I think that using a separate
symbol prefix would help with that.

Would any Android stakeholders / small / embedded folks whave any issue
with this?

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
