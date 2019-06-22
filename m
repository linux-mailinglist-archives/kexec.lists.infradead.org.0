Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A6A4F910
	for <lists+kexec@lfdr.de>; Sun, 23 Jun 2019 01:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVUug3WikjWygh5G4acQDasmhqKrvkw+GX76lF0v5bg=; b=iTxnipO6thppMU
	oyZzayjVANYY/1n+gtDTdo28ADHjd4zEc9l+DQnCPRekcqIYvaqYpTmbkabrT4jRSdTTSQsM3Woh6
	xFMoDRABtpsbj7YvJVylX6A47Z8yVWJSXEdR3UN12fhcE4kG0La8Lfj/hfKccOTLns4LZke/blRvt
	BKs51KPpIVx6i96srZMn9fnQU5Om9sw0kLd+kuQja4vCCudA8j8ferrILBDgBkM/YF9fjEzeQdUyI
	E4FtgzCQE8hCexixAnexgqxNw0eurc9NwAy+ULTSbP7inEaSwH1bBQzfxNkXs7f8rUU6T9vvovpXo
	ggKP4vVzJkbyJEHg5Qhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hepop-0000xW-7V; Sat, 22 Jun 2019 23:53:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hepoe-0000vy-Lc
 for kexec@lists.infradead.org; Sat, 22 Jun 2019 23:53:06 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so4804927pla.7
 for <kexec@lists.infradead.org>; Sat, 22 Jun 2019 16:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PICVkDCKF9SBFiTMxs5q7Sx1+1o4x5Q3+GA5H81Tneo=;
 b=ir+0iXqVOalSYgdtJfBgUDb+XYb02QjZQLYL30nGIdtelW50JtaMwO6kcaSwRQlt1v
 WtyAwZqNb/Zgi5T9Y4SDSRjK9h1fUmtIjwltjDA+FHsgmScnDc4+qQRbrDXkHqUTATyk
 dR1WcvK7+lI+sifDQPnJj+I2EmVRxvLxhyKrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PICVkDCKF9SBFiTMxs5q7Sx1+1o4x5Q3+GA5H81Tneo=;
 b=hzf0XNNwFRhvVUgx6rK3c5nOaS+aLTVuIUBztdofoJLGF41OfLNDlRA2uRHIEmpmAj
 z3y0W1O8u9VxADPf7+ay7e6kNVg9BizdxhfR/8t2BBapQSCtUf9Hd8nxJ5GxnihvtJL6
 OgfP7in4C6cISjLPnaIJ4KnL2xCsKBAQNxRMxC+6h2QlIBSTBjIdm0xbwvDr4TcvCKQR
 FVq4tZVblxoPLfsIhG+NypH4/aY0iv+XCVLM+W86Nz53WmeIwS+q/8wb+VXtGZKBD700
 UMwnOcNgVbOkCOby7HAJf/1DeZ8mTPMgfb0HrczxjBld2E7PJ2Dgurf+FEaC+I3GmAKT
 tQcQ==
X-Gm-Message-State: APjAAAXv8ggBt6MeCp0wjY4kor8kQYGZ86LQCWG6r8mih1Q8AM/AsBvH
 r5SE1/gX+j4YO+Qa55pZwn1uaQ==
X-Google-Smtp-Source: APXvYqyIBsDGTwOJfW9dMkHubASlKIulYQ/ol1kt2GUts1AGrEooXih3+gYBHqTmtRZlebHe+XVDeA==
X-Received: by 2002:a17:902:8649:: with SMTP id
 y9mr61665941plt.289.1561247580963; 
 Sat, 22 Jun 2019 16:53:00 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f197sm6321039pfa.161.2019.06.22.16.53.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Jun 2019 16:53:00 -0700 (PDT)
Date: Sat, 22 Jun 2019 16:52:59 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH V34 06/29] kexec_load: Disable at runtime if the kernel
 is locked down
Message-ID: <201906221652.2268FEE@keescook>
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-7-matthewgarrett@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622000358.19895-7-matthewgarrett@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_165304_706347_440807A5 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthew Garrett <mjg59@srcf.ucam.org>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, jmorris@namei.org,
 Matthew Garrett <mjg59@google.com>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:03:35PM -0700, Matthew Garrett wrote:
> From: Matthew Garrett <mjg59@srcf.ucam.org>
> 
> The kexec_load() syscall permits the loading and execution of arbitrary
> code in ring 0, which is something that lock-down is meant to prevent. It
> makes sense to disable kexec_load() in this situation.
> 
> This does not affect kexec_file_load() syscall which can check for a
> signature on the image to be booted.
> 
> Signed-off-by: David Howells <dhowells@redhat.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: Matthew Garrett <mjg59@google.com>
> Acked-by: Dave Young <dyoung@redhat.com>
> cc: kexec@lists.infradead.org
> ---
>  include/linux/security.h     | 1 +
>  kernel/kexec.c               | 8 ++++++++
>  security/lockdown/lockdown.c | 1 +
>  3 files changed, 10 insertions(+)
> 
> diff --git a/include/linux/security.h b/include/linux/security.h
> index 200175c8605a..00a31ab2e5ba 100644
> --- a/include/linux/security.h
> +++ b/include/linux/security.h
> @@ -84,6 +84,7 @@ enum lockdown_reason {
>  	LOCKDOWN_NONE,
>  	LOCKDOWN_MODULE_SIGNATURE,
>  	LOCKDOWN_DEV_MEM,
> +	LOCKDOWN_KEXEC,
>  	LOCKDOWN_INTEGRITY_MAX,
>  	LOCKDOWN_CONFIDENTIALITY_MAX,
>  };
> diff --git a/kernel/kexec.c b/kernel/kexec.c
> index 68559808fdfa..ec3f07a4b1c0 100644
> --- a/kernel/kexec.c
> +++ b/kernel/kexec.c
> @@ -207,6 +207,14 @@ static inline int kexec_load_check(unsigned long nr_segments,
>  	if (result < 0)
>  		return result;
>  
> +	/*
> +	 * kexec can be used to circumvent module loading restrictions, so
> +	 * prevent loading in that case
> +	 */
> +	result = security_locked_down(LOCKDOWN_KEXEC);
> +	if (result)
> +		return result;
> +
>  	/*
>  	 * Verify we have a legal set of flags
>  	 * This leaves us room for future extensions.
> diff --git a/security/lockdown/lockdown.c b/security/lockdown/lockdown.c
> index 565c87451f0f..08fcd8116db3 100644
> --- a/security/lockdown/lockdown.c
> +++ b/security/lockdown/lockdown.c
> @@ -20,6 +20,7 @@ static char *lockdown_reasons[LOCKDOWN_CONFIDENTIALITY_MAX+1] = {
>  	[LOCKDOWN_NONE] = "none",
>  	[LOCKDOWN_MODULE_SIGNATURE] = "unsigned module loading",
>  	[LOCKDOWN_DEV_MEM] = "/dev/mem,kmem,port",
> +	[LOCKDOWN_KEXEC] = "kexec of unsigned images",
>  	[LOCKDOWN_INTEGRITY_MAX] = "integrity",
>  	[LOCKDOWN_CONFIDENTIALITY_MAX] = "confidentiality",
>  };
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
