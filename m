Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F0E290E1
	for <lists+kexec@lfdr.de>; Fri, 24 May 2019 08:24:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zteYrz9rTx84zAgldfmjFYTdFM9ubhb0UBx3CHkyVTo=; b=nCGOUvkvSSWvm7
	h/980BK5IWW0glpDx5qprvlbtPJsqwoMXvt6Ep1/toPcmZF/WD0/0rcxJmMPaCsc/6XSHiPzf5p9O
	4ZkBHDTuMtxKRHpxU13rOb6gbPxcXBzk9ebzqDjWmxbyi+jV4+HdV2lgI4eMsNi2ZwGW1dg0QUw9o
	ran2z3QU/9NtCT2ujaELF6PUbVn6lJReOq8uPkczk68XVdzUPwzSneZ8UOZIAgL1aTKJK19SeLiFj
	BE1MWCZobRbKnUVpK34E5ZhzyHZoAMr2Mcyqkr8tKeY30mYWinPiftx1ZMkj2zoWEFL/Vx//fCJge
	LTyQQEh2Zb5WapNSmvmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3d8-0008Tu-HQ; Fri, 24 May 2019 06:24:38 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3d0-0008PM-Dh
 for kexec@lists.infradead.org; Fri, 24 May 2019 06:24:31 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BDBF04ACDF;
 Fri, 24 May 2019 06:24:29 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-142.pek2.redhat.com
 [10.72.3.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 375E11001DDB;
 Fri, 24 May 2019 06:24:26 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v3 3/4] x86: Always try to fill acpi_rsdp_addr in boot params
Date: Fri, 24 May 2019 14:23:20 +0800
Message-Id: <20190524062321.24126-4-kasong@redhat.com>
In-Reply-To: <20190524062321.24126-1-kasong@redhat.com>
References: <20190524062321.24126-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Fri, 24 May 2019 06:24:29 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232430_608973_6BD9637E 
X-CRM114-Status: GOOD (  12.04  )
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

Since kernel commit e6e094e053af75 ("x86/acpi, x86/boot: Take RSDP address
from boot params if available"), kernel accept an acpi_rsdp_addr param in
boot_params. So fill in this parameter unconditionally, ensure second
kernel always get the right RSDP address consistently, and boot well on
EFI system even with EFI service disabled. User no longer need to change
the kernel cmdline to workaround the missing RSDP issue.

For older version of kernels (Before 5.0), there won't be any change of
behavior.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 kexec/arch/i386/x86-linux-setup.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/kexec/arch/i386/x86-linux-setup.c b/kexec/arch/i386/x86-linux-setup.c
index 5ca7c25..5b00b42 100644
--- a/kexec/arch/i386/x86-linux-setup.c
+++ b/kexec/arch/i386/x86-linux-setup.c
@@ -901,4 +901,7 @@ void setup_linux_system_parameters(struct kexec_info *info,
 
 	/* fill the EDD information */
 	setup_edd_info(real_mode);
+
+	/* Always try to fill acpi_rsdp_addr */
+	real_mode->acpi_rsdp_addr = get_acpi_rsdp();
 }
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
