Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B71BF1C9981
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:43:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeTjldxjYl+GgB/nKZPeg26GshouB8MXZ4+IOuz0R1g=; b=DANl7YvTBHgTQx
	nEGqv2JiEjZhI5xsZuKPU80PxGCu91mK23PQno3KwRWz6y2M/d3wAq/9mFxbHo1gxkkDDBTVUpLIS
	HrrETs6vAvvC9Avc1pus9IisFrgtoVXDau89XErge3ZtZXOz7slDA9jLgL6PpaO6Nj9RQ+44eoTBo
	BFsiVs4RD01kPCIhSBVP15WqzQ6G4e358HnECnOcJvM8twkn0O/v1/5e5oLcmDNLK4Q6q0vj+SWLn
	PkLf4ILe8nNQ0wTaZWcivVklULC59UKcMmApSp5WnzrslFuMBiq7vZRgpz+c9lVqAh2nGn/CDeeof
	1pCnllBahxVg+gLVTdIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlUT-00085X-95; Thu, 07 May 2020 18:43:25 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlUP-00083d-P0
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588877000;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Jh97DkO75QGZr6UViEI6oioQHzU0u8jFEO5QZXD5xsY=;
 b=Pn4BEfpioz+q1hH3RwOcuHuMMZ0rVmcyY5wSjvvdX4VXMT8dyUopoyA7oLQtSO734n7zoj
 ejUvp51c1qibUfdl2t0C48RcbrtRP8DtLkeqlASXoZVsYLzpW1sCYgiezq3IZluDRIKhMd
 ztYV7LvvXjZhP2rGwNPHytl/BoBAjGo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-254-hOsW7xkTMlefJxkiXvcjgg-1; Thu, 07 May 2020 14:43:18 -0400
X-MC-Unique: hOsW7xkTMlefJxkiXvcjgg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7101319200C1;
 Thu,  7 May 2020 18:43:16 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E61AE70559;
 Thu,  7 May 2020 18:43:10 +0000 (UTC)
Date: Thu, 7 May 2020 14:43:07 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507184307.GF205881@optiplex-lnx>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507182257.GX11244@42.do-not-panic.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_114321_887367_4151E219 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
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
Cc: rdunlap@infradead.org, keescook@chromium.org, bhe@redhat.com,
 linux-doc@vger.kernel.org, corbet@lwn.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, cai@lca.pw, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:22:57PM +0000, Luis Chamberlain wrote:
> On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
> > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > index 8a176d8727a3..b80ab660d727 100644
> > --- a/kernel/sysctl.c
> > +++ b/kernel/sysctl.c
> > @@ -1217,6 +1217,13 @@ static struct ctl_table kern_table[] = {
> >  		.extra1		= SYSCTL_ZERO,
> >  		.extra2		= SYSCTL_ONE,
> >  	},
> > +	{
> > +		.procname	= "panic_on_taint",
> > +		.data		= &panic_on_taint,
> > +		.maxlen		= sizeof(unsigned long),
> > +		.mode		= 0644,
> > +		.proc_handler	= proc_doulongvec_minmax,
> > +	},
> 
> You sent this out before I could reply to the other thread on v1.
> My thoughts on the min / max values, or lack here:
>                                                                                 
> Valid range doesn't mean "currently allowed defined" masks.                     
> 
> For example, if you expect to panic due to a taint, but a new taint type
> you want was not added on an older kernel you would be under a very
> *false* sense of security that your kernel may not have hit such a
> taint, but the reality of the situation was that the kernel didn't
> support that taint flag only added in future kernels.                           
> 
> You may need to define a new flag (MAX_TAINT) which should be the last
> value + 1, the allowed max values would be                                      
> 
> (2^MAX_TAINT)-1                                                                 
> 
> or                                                                              
> 
> (1<<MAX_TAINT)-1  
> 
> Since this is to *PANIC* I think we do want to test ranges and ensure
> only valid ones are allowed.
>

Ok. I'm thinking in:

diff --git a/kernel/sysctl.c b/kernel/sysctl.c
index 8a176d8727a3..ee492431e7b0 100644
--- a/kernel/sysctl.c
+++ b/kernel/sysctl.c
@@ -1217,6 +1217,15 @@ static struct ctl_table kern_table[] = {
                .extra1         = SYSCTL_ZERO,
                .extra2         = SYSCTL_ONE,
        },
+       {
+               .procname       = "panic_on_taint",
+               .data           = &panic_on_taint,
+               .maxlen         = sizeof(unsigned long),
+               .mode           = 0644,
+               .proc_handler   = proc_doulongvec_minmax,
+               .extra1         = SYSCTL_ZERO,
+               .extra2         = (1 << TAINT_FLAGS_COUNT << 1) - 1,
+       },


Would that address your concerns wrt this one?

Cheers!
-- Rafael


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
