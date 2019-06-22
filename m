Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1B84F917
	for <lists+kexec@lfdr.de>; Sun, 23 Jun 2019 01:54:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ogy7wQB0Ey83YmYpl1XdwKMZwg32E7hlnuut3n14cK0=; b=YFifL/ohbkNLfQ
	27zDJf6pMVDeOuZoE5JRI8aQ/0JRzIPrsjpKzaNgBCjrFkWUh3JqhSPWtLBAasCigwBLlLi11bMuS
	cd5b+/Z37rPclyt1531L2vGBZq1p+nWqj8n5nY4R2chKkQ9n59Oc/qBNzgTh9tU+KEp2tRrSB3e7y
	zKQK1hj6Oc+tyJdK0LX+GwLubZ1FO6pKOJ2WrcAGY4hBtQ4vKzhx1L8kgnphC9+DKf6E7L5rdI/Rv
	p8gupZ7EQdzw+nnPAqOsUv40D5mtfZ9oGG9NaI0qQq3YLzLNN9MG58sgQxQgJvZphOnj2pkMS/+S5
	9tkGPMUZxkoU1XfmkPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hepph-00016A-Rp; Sat, 22 Jun 2019 23:54:10 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heppe-00015h-Fl
 for kexec@lists.infradead.org; Sat, 22 Jun 2019 23:54:07 +0000
Received: by mail-pf1-x441.google.com with SMTP id y15so785617pfn.5
 for <kexec@lists.infradead.org>; Sat, 22 Jun 2019 16:54:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=E0DLK9o2G9JjdDYpbAB7EERdssjBdQ3kUgIhR7SzB14=;
 b=PoZU+SAUmLJWgB2EheN3a27PmwJ+tthDLgoDrTEExRu180ZGcMB/LViOHJdFTBNylB
 X17zTQ2wQBMKx/B+rw9MQcR/r16JrEmksfW1pNlazb7/sre8xDr3wgaLmeh0jYQ6dzZv
 obJqYfCWFPrsp+QHpFF1CobqFwFBMyvi7lTwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=E0DLK9o2G9JjdDYpbAB7EERdssjBdQ3kUgIhR7SzB14=;
 b=atRrrIhREeCnlI6gGWSE3wSZT58Sk+n5Z9xrlTCYXdqu9BfrjKEoqHfCxOdDjTO8Hf
 UttuffBx2OCPPzq2ktv9K/S1m7a9efqidqQYd7ayvDhUnX48QrKssiL2hx/If8BL6wSZ
 X5ZaPyWdFb43v3zdBxq/f9VXyoPTlMIhtPFkY1zNRzXn4C9Ep2o1B2+Qk1uCTf0m85EN
 cB4haVnCH+438JYJBUG+w3Vk3fPIQO0dLBSxCtVOYsB8XpXIMW+Vf/piw+Fk3I3mGyXe
 KI4RUFudCH5UBXvJcXYGvterpF6nh2F3MA5zYhJC9QTHNTQF3/L4NzywLrV8maa4ETbN
 WHxQ==
X-Gm-Message-State: APjAAAXWsCyO7BUMmjmvh2IHLoI1UtKqL/GuW11CQbBk94xQPorLQZNv
 /UG0h78OFEMWEU9lqaeiWQ6aig==
X-Google-Smtp-Source: APXvYqxlOqkg8w2OWWVJ2hLfUph8UVNaLCOyCwz48MDFBPl0G/nO0YOXmheCojMSK7htR0uHnMpJmA==
X-Received: by 2002:a17:90a:1785:: with SMTP id
 q5mr15405856pja.106.1561247645823; 
 Sat, 22 Jun 2019 16:54:05 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id f7sm6791434pfd.43.2019.06.22.16.54.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 22 Jun 2019 16:54:05 -0700 (PDT)
Date: Sat, 22 Jun 2019 16:54:04 -0700
From: Kees Cook <keescook@chromium.org>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH V34 09/29] kexec_file: Restrict at runtime if the kernel
 is locked down
Message-ID: <201906221654.3E113D1@keescook>
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-10-matthewgarrett@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190622000358.19895-10-matthewgarrett@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_165406_521020_4F4908D0 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, jmorris@namei.org,
 Matthew Garrett <mjg59@google.com>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 05:03:38PM -0700, Matthew Garrett wrote:
> From: Jiri Bohac <jbohac@suse.cz>
> 
> When KEXEC_SIG is not enabled, kernel should not load images through
> kexec_file systemcall if the kernel is locked down.
> 
> [Modified by David Howells to fit with modifications to the previous patch
>  and to return -EPERM if the kernel is locked down for consistency with
>  other lockdowns. Modified by Matthew Garrett to remove the IMA
>  integration, which will be replaced by integrating with the IMA
>  architecture policy patches.]
> 
> Signed-off-by: Jiri Bohac <jbohac@suse.cz>

Reviewed-by: Kees Cook <keescook@chromium.org>

-Kees

> Signed-off-by: David Howells <dhowells@redhat.com>
> Signed-off-by: Matthew Garrett <mjg59@google.com>
> Reviewed-by: Jiri Bohac <jbohac@suse.cz>
> cc: kexec@lists.infradead.org
> ---
>  kernel/kexec_file.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> index eec7e5bb2a08..27adb4312b03 100644
> --- a/kernel/kexec_file.c
> +++ b/kernel/kexec_file.c
> @@ -237,7 +237,10 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
>  			goto out;
>  		}
>  
> -		ret = 0;
> +		ret = security_locked_down(LOCKDOWN_KEXEC);
> +		if (ret)
> +			goto out;
> +
>  		break;
>  
>  		/* All other errors are fatal, including nomem, unparseable
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 

-- 
Kees Cook

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
