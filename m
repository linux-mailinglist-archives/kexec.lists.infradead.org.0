Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882131C7DCF
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 01:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNZkgbJRHzJIuxSa8GE5uyH8ZY+iUiEqp4BNhWCNe/4=; b=fXik9SE0Jxms9j
	vuC6xbxaYeBadllruQpO0TxleRhNq0CMeW5ExBn6ytPfRE5awMq1rAUKIlcnEA5CRW4y+O7FtAFOx
	g7gsYK4aDuQq/pYI+ljQXLAG8dEduKNoz6LnuQnEGR047Zi8ag+wBBBDGiVqhfA5l7lCEaazTc9L3
	jdvaDho7D42JCs8A7Hue7bEmcOhdc8ENGTmEE4q2MLJLXoR+XYgDl9WoMyJujCjRHOot7Fc96AWl+
	AXwnSFRfFTEgpzaDNngTdW2/hdJ2SXLk8x+LLdFWoH/E6ogLgLO3b90BHqkLPlkMrTPpaI971Ieof
	xSnb6bYjuTzdM08Vu26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTPL-0004zF-Q8; Wed, 06 May 2020 23:24:55 +0000
Received: from mail-pl1-f193.google.com ([209.85.214.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTPI-0004yg-Sc
 for kexec@lists.infradead.org; Wed, 06 May 2020 23:24:54 +0000
Received: by mail-pl1-f193.google.com with SMTP id s20so1278961plp.6
 for <kexec@lists.infradead.org>; Wed, 06 May 2020 16:24:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uyjs7v1E7X5rVgzIyUeAKPIhZ3ctg8TK9ZgJrbngU+c=;
 b=K/K3H+58Wgj6mJMlTj91qCcsxM07kiBiKMQvblzzLkI1BU5gqmP27uItjb6K0HffXt
 aBjGoBR8yqYFPp6xeYExfMjYWoJoYTFsFpax5HnVC/QNjCyI7stvVapbo35HWs7HernF
 YUwNUWl+5v2OwwlnEtv4voX9cknNowlc8MXtDr6398FZA1yyerdaVuJgEAV5FWYjWToG
 zsKpzAUECGdjC1/0RdTSlS8Uoyh5v2XfknFJstBqhV6PQYK3xt04eiTZSP1YvWevQzc0
 8B4qUz2GSWSNVWSvJ6WIbkX5r+PSlxVgZIzXlATmZeNAZMGBPZD1krZPW/aNtJSRNYSr
 d8Pg==
X-Gm-Message-State: AGi0Pubtlr2PRoU0+bLF0G/wCeglvp8E1pAsy/Yn7uiD0DFx/2lXqvXe
 cEPlRH/wG48W40y2Ofhzy5KczXxAAOo=
X-Google-Smtp-Source: APiQypJF7JgwMQGGqc5WoVBRTmeLPQFP3HCAUpgl/HK5RDaLMY4BaPZ3HEiEHMuxcEW8GnpABdKTXg==
X-Received: by 2002:a17:902:8bc2:: with SMTP id
 r2mr10733856plo.42.1588807490411; 
 Wed, 06 May 2020 16:24:50 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id r78sm2438478pgr.40.2020.05.06.16.24.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 16:24:48 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 0F275403EA; Wed,  6 May 2020 23:24:48 +0000 (UTC)
Date: Wed, 6 May 2020 23:24:48 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH] kernel: add panic_on_taint
Message-ID: <20200506232447.GW11244@42.do-not-panic.com>
References: <20200506222815.274570-1-aquini@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506222815.274570-1-aquini@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_162452_923813_AF209492 
X-CRM114-Status: GOOD (  30.21  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.193 listed in wl.mailspike.net]
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
Cc: keescook@chromium.org, bhe@redhat.com, linux-doc@vger.kernel.org,
 corbet@lwn.net, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 cai@lca.pw, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 06:28:15PM -0400, Rafael Aquini wrote:
> Analogously to the introduction of panic_on_warn, this patch
> introduces a kernel option named panic_on_taint in order to
> provide a simple and generic way to stop execution and catch
> a coredump when the kernel gets tainted by any given taint flag.
> 
> This is useful for debugging sessions as it avoids rebuilding
> the kernel to explicitly add calls to panic() or BUG() into
> code sites that introduce the taint flags of interest.
> Another, perhaps less frequent, use for this option would be
> as a mean for assuring a security policy (in paranoid mode)
> case where no single taint is allowed for the running system.
> 
> Suggested-by: Qian Cai <cai@lca.pw>
> Signed-off-by: Rafael Aquini <aquini@redhat.com>
> ---
>  Documentation/admin-guide/kdump/kdump.rst     | 10 ++++++
>  .../admin-guide/kernel-parameters.txt         |  3 ++
>  Documentation/admin-guide/sysctl/kernel.rst   | 36 +++++++++++++++++++
>  include/linux/kernel.h                        |  1 +
>  kernel/panic.c                                |  7 ++++
>  kernel/sysctl.c                               |  7 ++++
>  6 files changed, 64 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kdump/kdump.rst b/Documentation/admin-guide/kdump/kdump.rst
> index ac7e131d2935..de3cf6d377cc 100644
> --- a/Documentation/admin-guide/kdump/kdump.rst
> +++ b/Documentation/admin-guide/kdump/kdump.rst
> @@ -521,6 +521,16 @@ will cause a kdump to occur at the panic() call.  In cases where a user wants
>  to specify this during runtime, /proc/sys/kernel/panic_on_warn can be set to 1
>  to achieve the same behaviour.
>  
> +Trigger Kdump on add_taint()
> +============================
> +
> +The kernel parameter, panic_on_taint, calls panic() from within add_taint(),
> +whenever the value set in this bitmask matches with the bit flag being set
> +by add_taint(). This will cause a kdump to occur at the panic() call.
> +In cases where a user wants to specify this during runtime,
> +/proc/sys/kernel/panic_on_taint can be set to a respective bitmask value
> +to achieve the same behaviour.
> +
>  Contact
>  =======
>  
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 7bc83f3d9bdf..75c02c1841b2 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -3404,6 +3404,9 @@
>  	panic_on_warn	panic() instead of WARN().  Useful to cause kdump
>  			on a WARN().
>  
> +	panic_on_taint	panic() when the kernel gets tainted, if the taint
> +			flag being set matches with the assigned bitmask.
> +
>  	crash_kexec_post_notifiers
>  			Run kdump after running panic-notifiers and dumping
>  			kmsg. This only for the users who doubt kdump always
> diff --git a/Documentation/admin-guide/sysctl/kernel.rst b/Documentation/admin-guide/sysctl/kernel.rst
> index 0d427fd10941..5b880102f2e3 100644
> --- a/Documentation/admin-guide/sysctl/kernel.rst
> +++ b/Documentation/admin-guide/sysctl/kernel.rst
> @@ -658,6 +658,42 @@ a kernel rebuild when attempting to kdump at the location of a WARN().
>  = ================================================
>  
>  
> +panic_on_taint
> +==============
> +
> +Bitmask for calling panic() in the add_taint() path.
> +This is useful to avoid a kernel rebuild when attempting to
> +kdump at the insertion of any specific TAINT flags.
> +When set to 0 (default) add_taint() default behavior is maintained.
> +
> +====== ============================
> +bit  0 TAINT_PROPRIETARY_MODULE
> +bit  1 TAINT_FORCED_MODULE
> +bit  2 TAINT_CPU_OUT_OF_SPEC
> +bit  3 TAINT_FORCED_RMMOD
> +bit  4 TAINT_MACHINE_CHECK
> +bit  5 TAINT_BAD_PAGE
> +bit  6 TAINT_USER
> +bit  7 TAINT_DIE
> +bit  8 TAINT_OVERRIDDEN_ACPI_TABLE
> +bit  9 TAINT_WARN
> +bit 10 TAINT_CRAP
> +bit 11 TAINT_FIRMWARE_WORKAROUND
> +bit 12 TAINT_OOT_MODULE
> +bit 13 TAINT_UNSIGNED_MODULE
> +bit 14 TAINT_SOFTLOCKUP
> +bit 15 TAINT_LIVEPATCH
> +bit 16 TAINT_AUX
> +bit 17 TAINT_RANDSTRUCT
> +bit 18 TAINT_FLAGS_COUNT
> +====== ============================
> +
> +So, for example, to panic if the kernel gets tainted due to
> +occurrences of bad pages and/or machine check errors, a user can::
> +
> +  echo 48 > /proc/sys/kernel/panic_on_taint
> +
> +
>  panic_print
>  ===========
>  
> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index 9b7a8d74a9d6..518b9fd381c2 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -528,6 +528,7 @@ extern int panic_on_oops;
>  extern int panic_on_unrecovered_nmi;
>  extern int panic_on_io_nmi;
>  extern int panic_on_warn;
> +extern unsigned long panic_on_taint;
>  extern int sysctl_panic_on_rcu_stall;
>  extern int sysctl_panic_on_stackoverflow;
>  
> diff --git a/kernel/panic.c b/kernel/panic.c
> index b69ee9e76cb2..e2d4771ab911 100644
> --- a/kernel/panic.c
> +++ b/kernel/panic.c
> @@ -44,6 +44,7 @@ static int pause_on_oops_flag;
>  static DEFINE_SPINLOCK(pause_on_oops_lock);
>  bool crash_kexec_post_notifiers;
>  int panic_on_warn __read_mostly;
> +unsigned long panic_on_taint __read_mostly;

What justification do we have for using __read_mostly here?
See patch I just sent out, hope that helps.

>  int panic_timeout = CONFIG_PANIC_TIMEOUT;
>  EXPORT_SYMBOL_GPL(panic_timeout);
> @@ -434,6 +435,11 @@ void add_taint(unsigned flag, enum lockdep_ok lockdep_ok)
>  		pr_warn("Disabling lock debugging due to kernel taint\n");
>  
>  	set_bit(flag, &tainted_mask);
> +
> +	if (unlikely(tainted_mask & panic_on_taint)) {

unlikely() is telling the merit may not be that strong?

> +		panic_on_taint = 0;
> +		panic("panic_on_taint set ...");
> +	}
>  }
>  EXPORT_SYMBOL(add_taint);
>  
> @@ -675,6 +681,7 @@ core_param(panic, panic_timeout, int, 0644);
>  core_param(panic_print, panic_print, ulong, 0644);
>  core_param(pause_on_oops, pause_on_oops, int, 0644);
>  core_param(panic_on_warn, panic_on_warn, int, 0644);
> +core_param(panic_on_taint, panic_on_taint, ulong, 0644);
>  core_param(crash_kexec_post_notifiers, crash_kexec_post_notifiers, bool, 0644);
>  
>  static int __init oops_setup(char *s)
> diff --git a/kernel/sysctl.c b/kernel/sysctl.c
> index 8a176d8727a3..b80ab660d727 100644
> --- a/kernel/sysctl.c
> +++ b/kernel/sysctl.c
> @@ -1217,6 +1217,13 @@ static struct ctl_table kern_table[] = {
>  		.extra1		= SYSCTL_ZERO,
>  		.extra2		= SYSCTL_ONE,
>  	},
> +	{
> +		.procname	= "panic_on_taint",
> +		.data		= &panic_on_taint,
> +		.maxlen		= sizeof(unsigned long),
> +		.mode		= 0644,
> +		.proc_handler	= proc_doulongvec_minmax,

proc_doulongvec_minmax supports a min and max, do we want to
set it so that we have a sanity check for values used? To see
an example, refer to the file-max entry.

That would allow for example to error our if a value was
tried but it is a taint flag which we don't support on an older
kernel.

You know what would be *really* useful as well, is a way to
cat out our current taint, and perhaps another that spits it
out in English. This can allow scripts to check that for
validity, instead of scraping kernel logs.

For instance, I would love to easily just check if TAIN_WARN
was hit on some tests I am working on, but I don't want to scrape
the kernel log for this, as I think this is overkill.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
