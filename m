Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B29965441
	for <lists+kexec@lfdr.de>; Thu, 11 Jul 2019 11:58:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rjxZ/8equOo+u1xNQMxHRvdiFykm9FClkjSnNdpIRA=; b=hJevBOahL0zPdV
	a2KpdJuz/ekPzhIUpJMdHpQVYl/ToCpzSVHturPBbwLNAVf4HF19tuduiNebhpn0PP2EURoTv4gRb
	hpQectZNJOPbXeUiKb78jmw445pt8zmO9XreHnLvhbGSfpRczwxmLhVghNcHj45sECQLXuXVOa9TG
	yxVaU4arggTE8NzpBs0WSSeCyyu4J98TJCzi7bSfL053tSe1uiXmY76N/2jPYIz89qDFSG70CqIM7
	8p0XSXyUyCHu3B22U65vBQUY0eUkIrbdMShPHzILJm+iF0Jbm6DycFL2ypNh2XDqc0p6W4op42ZG0
	HXk9U045TimtDkFqYi0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVqA-0000Qj-Mw; Thu, 11 Jul 2019 09:58:14 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVq4-0000FE-7D
 for kexec@lists.infradead.org; Thu, 11 Jul 2019 09:58:12 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 3D87725B706;
 Thu, 11 Jul 2019 19:58:03 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 2093B94031C; Thu, 11 Jul 2019 11:58:01 +0200 (CEST)
Date: Thu, 11 Jul 2019 11:58:01 +0200
From: Simon Horman <horms@verge.net.au>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: [PATCH 3/4] kexec/kexec-zlib.h: Add 'is_zlib_file()' helper
 function
Message-ID: <20190711095800.i6flfrcdidw2t6la@verge.net.au>
References: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
 <1562788469-22935-4-git-send-email-bhsharma@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562788469-22935-4-git-send-email-bhsharma@redhat.com>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_025808_429685_D33A15A0 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: takahiro.akashi@linaro.org, bhupesh.linux@gmail.com,
 kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jul 11, 2019 at 01:24:28AM +0530, Bhupesh Sharma wrote:
> This patch adds 'is_zlib_file()' helper function which can be
> used to quickly determine with the passed kernel image is a zlib
> compressed kernel image.
> 
> This is specifically useful for arm64 zImage (or Image.gz) support,
> which is introduced by later patches in this patchset.
> 
> Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
> ---
>  kexec/kexec-zlib.h |  1 +
>  kexec/zlib.c       | 32 ++++++++++++++++++++++++++++++++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/kexec/kexec-zlib.h b/kexec/kexec-zlib.h
> index 43c107bf4a72..16300f294759 100644
> --- a/kexec/kexec-zlib.h
> +++ b/kexec/kexec-zlib.h
> @@ -6,5 +6,6 @@
>  
>  #include "config.h"
>  
> +int is_zlib_file(const char *filename, off_t *r_size);
>  char *zlib_decompress_file(const char *filename, off_t *r_size);
>  #endif /* __KEXEC_ZLIB_H */
> diff --git a/kexec/zlib.c b/kexec/zlib.c
> index 95b608059d41..34d5ca566769 100644
> --- a/kexec/zlib.c
> +++ b/kexec/zlib.c
> @@ -23,6 +23,32 @@ static void _gzerror(gzFile fp, int *errnum, const char **errmsg)
>  	}
>  }
>  
> +int is_zlib_file(const char *filename, off_t *r_size)
> +{
> +	gzFile fp;
> +	int errnum;
> +	const char *msg;
> +
> +	if (!filename)
> +		goto out;
> +
> +	fp = gzopen(filename, "rb");

Does fp need to be closed somewhere to avoid a leak?

> +	if (fp == 0) {
> +		_gzerror(fp, &errnum, &msg);
> +		dbgprintf("Cannot open `%s': %s\n", filename, msg);
> +		goto out;
> +	}
> +
> +	if (gzdirect(fp))
> +		/* It's not in gzip format */
> +		goto out;
> +
> +	/* It's in gzip format */
> +	return 1;
> +out:
> +	return 0;
> +}
> +
>  char *zlib_decompress_file(const char *filename, off_t *r_size)
>  {
>  	gzFile fp;
> @@ -84,6 +110,12 @@ fail:
>  	return buf;
>  }
>  #else
> +
> +int is_zlib_file(const char *filename, off_t *r_size)
> +{
> +	return 0;
> +}
> +
>  char *zlib_decompress_file(const char *UNUSED(filename), off_t *UNUSED(r_size))
>  {
>  	return NULL;
> -- 
> 2.7.4
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
