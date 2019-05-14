Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 653211C1B8
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 07:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJu0WHc4uQ4TpLkTcLEa9q7tNn9ybv8nJFxWiY2eIVE=; b=GruXQFKBG8oij9
	SUFEjC8LAKKF8VwE415uDk+4vwyaRxvubJUrGXmom07FNWMp0wXmDAxgrEnysp0cnNcEvrPDBOeEN
	WApTiuuDRVcMjm8RJDi2r5/yq+GDCwHDm3sQFOnzD7orKSOkVAa9gjiEnomiXeRR87kI8FFTBYEqe
	8PH3Y1Okt2IbdJ65I+uhLNwyASsqbC/J5V+FXFc/fKs5EIXcwo8XXe2cOnMJ6EESFdRAMPH9IKlTS
	WBsWLk1RdJHxG+EYAS3i68ns2FJYPAzRGaGs3CM9ZMl8/WED4uqaNMQvtOhm+1aHbVxbL9BKS/Pcl
	4nopvXMztIiaYucVbx9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPhw-00024O-3z; Tue, 14 May 2019 05:10:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPhs-00021M-RM
 for kexec@lists.infradead.org; Tue, 14 May 2019 05:10:30 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 99F51308620E;
 Tue, 14 May 2019 05:10:28 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-112.pek2.redhat.com
 [10.72.3.112])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8422819C70;
 Tue, 14 May 2019 05:10:26 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 3/4] x86: Always try to fill acpi_rsdp_addr in boot params
Date: Tue, 14 May 2019 13:09:59 +0800
Message-Id: <20190514050959.21093-4-kasong@redhat.com>
In-Reply-To: <20190514050959.21093-1-kasong@redhat.com>
References: <20190514050959.21093-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Tue, 14 May 2019 05:10:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_221028_979439_A0494196 
X-CRM114-Status: GOOD (  12.94  )
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
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
