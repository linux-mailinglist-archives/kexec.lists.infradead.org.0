Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4CF1C9E36
	for <lists+kexec@lfdr.de>; Fri,  8 May 2020 00:06:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bMdggh2Nzc3HAaBAwGLBNKyfvC52FaGgEXgxArV/V4=; b=HVO8z+RJPi407L
	yh7P+zycMviOWjq2WXB3lLG0Hyd8/8W0ydqc9hp0Xx+jzCTjCS3CtSORNMXDu4ZZfWKI564zzJ/0D
	d95nWsjyXcF6as5l5vpJugWuKhAQYhVblMnYo8YYEPppFlYDgP9bs1cOiNWEPbcV7rx325+trEDp3
	3728SbK4LR6eW4KyiJcd5voT9HhPOhxT9yxxesOmCU8OvmXADJSZiA9Df6mlKfIhhyB4686vRvVqW
	hWbqSGN+h27bgKpLEeGjPhB/RUz5Xeq+bJsyRwd91A1DJh5c+cgasVrSQOGJjSIrelNopZe2btMgk
	VNNBex0zfNVgIAalFqMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWof2-0001Mi-LL; Thu, 07 May 2020 22:06:32 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWoey-0001Le-Qf
 for kexec@lists.infradead.org; Thu, 07 May 2020 22:06:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588889187;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=O0zq6BKZdqRzSQ4IajAdIW2yn8DScQjo8LRrUKBrr9w=;
 b=FEGajIC1oY+yvXR4MDUosSjt5IM5p4NDB6vBJFFPTcnxaZ9Y99UQtV+X4DfkGFGx4s7YMV
 2vtKX6+f0I2YVS6yflOYuotTQJbea5OfE14A+oA4z69Irfi5VmjHg1tBK2eJ0T5BsECuG5
 uVXbyI1iN22UiXJQk8KFbkXOxbVpIm8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-N6yridzlO2exTfgZLy4BXQ-1; Thu, 07 May 2020 18:06:22 -0400
X-MC-Unique: N6yridzlO2exTfgZLy4BXQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B490C800688;
 Thu,  7 May 2020 22:06:19 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6B81C5D9C5;
 Thu,  7 May 2020 22:06:09 +0000 (UTC)
Date: Thu, 7 May 2020 18:06:06 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507220606.GK205881@optiplex-lnx>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
 <20200507184705.GG205881@optiplex-lnx>
 <20200507203340.GZ11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507203340.GZ11244@42.do-not-panic.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_150628_942560_4983A178 
X-CRM114-Status: GOOD (  39.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 07, 2020 at 08:33:40PM +0000, Luis Chamberlain wrote:
> On Thu, May 07, 2020 at 02:47:05PM -0400, Rafael Aquini wrote:
> > On Thu, May 07, 2020 at 02:43:16PM -0400, Rafael Aquini wrote:
> > > On Thu, May 07, 2020 at 06:22:57PM +0000, Luis Chamberlain wrote:
> > > > On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
> > > > > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > > > > index 8a176d8727a3..b80ab660d727 100644
> > > > > --- a/kernel/sysctl.c
> > > > > +++ b/kernel/sysctl.c
> > > > > @@ -1217,6 +1217,13 @@ static struct ctl_table kern_table[] = {
> > > > >  		.extra1		= SYSCTL_ZERO,
> > > > >  		.extra2		= SYSCTL_ONE,
> > > > >  	},
> > > > > +	{
> > > > > +		.procname	= "panic_on_taint",
> > > > > +		.data		= &panic_on_taint,
> > > > > +		.maxlen		= sizeof(unsigned long),
> > > > > +		.mode		= 0644,
> > > > > +		.proc_handler	= proc_doulongvec_minmax,
> > > > > +	},
> > > > 
> > > > You sent this out before I could reply to the other thread on v1.
> > > > My thoughts on the min / max values, or lack here:
> > > >                                                                                 
> > > > Valid range doesn't mean "currently allowed defined" masks.                     
> > > > 
> > > > For example, if you expect to panic due to a taint, but a new taint type
> > > > you want was not added on an older kernel you would be under a very
> > > > *false* sense of security that your kernel may not have hit such a
> > > > taint, but the reality of the situation was that the kernel didn't
> > > > support that taint flag only added in future kernels.                           
> > > > 
> > > > You may need to define a new flag (MAX_TAINT) which should be the last
> > > > value + 1, the allowed max values would be                                      
> > > > 
> > > > (2^MAX_TAINT)-1                                                                 
> > > > 
> > > > or                                                                              
> > > > 
> > > > (1<<MAX_TAINT)-1  
> > > > 
> > > > Since this is to *PANIC* I think we do want to test ranges and ensure
> > > > only valid ones are allowed.
> > > >
> > > 
> > > Ok. I'm thinking in:
> > > 
> > > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > > index 8a176d8727a3..ee492431e7b0 100644
> > > --- a/kernel/sysctl.c
> > > +++ b/kernel/sysctl.c
> > > @@ -1217,6 +1217,15 @@ static struct ctl_table kern_table[] = {
> > >                 .extra1         = SYSCTL_ZERO,
> > >                 .extra2         = SYSCTL_ONE,
> > >         },
> > > +       {
> > > +               .procname       = "panic_on_taint",
> > > +               .data           = &panic_on_taint,
> > > +               .maxlen         = sizeof(unsigned long),
> > > +               .mode           = 0644,
> > > +               .proc_handler   = proc_doulongvec_minmax,
> > > +               .extra1         = SYSCTL_ZERO,
> > > +               .extra2         = (1 << TAINT_FLAGS_COUNT << 1) - 1,
> > 							^^^^^^^^
> > Without that crap, obviously. Sorry. That was a screw up on my side,
> > when copyin' and pasting.
> 
> I really think that the implications of this needs a bit further review,
> hence the wider CCs.
> 
> Since this can trivially crash a system, I think we need to be careful
> about this value. First, proc_doulongvec_minmax() will not suffice alone,
> we'll *at least* want to check for capable(CAP_SYS_ADMIN)) as in
> proc_taint().  Second first note that we *always* build proc_taint(), if
> just CONFIG_PROC_SYSCTL is enabled. That has been the way since it got
> merged via commit 34f5a39899f3f ("Add TAINT_USER and ability to set
> taint flags from userspace") since v2.6.21. We need to evaluate if this
> little *new* knob you are introducing merits its own kconfig tucked away
> under debugging first. The ship has already sailed for proc_taint().
> Anyone with CAP_SYS_ADMIN can taint.
> 
> The good thing is that proc_taint() added its own TAINT_USER, *but*, hey
> it didn't use it. A panic-on-taint system would be able to tell if a
> panic was caused by proc_taint() throught the stack trace only. 
> If panic-on-taint proc was used *later* after a custom taint was set
> or happened naturally, no panic would trigger since your panic-on-taint
> check on your patch only happens on add_taint(). This means that for
> those thinking about using this for QA or security purposes, the only
> sensible *reliable* way to use panic-on-taint would be through cmdline,
> from boot. Post-boot means to enable this would either need to check
> existing taint flags, or we'd want to a way to check if this was not
> added post boot. Also, a post-booteed system with panic-on-taint could
> easily allow for reductions of the intended goal, thereby allowing one
> to cheat.
> 
> I think a new TAINT_MODIFIED for use when proc_taint() is used is worth
> considering. Ted? Even though 'M' is taken -- I think its silly to rely
> on the character to be anything of meaning, once we run out of the
> alphabet letters that will be the way anyway, unless we-redo this a bit.
> Note we use value for when this is on and off, typically an empty space
> when a taint is not seen.
> 
> The good thing is that proc_taint() only *increments* taint, it doesn't
> remove taints.
> 
> Are we OK with panic-on-taint only with CAP_SYS_ADMIN?
> 
> I can see this building up to a "testing" solution to ensure / gaurantee
> no bugs have happened during QA, but since QA would want the same binary
> for production it is hard to see this enabled for QA but not production.
> To resolve that last concern, if we do go with moving this under a
> kconfig value, a simple cmdline append would address the concerns. Ie,
> even if you enabled this mechanism through its kconfig you would not be
> able to modify the panic-on-tain unless you passed a cmdline option.
> 
> Note that Vlastimil has some patches which are visible on linux-next,
> but not yet merged on Linus' tree, which enable these params to be set
> on the cmdline too now, so perhaps yet-another cmdline param is not
> needed anymore.
> 
> I *think* that a cmdline route to enable this would likely remove the
> need for the kernel config for this. But even with Vlastimil's work
> merged, I think we'd want yet-another value to enable / disable this
> feature. Do we need yet-another-taint flag to tell us that this feature
> was enabled?
>

I guess it makes sense to get rid of the sysctl interface for
proc_on_taint, and only keep it as a cmdline option. 

But the real issue seems to be, regardless we go with a cmdline-only option
or not, the ability of proc_taint() to set any arbitrary taint flag 
other than just marking the kernel with TAINT_USER. 

-- Rafael


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
