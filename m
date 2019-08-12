Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E557B89A6C
	for <lists+kexec@lfdr.de>; Mon, 12 Aug 2019 11:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv1Vd00U0W10oMR28/HfJgrk9j4YAAVTKGfW6p0FabE=; b=ag08qTEk8FhTHc
	otW90Ngx5lc9u7ZDO2L+2oF5j8cLf5+Q9sZDp6sDdHExyAoW9AMlCtRVpl1FZKi+hDWFgpQ4okgwA
	R4PhQm7OW56zCnUYEy+ggtpGWzrT09kk0GkORMnnfBkvwRg5qOe2dS5KoHIOi9oKs44IHr+OWt7Ft
	UxSE6GCGdLQmXCFB3k1P+Tbj3Lr6AK8tzWLFGuTxq/WBh7rh2oBB5Km0dabajFAVuSywEgcxsUtKC
	pmEP7GW6gD1wMyFnnpgV/pnokc//PsCy9bTeADuIUQlX6InammTPnmNML15BPfH8mpOexaItp3kXa
	Gq2o4sRnp5WvLk8LiK3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx6yJ-0007XU-NE; Mon, 12 Aug 2019 09:50:35 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx6yG-0007WZ-F0
 for kexec@lists.infradead.org; Mon, 12 Aug 2019 09:50:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 9F9FEAECA;
 Mon, 12 Aug 2019 09:50:30 +0000 (UTC)
Date: Mon, 12 Aug 2019 11:50:29 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Subject: Re: Crash kernel with 256 MB reserved memory runs into OOM condition
Message-ID: <20190812095029.GE5117@dhcp22.suse.cz>
References: <d65e4a42-1962-78c6-1b5a-65cb70529d62@molgen.mpg.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d65e4a42-1962-78c6-1b5a-65cb70529d62@molgen.mpg.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_025032_646457_D579A74D 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pci@vger.kernel.org,
 =?iso-8859-1?Q?J=F6rg_R=F6del?= <joro@8bytes.org>,
 "x86@kernel.org" <x86@kernel.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 iommu@lists.linux-foundation.org, Donald Buczek <buczek@molgen.mpg.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon 12-08-19 11:42:33, Paul Menzel wrote:
> Dear Linux folks,
> 
> 
> On a Dell PowerEdge R7425 with two AMD EPYC 7601 (total 128 threads) and
> 1 TB RAM, the crash kernel with 256 MB of space reserved crashes.
> 
> Please find the messages of the normal and the crash kernel attached.

You will need more memory to reserve for the crash kernel because ...

> [    4.548703] Node 0 DMA free:484kB min:4kB low:4kB high:4kB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0kB unevictable:0kB writepending:0kB present:568kB managed:484kB mlocked:0kB kernel_stack:0kB pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
> [    4.573612] lowmem_reserve[]: 0 125 125 125
> [    4.577799] Node 0 DMA32 free:1404kB min:1428kB low:1784kB high:2140kB active_anon:0kB inactive_anon:0kB active_file:0kB inactive_file:0kB unevictable:15720kB writepending:0kB present:261560kB managed:133752kB mlocked:0kB kernel_stack:2496kB pagetables:0kB bounce:0kB free_pcp:212kB local_pcp:212kB free_cma:0kB

... the memory is really depleted and nothing to be reclaimed (no anon.
file pages) Look how tht free memory is below min watermark (node zone DMA has
lowmem protection for GFP_KERNEL allocation).

[...]
> [    4.923156] Out of memory and no killable processes...

and there is no task existing to be killed so we go and panic.
-- 
Michal Hocko
SUSE Labs

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
