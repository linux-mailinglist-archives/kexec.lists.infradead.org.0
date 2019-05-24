Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68726290DE
	for <lists+kexec@lfdr.de>; Fri, 24 May 2019 08:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/W8E9+zQktEF60LxJ8jzA+LOEGHBvNsrW+Kx5U1uCI=; b=Feip4ziPydF0yX
	Que6P+9pwwl+CIPNq/fM0aVej8gMfOhR06T9M8eUMJfoVS97MB+WnZ/AK7ILto5Mupv/7LAQASltD
	8Nrs3Ndiqbhiuwm054xLieyGLYQtFEfYnXBDp6CD0pq+mQuMGp0yJsJ3UxBOqWUj6rGr6j9p5qd6/
	eChbiGlY5+DIdypQbZ42LihMrBZffphk4I5z8w1/mLAx1P+DJVT93R+7ZtYPj1Xa9uZy3cc/5TyuX
	Vm4eKZK5MZZhSF4s+czk++iPSKnbzxfRqjR6Q9t5tEXk4CQWhaphtVCAPAZosCH5IqB5VnttLpN2L
	wvKTn8l5gM0FRgdrSQgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU3cz-0008OX-PD; Fri, 24 May 2019 06:24:29 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3cu-0008Nh-BI
 for kexec@lists.infradead.org; Fri, 24 May 2019 06:24:25 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7A1AE3086202;
 Fri, 24 May 2019 06:24:23 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-142.pek2.redhat.com
 [10.72.3.142])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E84871001DDB;
 Fri, 24 May 2019 06:24:20 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v3 1/4] x86: Update boot parameters defination
Date: Fri, 24 May 2019 14:23:18 +0800
Message-Id: <20190524062321.24126-2-kasong@redhat.com>
In-Reply-To: <20190524062321.24126-1-kasong@redhat.com>
References: <20190524062321.24126-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 24 May 2019 06:24:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_232424_598457_AE13DB07 
X-CRM114-Status: GOOD (  11.49  )
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
from boot params if available"), kernel accept a acpi_rsdp_addr param in
boot_params. Sync the x86_linux_param_header to support this param.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 include/x86/x86-linux.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/include/x86/x86-linux.h b/include/x86/x86-linux.h
index 352ea02..9646102 100644
--- a/include/x86/x86-linux.h
+++ b/include/x86/x86-linux.h
@@ -45,7 +45,6 @@ struct apm_bios_info {
 	uint16_t cseg_len;	/* 0x4e */
 	uint16_t cseg_16_len;	/* 0x50 */
 	uint16_t dseg_len;	/* 0x52 */
-	uint8_t  reserved[44];	/* 0x54 */
 };
 
 /*
@@ -113,12 +112,15 @@ struct x86_linux_param_header {
 	uint8_t  reserved4[2];			/* 0x3e -- 0x3f reserved for future expansion */
 
 	struct apm_bios_info apm_bios_info;	/* 0x40 */
+	uint8_t  reserved4_1[28];		/* 0x54 */
+	uint64_t acpi_rsdp_addr;		/* 0x70 */
+	uint8_t  reserved4_2[8];		/* 0x78 */
 	struct drive_info_struct drive_info;	/* 0x80 */
 	struct sys_desc_table sys_desc_table;	/* 0xa0 */
 	uint32_t ext_ramdisk_image;		/* 0xc0 */
 	uint32_t ext_ramdisk_size;		/* 0xc4 */
 	uint32_t ext_cmd_line_ptr;		/* 0xc8 */
-	uint8_t reserved4_1[0x1c0 - 0xcc];	/* 0xe4 */
+	uint8_t reserved4_3[0x1c0 - 0xcc];	/* 0xe4 */
 	uint8_t efi_info[32];			/* 0x1c0 */
 	uint32_t alt_mem_k;			/* 0x1e0 */
 	uint8_t  reserved5[4];			/* 0x1e4 */
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
