Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D53CA1C9C7B
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 22:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LFKbAwxrIsryZJJYS30Q1SHMCtFRBg8BQX85v8XEu08=; b=EgmNmfAQDPxWMA
	c3edO8N6GTSRgVU0TmPcIlQK+8LKthwbF3syTtH5klg4PQ29oDSx0vPZ81vf2zO9qeql7Wwdrn8PF
	rnuPP7Ym/LWfIKuEYtx+i0gQMsg0755OM4hHRmYex0ReJho7AZCY+Kmty8t7T1Njdli+Id8+lt9RM
	SwBME8Bc/lJMv+qT1FrwxbzCiakJGnlcoTteMyMeKYISquRrIhWhAscOO8EIUjaHv3//sjc5Ojl6h
	fuevGriypRqm2PtAPJutsDWtvv1dh/q/yG4wnK4U6Fb0ptsXU8f5av88egkDXwK8RWy5Bk/YjCq+q
	f2g+aK73ouXqIQx2Z3UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnDI-00041P-Cm; Thu, 07 May 2020 20:33:48 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnDE-00040Z-Jl
 for kexec@lists.infradead.org; Thu, 07 May 2020 20:33:46 +0000
Received: by mail-pj1-f67.google.com with SMTP id js4so1115345pjb.5
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 13:33:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MoMjwxwKEdXavhFslG5lFIMwK7mcqNgr2NAM0IYCo+k=;
 b=Ge2GT4FpMRWuRb2bJfhihnx5OwZSaFsuOwEWfGDK+JFofJn6f+NdJlYhyk5PIrdUk7
 WP3Gt8Zh30r9QPAUw/X9YTV235bTjg1YRcaX0P/+K0XVFsm1n+1cuevUAj5MNUcFzYlC
 eEPCs0pjJnIqOA+Q9TpH0H6BhfrroDLv7cZu7JqW6DfIFj/fzcDArrNNgUeldvahk4Sd
 dMuX+Rlw7ahJmpWO4BxL51i5sTd0YW5Ogt8Ya+EbYIK7SmVGeskr+hUqG4iWGsYdyHzt
 QtvFDaN82OfR/iIvPYL1djie2FYN+Vk0BWaszQciradZMm/+nyNXvzk/eXUVmcPDybbP
 Gsow==
X-Gm-Message-State: AGi0PuZZK/CXJDLxDUZDSUuqr+lD+0cFkBFb/FLVIcCUEYEpvM69xGqz
 G3fvdEJ28RUPFEKGS5MoFys=
X-Google-Smtp-Source: APiQypKzOvsOb6uSbzYE/OPlbOBeyhXMRjRDiozG0ygWaqabRTDqfi9zOl/zJSiRsBKGN2PJSdrMRw==
X-Received: by 2002:a17:902:7281:: with SMTP id
 d1mr15673761pll.78.1588883623569; 
 Thu, 07 May 2020 13:33:43 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id e12sm4414343pgv.16.2020.05.07.13.33.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 13:33:41 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id B7609403EA; Thu,  7 May 2020 20:33:40 +0000 (UTC)
Date: Thu, 7 May 2020 20:33:40 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>, Tso Ted <tytso@mit.edu>,
 Adrian Bunk <bunk@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Laura Abbott <labbott@redhat.com>, Jeff Mahoney <jeffm@suse.com>,
 Jiri Kosina <jikos@kernel.org>, Jessica Yu <jeyu@suse.de>,
 Takashi Iwai <tiwai@suse.de>, Ann Davis <AnDavis@suse.com>,
 Richard Palethorpe <rpalethorpe@suse.de>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507203340.GZ11244@42.do-not-panic.com>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
 <20200507184705.GG205881@optiplex-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507184705.GG205881@optiplex-lnx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_133344_653772_479C9B35 
X-CRM114-Status: GOOD (  32.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
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
Cc: rdunlap@infradead.org, keescook@chromium.org, bhe@redhat.com,
 linux-doc@vger.kernel.org, corbet@lwn.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, cai@lca.pw, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:47:05PM -0400, Rafael Aquini wrote:
> On Thu, May 07, 2020 at 02:43:16PM -0400, Rafael Aquini wrote:
> > On Thu, May 07, 2020 at 06:22:57PM +0000, Luis Chamberlain wrote:
> > > On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
> > > > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > > > index 8a176d8727a3..b80ab660d727 100644
> > > > --- a/kernel/sysctl.c
> > > > +++ b/kernel/sysctl.c
> > > > @@ -1217,6 +1217,13 @@ static struct ctl_table kern_table[] = {
> > > >  		.extra1		= SYSCTL_ZERO,
> > > >  		.extra2		= SYSCTL_ONE,
> > > >  	},
> > > > +	{
> > > > +		.procname	= "panic_on_taint",
> > > > +		.data		= &panic_on_taint,
> > > > +		.maxlen		= sizeof(unsigned long),
> > > > +		.mode		= 0644,
> > > > +		.proc_handler	= proc_doulongvec_minmax,
> > > > +	},
> > > 
> > > You sent this out before I could reply to the other thread on v1.
> > > My thoughts on the min / max values, or lack here:
> > >                                                                                 
> > > Valid range doesn't mean "currently allowed defined" masks.                     
> > > 
> > > For example, if you expect to panic due to a taint, but a new taint type
> > > you want was not added on an older kernel you would be under a very
> > > *false* sense of security that your kernel may not have hit such a
> > > taint, but the reality of the situation was that the kernel didn't
> > > support that taint flag only added in future kernels.                           
> > > 
> > > You may need to define a new flag (MAX_TAINT) which should be the last
> > > value + 1, the allowed max values would be                                      
> > > 
> > > (2^MAX_TAINT)-1                                                                 
> > > 
> > > or                                                                              
> > > 
> > > (1<<MAX_TAINT)-1  
> > > 
> > > Since this is to *PANIC* I think we do want to test ranges and ensure
> > > only valid ones are allowed.
> > >
> > 
> > Ok. I'm thinking in:
> > 
> > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > index 8a176d8727a3..ee492431e7b0 100644
> > --- a/kernel/sysctl.c
> > +++ b/kernel/sysctl.c
> > @@ -1217,6 +1217,15 @@ static struct ctl_table kern_table[] = {
> >                 .extra1         = SYSCTL_ZERO,
> >                 .extra2         = SYSCTL_ONE,
> >         },
> > +       {
> > +               .procname       = "panic_on_taint",
> > +               .data           = &panic_on_taint,
> > +               .maxlen         = sizeof(unsigned long),
> > +               .mode           = 0644,
> > +               .proc_handler   = proc_doulongvec_minmax,
> > +               .extra1         = SYSCTL_ZERO,
> > +               .extra2         = (1 << TAINT_FLAGS_COUNT << 1) - 1,
> 							^^^^^^^^
> Without that crap, obviously. Sorry. That was a screw up on my side,
> when copyin' and pasting.

I really think that the implications of this needs a bit further review,
hence the wider CCs.

Since this can trivially crash a system, I think we need to be careful
about this value. First, proc_doulongvec_minmax() will not suffice alone,
we'll *at least* want to check for capable(CAP_SYS_ADMIN)) as in
proc_taint().  Second first note that we *always* build proc_taint(), if
just CONFIG_PROC_SYSCTL is enabled. That has been the way since it got
merged via commit 34f5a39899f3f ("Add TAINT_USER and ability to set
taint flags from userspace") since v2.6.21. We need to evaluate if this
little *new* knob you are introducing merits its own kconfig tucked away
under debugging first. The ship has already sailed for proc_taint().
Anyone with CAP_SYS_ADMIN can taint.

The good thing is that proc_taint() added its own TAINT_USER, *but*, hey
it didn't use it. A panic-on-taint system would be able to tell if a
panic was caused by proc_taint() throught the stack trace only. 
If panic-on-taint proc was used *later* after a custom taint was set
or happened naturally, no panic would trigger since your panic-on-taint
check on your patch only happens on add_taint(). This means that for
those thinking about using this for QA or security purposes, the only
sensible *reliable* way to use panic-on-taint would be through cmdline,
from boot. Post-boot means to enable this would either need to check
existing taint flags, or we'd want to a way to check if this was not
added post boot. Also, a post-booteed system with panic-on-taint could
easily allow for reductions of the intended goal, thereby allowing one
to cheat.

I think a new TAINT_MODIFIED for use when proc_taint() is used is worth
considering. Ted? Even though 'M' is taken -- I think its silly to rely
on the character to be anything of meaning, once we run out of the
alphabet letters that will be the way anyway, unless we-redo this a bit.
Note we use value for when this is on and off, typically an empty space
when a taint is not seen.

The good thing is that proc_taint() only *increments* taint, it doesn't
remove taints.

Are we OK with panic-on-taint only with CAP_SYS_ADMIN?

I can see this building up to a "testing" solution to ensure / gaurantee
no bugs have happened during QA, but since QA would want the same binary
for production it is hard to see this enabled for QA but not production.
To resolve that last concern, if we do go with moving this under a
kconfig value, a simple cmdline append would address the concerns. Ie,
even if you enabled this mechanism through its kconfig you would not be
able to modify the panic-on-tain unless you passed a cmdline option.

Note that Vlastimil has some patches which are visible on linux-next,
but not yet merged on Linus' tree, which enable these params to be set
on the cmdline too now, so perhaps yet-another cmdline param is not
needed anymore.

I *think* that a cmdline route to enable this would likely remove the
need for the kernel config for this. But even with Vlastimil's work
merged, I think we'd want yet-another value to enable / disable this
feature. Do we need yet-another-taint flag to tell us that this feature
was enabled?

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
