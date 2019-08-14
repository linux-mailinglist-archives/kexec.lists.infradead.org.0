Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B258CA9F
	for <lists+kexec@lfdr.de>; Wed, 14 Aug 2019 07:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7OScReyizhaXalHIgGwjUHmuG7Y8k0tW3n25AVCOGQ=; b=pTAuN+KIzgLwyt
	l9d9PT1rAiiY7GvReFzBfVHaqmR+KRf8wSdO94FT+6TTSsrFLIAtqvYOmwXIaRPruvlzHA0KSMczm
	nl2x7aWXZXJDNrgz0XCcWr8196aPTrG3JytGhOafPPs6meX07HH2wJm39mNh/s/dF6G0r6JSs5PHo
	N39GSq7ZTsTJvYKvAgCYmvH26W85XTYUjqPxjT+O7ONFhzKnS9kvQNorRCMaCe9Bt6A7xoIrWOPay
	ALjpHBL+SCNhjcNhpF9radkFdCKcqGJ5ZHfTi48c/Ag7HkrTI3JWkt8m95HbvtFKlfaGJPRmog0QW
	pRHzwVGREhMKPY/lLP5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxlle-0003H4-3s; Wed, 14 Aug 2019 05:24:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxlla-0003Gk-Rs
 for kexec@lists.infradead.org; Wed, 14 Aug 2019 05:24:12 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D2F463002096;
 Wed, 14 Aug 2019 05:24:07 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-126.pek2.redhat.com
 [10.72.12.126])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 53BBB88B31;
 Wed, 14 Aug 2019 05:24:04 +0000 (UTC)
Date: Wed, 14 Aug 2019 13:23:59 +0800
From: Dave Young <dyoung@redhat.com>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH 3/6] Avoid build warning when !CONFIG_KEXEC_SIG
Message-ID: <20190814052359.GA10664@dhcp-128-65.nay.redhat.com>
References: <20190813192126.122370-1-matthewgarrett@google.com>
 <20190813192126.122370-4-matthewgarrett@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813192126.122370-4-matthewgarrett@google.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Wed, 14 Aug 2019 05:24:08 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_222410_946813_F0C45DBB 
X-CRM114-Status: GOOD (  23.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-security-module@vger.kernel.org,
 kexec@lists.infradead.org, jmorris@namei.org,
 Matthew Garrett <mjg59@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/13/19 at 12:21pm, Matthew Garrett wrote:
> Refactor the signature validation and lockdown integration a little in
> order to avoid an unused variable.
> 
> Signed-off-by: Matthew Garrett <mjg59@google.com>
> Cc: Jiri Bohac <jbohac@suse.cz>
> Cc: Dave Young <dyoung@redhat.com>
> Cc: kexec@lists.infradead.org
> ---
>  kernel/kexec_file.c | 72 ++++++++++++++++++++++++++++-----------------
>  1 file changed, 45 insertions(+), 27 deletions(-)
> 
> diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> index be0c13076056..e878587715b9 100644
> --- a/kernel/kexec_file.c
> +++ b/kernel/kexec_file.c
> @@ -177,36 +177,13 @@ void kimage_file_post_load_cleanup(struct kimage *image)
>  	image->image_loader_data = NULL;
>  }
>  
> -/*
> - * In file mode list of segments is prepared by kernel. Copy relevant
> - * data from user space, do error checking, prepare segment list
> - */
> +#ifdef CONFIG_KEXEC_SIG
>  static int
> -kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> -			     const char __user *cmdline_ptr,
> -			     unsigned long cmdline_len, unsigned flags)
> +kimage_validate_signature(struct kimage *image)
>  {
>  	const char *reason;
>  	int ret;
> -	void *ldata;
> -	loff_t size;
> -
> -	ret = kernel_read_file_from_fd(kernel_fd, &image->kernel_buf,
> -				       &size, INT_MAX, READING_KEXEC_IMAGE);
> -	if (ret)
> -		return ret;
> -	image->kernel_buf_len = size;
> -
> -	/* IMA needs to pass the measurement list to the next kernel. */
> -	ima_add_kexec_buffer(image);
>  
> -	/* Call arch image probe handlers */
> -	ret = arch_kexec_kernel_image_probe(image, image->kernel_buf,
> -					    image->kernel_buf_len);
> -	if (ret)
> -		goto out;
> -
> -#ifdef CONFIG_KEXEC_SIG
>  	ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
>  					   image->kernel_buf_len);
>  	switch (ret) {
> @@ -228,7 +205,7 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
>  	decide:
>  		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
>  			pr_notice("%s rejected\n", reason);
> -			goto out;
> +			break;
>  		}
>  
>  		ret = 0;
> @@ -251,9 +228,44 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
>  		 */
>  	default:
>  		pr_notice("kernel signature verification failed (%d).\n", ret);
> -		goto out;
> +		break;
>  	}
> +
> +	return ret;
> +}
> +#endif
> +
> +/*
> + * In file mode list of segments is prepared by kernel. Copy relevant
> + * data from user space, do error checking, prepare segment list
> + */
> +static int
> +kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> +			     const char __user *cmdline_ptr,
> +			     unsigned long cmdline_len, unsigned flags)
> +{
> +	int ret;
> +	void *ldata;
> +	loff_t size;
> +
> +	ret = kernel_read_file_from_fd(kernel_fd, &image->kernel_buf,
> +				       &size, INT_MAX, READING_KEXEC_IMAGE);
> +	if (ret)
> +		return ret;
> +	image->kernel_buf_len = size;
> +
> +	/* Call arch image probe handlers */
> +	ret = arch_kexec_kernel_image_probe(image, image->kernel_buf,
> +					    image->kernel_buf_len);
> +	if (ret)
> +		goto out;
> +
> +#ifdef CONFIG_KEXEC_SIG
> +	ret = kimage_validate_signature(image);
> +	if (ret)
> +		goto out;
>  #endif
> +
>  	/* It is possible that there no initramfs is being loaded */
>  	if (!(flags & KEXEC_FILE_NO_INITRAMFS)) {
>  		ret = kernel_read_file_from_fd(initrd_fd, &image->initrd_buf,
> @@ -279,8 +291,14 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
>  			ret = -EINVAL;
>  			goto out;
>  		}
> +
> +		ima_kexec_cmdline(image->cmdline_buf,
> +				  image->cmdline_buf_len - 1);
>  	}
>  
> +	/* IMA needs to pass the measurement list to the next kernel. */
> +	ima_add_kexec_buffer(image);
> +
>  	/* Call arch image load handlers */
>  	ldata = arch_kexec_kernel_image_load(image);
>  

I can not get the whole thread, also not sure which tree it should
apply.

I assume it is based on your series for lockdown.  But it is really hard
to review because of no context in this patch.

Also I think it should be good to split the preparation piece of kexec
and send them separately.  Since it is improve the signature
verification logic, they do not necessarily depend on the lockdown
series.

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
