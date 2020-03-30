Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAFA197D9B
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 15:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bYBft3ozl04qTYvPF9Fofz9s3O9J4aQsBax3B5SlR1s=; b=MYM3OQvCpLfb/w
	31dQjC28t814UQudWsDQFjr4XPdHU8esnHOfXMTZEvC5BzJsSCJm7BWPCpnnXHYD6vdsYGH/5/qJ+
	Q0YxvAN48ZTnY4gqmikUxXOSOLKUYznHvpr/5znroD3rNBhcJjqDOzl3TbS+rSKzwv0RT1sFQqxGS
	T0jSLBtHb2hxMlrcr3RhiRcYlEeDumNNE+70IceWzy3bNkm3zE7VA5bu8/0rA7xDPOTU/2WP/VS6J
	R/8jV7lsZ7wzfzs+nCSordeVp5yagX2uCjtSpbIP52pwYeN+WAHNuk3uWeHwhUtCfD5YFxAw12IGM
	D4ohTe4bQ/nqZTlWLynA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIut7-0006O4-2C; Mon, 30 Mar 2020 13:55:37 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIut3-0006NB-4K
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 13:55:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585576532;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/bPyyHPD42Xo1KBAiP96rTz8WoxuyBufsYOURf5PPKo=;
 b=HaMoB1hWot9cQVTNlRBlbheZ39eEDLcVr/k7ZE3/Sk5wVWA6XT3tbDFRDfiT6TK2Hm8MBJ
 l0jJPC8PkOIFMRlfiXPL1N3xmUrdCiA6+iXPi33+J+uxPLgMUB5kB5SMfUgDDBbVqJuQwM
 Fld1nnZ/nLrhWuFBfBqbsyvWZ6KfsoE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-MeV-U7rFPPWINPzB6xX6AQ-1; Mon, 30 Mar 2020 09:55:28 -0400
X-MC-Unique: MeV-U7rFPPWINPzB6xX6AQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A07FA18A5505;
 Mon, 30 Mar 2020 13:55:26 +0000 (UTC)
Received: from localhost (ovpn-12-192.pek2.redhat.com [10.72.12.192])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DB60FA0A91;
 Mon, 30 Mar 2020 13:55:25 +0000 (UTC)
Date: Mon, 30 Mar 2020 21:55:22 +0800
From: Baoquan He <bhe@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
Message-ID: <20200330135522.GE6352@MiWiFi-R3L-srv>
References: <20200326180730.4754-1-james.morse@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_065533_248717_F2DC1901 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James,

On 03/26/20 at 06:07pm, James Morse wrote:
> Hello!
> 
> arm64 recently queued support for memory hotremove, which led to some
> new corner cases for kexec.
> 
> If the kexec segments are loaded for a removable region, that region may
> be removed before kexec actually occurs. This causes the first kernel to
> lockup when applying the relocations. (I've triggered this on x86 too).
> 
> The first patch adds a memory notifier for kexec so that it can refuse
> to allow in-use regions to be taken offline.

I talked about this with Dave Young. Currently, we tend to use
kexec_file_load more in the future since most of its implementation is
in kernel, we can get information about kernel more easilier. For the
kexec kernel loaded into hotpluggable area, we can fix it in
kexec_file_load side, we know the MOVABLE zone's start and end. As for
the old kexec_load, we would like to keep it for back compatibility. At
least in our distros, we have switched to kexec_file_load, will
gradually obsolete kexec_load. So for this one, I suggest avoiding those
MOVZBLE memory region when searching place for kexec kernel.

Not sure if arm64 will still have difficulty.

> 
> 
> This doesn't solve the problem for arm64, where the new kernel must
> initially rely on the data structures from the first boot to describe
> memory. These don't describe hotpluggable memory.
> If kexec places the kernel in one of these regions, it must also provide
> a DT that describes the region in which the kernel was mapped as memory.
> (and somehow ensure its always present in the future...)
> 
> To prevent this from happening accidentally with unaware user-space,
> patches two and three allow arm64 to give these regions a different
> name.
> 
> This is a change in behaviour for arm64 as memory hotadd and hotremove
> were added separately.
> 
> 
> I haven't tried kdump.
> Unaware kdump from user-space probably won't describe the hotplug
> regions if the name is different, which saves us from problems if
> the memory is no longer present at kdump time, but means the vmcore
> is incomplete.
> 
> 
> These patches are based on arm64's for-next/core branch, but can all
> be merged independently.
> 
> Thanks,
> 
> James Morse (3):
>   kexec: Prevent removal of memory in use by a loaded kexec image
>   mm/memory_hotplug: Allow arch override of non boot memory resource
>     names
>   arm64: memory: Give hotplug memory a different resource name
> 
>  arch/arm64/include/asm/memory.h | 11 +++++++
>  kernel/kexec_core.c             | 56 +++++++++++++++++++++++++++++++++
>  mm/memory_hotplug.c             |  6 +++-
>  3 files changed, 72 insertions(+), 1 deletion(-)
> 
> -- 
> 2.25.1
> 
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
