Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A542520AE
	for <lists+kexec@lfdr.de>; Tue, 25 Jun 2019 04:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8TPQtI3GER6gdJQd9d+ORwW8/mW0vpAwDyLh87PRf+0=; b=nP2tXKtpPTH9kO
	6bO4SKis2SsuZUgVvo27IoYasVx2z378SCcbUwCXsBwakmhzzyFzJV0H/FCMbMxI5JDxF74Bn7CJH
	P03hVmIg5DfcyAQfBrIRnCeQ3WB8WqlnhBu7U5C7tXOcTK5jFcg/c0O8LKdeziZ9zywbgkpM03tcW
	f9UtH+xbjzcC+w6hD1BlzH+PON3uV9ZpKvon7xA9uP6FiuUjjYUgZeN13uj3EgGD0HngGHLzXVCCY
	xxSIl/coSCVVz/tIjrV6LgwYzx2hUKLCAiw0S1g5T7RvyN82N5lfYUO8HrS81/clOKZl9by4jwoB5
	w5cB26ih9zef3YO66ZAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfbIw-00014q-MC; Tue, 25 Jun 2019 02:35:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfbIq-00014R-T1
 for kexec@lists.infradead.org; Tue, 25 Jun 2019 02:35:26 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1295981F25;
 Tue, 25 Jun 2019 02:35:24 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-89.pek2.redhat.com
 [10.72.12.89])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EE84D5D9C5;
 Tue, 25 Jun 2019 02:35:19 +0000 (UTC)
Date: Tue, 25 Jun 2019 10:35:14 +0800
From: Dave Young <dyoung@redhat.com>
To: Matthew Garrett <matthewgarrett@google.com>
Subject: Re: [PATCH V34 08/29] kexec_file: split KEXEC_VERIFY_SIG into
 KEXEC_SIG and KEXEC_SIG_FORCE
Message-ID: <20190625023514.GA4007@dhcp-128-65.nay.redhat.com>
References: <20190622000358.19895-1-matthewgarrett@google.com>
 <20190622000358.19895-9-matthewgarrett@google.com>
 <20190624020106.GD2976@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624020106.GD2976@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 25 Jun 2019 02:35:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_193524_976443_08BEEBD0 
X-CRM114-Status: GOOD (  39.11  )
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
Cc: Jiri Bohac <jbohac@suse.cz>, linux-api@vger.kernel.org,
 kexec@lists.infradead.org, jmorris@namei.org,
 Matthew Garrett <mjg59@google.com>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-security-module@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/24/19 at 10:01am, Dave Young wrote:
> On 06/21/19 at 05:03pm, Matthew Garrett wrote:
> > From: Jiri Bohac <jbohac@suse.cz>
> > 
> > This is a preparatory patch for kexec_file_load() lockdown.  A locked down
> > kernel needs to prevent unsigned kernel images from being loaded with
> > kexec_file_load().  Currently, the only way to force the signature
> > verification is compiling with KEXEC_VERIFY_SIG.  This prevents loading
> > usigned images even when the kernel is not locked down at runtime.
> > 
> > This patch splits KEXEC_VERIFY_SIG into KEXEC_SIG and KEXEC_SIG_FORCE.
> > Analogous to the MODULE_SIG and MODULE_SIG_FORCE for modules, KEXEC_SIG
> > turns on the signature verification but allows unsigned images to be
> > loaded.  KEXEC_SIG_FORCE disallows images without a valid signature.
> > 
> > [Modified by David Howells such that:
> > 
> >  (1) verify_pefile_signature() differentiates between no-signature and
> >      sig-didn't-match in its returned errors.
> > 
> >  (2) kexec fails with EKEYREJECTED if there is a signature for which we
> >      have a key, but signature doesn't match - even if in non-forcing mode.
> > 
> >  (3) kexec fails with EBADMSG or some other error if there is a signature
> >      which cannot be parsed - even if in non-forcing mode.
> > 
> >  (4) kexec fails with ELIBBAD if the PE file cannot be parsed to extract
> >      the signature - even if in non-forcing mode.
> > 
> > ]
> 
> Seems I do not see EBADMSG and ELIBBAD in this patch, also kexec fails
> with proper errno instead of EKEYREJECTED only.
> 
> I may missed something?  Other than the patch log issue:
> 
> Reviewed-by: Dave Young <dyoung@redhat.com>

Hold on :)  Noticed another issue, please see comment inline..

> 
> > 
> > Signed-off-by: Jiri Bohac <jbohac@suse.cz>
> > Signed-off-by: David Howells <dhowells@redhat.com>
> > Signed-off-by: Matthew Garrett <mjg59@google.com>
> > Reviewed-by: Jiri Bohac <jbohac@suse.cz>
> > cc: kexec@lists.infradead.org
> > ---
> >  arch/x86/Kconfig                       | 20 ++++++++---
> >  crypto/asymmetric_keys/verify_pefile.c |  4 ++-
> >  include/linux/kexec.h                  |  4 +--
> >  kernel/kexec_file.c                    | 47 ++++++++++++++++++++++----
> >  4 files changed, 60 insertions(+), 15 deletions(-)
> > 
> > diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> > index c1f9b3cf437c..84381dd60760 100644
> > --- a/arch/x86/Kconfig
> > +++ b/arch/x86/Kconfig
> > @@ -2012,20 +2012,30 @@ config KEXEC_FILE
> >  config ARCH_HAS_KEXEC_PURGATORY
> >  	def_bool KEXEC_FILE
> >  
> > -config KEXEC_VERIFY_SIG
> > +config KEXEC_SIG
> >  	bool "Verify kernel signature during kexec_file_load() syscall"
> >  	depends on KEXEC_FILE
> >  	---help---
> > -	  This option makes kernel signature verification mandatory for
> > -	  the kexec_file_load() syscall.
> >  
> > -	  In addition to that option, you need to enable signature
> > +	  This option makes the kexec_file_load() syscall check for a valid
> > +	  signature of the kernel image.  The image can still be loaded without
> > +	  a valid signature unless you also enable KEXEC_SIG_FORCE, though if
> > +	  there's a signature that we can check, then it must be valid.
> > +
> > +	  In addition to this option, you need to enable signature
> >  	  verification for the corresponding kernel image type being
> >  	  loaded in order for this to work.
> >  
> > +config KEXEC_SIG_FORCE
> > +	bool "Require a valid signature in kexec_file_load() syscall"
> > +	depends on KEXEC_SIG
> > +	---help---
> > +	  This option makes kernel signature verification mandatory for
> > +	  the kexec_file_load() syscall.
> > +
> >  config KEXEC_BZIMAGE_VERIFY_SIG
> >  	bool "Enable bzImage signature verification support"
> > -	depends on KEXEC_VERIFY_SIG
> > +	depends on KEXEC_SIG
> >  	depends on SIGNED_PE_FILE_VERIFICATION
> >  	select SYSTEM_TRUSTED_KEYRING
> >  	---help---
> > diff --git a/crypto/asymmetric_keys/verify_pefile.c b/crypto/asymmetric_keys/verify_pefile.c
> > index d178650fd524..4473cea1e877 100644
> > --- a/crypto/asymmetric_keys/verify_pefile.c
> > +++ b/crypto/asymmetric_keys/verify_pefile.c
> > @@ -100,7 +100,7 @@ static int pefile_parse_binary(const void *pebuf, unsigned int pelen,
> >  
> >  	if (!ddir->certs.virtual_address || !ddir->certs.size) {
> >  		pr_debug("Unsigned PE binary\n");
> > -		return -EKEYREJECTED;
> > +		return -ENODATA;
> >  	}
> >  
> >  	chkaddr(ctx->header_size, ddir->certs.virtual_address,
> > @@ -408,6 +408,8 @@ static int pefile_digest_pe(const void *pebuf, unsigned int pelen,
> >   *  (*) 0 if at least one signature chain intersects with the keys in the trust
> >   *	keyring, or:
> >   *
> > + *  (*) -ENODATA if there is no signature present.
> > + *
> >   *  (*) -ENOPKG if a suitable crypto module couldn't be found for a check on a
> >   *	chain.
> >   *
> > diff --git a/include/linux/kexec.h b/include/linux/kexec.h
> > index b9b1bc5f9669..58b27c7bdc2b 100644
> > --- a/include/linux/kexec.h
> > +++ b/include/linux/kexec.h
> > @@ -125,7 +125,7 @@ typedef void *(kexec_load_t)(struct kimage *image, char *kernel_buf,
> >  			     unsigned long cmdline_len);
> >  typedef int (kexec_cleanup_t)(void *loader_data);
> >  
> > -#ifdef CONFIG_KEXEC_VERIFY_SIG
> > +#ifdef CONFIG_KEXEC_SIG
> >  typedef int (kexec_verify_sig_t)(const char *kernel_buf,
> >  				 unsigned long kernel_len);
> >  #endif
> > @@ -134,7 +134,7 @@ struct kexec_file_ops {
> >  	kexec_probe_t *probe;
> >  	kexec_load_t *load;
> >  	kexec_cleanup_t *cleanup;
> > -#ifdef CONFIG_KEXEC_VERIFY_SIG
> > +#ifdef CONFIG_KEXEC_SIG
> >  	kexec_verify_sig_t *verify_sig;
> >  #endif
> >  };
> > diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> > index f1d0e00a3971..eec7e5bb2a08 100644
> > --- a/kernel/kexec_file.c
> > +++ b/kernel/kexec_file.c
> > @@ -90,7 +90,7 @@ int __weak arch_kimage_file_post_load_cleanup(struct kimage *image)
> >  	return kexec_image_post_load_cleanup_default(image);
> >  }
> >  
> > -#ifdef CONFIG_KEXEC_VERIFY_SIG
> > +#ifdef CONFIG_KEXEC_SIG
> >  static int kexec_image_verify_sig_default(struct kimage *image, void *buf,
> >  					  unsigned long buf_len)
> >  {
> > @@ -188,7 +188,8 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> >  			     const char __user *cmdline_ptr,
> >  			     unsigned long cmdline_len, unsigned flags)
> >  {
> > -	int ret = 0;
> > +	const char *reason;
> > +	int ret;
> >  	void *ldata;
> >  	loff_t size;
> >  
> > @@ -207,15 +208,47 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> >  	if (ret)
> >  		goto out;
> >  
> > -#ifdef CONFIG_KEXEC_VERIFY_SIG
> > +#ifdef CONFIG_KEXEC_SIG
> >  	ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
> >  					   image->kernel_buf_len);
> > -	if (ret) {
> > -		pr_debug("kernel signature verification failed.\n");
> > +#else
> > +	ret = -ENODATA;

Use -ENODATA for above case looks not correct, please just remove the #else and
move the #endif to the end of the switch chunk.

> > +#endif
> > +
> > +	switch (ret) {
> > +	case 0:
> > +		break;
> > +
> > +		/* Certain verification errors are non-fatal if we're not
> > +		 * checking errors, provided we aren't mandating that there
> > +		 * must be a valid signature.
> > +		 */
> > +	case -ENODATA:
> > +		reason = "kexec of unsigned image";
> > +		goto decide;
> > +	case -ENOPKG:
> > +		reason = "kexec of image with unsupported crypto";
> > +		goto decide;
> > +	case -ENOKEY:
> > +		reason = "kexec of image with unavailable key";
> > +	decide:
> > +		if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
> > +			pr_notice("%s rejected\n", reason);
> > +			goto out;
> > +		}
> > +
> > +		ret = 0;
> > +		break;
> > +
> > +		/* All other errors are fatal, including nomem, unparseable
> > +		 * signatures and signature check failures - even if signatures
> > +		 * aren't required.
> > +		 */
> > +	default:
> > +		pr_notice("kernel signature verification failed (%d).\n", ret);
> >  		goto out;
> >  	}
> > -	pr_debug("kernel signature verification successful.\n");
> > -#endif
> > +
> >  	/* It is possible that there no initramfs is being loaded */
> >  	if (!(flags & KEXEC_FILE_NO_INITRAMFS)) {
> >  		ret = kernel_read_file_from_fd(initrd_fd, &image->initrd_buf,
> > -- 
> > 2.22.0.410.gd8fdbe21b5-goog
> > 

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
