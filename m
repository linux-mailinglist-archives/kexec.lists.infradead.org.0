Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5226A12F5F1
	for <lists+kexec@lfdr.de>; Fri,  3 Jan 2020 10:12:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5w4DSEmm7YNWT0wXzInYGfpzI7iL03PwRbH+CEKEk4k=; b=cDdxaHr9ig/g24
	En2qWfv3SzoM+piKgRzwnWJW1D95gBIenJV8El1eLp18zhM+eU30wcQXpMW9bHeG+PSUuxE5h4S/Z
	wjUO1/g5v2zmYLwSnB6/FfKU2tnQrBmsSLITHHQIh8m5azid7fEgly+MFgZhl1Wr8Rm1sVfYbeXqJ
	MWw/+HX1lkceNLDqwejBLo8XchBliHjuuadBh8/pOA9Fh9yG8CdYpdjzDLDbi5UJS5Yzpy1oAD4aX
	CsrMV/MuGlszWs/5aBbOXDm366hsHJK8It/48nKDZ8TmPrVKpndVDPUQd43UlS0l5LwGs5Lujte+Z
	/fpzFs0qaIUzjHggckMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inJ05-0004CQ-Vt; Fri, 03 Jan 2020 09:12:09 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inJ01-0004By-Ri
 for kexec@lists.infradead.org; Fri, 03 Jan 2020 09:12:07 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 8236925AEFB;
 Fri,  3 Jan 2020 20:12:04 +1100 (AEDT)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 5B44594025F; Fri,  3 Jan 2020 10:12:02 +0100 (CET)
Date: Fri, 3 Jan 2020 10:12:02 +0100
From: Simon Horman <horms@verge.net.au>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH] kexec: build multiboot2 for i386
Message-ID: <20200103091202.GJ17507@vergenet.net>
References: <20191117235215.18159-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191117235215.18159-1-chris.packham@alliedtelesis.co.nz>
Organisation: Horms Solutions BV
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_011206_049213_4E0C48F7 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [202.4.237.240 listed in wl.mailspike.net]
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
Cc: kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 12:52:15PM +1300, Chris Packham wrote:
> This addresses the following compilation issues when building for i386.
> 
>  kexec/arch/i386/kexec-x86.c:39:22: error: 'multiboot2_x86_probe' undeclared here (not in a function); did you mean 'multiboot_x86_probe'?
>    { "multiboot2-x86", multiboot2_x86_probe, multiboot2_x86_load,
>                        ^~~~~~~~~~~~~~~~~~~~
>                        multiboot_x86_probe
>  kexec/arch/i386/kexec-x86.c:39:44: error: 'multiboot2_x86_load' undeclared here (not in a function); did you mean 'multiboot_x86_load'?
>    { "multiboot2-x86", multiboot2_x86_probe, multiboot2_x86_load,
>                                              ^~~~~~~~~~~~~~~~~~~
>                                              multiboot_x86_load
>  kexec/arch/i386/kexec-x86.c:40:4: error: 'multiboot2_x86_usage' undeclared here (not in a function); did you mean 'multiboot_x86_usage'?
>      multiboot2_x86_usage },
>      ^~~~~~~~~~~~~~~~~~~~
>      multiboot_x86_usage
>  make: *** [Makefile:114: kexec/arch/i386/kexec-x86.o] Error 1
>  make: *** Waiting for unfinished jobs....
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
> ---
> I wasn't sure whether this should be fixed by linking with kexec-mb2-x86.o or
> by removing the code from kexec-x86.c. I went for the former but I'd happily
> change to the latter.
> 
>  kexec/arch/i386/Makefile    | 2 +-
>  kexec/arch/i386/kexec-x86.h | 5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)

Hi Chris,

sorry for letting this slip through the cracks.
This change looks good to me and I've applied it for inclusion in
the next release of kexec tools.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
