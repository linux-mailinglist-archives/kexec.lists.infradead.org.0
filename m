Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B77313D558
	for <lists+kexec@lfdr.de>; Thu, 16 Jan 2020 08:50:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9lpGqr2OVntlQq2LcYP8MUsuxwx19y3emiapQKknPD8=; b=bWg4OuRteLgPIX
	qLCP6d/syg34B5O7l4XKm48yD6hPAWLHv51OKYXNzwTWilIUDpgUM7TjnbQagLKLsMUxPxySwvKVJ
	OEejG3KK1IRL43MMfcMyivr5Gl22tEJp8IDcdlbvuJq4GpVvHIPeZ7FVlLQnK12vt+6ILYyh2eIQ/
	orm6o2jdcpFCGeNXbV1D0zoKLzx+Zjua8OQzAyirywvsa7TAzzK48PDtT13CfGS4CZiFSUKF82bY9
	54b2NoNCzXxJBrMgOGhEV2kwL5ohDaxvvcegI7ZwfoyAIIlarZVXHQmgcW0yXYZ/metj8phSz3Z3r
	TsfTX/wFnvUjrg31xKdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irzuv-0007Ea-3h; Thu, 16 Jan 2020 07:50:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irzuo-000658-N8
 for kexec@lists.infradead.org; Thu, 16 Jan 2020 07:50:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CA228AC2C;
 Thu, 16 Jan 2020 07:50:01 +0000 (UTC)
Date: Thu, 16 Jan 2020 08:50:00 +0100
From: Michal Hocko <mhocko@suse.com>
To: Pingfan Liu <kernelfans@gmail.com>, Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
Message-ID: <20200116075000.GM19428@dhcp22.suse.cz>
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_235006_926753_72756BEE 
X-CRM114-Status: GOOD (  18.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu 16-01-20 11:01:08, Pingfan Liu wrote:
> When fully deactivated, it is meaningless to keep the value of a section's
> mem_map. And its mem_map will be reassigned during re-added.
> 
> Beside this, it breaks the user space tool "makedumpfile", which makes
> assumption that a hot-removed section having mem_map as NULL.

We used to do that before ba72b4c8cf60 ("mm/sparsemem: support
sub-section hotplug"). Dan was this an intentional change?
 
> The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> trigger a crash, and save vmcore by makedumpfile
> 
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> To: linux-mm@kvack.org
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@kernel.org>
> Cc: kexec@lists.infradead.org
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> ---
>  mm/sparse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/sparse.c b/mm/sparse.c
> index 3822ecb..fddac80 100644
> --- a/mm/sparse.c
> +++ b/mm/sparse.c
> @@ -789,7 +789,7 @@ static void section_deactivate(unsigned long pfn, unsigned long nr_pages,
>  			ms->usage = NULL;
>  		}
>  		memmap = sparse_decode_mem_map(ms->section_mem_map, section_nr);
> -		ms->section_mem_map = sparse_encode_mem_map(NULL, section_nr);
> +		ms->section_mem_map = NULL;
>  	}
>  
>  	if (section_is_early && memmap)
> -- 
> 2.7.5

-- 
Michal Hocko
SUSE Labs

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
