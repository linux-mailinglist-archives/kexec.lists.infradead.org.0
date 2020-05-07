Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE911C9935
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 20:23:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmL8UYF6uMB7PlTH6lFtLQH79PQNbbkxL1160rQbysU=; b=Ej5DrnbVN4tjGa
	qeoaollTBs5pF8S2yiykwDxlDuWEsYFmd4dnLPB81jowdoJMW1uYVq/dQsJfEQFPcdR0nrOiWw9O4
	EPCzduBPvmfgNuhdSAPVaqHH4GWYfSVR++6wNK22bsJNuo15hyyzbjAsLMnvNNEsdnNzpoe/gQ4Ny
	8CXF4wV09foh1BGAM94KqAFL4SjEo4iKVnXJwR3M27nW+xOxjZFQAv0IHGKeLU8tcdSCr86QxzxLw
	N//tWOAhzMtPSiVHLRzJpCMzZXOqoDU1QHfrQmbWyibAEJAuOhJg2WWBt49Z4FoyOY9eLhHfaf7qf
	J4zGo/SWUyQqXcA85vww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWlAl-0002oG-PE; Thu, 07 May 2020 18:23:03 +0000
Received: from mail-pj1-f68.google.com ([209.85.216.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWlAi-0002nU-PJ
 for kexec@lists.infradead.org; Thu, 07 May 2020 18:23:01 +0000
Received: by mail-pj1-f68.google.com with SMTP id fu13so2988427pjb.5
 for <kexec@lists.infradead.org>; Thu, 07 May 2020 11:23:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=crOGNM1IiUdeKZ/Udc473eZwbzdnFX83mUx0lAy7H7w=;
 b=JwTCAFTQg4M7+A6PLQ/SIG6ykuKzAiDwFEnNU9/Xjgic8yFp30ADIMN19hR7AwduWJ
 WaZn1xvF3RSOUanK8v0oG1paGqBLfMlQYW4Xz3m+VtmuU4/Q4TlrOL1A7SSNjfqsTSfB
 PMlqGkPeCxJB9eHS+qFYK0nnecdNLEeDa3rWeMJ1WJEddpdMiS+MGGKhs7fnExss/pS7
 wU2nc5ON3Mx1+LSF/giq5Q5Jrmfc9W+8rr8wpCicbpYuVvQYy1jk8G1diho03OglRwYB
 L2/PpIsiDFbWdokwaYPJmESDWOAobkpbksKBEbfQDjw3N7TrH0Cnd28UZdfldfVDQgZ+
 pQyQ==
X-Gm-Message-State: AGi0PuYEbsBAodIn+dXM8CYWGnogTpgTZEY3EP624noh4JFhgHX45J0D
 DNTjfZVn+6YcKxD9N1By7Tf1vx3cLbw=
X-Google-Smtp-Source: APiQypKahnzYyNUg9AVnphKZxOGotDLI5iak1AH7DVsvqQtw4mS2xuWkahM3ViDKvMYI+csMPj4q9Q==
X-Received: by 2002:a17:902:b206:: with SMTP id
 t6mr14698777plr.270.1588875779441; 
 Thu, 07 May 2020 11:22:59 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id 192sm5459770pfu.182.2020.05.07.11.22.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 May 2020 11:22:58 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id CF043403EA; Thu,  7 May 2020 18:22:57 +0000 (UTC)
Date: Thu, 7 May 2020 18:22:57 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Rafael Aquini <aquini@redhat.com>
Subject: Re: [PATCH v2] kernel: add panic_on_taint
Message-ID: <20200507182257.GX11244@42.do-not-panic.com>
References: <20200507180631.308441-1-aquini@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507180631.308441-1-aquini@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_112300_820012_990154A5 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.68 listed in wl.mailspike.net]
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

On Thu, May 07, 2020 at 02:06:31PM -0400, Rafael Aquini wrote:
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
> +	},

You sent this out before I could reply to the other thread on v1.
My thoughts on the min / max values, or lack here:
                                                                                
Valid range doesn't mean "currently allowed defined" masks.                     

For example, if you expect to panic due to a taint, but a new taint type
you want was not added on an older kernel you would be under a very
*false* sense of security that your kernel may not have hit such a
taint, but the reality of the situation was that the kernel didn't
support that taint flag only added in future kernels.                           

You may need to define a new flag (MAX_TAINT) which should be the last
value + 1, the allowed max values would be                                      

(2^MAX_TAINT)-1                                                                 

or                                                                              

(1<<MAX_TAINT)-1  

Since this is to *PANIC* I think we do want to test ranges and ensure
only valid ones are allowed.

  Luis

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
