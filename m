Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466EA142439
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 08:29:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KR6XwBtUoc6mda+am3W+lUx6R2/3fbeSHlAqeLCXWro=; b=g9Nvmtqo+iSJeV
	lJ6LNsPQRmYv+hXiiX150nE+OXZUQWhao6aJKthN8e29t3fj40zqMqGIYEnBLPGx7BdoWVq/ZPbQq
	MJir5roUHikyrBIcPi2r+dm4A+JiuyK/erH1kwwx7I4bsigdg5Gsh3nf6GZKR4xy9RLcxZwn/qK66
	DTXefVXYz23Fc4ol1SmB3HVohHg4X1fqzmv5fdTtGZk/A6zW028zXP3kfscmYZ7rAOAd3C3nFKE0H
	gOYvZk60v4ZVAvObl3fjt6en7erSZjtiCHYQwsJxWActTlB1nEBRTRWQJIr5HFqinEwhfgTua9XZk
	vIzHi1emz0rBHGfpOaGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itRVO-0005fM-6R; Mon, 20 Jan 2020 07:29:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itRVL-0005eO-G8
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 07:29:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 48F2AACE3;
 Mon, 20 Jan 2020 07:29:40 +0000 (UTC)
Date: Mon, 20 Jan 2020 08:29:39 +0100
From: Michal Hocko <mhocko@suse.com>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: Re: [PATCHv2] mm/sparse: reset section's mem_map when fully
 deactivated
Message-ID: <20200120072939.GD18451@dhcp22.suse.cz>
References: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_232947_686674_6959A11E 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon 20-01-20 10:33:14, Pingfan Liu wrote:
> After commit ba72b4c8cf60 ("mm/sparsemem: support sub-section hotplug"),
> when a mem section is fully deactivated, section_mem_map still records the
> section's start pfn, which is not used any more and will be reassigned
> during re-added.
> 
> In analogy with alloc/free pattern, it is better to clear all fields of
> section_mem_map.
> 
> Beside this, it breaks the user space tool "makedumpfile" [1], which makes
> assumption that a hot-removed section has mem_map as NULL, instead of
> checking directly against SECTION_MARKED_PRESENT bit. (makedumpfile will be
> better to change the assumption, and need a patch)
> 
> The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> trigger a crash, and save vmcore by makedumpfile

While makedumpfile lives very closely to the kernel and occasional
breakage is to be expected I still believe that Fixes: ba72b4c8cf60
is due.

> [1]: makedumpfile, commit e73016540293 ("[v1.6.7] Update version")
> 
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> To: linux-mm@kvack.org
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: David Hildenbrand <david@redhat.com>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Oscar Salvador <osalvador@suse.de>
> Cc: Michal Hocko <mhocko@kernel.org>
> Cc: Baoquan He <bhe@redhat.com>
> Cc: Qian Cai <cai@lca.pw>
> Cc: kexec@lists.infradead.org
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>

Acked-by: Michal Hocko <mhocko@suse.com>

> ---
> v1 -> v2:
>  make an explicit convertion from NULL to ulong
>  improve commit log
>  
>  mm/sparse.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/sparse.c b/mm/sparse.c
> index 3822ecb..3918fc3 100644
> --- a/mm/sparse.c
> +++ b/mm/sparse.c
> @@ -789,7 +789,7 @@ static void section_deactivate(unsigned long pfn, unsigned long nr_pages,
>  			ms->usage = NULL;
>  		}
>  		memmap = sparse_decode_mem_map(ms->section_mem_map, section_nr);
> -		ms->section_mem_map = sparse_encode_mem_map(NULL, section_nr);
> +		ms->section_mem_map = (unsigned long)NULL;
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
