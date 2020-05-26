Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52B21E1A88
	for <lists+kexec@lfdr.de>; Tue, 26 May 2020 07:05:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80zvcL7aqVV33MeKIIm+qT4k2EuptQqVDtzgq/WsiMQ=; b=qGZKeGaiurwUjS
	Tg/6NhyirsVfiJLXO8Ko0q9NMDwC4vGmYkOpIRgNO8v9Kji2q5rUoRSoR2P9Jvw2vZVEv9SaLbEfW
	nPrda4CZcYp/VvNQSuX0KVWE+1wF1ojT2D7C8yrlhQTUDLV8ivQHM/Cwg0kL6RjPEYCitZVHl4mje
	lYfV+f83czrQsiQOCFltd3cpuNN5gHtHywUIX3HZ/MtH+hU6Q8vMfo+bEDpPAM9e30Munq8IOR8Dm
	UFgshlP617XuWftLCWswbp3RjtnL4YulsGuLLdZpEzkWz+KxxN7cccgTgIo1ynP2VyAfwqDE+eATR
	mg8t99gmVgpEa9DOCxVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdRmB-0006tK-Ca; Tue, 26 May 2020 05:05:19 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdRm7-0006sx-P6
 for kexec@lists.infradead.org; Tue, 26 May 2020 05:05:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590469512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Oz1sdMnNcBOEuR7TbEaLiAqhkVwdoF5waHE5jMnmydI=;
 b=L1GRsgQF5lmsVtYGOqqEAl+vu3EAIRTqBVdySRzWCKmXRpXbnFQyfMK0rUhgFKxMEMwtWZ
 obfGLxhTIpi2LChB6MXpP5lRb1919hZpeLQi4VquNoi3J9iibeWZIF8lnObEV4dsf/vCDa
 YQkw1hW14qOCNNWT3X6GJ0Pjh4cimGg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-uOahTH1bPmq4J7iQyeUFcA-1; Tue, 26 May 2020 01:05:01 -0400
X-MC-Unique: uOahTH1bPmq4J7iQyeUFcA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BDEC210082EA;
 Tue, 26 May 2020 05:04:59 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-170.pek2.redhat.com
 [10.72.12.170])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id F1E501BCBE;
 Tue, 26 May 2020 05:04:55 +0000 (UTC)
Date: Tue, 26 May 2020 13:04:51 +0800
From: Dave Young <dyoung@redhat.com>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH] kexec: Do not verify the signature without the lockdown
 or mandatory signature
Message-ID: <20200526050451.GA74334@dhcp-128-65.nay.redhat.com>
References: <20200525052351.24134-1-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525052351.24134-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_220515_901719_9E9BE120 
X-CRM114-Status: GOOD (  24.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: jbohac@suse.cz, bhe@redhat.com, kexec@lists.infradead.org,
 jmorris@namei.org, mjg59@google.com, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/25/20 at 01:23pm, Lianbo Jiang wrote:
> Signature verification is an important security feature, to protect
> system from being attacked with a kernel of unknown origin. Kexec
> rebooting is a way to replace the running kernel, hence need be
> secured carefully.
> 
> In the current code of handling signature verification of kexec kernel,
> the logic is very twisted. It mixes signature verification, IMA signature
> appraising and kexec lockdown.
> 
> If there is no KEXEC_SIG_FORCE, kexec kernel image doesn't have one of
> signature, the supported crypto, and key, we don't think this is wrong,
> Unless kexec lockdown is executed. IMA is considered as another kind of
> signature appraising method.
> 
> If kexec kernel image has signature/crypto/key, it has to go through the
> signature verification and pass. Otherwise it's seen as verification
> failure, and won't be loaded.
> 
> Seems kexec kernel image with an unqualified signature is even worse than
> those w/o signature at all, this sounds very unreasonable. E.g. If people
> get a unsigned kernel to load, or a kernel signed with expired key, which
> one is more dangerous?
> 
> So, here, let's simplify the logic to improve code readability. If the
> KEXEC_SIG_FORCE enabled or kexec lockdown enabled, signature verification
> is mandated. Otherwise, we lift the bar for any kernel image.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
>  kernel/kexec_file.c | 37 ++++++-------------------------------
>  1 file changed, 6 insertions(+), 31 deletions(-)
> 
> diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> index faa74d5f6941..e4bdf0c42f35 100644
> --- a/kernel/kexec_file.c
> +++ b/kernel/kexec_file.c
> @@ -181,52 +181,27 @@ void kimage_file_post_load_cleanup(struct kimage *image)
>  static int
>  kimage_validate_signature(struct kimage *image)
>  {
> -	const char *reason;
>  	int ret;
>  
>  	ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
>  					   image->kernel_buf_len);
> -	switch (ret) {
> -	case 0:
> -		break;
> +	if (ret) {
> +		pr_debug("kernel signature verification failed (%d).\n", ret);
>  
> -		/* Certain verification errors are non-fatal if we're not
> -		 * checking errors, provided we aren't mandating that there
> -		 * must be a valid signature.
> -		 */
> -	case -ENODATA:
> -		reason = "kexec of unsigned image";
> -		goto decide;
> -	case -ENOPKG:
> -		reason = "kexec of image with unsupported crypto";
> -		goto decide;
> -	case -ENOKEY:
> -		reason = "kexec of image with unavailable key";
> -	decide:
> -		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
> -			pr_notice("%s rejected\n", reason);
> +		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE))
>  			return ret;
> -		}
>  
> -		/* If IMA is guaranteed to appraise a signature on the kexec
> +		/*
> +		 * If IMA is guaranteed to appraise a signature on the kexec
>  		 * image, permit it even if the kernel is otherwise locked
>  		 * down.
>  		 */
>  		if (!ima_appraise_signature(READING_KEXEC_IMAGE) &&
>  		    security_locked_down(LOCKDOWN_KEXEC))
>  			return -EPERM;
> -
> -		return 0;
> -
> -		/* All other errors are fatal, including nomem, unparseable
> -		 * signatures and signature check failures - even if signatures
> -		 * aren't required.
> -		 */
> -	default:
> -		pr_notice("kernel signature verification failed (%d).\n", ret);
>  	}
>  
> -	return ret;
> +	return 0;
>  }
>  #endif
>  
> -- 
> 2.17.1
> 


Acked-by: Dave Young <dyoung@redhat.com>

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
