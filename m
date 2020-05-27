Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B3C1E3EC8
	for <lists+kexec@lfdr.de>; Wed, 27 May 2020 12:16:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MRpiz8LwUpkmRLc3ppGzhHZ30sahLT6QDDTRZqU8waM=; b=R5kGFn6PA2Flz/
	7VJiNYbFEmKZdFlz4rZNLDHR/NoOuTcaOgKQwnCBTxXgUbXX1oCo8sMW3RvgFLJfmSv/6EFDn16dY
	RemGuAMMBlWRSGPB2ZeVtsrMyxNAz1kA9rFNIR6jW8EmBWYRgE+5TPpOUQ9efRUceAsySfaxRISiN
	8S5aoJBJBWeHpT4jSoUJEFTdFlPBInqwd1jFEGBgGAKkd+6oPAYiHTKHN69N2JQ1GZPYiNqMFiOrY
	C3JGbLef/Xd2O1yjUZnYc8AYuXjg/Q/5z4VmIMhQ0I0nYGZGA/HF/TrNBZBMUaGWeJuK3luux4FfH
	/T/OEZsbEZfqpUQ5mppg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdt6r-0001aB-Og; Wed, 27 May 2020 10:16:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdt6k-0001TG-I5
 for kexec@lists.infradead.org; Wed, 27 May 2020 10:16:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 27984ABC7;
 Wed, 27 May 2020 10:16:22 +0000 (UTC)
Date: Wed, 27 May 2020 12:16:18 +0200
From: Jiri Bohac <jbohac@suse.cz>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH] kexec: Do not verify the signature without the lockdown
 or mandatory signature
Message-ID: <20200527101618.jgbxbk5ooiaett43@dwarf.suse.cz>
References: <20200525052351.24134-1-lijiang@redhat.com>
 <20200526135935.ffkfulsjf7xrep63@dwarf.suse.cz>
 <07a65a70-3764-f62f-705c-049b8d409316@redhat.com>
 <4da44e94-a839-2033-29d2-90bebd4ee1e2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4da44e94-a839-2033-29d2-90bebd4ee1e2@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_031622_770654_CC6FC3C2 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: bhe@redhat.com, kexec@lists.infradead.org, jmorris@namei.org,
 mjg59@google.com, linux-kernel@vger.kernel.org, ebiederm@xmission.com,
 dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 12:08:12PM +0800, lijiang wrote:
> Or the following change looks better? What's your opinion?
> 
> static int
> kimage_validate_signature(struct kimage *image)
> {
>         int ret;
> 
>         ret = arch_kexec_kernel_verify_sig(image, image->kernel_buf,
>                                            image->kernel_buf_len);
>         if (ret) {
> 
>                 if (IS_ENABLED(CONFIG_KEXEC_SIG_FORCE)) {
>                         pr_notice("Enforced kernel signature verification failed (%d).\n", ret);
>                         return ret;
>                 }
> 
>                 /*
>                  * If IMA is guaranteed to appraise a signature on the kexec
>                  * image, permit it even if the kernel is otherwise locked
>                  * down.
>                  */
>                 if (!ima_appraise_signature(READING_KEXEC_IMAGE) &&
>                     security_locked_down(LOCKDOWN_KEXEC))
>                         return -EPERM;
> 
>                 pr_debug("kernel signature verification failed (%d).\n", ret);
>         }
> 
>         return 0;
> }

Looks good to me, thanks!

-- 
Jiri Bohac <jbohac@suse.cz>
SUSE Labs, Prague, Czechia


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
