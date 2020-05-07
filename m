Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512EA1C99A1
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UsyZ7ki1KKmuzg/zvONGqgj3cK8kK0wIjMz2NHDOs3E=; b=k322BoNDiXMBtr
	cuEU7PuNyObwB27d25Ych13ivIua2bEGGdeq/3BO5wv/IJxZeRng52xTB1tMF6Lk1OJ7bv70ABQ1D
	m8SPCxPqONILGDpNpNnHGV3QjMhhQOPdp5/TsHXuNN7pMfv5OMFxaiPvMogCw4E1TctN/+unN4DMn
	EKu8HAXIUPoeRTg636opOI/m4TQczE/ZoQG0H6PIo5/TVDGAWA/hvV+jr/GRZvSRcab8uvvhqqOpY
	LT3fTAkH2/3zlAkDWOVBrAcoai2ApUrFBM41BSGsO8U5BUggHqcgVxzRCdQTzd9k8Rk5AKNNbM+Sg
	5QemyrJmMpOeEe6g61oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlYL-0003oE-Ol; Thu, 07 May 2020 18:47:25 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlYI-0003n7-3U
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588877240;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fA/ECm0zhQEdUp/fUbA73B0nJs5vbdkbZsQ0b4cogDo=;
 b=TWz6Vqjj8SBvEKBx1vLPZ+I1DGcKCa4G+y4nV2bm5DF3FyqhBCXJtSDWthw1Bn4lfbPPND
 GpvV8mPueQCWwaE0Mv/ySdiuNnJfV+w30W7IpzUQnv/vyglM7fOBwZboc8k5ivv1Aw0oVC
 sjZ3yk1ojO3h0yFMM+x/KLU3jWGVXT0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-MgJVVsgDOfqwYGQcSYPLlA-1; Thu, 07 May 2020 14:47:16 -0400
X-MC-Unique: MgJVVsgDOfqwYGQcSYPLlA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BAF3919200C0;
 Thu,  7 May 2020 18:47:14 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CCBBF70559;
 Thu,  7 May 2020 18:47:08 +0000 (UTC)
Date: Thu, 7 May 2020 14:47:05 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507184705.GG205881@optiplex-lnx>
References: <20200507180631.308441-1-aquini@redhat.com>
 <20200507182257.GX11244@42.do-not-panic.com>
 <20200507184307.GF205881@optiplex-lnx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507184307.GF205881@optiplex-lnx>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_114722_222865_63A290AA 
X-CRM114-Status: GOOD (  21.60  )
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
Cc: rdunlap@infradead.org, keescook@chromium.org, bhe@redhat.com,
 linux-doc@vger.kernel.org, corbet@lwn.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, cai@lca.pw, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 02:43:16PM -0400, Rafael Aquini wrote:
> On Thu, May 07, 2020 at 06:22:57PM +0000, Luis Chamberlain wrote:
> > On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
> > > diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> > > index 8a176d8727a3..b80ab660d727 100644
> > > --- a/kernel/sysctl.c
> > > +++ b/kernel/sysctl.c
> > > @@ -1217,6 +1217,13 @@ static struct ctl_table kern_table[] = {
> > >  		.extra1		= SYSCTL_ZERO,
> > >  		.extra2		= SYSCTL_ONE,
> > >  	},
> > > +	{
> > > +		.procname	= "panic_on_taint",
> > > +		.data		= &panic_on_taint,
> > > +		.maxlen		= sizeof(unsigned long),
> > > +		.mode		= 0644,
> > > +		.proc_handler	= proc_doulongvec_minmax,
> > > +	},
> > 
> > You sent this out before I could reply to the other thread on v1.
> > My thoughts on the min / max values, or lack here:
> >                                                                                 
> > Valid range doesn't mean "currently allowed defined" masks.                     
> > 
> > For example, if you expect to panic due to a taint, but a new taint type
> > you want was not added on an older kernel you would be under a very
> > *false* sense of security that your kernel may not have hit such a
> > taint, but the reality of the situation was that the kernel didn't
> > support that taint flag only added in future kernels.                           
> > 
> > You may need to define a new flag (MAX_TAINT) which should be the last
> > value + 1, the allowed max values would be                                      
> > 
> > (2^MAX_TAINT)-1                                                                 
> > 
> > or                                                                              
> > 
> > (1<<MAX_TAINT)-1  
> > 
> > Since this is to *PANIC* I think we do want to test ranges and ensure
> > only valid ones are allowed.
> >
> 
> Ok. I'm thinking in:
> 
> diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> index 8a176d8727a3..ee492431e7b0 100644
> --- a/kernel/sysctl.c
> +++ b/kernel/sysctl.c
> @@ -1217,6 +1217,15 @@ static struct ctl_table kern_table[] = {
>                 .extra1         = SYSCTL_ZERO,
>                 .extra2         = SYSCTL_ONE,
>         },
> +       {
> +               .procname       = "panic_on_taint",
> +               .data           = &panic_on_taint,
> +               .maxlen         = sizeof(unsigned long),
> +               .mode           = 0644,
> +               .proc_handler   = proc_doulongvec_minmax,
> +               .extra1         = SYSCTL_ZERO,
> +               .extra2         = (1 << TAINT_FLAGS_COUNT << 1) - 1,
							^^^^^^^^
Without that crap, obviously. Sorry. That was a screw up on my side,
when copyin' and pasting.

-- Rafael
	
> +       },
> 
> 
> Would that address your concerns wrt this one?
> 
> Cheers!
> -- Rafael


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
