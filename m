Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F470A6BB6
	for <lists+kexec@lfdr.de>; Tue,  3 Sep 2019 16:41:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kB49BA0tci+WZo1tT14nbRwZzTA/vNHAQDovuJ7b6CQ=; b=NU+w6l58f2FtfE
	B55eBb0OjJRvk2iXSMZaEDoU4XOXGrL60y3unvQsIXqU5Ft/a5UPAgS7mUlAhDTOzixRTJqFFsmqL
	1DUN5QTjTvSRWgXTs60oV7CHg8iAyzsYZbzJzw51DNSrFUyPbM5viN/RPOi6+GPAkNH9gHLZUWCX0
	KBUGX5fS2vskmRgUiXzPl2PBTtNd8Mz97RaShEcGmtaZOat+CSQJthV7x6OUGqwWABPk7dM7iCtVG
	+R7JpvvkjyLYi4+SMKieayfC6ZmFaG0ROf9ULpmfYAGN4J8h6da7ptoJwALXtY869aUXMwVt6hpR4
	nwKitIz2e1BtIy0FkhQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i59zx-0004Lj-BZ; Tue, 03 Sep 2019 14:41:33 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i59zu-0004LG-Lv
 for kexec@lists.infradead.org; Tue, 03 Sep 2019 14:41:32 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id C038525B71D;
 Wed,  4 Sep 2019 00:41:29 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A3C9F94055C; Tue,  3 Sep 2019 16:41:27 +0200 (CEST)
Date: Tue, 3 Sep 2019 16:41:27 +0200
From: Simon Horman <horms@verge.net.au>
To: Donald Buczek <buczek@molgen.mpg.de>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
Message-ID: <20190903144127.opmnw42pie6klghc@verge.net.au>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830091258.51133-1-buczek@molgen.mpg.de>
Organisation: Horms Solutions BV
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_074130_873129_DCD7A448 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> region on 5-level paging") changed the base of the direct mapping
> from 0xffff880000000000 to 0xffff888000000000. This was merged
> into v4.20-rc2.
> 
> Update to new address accordingly.

Thanks, applied for inclusion in v2.0.20.

> ---
>  kexec/arch/i386/crashdump-x86.c | 2 ++
>  kexec/arch/i386/crashdump-x86.h | 3 ++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
> index a2aea31..c79791f 100644
> --- a/kexec/arch/i386/crashdump-x86.c
> +++ b/kexec/arch/i386/crashdump-x86.c
> @@ -61,6 +61,8 @@ static int get_kernel_page_offset(struct kexec_info *UNUSED(info),
>  
>  		if (kv < KERNEL_VERSION(2, 6, 27))
>  			elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
> +		else if (kv < KERNEL_VERSION(4, 20, 0))
> +			elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_4_20_0;
>  		else
>  			elf_info->page_offset = X86_64_PAGE_OFFSET;
>  	}
> diff --git a/kexec/arch/i386/crashdump-x86.h b/kexec/arch/i386/crashdump-x86.h
> index ddee19f..e4fdc82 100644
> --- a/kexec/arch/i386/crashdump-x86.h
> +++ b/kexec/arch/i386/crashdump-x86.h
> @@ -13,7 +13,8 @@ int load_crashdump_segments(struct kexec_info *info, char *mod_cmdline,
>  
>  #define X86_64__START_KERNEL_map	0xffffffff80000000ULL
>  #define X86_64_PAGE_OFFSET_PRE_2_6_27	0xffff810000000000ULL
> -#define X86_64_PAGE_OFFSET		0xffff880000000000ULL
> +#define X86_64_PAGE_OFFSET_PRE_4_20_0	0xffff880000000000ULL
> +#define X86_64_PAGE_OFFSET	0xffff888000000000ULL
>  
>  #define X86_64_MAXMEM        		0x3fffffffffffUL
>  
> -- 
> 2.22.0
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
