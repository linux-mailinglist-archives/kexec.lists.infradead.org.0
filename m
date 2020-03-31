Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98947198AA1
	for <lists+kexec@lfdr.de>; Tue, 31 Mar 2020 05:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kvHpCEO4BwUAM74t5gjTblaidwjGsTEBPqyphn28EJ0=; b=QjauFk/kNBbX+q
	LphRg/8WbrhSQX6J/I5ev1YZqOfvdgZTJSQqpkGhXA+H46G4cNGmDITAW3gl7azkcSe2fm2izAjkB
	mSmxd11O1hiIOZi7EAgFo/AmKWkKJmZsX6CXYikJ5CyHZRX+WNmdRr0M3Ad8MJYiRuXmgPKBdhmqe
	VERUbZj8xLwfYwa+Hdx/J2xel99SjK08kaIdTBOPcigLmHn/AkIrdyNlFEL+CUy8Tpjp3+lmIyEGi
	lHjz23TbhJKMo1RFsfmkFHv2IGlt/7jKAWlSu4tDCg5/ocbUsT+qC6V1nt7rYfYh1zQASGh3Px8Lq
	4BLecbtOHf4quesz8Cxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ7rM-0004za-3r; Tue, 31 Mar 2020 03:46:40 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ7r9-0004rb-L8
 for kexec@lists.infradead.org; Tue, 31 Mar 2020 03:46:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585626386;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4Emxfgw9v24rANWjnidLawXCzRz7ULAT99YrgVx/WFE=;
 b=PXLh5vOaP8bDGlPfUJtAVg57Car6978cE+YutFtAGiSuv3715IsOAk5hpoMvII4vVSPgGm
 rOZquNUVtGxYv19WDvoYuDLfN/HdtUc9XxMkltldGM00P5rfvQojpz3X591nbQpA2D1GTj
 5O19eLx/SXnzP4TZ9QMSiOh5+2VzIw4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-vluCViNdNKGy2R7GGm48lQ-1; Mon, 30 Mar 2020 23:46:23 -0400
X-MC-Unique: vluCViNdNKGy2R7GGm48lQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 25C758017CC;
 Tue, 31 Mar 2020 03:46:21 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-247.pek2.redhat.com
 [10.72.12.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CC38C953D6;
 Tue, 31 Mar 2020 03:46:16 +0000 (UTC)
Date: Tue, 31 Mar 2020 11:46:12 +0800
From: Dave Young <dyoung@redhat.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 0/3] kexec/memory_hotplug: Prevent removal and accidental
 use
Message-ID: <20200331034612.GB83248@dhcp-128-65.nay.redhat.com>
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200330135522.GE6352@MiWiFi-R3L-srv>
 <2bdfbb1c-49da-d476-4a38-f91937105ae3@arm.com>
MIME-Version: 1.0
In-Reply-To: <2bdfbb1c-49da-d476-4a38-f91937105ae3@arm.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_204627_772750_8CD7CD63 
X-CRM114-Status: GOOD (  22.14  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
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
Cc: Baoquan He <bhe@redhat.com>, Anshuman Khandual <anshuman.khandual@arm.com>,
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
On 03/30/20 at 06:17pm, James Morse wrote:
> Hi Baoquan,
> 
> On 3/30/20 2:55 PM, Baoquan He wrote:
> > On 03/26/20 at 06:07pm, James Morse wrote:
> >> arm64 recently queued support for memory hotremove, which led to some
> >> new corner cases for kexec.
> >>
> >> If the kexec segments are loaded for a removable region, that region may
> >> be removed before kexec actually occurs. This causes the first kernel to
> >> lockup when applying the relocations. (I've triggered this on x86 too).
> >>
> >> The first patch adds a memory notifier for kexec so that it can refuse
> >> to allow in-use regions to be taken offline.
> > 
> > I talked about this with Dave Young. Currently, we tend to use
> > kexec_file_load more in the future since most of its implementation is
> > in kernel, we can get information about kernel more easilier. For the
> > kexec kernel loaded into hotpluggable area, we can fix it in
> > kexec_file_load side, we know the MOVABLE zone's start and end. As for
> > the old kexec_load, we would like to keep it for back compatibility. At
> > least in our distros, we have switched to kexec_file_load, will
> > gradually obsolete kexec_load.
> 
> > So for this one, I suggest avoiding those
> > MOVZBLE memory region when searching place for kexec kernel.
> 
> How does today's user-space know?
> 
> 
> > Not sure if arm64 will still have difficulty.
> 
> arm64 added support for kexec_load first, then kexec_file_load. (evidently a
> mistake).
> kexec_file_load support was only added in the last year or so, I'd hazard most
> people using this, are using the regular load kind. (and probably don't know or
> care).

I agreed that file load is still not widely used,  but in the long run
we should not maintain both of them all the future time.  Especially
when some kernel-userspace interfaces need to be introduced, file load
will have the natural advantage.  We may keep the kexec_load for other
misc usecases, but we can use file load for the major modern
linux-to-linux loading.  I'm not saying we can do it immediately, just
thought we should reduce the duplicate effort and try to avoid hacking if
possible.

Anyway about this particular issue, I wonder if we can just reload with
a udev rule as replied in another mail.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
