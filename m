Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850941478B0
	for <lists+kexec@lfdr.de>; Fri, 24 Jan 2020 07:50:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jd1P/rnbdIgAoWLpwwMvnaSqDOlRNkUGk2mA1t82wiM=; b=g7VC/E89kw/Nju
	Um5gS2Z5T/HDUJZL+jOvRAx6Cl6UBf5vMSQeOoU4dNgAFeG/aR0L56twfDakWA1WcK9FTg4eMWp0b
	bDJD0VtrdKIATDu53RWQwVzFQ8UVpiLJZ61b+2u6ppXU3mjN2AzpFv532ZDc00AVlOdOjpY4qPIrj
	qqfF48nT02Jv24cYaNzsNRgPmtscTxNNt2ATJdDAWMnMI2V8hyuTdPl4S8FhyH/s3UQCwFUnzVj+W
	Uj2PkrmG++BJCDerHhpZMLb6fp50J3U8cOCKnUVlvJSlFkAeTDN3GsCjrRbj575XkEzR9qaVhxvVg
	FQPrumLjyP4mTh7dunxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iusnN-0002YA-Qw; Fri, 24 Jan 2020 06:50:21 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iusmj-0001yp-9E
 for kexec@lists.infradead.org; Fri, 24 Jan 2020 06:49:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DC164AD41;
 Fri, 24 Jan 2020 06:49:33 +0000 (UTC)
Date: Fri, 24 Jan 2020 07:49:32 +0100
From: Michal Hocko <mhocko@suse.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCHv2] mm/sparse: reset section's mem_map when fully
 deactivated
Message-ID: <20200124064932.GN29276@dhcp22.suse.cz>
References: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
 <20200120072939.GD18451@dhcp22.suse.cz>
 <20200123191047.bc51b301e5ea0aae6eeecbd5@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123191047.bc51b301e5ea0aae6eeecbd5@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_224941_462301_7DBD81B1 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu 23-01-20 19:10:47, Andrew Morton wrote:
> On Mon, 20 Jan 2020 08:29:39 +0100 Michal Hocko <mhocko@suse.com> wrote:
> 
> > On Mon 20-01-20 10:33:14, Pingfan Liu wrote:
> > > After commit ba72b4c8cf60 ("mm/sparsemem: support sub-section hotplug"),
> > > when a mem section is fully deactivated, section_mem_map still records the
> > > section's start pfn, which is not used any more and will be reassigned
> > > during re-added.
> > > 
> > > In analogy with alloc/free pattern, it is better to clear all fields of
> > > section_mem_map.
> > > 
> > > Beside this, it breaks the user space tool "makedumpfile" [1], which makes
> > > assumption that a hot-removed section has mem_map as NULL, instead of
> > > checking directly against SECTION_MARKED_PRESENT bit. (makedumpfile will be
> > > better to change the assumption, and need a patch)
> > > 
> > > The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> > > trigger a crash, and save vmcore by makedumpfile
> > 
> > While makedumpfile lives very closely to the kernel and occasional
> > breakage is to be expected I still believe that Fixes: ba72b4c8cf60
> > is due.
> 
> But not a cc:stable?

Well, I wouldn't say this is really critical. makedumpfile will get its
fix... But if people think it would be useful in stable I won't oppose. 
-- 
Michal Hocko
SUSE Labs

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
