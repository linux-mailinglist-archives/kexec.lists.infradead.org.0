Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC1ED1EAF
	for <lists+kexec@lfdr.de>; Thu, 10 Oct 2019 04:52:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IPBFrLH4aj+c45vwAgzn7Xk5iESzOUyvDV99BsgjIzs=; b=FT9enijqzHUcKQ
	PjXxU8YqraFnQZievSjfaLqRjQrzUyFQOJPVyW+cd4WtldrG/QF+qLJmQ6SeIPjKAh/E/DRNV4yHi
	6FkplX1VDzh8bLxTOg7A1yUAS5CCrz+/9/YJgAUnI66Rfm56xNnv3rydJ6S98PWBDidM1HmjfZbWq
	lpGGrtWJRTFL0FZ/OVoaQfyx8IsMcGDVBD2P3uWfWhF7Zcx8UtPd/bjTfGsEeYTPFXxb83KrP+d8W
	WlFgSKKYml4rG74r91/XkJX08ZZuVXvKR0py4CR4OdrG9pCebBNMenFEV4B5YSknqhgAW0uZUcxoa
	o+rxZAHh3Chi+JTESoKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIOZJ-0007YN-LP; Thu, 10 Oct 2019 02:52:45 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIOZG-0007XU-52
 for kexec@lists.infradead.org; Thu, 10 Oct 2019 02:52:44 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 401BE30860D6;
 Thu, 10 Oct 2019 02:52:39 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-56.pek2.redhat.com
 [10.72.12.56])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 54D1260923;
 Thu, 10 Oct 2019 02:52:33 +0000 (UTC)
Date: Thu, 10 Oct 2019 10:52:29 +0800
From: Dave Young <dyoung@redhat.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH] lib/string: make memzero_explicit inline instead of
 external
Message-ID: <20191010025229.GA3376@dhcp-128-65.nay.redhat.com>
References: <1d17349e-98ab-b582-6981-b484b0e970b6@redhat.com>
 <20191007220000.GA408752@rani.riverdale.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007220000.GA408752@rani.riverdale.lan>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 10 Oct 2019 02:52:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_195242_227950_8A2E7778 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-s390@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Stephan Mueller <smueller@chronox.de>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, linux-crypto@vger.kernel.org,
 "H . Peter Anvin" <hpa@zytor.com>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 10/07/19 at 06:00pm, Arvind Sankar wrote:
> With the use of the barrier implied by barrier_data(), there is no need
> for memzero_explicit to be extern. Making it inline saves the overhead
> of a function call, and allows the code to be reused in arch/*/purgatory
> without having to duplicate the implementation.
> 
> Fixes: 906a4bb97f5d ("crypto: sha256 - Use get/put_unaligned_be32 to get input, memzero_explicit")
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> Tested-by: Hans de Goede <hdegoede@redhat.com>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  include/linux/string.h | 21 ++++++++++++++++++++-
>  lib/string.c           | 21 ---------------------
>  2 files changed, 20 insertions(+), 22 deletions(-)
> 
> diff --git a/include/linux/string.h b/include/linux/string.h
> index b2f9df7f0761..b6ccdc2c7f02 100644
> --- a/include/linux/string.h
> +++ b/include/linux/string.h
> @@ -227,7 +227,26 @@ static inline bool strstarts(const char *str, const char *prefix)
>  }
>  
>  size_t memweight(const void *ptr, size_t bytes);
> -void memzero_explicit(void *s, size_t count);
> +
> +/**
> + * memzero_explicit - Fill a region of memory (e.g. sensitive
> + *		      keying data) with 0s.
> + * @s: Pointer to the start of the area.
> + * @count: The size of the area.
> + *
> + * Note: usually using memset() is just fine (!), but in cases
> + * where clearing out _local_ data at the end of a scope is
> + * necessary, memzero_explicit() should be used instead in
> + * order to prevent the compiler from optimising away zeroing.
> + *
> + * memzero_explicit() doesn't need an arch-specific version as
> + * it just invokes the one of memset() implicitly.
> + */
> +static inline void memzero_explicit(void *s, size_t count)
> +{
> +	memset(s, 0, count);
> +	barrier_data(s);
> +}
>  
>  /**
>   * kbasename - return the last part of a pathname.
> diff --git a/lib/string.c b/lib/string.c
> index cd7a10c19210..08ec58cc673b 100644
> --- a/lib/string.c
> +++ b/lib/string.c
> @@ -748,27 +748,6 @@ void *memset(void *s, int c, size_t count)
>  EXPORT_SYMBOL(memset);
>  #endif
>  
> -/**
> - * memzero_explicit - Fill a region of memory (e.g. sensitive
> - *		      keying data) with 0s.
> - * @s: Pointer to the start of the area.
> - * @count: The size of the area.
> - *
> - * Note: usually using memset() is just fine (!), but in cases
> - * where clearing out _local_ data at the end of a scope is
> - * necessary, memzero_explicit() should be used instead in
> - * order to prevent the compiler from optimising away zeroing.
> - *
> - * memzero_explicit() doesn't need an arch-specific version as
> - * it just invokes the one of memset() implicitly.
> - */
> -void memzero_explicit(void *s, size_t count)
> -{
> -	memset(s, 0, count);
> -	barrier_data(s);
> -}
> -EXPORT_SYMBOL(memzero_explicit);
> -
>  #ifndef __HAVE_ARCH_MEMSET16
>  /**
>   * memset16() - Fill a memory area with a uint16_t
> -- 

Thanks for the fix!  Ccing kexec list since the problem is kexec/kdump
related.  People can try it when they see same issue.

Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
