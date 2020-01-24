Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D05A147717
	for <lists+kexec@lfdr.de>; Fri, 24 Jan 2020 04:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHlzIPLxDkdd9w/+1t5G0nMfw8T42/1/o7fPIgzCuwM=; b=uqUyNII2pjHIlu
	7lLka2V2tdq2kiW1LT2sP54HkMSz0sVeD38NEUMMmneN7g3sooSp++TgCqXuwyRhLuKzne3c+SavF
	938zE8CTH8Ai1gfxlK3DZjWSVzCeLITrFdW9WP98JQMOGYXepaUlM5RR3OnQiTktGnhZ1lpZoRvVm
	cjnuXWLWyD82WyYMT6xkq8kE+/6GnCBcScqTQiJm93CuCTAyG+/i3s1Ggxr5ZJF5Gk3uCBa+/E4cC
	uLsFItrvpxDZaTih6KWZUTZ/il8zkE3jXd/m7DzKi8/825xu0RH8QT8ceWAsSrEs/asBcblsDje1t
	gKNhyEzacqh/v8BhVA5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iupMy-000601-MY; Fri, 24 Jan 2020 03:10:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iupMv-0005zN-R3
 for kexec@lists.infradead.org; Fri, 24 Jan 2020 03:10:51 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 07D3620718;
 Fri, 24 Jan 2020 03:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579835448;
 bh=cfX1pOorTYhYcRA3gQj9casd6lz9OxT0kQGAHTd/foU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gv4Q3AefI4cb/4OO9hWV1VOp2xMo/zOtrN8yyOtR8oAoasxfdxfq92mhdUSjZzjiD
 XuPA0lCnOk20m7abEtvEkMKxM+P3vv3EoARXO9HEwjHW5frh7bunYJrkWN0OF7yCou
 hCwSQG2vbuauVfpw/ZMQMC2g9y7MDCmHeoWAH0yA=
Date: Thu, 23 Jan 2020 19:10:47 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: Michal Hocko <mhocko@suse.com>
Subject: Re: [PATCHv2] mm/sparse: reset section's mem_map when fully
 deactivated
Message-Id: <20200123191047.bc51b301e5ea0aae6eeecbd5@linux-foundation.org>
In-Reply-To: <20200120072939.GD18451@dhcp22.suse.cz>
References: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
 <20200120072939.GD18451@dhcp22.suse.cz>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_191049_897876_34054ADF 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Baoquan He <bhe@redhat.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, 20 Jan 2020 08:29:39 +0100 Michal Hocko <mhocko@suse.com> wrote:

> On Mon 20-01-20 10:33:14, Pingfan Liu wrote:
> > After commit ba72b4c8cf60 ("mm/sparsemem: support sub-section hotplug"),
> > when a mem section is fully deactivated, section_mem_map still records the
> > section's start pfn, which is not used any more and will be reassigned
> > during re-added.
> > 
> > In analogy with alloc/free pattern, it is better to clear all fields of
> > section_mem_map.
> > 
> > Beside this, it breaks the user space tool "makedumpfile" [1], which makes
> > assumption that a hot-removed section has mem_map as NULL, instead of
> > checking directly against SECTION_MARKED_PRESENT bit. (makedumpfile will be
> > better to change the assumption, and need a patch)
> > 
> > The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> > trigger a crash, and save vmcore by makedumpfile
> 
> While makedumpfile lives very closely to the kernel and occasional
> breakage is to be expected I still believe that Fixes: ba72b4c8cf60
> is due.

But not a cc:stable?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
