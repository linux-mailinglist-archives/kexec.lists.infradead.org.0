Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B8F290DD
	for <lists+kexec@lfdr.de>; Fri, 24 May 2019 08:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=alF+wEvXRWuGWHdUa+LTKveR3Iq+EO+jxNhE+bcv800=; b=sNAzL+Y0+JaOk7
	h4VYZMVQoL+0+8wpb4aMyQ3pyJr8lwo2gwq3AaVOfW8gXU/JEMZd8q/4kBCGH+mXbNCNPOiktKWsY
	QOETZrCYZtzonDky8e2ZtAc5hZOGLretLxPHabGvhVuwHF6GZWRTq3BGEstmuzIwBNRLU/QYZC4nI
	sdpdxGm70IMOMiqOE1rK0OHqj63tQtOsQg0tJYMpCxQ3Ld3Z6fN7m8Uk2OQaNGP1rAy4N0pTPY+h6
	ylk5d7ft605xW2JIaetX/EB1leIQfyBJbG60b1MyTRfjDSw+3kCMtVahQKqfXhKsTX7gi11ozeipq
	WZxwSq0gS9Mduw2Rnolw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3d2-0008PJ-FJ; Fri, 24 May 2019 06:24:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3ct-0008Nd-UP
 for kexec@lists.infradead.org; Fri, 24 May 2019 06:24:25 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 582B5307D91E;
 Fri, 24 May 2019 06:24:20 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-142.pek2.redhat.com
 [10.72.3.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A1D6B1001DDB;
 Fri, 24 May 2019 06:24:15 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v3 0/4] x86: Always try to fill acpi_rsdp_addr in boot params
Date: Fri, 24 May 2019 14:23:17 +0800
Message-Id: <20190524062321.24126-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 24 May 2019 06:24:20 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232424_142623_99BAAAEE 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Update from V2:
  - Drop unneeded 'packed' attribute for boot parameters structure
  - Don't trust kernel cmdline as a reliable acpi rsdp source

Update from V1:
  - Split into multiple patches for a cleaner structure, content is not
    changed.

Kairui Song (4):
  x86: Update boot parameters defination
  x86: Introduce helpers for getting RSDP address
  x86: Always try to fill acpi_rsdp_addr in boot params
  crashdump/x86: Use new introduce helper for getting RSDP

 include/x86/x86-linux.h            |  6 +++--
 kexec/arch/i386/crashdump-x86.c    | 34 +++++++----------------
 kexec/arch/i386/kexec-x86-common.c | 43 ++++++++++++++++++++++++++++++
 kexec/arch/i386/kexec-x86.h        |  1 +
 kexec/arch/i386/x86-linux-setup.c  |  6 +++--
 kexec/arch/i386/x86-linux-setup.h  |  1 +
 6 files changed, 62 insertions(+), 29 deletions(-)

-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
