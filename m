Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A251CCF09
	for <lists+kexec@lfdr.de>; Mon, 11 May 2020 03:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o2zeYFlcoo7uFGdbQjfZF5vHZnmyFNHfVFtQK2borMg=; b=Lba+ZNSzsNOxUE
	S6sza5ohNpjGbf1Y/Z2w9zZ75fj1gRW1l3497X4Mh+sx9S30XH+2jdYmPhig2Ailz8+Y1fUu+tuA4
	bAGUnVy09FPgC0BR6F6MZpFYBcEDz6lXYWJfBtDUyE0ciI/Htofkc8PCbZyYNmvKx3OxGbSrCFrXh
	xMhY3ooxbsuXXtB0NzapJJE+5UcMKHRNN0ZnjZUB9fmzxPNI81a5wsR78m59D2wR6YAwwtiiN4TnE
	hmS/oaiRL12oeY491u2r/Mhw/CTVSwNccJhwM50R9II91b8I6hh6ynS3LbyOdXzv0sjk37UY4cR2l
	5FTaPirLpukG72J88TDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXwzR-0002J3-DJ; Mon, 11 May 2020 01:12:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXwzN-0002Hy-Et
 for kexec@lists.infradead.org; Mon, 11 May 2020 01:12:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589159531;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=SlpEYKtBiMfc57VG1AFygRCYPkrLzoQdUS6AmYK1UXw=;
 b=QR+28O5gw2ItDvQPqzKoYEKL3TZCksH1FJyyE+Tz+23bxD4lm71yMLjU9fCk1BvS9SU4Pd
 UnkEJa+6lVLVdwfhM764xWRE4HrZ+MYx0ydt1DMRjEnu35Qs1YfH6TjAnNmuI44rzJiaaL
 azat5dty3G6qzD8W5OtZhLfqrYasqqk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-440-glKCKa18PC-8K5TOhETGdA-1; Sun, 10 May 2020 21:12:03 -0400
X-MC-Unique: glKCKa18PC-8K5TOhETGdA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47818107ACCD;
 Mon, 11 May 2020 01:12:00 +0000 (UTC)
Received: from localhost (ovpn-12-129.pek2.redhat.com [10.72.12.129])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D2A65D9DC;
 Mon, 11 May 2020 01:11:51 +0000 (UTC)
Date: Mon, 11 May 2020 09:11:49 +0800
From: Baoquan He <bhe@redhat.com>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v3] kernel: add panic_on_taint
Message-ID: <20200511011149.GH5029@MiWiFi-R3L-srv>
References: <20200509135737.622299-1-aquini@redhat.com>
 <20200510025921.GA10165@MiWiFi-R3L-srv>
 <20200510182202.GA31704@t490s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510182202.GA31704@t490s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_181213_589108_EB55AF97 
X-CRM114-Status: GOOD (  28.67  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-doc@vger.kernel.org, tiwai@suse.de, jeffm@suse.com, corbet@lwn.net,
 labbott@redhat.com, dyoung@redhat.com, AnDavis@suse.com, rpalethorpe@suse.de,
 keescook@chromium.org, jikos@kernel.org, cai@lca.pw, bunk@kernel.org,
 tytso@mit.edu, jeyu@suse.de, gregkh@linuxfoundation.org, rdunlap@infradead.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, mcgrof@kernel.org,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 torvalds@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/10/20 at 02:22pm, Rafael Aquini wrote:
> > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > index 7bc83f3d9bdf..4a69fe49a70d 100644
> > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > @@ -3404,6 +3404,21 @@
> > >  	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
> > >  			on a WARN().
> > >  
> > > +	panic_on_taint=	[KNL] conditionally panic() in add_taint()
> > > +			Format: <str>
> > 			Changed it as 'Format: <string>' to be
> > consistent with the existing other options?
> 
> I can resubmit with the change, if it's a strong req and the surgery
> cannot be done at merge time.

Yeah, maybe maintainer can help adjust this, not sure who will pick it.
No, it's not a strong request, people might get a little bit confusion
about which format should be referred to when a new kernel option is added.

> 
> 
> > > +			Specifies, as a string, the TAINT flag set that will
> > > +			compose a bitmask for calling panic() when the kernel
> > > +			gets tainted.
> > > +			See Documentation/admin-guide/tainted-kernels.rst for
> > > +			details on the taint flags that users can pick to
> > > +			compose the bitmask to assign to panic_on_taint.
> > > +			When the string is prefixed with a '-' the bitmask
> > > +			set in panic_on_taint will be mutually exclusive
> > > +			with the sysctl knob kernel.tainted, and any attempt
> > > +			to write to that sysctl will fail with -EINVAL for
> > > +			any taint value that masks with the flags set for
> > > +			this option.
> > > +
> > >  	crash_kexec_post_notifiers
> > >  			Run kdump after running panic-notifiers and dumping
> > >  			kmsg. This only for the users who doubt kdump always
> > > diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> > > index 9b7a8d74a9d6..66bc102cb59a 100644
> > > --- a/include/linux/kernel.h
> > > +++ b/include/linux/kernel.h
> > > @@ -528,6 +528,8 @@ extern int panic_on_oops;
> > >  extern int panic_on_unrecovered_nmi;
> > >  extern int panic_on_io_nmi;
> > >  extern int panic_on_warn;
> > > +extern unsigned long panic_on_taint;
> > > +extern bool panic_on_taint_exclusive;
> > >  extern int sysctl_panic_on_rcu_stall;
> > >  extern int sysctl_panic_on_stackoverflow;
> > >  
> > > diff --git a/kernel/panic.c b/kernel/panic.c
> > > index b69ee9e76cb2..65c62f8a1de8 100644
> > > --- a/kernel/panic.c
> > > +++ b/kernel/panic.c
> > > @@ -25,6 +25,7 @@
> > >  #include <linux/kexec.h>
> > >  #include <linux/sched.h>
> > >  #include <linux/sysrq.h>
> > > +#include <linux/ctype.h>
> > >  #include <linux/init.h>
> > >  #include <linux/nmi.h>
> > >  #include <linux/console.h>
> > > @@ -44,6 +45,8 @@ static int pause_on_oops_flag;
> > >  static DEFINE_SPINLOCK(pause_on_oops_lock);
> > >  bool crash_kexec_post_notifiers;
> > >  int panic_on_warn __read_mostly;
> > > +unsigned long panic_on_taint;
> > > +bool panic_on_taint_exclusive = false;
> > >  
> > >  int panic_timeout = CONFIG_PANIC_TIMEOUT;
> > >  EXPORT_SYMBOL_GPL(panic_timeout);
> > > @@ -434,6 +437,11 @@ void add_taint(unsigned flag, enum lockdep_ok lockdep_ok)
> > >  		pr_warn("Disabling lock debugging due to kernel taint\n");
> > >  
> > >  	set_bit(flag, &tainted_mask);
> > > +
> > > +	if (tainted_mask & panic_on_taint) {
> > > +		panic_on_taint = 0;
> > 
> > This panic_on_taint resetting is redundant? It will trigger crash, do we
> > need care if it's 0 or not?
> >
> 
> We might still get more than one CPU hitting a taint adding code path after 
> the one that tripped here called panic. To avoid multiple calls to panic, 
> in that particular scenario, we clear the panic_on_taint bitmask out. 
> Also, albeit non-frequent, we might be tracking TAINT_WARN, and still hit 
> a WARN_ON() in the panic / kdump path, thus incurring in a second 
> (and unwanted) call to panic here.  

Hmm, this cpu will set panic_cpu firstly, all other cpu need stop and
have no chance to execute panic. But yes, clearing panic_on_taint makes
code easier to understand.

> 
>  
> > > +		panic("panic_on_taint set ...");
> > > +	}
> > >  }
> > >  EXPORT_SYMBOL(add_taint);
> > >  
> > > @@ -686,3 +694,35 @@ static int __init oops_setup(char *s)
> > >  	return 0;
> > >  }
> > >  early_param("oops", oops_setup);
> > > +
> > > +static int __init panic_on_taint_setup(char *s)
> > > +{
> > > +	/* we just ignore panic_on_taint if passed without flags */
> > > +	if (!s)
> > > +		goto out;
> > > +
> > > +	for (; *s; s++) {
> > > +		int i;
> > > +
> > > +		if (*s == '-') {
> > > +			panic_on_taint_exclusive = true;
> > > +			continue;
> > > +		}
> > > +
> > > +		for (i = 0; i < TAINT_FLAGS_COUNT; i++) {
> > > +			if (toupper(*s) == taint_flags[i].c_true) {
> > > +				set_bit(i, &panic_on_taint);
> > > +				break;
> > > +			}
> > > +		}
> > 
> > Read admin-guide/tainted-kernels.rst, but still do not get what 'G' means.
> > If I specify 'panic_on_taint="G"' or 'panic_on_taint="-G"' in cmdline,
> > what is expected for this customer behaviour?
> > 
> 
> This will not panic the system as no taint flag gets actually set in 
> panic_on_taint bitmask for G.
> 
> G is the counterpart of P, and appears on print_tainted() whenever
> TAINT_PROPRIETARY_MODULE is not set. panic_on_taint doesn't set
> anything for G, as it doesn't represent any taint, but the lack
> of one particular taint, instead.
> 
> (apparently, TAINT_PROPRIETARY_MODULE is the only taint flag
> that follows that pattern of having an extra assigned letter 
> that means its absence, and perhaps it should be removed)

Yeah, agree. I will make a draft patch to remove it, see if there's
objection from people.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
