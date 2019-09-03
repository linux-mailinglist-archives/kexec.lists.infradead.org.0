Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3906A7238
	for <lists+kexec@lfdr.de>; Tue,  3 Sep 2019 20:06:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=No3b8mVeHjOowLwH/qTGRHzkm0BXnck5ZGrnPj6MFv0=; b=Zi0XpUfXlFTHz53k83HeuJ1pD
	TlKzoszso7ls+i5DIweaqjO6j6oS8qE2lZtAC4ONUWGTqy53beGxQGJey4b0T1BnV1R52j3DWNq+A
	R53VaR01C2/XJO4ir+EtiIVEggeo7MOh20Rbq6oFXnRXdafB1kpY4U0tpU2IyGpDWHZIr0ZAR+Ocj
	lGrzgpsZhor9P2UlsSbflXFlFK8coQ/8lcl7bMjafdpyVo2IErtFB7c0d0cKWDIRXT2rh/LNfERNg
	aGdTg/wrLWaXhaXyRZ/HbTOtoVg+IDbOCghNs/1TX8lfH+mebWkDk3l4oZbG+okI0xtOJEHbLu6l6
	+LJlfnJCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DCS-0006mL-7B; Tue, 03 Sep 2019 18:06:40 +0000
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DCM-0006k2-IZ
 for kexec@lists.infradead.org; Tue, 03 Sep 2019 18:06:36 +0000
Received: from [141.14.220.194] (unknown [141.14.220.194])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: buczek)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 7AD0920225738;
 Tue,  3 Sep 2019 20:06:13 +0200 (CEST)
Subject: Re: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
To: Simon Horman <horms@verge.net.au>
References: <20190830091258.51133-1-buczek@molgen.mpg.de>
 <20190903144127.opmnw42pie6klghc@verge.net.au>
From: Donald Buczek <buczek@molgen.mpg.de>
Message-ID: <848555a3-5a1f-c0c0-ef50-e684cf70595a@molgen.mpg.de>
Date: Tue, 3 Sep 2019 20:06:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903144127.opmnw42pie6klghc@verge.net.au>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_110634_762439_83559291 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.14.17.11 listed in list.dnswl.org]
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
Cc: Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 Baoquan He <bhe@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Dear Simon,

On 03.09.19 16:41, Simon Horman wrote:
> On Fri, Aug 30, 2019 at 11:12:58AM +0200, Donald Buczek wrote:
>> Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
>> region on 5-level paging") changed the base of the direct mapping
>> from 0xffff880000000000 to 0xffff888000000000. This was merged
>> into v4.20-rc2.
>>
>> Update to new address accordingly.
> 
> Thanks, applied for inclusion in v2.0.20.

I must admit, that I overlooked that d52888aa2753 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging") was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT remap out of KASLR region on 5-level paging").

Bhupesh Sharma wanted to look into a a dynamic solution, which, of course, would be better. But if you still want to include this (e.g. as the fallback for the dynamic solution), you might want to replace the patch with the following one, which selects the new PAGE_OFFSET starting from kernel version 4.19.5 instead of 4.20.0.

Donald

>8------------------------------------------------------8<

     x86: Fix PAGE_OFFSET for kernels since 4.19.5
     
     Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
     region on 5-level paging") changed the base of the direct mapping
     from 0xffff880000000000 to 0xffff888000000000. This was merged
     into v4.20-rc2.
     
     The patch was backported to 4.19.5 as 4074ca7d8a18 ("x86/mm: Move LDT
     remap out of KASLR region on 5-level paging").
     
     Update to new address accordingly.

diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
index a2aea31..f9d1998 100644
--- a/kexec/arch/i386/crashdump-x86.c
+++ b/kexec/arch/i386/crashdump-x86.c
@@ -61,6 +61,8 @@ static int get_kernel_page_offset(struct kexec_info *UNUSED(info),
  
                 if (kv < KERNEL_VERSION(2, 6, 27))
                         elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
+               else if (kv < KERNEL_VERSION(4, 19, 5))
+                       elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_4_19_5;
                 else
                         elf_info->page_offset = X86_64_PAGE_OFFSET;
         }
diff --git a/kexec/arch/i386/crashdump-x86.h b/kexec/arch/i386/crashdump-x86.h
index ddee19f..6cd8826 100644
--- a/kexec/arch/i386/crashdump-x86.h
+++ b/kexec/arch/i386/crashdump-x86.h
@@ -13,7 +13,8 @@ int load_crashdump_segments(struct kexec_info *info, char *mod_cmdline,
  
  #define X86_64__START_KERNEL_map       0xffffffff80000000ULL
  #define X86_64_PAGE_OFFSET_PRE_2_6_27  0xffff810000000000ULL
-#define X86_64_PAGE_OFFSET             0xffff880000000000ULL
+#define X86_64_PAGE_OFFSET_PRE_4_19_5  0xffff880000000000ULL
+#define X86_64_PAGE_OFFSET     0xffff888000000000ULL
  
  #define X86_64_MAXMEM                  0x3fffffffffffUL
  

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
