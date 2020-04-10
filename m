Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EF01A471A
	for <lists+kexec@lfdr.de>; Fri, 10 Apr 2020 15:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AiqIERgQeij3Y3kZ7revf3+rPyIINpxYEusbFqQ6o4w=; b=Ehl4GRAS8WaQIz
	MNUGVOH0Zzy4lh+75UbP+xr2aco4FM4muYrEEH4Bmhpn9V/CzFmPGOPiB67/gOWX0hFICVrBvenL5
	y5TTmmQp1Kq1iNvoSHMnuA1NJZN2LpfHYk8guGQTgqDf23QHC2Ym4wd1PvjPtsxmMik8uJSLmjY1u
	U+IfjYC+a07TPWyzEKXsp2kx/sYFHVl3vSp/PgJrzIVJSXTgEuVM3oTfhjtEJROuz55wEsNyBa/uZ
	B9PYb6nSMWBeNejQfKFXyG8PzwshyHI6tnmPvV0lE8WlJJVm6Y/y7lZJMkAMdh8gW5dmhvtCfUU2h
	lF6KfSAH5cypo0t2NPJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMu9U-0007t4-C0; Fri, 10 Apr 2020 13:57:00 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMu9Q-0007se-Mk
 for kexec@lists.infradead.org; Fri, 10 Apr 2020 13:56:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586527015;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=nW5KiM1fZYNc1UcYcl9YdKo4WdN7oTP1I+uU2HGq6SM=;
 b=WarJyeHPYwS0pQ+bzT34nyxnLrxoK3pApmBsvs2p0i/g6HzNig+t5C6WdAEkSHT0FTJOZP
 t6NgkhP/0j3XDD5DwR6Pl1alRmeF+hGn8F2ytCr81lw7fozmKSbiveYsUwZ3C5E4M++Uzo
 QWROrKplyt/XAwPvDjptiXKh8FqWdyI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-325-jnqy7MywOXCld6K1w8XAOw-1; Fri, 10 Apr 2020 09:56:52 -0400
X-MC-Unique: jnqy7MywOXCld6K1w8XAOw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2615E1137848;
 Fri, 10 Apr 2020 13:56:51 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-106.pek2.redhat.com
 [10.72.12.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0860310027B3;
 Fri, 10 Apr 2020 13:56:47 +0000 (UTC)
Date: Fri, 10 Apr 2020 21:56:44 +0800
From: Dave Young <dyoung@redhat.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] efi/x86: Revert struct layout change to fix kexec boot
 regression
Message-ID: <20200410135644.GB6772@dhcp-128-65.nay.redhat.com>
References: <20200410074320.16589-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410074320.16589-1-ardb@kernel.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_065656_829826_731346D6 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi@vger.kernel.org, tytso@mit.edu, x86@kernel.org,
 kexec@lists.infradead.org, bp@alien8.de, mingo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 04/10/20 at 09:43am, Ard Biesheuvel wrote:
> Commit
> 
>   0a67361dcdaa29 ("efi/x86: Remove runtime table address from kexec EFI setup data")
> 
> removed the code that retrieves the non-remapped UEFI runtime services
> pointer from the data structure provided by kexec, as it was never really
> needed on the kexec boot path: mapping the runtime services table at its
> non-remapped address is only needed when calling SetVirtualAddressMap(),
> which never happens during a kexec boot in the first place.
> 
> However, dropping the 'runtime' member from struct efi_setup_data was a
> mistake. That struct is shared ABI between the kernel and the kexec tooling
> for x86, and so we cannot simply change its layout. So let's put back the
> removed field, but call it 'unused' to reflect the fact that we never look
> at its contents. While at it, add a comment to remind our future selves
> that the layout is external ABI.
> 
> Reported-by: Theodore Ts'o <tytso@mit.edu>
> Tested-by: Theodore Ts'o <tytso@mit.edu>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
> 
> Ingo, Thomas, Boris: I sent out my efi-urgent pull request just yesterday,
> so please take this directly into tip:efi/urgent - no need to wait for the
> next batch.
> 
>  arch/x86/include/asm/efi.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/x86/include/asm/efi.h b/arch/x86/include/asm/efi.h
> index 781170d36f50..96044c8d8600 100644
> --- a/arch/x86/include/asm/efi.h
> +++ b/arch/x86/include/asm/efi.h
> @@ -178,8 +178,10 @@ extern void efi_free_boot_services(void);
>  extern pgd_t * __init efi_uv1_memmap_phys_prolog(void);
>  extern void __init efi_uv1_memmap_phys_epilog(pgd_t *save_pgd);
>  
> +/* kexec external ABI */
>  struct efi_setup_data {
>  	u64 fw_vendor;
> +	u64 unused;
>  	u64 tables;
>  	u64 smbios;
>  	u64 reserved[8];
> -- 
> 2.17.1
> 

Ah, replied too quick in another mail.  I just cced kexec list again.

Thanks for the fix:

Reviewed-by: Dave Young <dyoung@redhat.com>

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
