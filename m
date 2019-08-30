Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B77CA33BB
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 11:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAFiw82c2jOVdBhZoAAmJlRoFAWKi5CSul9Vpn2HQBg=; b=egi60SOFTfCmCd
	ln10tv4eUIU1wloEppfAkp6dzIuXAlaAKo2RTVKCIz5HHTPWnrQSOaVWVxx/4/ruVu8TQipIBMqEa
	XmzbHMYBXsPITkpbKCbdN01diMM+Etv20p3MDak7TZ8u49fdmzd/NfP5WMeTY0QecpB8J8qKx2oWc
	HUPfmEsLrWl0dehs4Z6IFz9BdP67C3lC6Ci/uQANAqP6cAuuy9dgIqCdvIz8AjVGXUUOQKSXT2Q8K
	mc2ThqLClBBABILW7Slz8kAz8Gcvu1AoVMvrNkCeDq7lJjyhLlXaYhHsVSAjfudqOJTRJib0HDr1f
	9acwji/9L+aYbgmvmuDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3d8R-0002NH-9J; Fri, 30 Aug 2019 09:23:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3d8N-0002Mt-PC
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 09:23:57 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 19A938980E1;
 Fri, 30 Aug 2019 09:23:55 +0000 (UTC)
Received: from localhost (ovpn-12-41.pek2.redhat.com [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 580025D9CA;
 Fri, 30 Aug 2019 09:23:54 +0000 (UTC)
Date: Fri, 30 Aug 2019 17:23:51 +0800
From: Baoquan He <bhe@redhat.com>
To: Donald Buczek <buczek@molgen.mpg.de>
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
Message-ID: <20190830092351.GE12242@MiWiFi-R3L-srv>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830091258.51133-1-buczek@molgen.mpg.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Fri, 30 Aug 2019 09:23:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_022355_843179_F3BF76E5 
X-CRM114-Status: GOOD (  16.34  )
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>, horms@verge.net.au,
 kexec@lists.infradead.org, k-hagio@ab.jp.nec.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 08/30/19 at 11:12am, Donald Buczek wrote:
> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
> region on 5-level paging") changed the base of the direct mapping
> from 0xffff880000000000 to 0xffff888000000000. This was merged
> into v4.20-rc2.

A good catch and necessary fix, thanks.

Does it have issue in makedumpfile?

#ifdef __x86_64__
#define __PAGE_OFFSET_ORIG      (0xffff810000000000) /* 2.6.26, or former */
#define __PAGE_OFFSET_2_6_27    (0xffff880000000000) /* 2.6.27, or later  */
#define __PAGE_OFFSET_5LEVEL    (0xff10000000000000) /* 5-level page table */ 
...
#endif

Thanks
Baoquan

> 
> Update to new address accordingly.
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
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
