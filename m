Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B90FBB44
	for <lists+kexec@lfdr.de>; Wed, 13 Nov 2019 23:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qv1YsA3axwVVsKEwilBKzVr4edFwtTCUGH2OwHBrhRg=; b=go4pHILEYFKbZd
	JvKxXXokvzThD7X7M4EMvFfLcZxeRTqxXGRq9lbenSRNNH+ERgBN7WsyFlLqlaVoRCLUwNbohUiY/
	em7Rva6XEUIVOz++AuqX4YpC9PyA7ITAqBuauEx5dZy2RI7A8XgPKe7YXqnuGlv4j0gzRN6QdwqM4
	ZOP+Ag4OeUWnCrDFt9pXlLuH/MrC3ca2buuRWtgF+BEWaP4RmNGHH0+6RAobThRgO89WbKdgF8TLe
	HADlAMTGnDLqAOqsJKUFO3g1UF4717KUoRlYAuUzcuExmyx6q5zBusbHSg0OZV9XIX9m28vNDSiHE
	WT0v+DF4XvhWNiJCH19Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV0hU-0004pN-Pr; Wed, 13 Nov 2019 22:01:20 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV0hQ-0004oY-PK
 for kexec@lists.infradead.org; Wed, 13 Nov 2019 22:01:18 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id xADM1ChE008358
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 14 Nov 2019 07:01:12 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xADM1BNh022071;
 Thu, 14 Nov 2019 07:01:12 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id xADM1Bun002594;
 Thu, 14 Nov 2019 07:01:11 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.136] [10.38.151.136]) by
 mail03.kamome.nec.co.jp with ESMTP id BT-MMP-728700;
 Thu, 14 Nov 2019 07:00:00 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC08GP.gisp.nec.co.jp ([10.38.151.136]) with mapi id 14.03.0439.000; Thu,
 14 Nov 2019 06:59:59 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: RE: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
Thread-Topic: [PATCH v4 0/4] makedumpfile/arm64: Add support for ARMv8.2
 extensions
Thread-Index: AQHVmUmw3WUYZ1CUL0q/F7693juz4KeJow1Q
Date: Wed, 13 Nov 2019 21:59:58 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035950A0@BPXM09GP.gisp.nec.co.jp>
References: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
In-Reply-To: <1573556939-17803-1-git-send-email-bhsharma@redhat.com>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.135.101]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_140117_062036_46D4B29A 
X-CRM114-Status: GOOD (  24.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: John Donnelly <john.p.donnelly@oracle.com>,
 "bhupesh.linux@gmail.com" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Bhupesh,

Thanks for the updated patchset.

I'm taking a look at this, but I will be out of office from tomorrow
until Nov 29th, so please expect some (long) delays in my response..

Thanks,
Kazu

> -----Original Message-----
> Changes since v3:
> ----------------
> - v3 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-March/022534.html
> - Added a new patch (via [PATCH 4/4]) which marks '--mem-usage' option as
>   unsupported for arm64 architecture. With the newer arm64 kernels
>   supporting 48-bit/52-bit VA address spaces and keeping a single
>   binary for supporting the same, the address of
>   kernel symbols like _stext, which could be earlier used to determine
>   VA_BITS value, can no longer to determine whether VA_BITS is set to 48
>   or 52 in the kernel space. Hence for now, it makes sense to mark
>   '--mem-usage' option as unsupported for arm64 architecture until
>   we have more clarity from arm64 kernel maintainers on how to manage
>   the same in future kernel/makedumpfile versions.
> 
> Changes since v2:
> ----------------
> - v2 can be seen here:
>   http://lists.infradead.org/pipermail/kexec/2019-February/022456.html
> - I missed some comments from Kazu sent on the LVA v1 patch when I sent
>   out the v2. So, addressing them now in v3.
> - Also added a patch that adds a tree-wide feature to read
>   'MAX_PHYSMEM_BITS' from vmcoreinfo (if available).
> 
> Changes since v1:
> ----------------
> - v1 was sent as two separate patches:
>   http://lists.infradead.org/pipermail/kexec/2019-February/022424.html
>   (ARMv8.2-LPA)
>   http://lists.infradead.org/pipermail/kexec/2019-February/022425.html
>   (ARMv8.2-LVA)
> - v2 combined the two in a single patchset and also addresses Kazu's
>   review comments.
> 
> This patchset adds support for ARMv8.2 extensions in makedumpfile code.
> I cover the following two cases with this patchset:
>  - 48-bit kernel VA + 52-bit PA (LPA)
>  - 52-bit kernel VA (LVA) + 52-bit PA (LPA)
>  - 48-bit kernel VA + 52-bit user-space VA (LVA)
>  - 52-bit kernel VA + 52-bit user-space VA (Full LVA)
> 
> This has been tested for the following user-cases:
> 1. Creating a dumpfile using /proc/vmcore,
> 2. Creating a dumpfile using /proc/kcore, and
> 3. Post-processing a vmcore.
> 
> I have tested this patchset on the following platforms, with kernels
> which support/do-not-support ARMv8.2 features:
> 1. CPUs which don't support ARMv8.2 features, e.g. qualcomm-amberwing,
>    ampere-osprey.
> 2. Prototype models which support ARMv8.2 extensions (e.g. ARMv8 FVP
>    simulation model).
> 
> Also a preparation patch has been added in this patchset which adds a
> common feature for archs (except arm64, for which similar support is
> added via subsequent patch) to retrieve 'MAX_PHYSMEM_BITS' from
> vmcoreinfo (if available).
> 
> I recently posted two kernel patches (see [0] and [1]) which append
> 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' to vmcoreinfo in the kernel
> code, so that user-space code can benefit from the same.
> 
> This patchset ensures backward compatibility for kernel versions in
> which 'TCR_EL1.T1SZ' and 'MAX_PHYSMEM_BITS' are not available in
> vmcoreinfo.
> 
> [0]. http://lists.infradead.org/pipermail/kexec/2019-November/023960.html
> [1]. http://lists.infradead.org/pipermail/kexec/2019-November/023962.html
> 
> Cc: John Donnelly <john.p.donnelly@oracle.com>
> Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
> Cc: kexec@lists.infradead.org
> 
> Bhupesh Sharma (4):
>   tree-wide: Retrieve 'MAX_PHYSMEM_BITS' from vmcoreinfo (if available)
>   makedumpfile/arm64: Add support for ARMv8.2-LPA (52-bit PA support)
>   makedumpfile/arm64: Add support for ARMv8.2-LVA (52-bit kernel VA
>     support)
>   makedumpfile: Mark --mem-usage option unsupported for arm64
> 
>  arch/arm.c     |   8 +-
>  arch/arm64.c   | 438 ++++++++++++++++++++++++++++++++++++++++++---------------
>  arch/ia64.c    |   7 +-
>  arch/ppc.c     |   8 +-
>  arch/ppc64.c   |  49 ++++---
>  arch/s390x.c   |  29 ++--
>  arch/sparc64.c |   9 +-
>  arch/x86.c     |  34 +++--
>  arch/x86_64.c  |  27 ++--
>  makedumpfile.c |   7 +
>  makedumpfile.h |   3 +-
>  11 files changed, 439 insertions(+), 180 deletions(-)
> 
> --
> 2.7.4
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
