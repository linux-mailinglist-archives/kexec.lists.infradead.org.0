Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EBF1F597
	for <lists+kexec@lfdr.de>; Wed, 15 May 2019 15:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJ6biuTdW4Z376xJ4NP+3xN+O0/+oB2jasXwl+YJ52w=; b=I8VRSVNlgo7YPZ
	8dNeQncrhmV79u8ZWgZpYklWaDrt91Ehwc91NEILnibSnWf09hXf1BhBTjq0XJ5n7VQBP4Xlt5qmR
	6Y0aU27rujOgQdcTRJRNWGEVcq9eFyeZEFqqzPXv8QLOTUky+Ufxd2/UO/Q1gUmL2hqoG9OuXEcri
	JWj1OWWuLdfdiJ6nZWIGT4MzWsWBCv9zDzB5YRtWI9KArbboEeUOKK97ROdQZV3Ttq+vMZPpUAGEI
	Jy1zP3wxkxQSzIgie40p3ua8zvasj63T4OIhRBBIpKsXrNALz49f9E+7ndtssA2UWUHWRW55yhQdI
	4ZTdm4LqPQ3DU2SfIeCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQtzE-0001TA-0m; Wed, 15 May 2019 13:30:24 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQtz8-0001Rx-6V
 for kexec@lists.infradead.org; Wed, 15 May 2019 13:30:19 +0000
Received: from zn.tnic (p200300EC2F0A7C00329C23FFFEA6A903.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0a:7c00:329c:23ff:fea6:a903])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C0B741EC027A;
 Wed, 15 May 2019 15:30:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1557927012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=eJQC27+0zhQX1IOd45UbD4zUj0DPzTLcUpzDhuDznyY=;
 b=jXfBawehjYo9AaBwkNiuEIZe+S3HFuoi1U2VjsDcUW8RRcPsH3fEJZncf8CmibjqtTSI/9
 kJ3gpLFOhU01WXpUyQAVk/FWPs8HoSOhHlo7XubAACaboamrllSWwceEsh+trpNt7hDJ6B
 8Pw0ocMH/h0aepvlkG2KWDDIlEn7Mac=
Date: Wed, 15 May 2019 15:30:06 +0200
From: Borislav Petkov <bp@alien8.de>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 2/3 v3] x86/kexec: Set the C-bit in the identity map page
 table when SEV is active
Message-ID: <20190515133006.GG24212@zn.tnic>
References: <20190430074421.7852-1-lijiang@redhat.com>
 <20190430074421.7852-3-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430074421.7852-3-lijiang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_063018_398440_E1433B0F 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Thomas.Lendacky@amd.com, brijesh.singh@amd.com, bhe@redhat.com,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 mingo@redhat.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 03:44:20PM +0800, Lianbo Jiang wrote:
> When SEV is active, the second kernel image is loaded into the
> encrypted memory. Lets make sure that when kexec builds the
> identity mapping page table it adds the memory encryption mask(C-bit).
> 
> Co-developed-by: Brijesh Singh <brijesh.singh@amd.com>
> Signed-off-by: Brijesh Singh <brijesh.singh@amd.com>
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
>  arch/x86/kernel/machine_kexec_64.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
> index f60611531d17..11fe352f7344 100644
> --- a/arch/x86/kernel/machine_kexec_64.c
> +++ b/arch/x86/kernel/machine_kexec_64.c
> @@ -56,6 +56,7 @@ static int init_transition_pgtable(struct kimage *image, pgd_t *pgd)
>  	pte_t *pte;
>  	unsigned long vaddr, paddr;
>  	int result = -ENOMEM;
> +	pgprot_t prot = PAGE_KERNEL_EXEC_NOENC;
>  
>  	vaddr = (unsigned long)relocate_kernel;
>  	paddr = __pa(page_address(image->control_code_page)+PAGE_SIZE);
> @@ -92,7 +93,11 @@ static int init_transition_pgtable(struct kimage *image, pgd_t *pgd)
>  		set_pmd(pmd, __pmd(__pa(pte) | _KERNPG_TABLE));
>  	}
>  	pte = pte_offset_kernel(pmd, vaddr);
> -	set_pte(pte, pfn_pte(paddr >> PAGE_SHIFT, PAGE_KERNEL_EXEC_NOENC));
> +
> +	if (sev_active())
> +		prot = PAGE_KERNEL_EXEC;
> +
> +	set_pte(pte, pfn_pte(paddr >> PAGE_SHIFT, prot));
>  	return 0;
>  err:
>  	return result;
> @@ -129,6 +134,11 @@ static int init_pgtable(struct kimage *image, unsigned long start_pgtable)
>  	level4p = (pgd_t *)__va(start_pgtable);
>  	clear_page(level4p);
>  
> +	if (sev_active()) {
> +		info.page_flag |= _PAGE_ENC;
> +		info.kernpg_flag = _KERNPG_TABLE;

kernpg_flag above is initialized to _KERNPG_TABLE_NOENC so you can do here

		info.kernpg_flag |= _PAGE_ENC;

too, to make it even more clear what this does, right?

IOW:

diff --git a/arch/x86/kernel/machine_kexec_64.c b/arch/x86/kernel/machine_kexec_64.c
index 783ce5184405..16c37fe489bc 100644
--- a/arch/x86/kernel/machine_kexec_64.c
+++ b/arch/x86/kernel/machine_kexec_64.c
@@ -135,8 +135,8 @@ static int init_pgtable(struct kimage *image, unsigned long start_pgtable)
        clear_page(level4p);
 
        if (sev_active()) {
-               info.page_flag |= _PAGE_ENC;
-               info.kernpg_flag = _KERNPG_TABLE;
+               info.page_flag   |= _PAGE_ENC;
+               info.kernpg_flag |= _PAGE_ENC;
        }
 
        if (direct_gbpages)


-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
