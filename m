Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFA61C1B5
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 07:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIR98n89jfxVV3SPcp6lipNzMlAbOu3+EKO3EwAv24I=; b=bB+pNx0KflPW00
	UDRvgUMiocOU6wthQf88a8IeMtMukDZL3FBPy6V40DHKSKI3eP1ItCa6K4ke0Nn9Fb8VbU8Z6nZ7Q
	WjPMHDXMbswvFvIatDqLNAl3IeKoorXDWUakjVJEGqVY1iiGykPYyH1luVMMY2b32Bpqd1VGG874m
	FkmfaUlnAwF/FmomQKSns0QDHEPC5GnP5Qb4WGzt3Y6KMRmFaHbV64/5BBKnKQsIU3CYKVobuwVhP
	NlhvQt+MxfCZrpQgsGmAqhL4IXexHxXzCEC8dWr+WPd4O0H3ilqj/ENBr82Sm1UtPnwxK59wUQj0i
	8xMFP5qZeQD4xzB0XK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPhp-0001yL-4G; Tue, 14 May 2019 05:10:25 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPhm-0001xm-5N
 for kexec@lists.infradead.org; Tue, 14 May 2019 05:10:23 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id DE5E159440;
 Tue, 14 May 2019 05:10:20 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-112.pek2.redhat.com
 [10.72.3.112])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 191A019C67;
 Tue, 14 May 2019 05:10:15 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 0/4] x86: Always to to fill acpi_rsdp_addr in boot params
Date: Tue, 14 May 2019 13:09:56 +0800
Message-Id: <20190514050959.21093-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 14 May 2019 05:10:21 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_221022_225934_6CC91F11 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Simon Horman <horms@verge.net.au>, Dave Young <dyoung@redhat.com>,
 Lianbo Jiang <lijiang@redhat.com>, Baoquan He <bhe@redhat.com>,
 Kairui Song <kasong@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

This patch sync the behavior of user space kexec and kexec_file_load,
they will both fill the boot_params.acpi_rsdp_addr with a valid RSDP
value, to make sure second kernel can always get the RSDP consistently.

This will make it effortless to boot newer version of kernel (5.0+)
without specifying acpi_rsdp= cmdline on EFI system even with EFI
service disabled. Should not change any behavior with older kernels.

Update from V1:
  - Split into multiple patches for a cleaner structure, content is not
    changed.

Kairui Song (4):
  x86: Update boot parameters defination
  x86: Introduce helpers for getting RSDP address
  x86: Always try to fill acpi_rsdp_addr in boot params
  crashdump/x86: Use new introduce helper for getting RSDP

 include/x86/x86-linux.h            |  8 ++--
 kexec/arch/i386/crashdump-x86.c    | 34 +++++------------
 kexec/arch/i386/kexec-x86-common.c | 60 ++++++++++++++++++++++++++++++
 kexec/arch/i386/kexec-x86.h        |  1 +
 kexec/arch/i386/x86-linux-setup.c  |  6 ++-
 kexec/arch/i386/x86-linux-setup.h  |  1 +
 6 files changed, 80 insertions(+), 30 deletions(-)

-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
