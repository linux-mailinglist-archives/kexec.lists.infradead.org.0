Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AFB1C1B6
	for <lists+kexec@lfdr.de>; Tue, 14 May 2019 07:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JHEJ4TjEOuQawidCNjw4vuG9FDPZz1cpO0dS3m4Y1M=; b=ZhfF7vxEX1KaHJ
	UxwBgAJRMWmB6R3kYvDCQon3FKGqfaOQmEGzfm3/GQSflKvKA2lfR8H1gy8eSGvEu02ZaezMTmV1h
	ceQMLfqGo13hL637HPXL4c6iC5mD0fPxvPkW5+BhSdQxjlo173APZDkqftsFJYxC/+c5ikoW6cVVq
	R8YsTHsMsVxB3T4N+RXsf8cKTFsjyIrA1hX+wvPILlA+i0VeEMqsSwB8vBq/xOpfjs8UBK81DHsPR
	VxUasWB+4Y2TQONXnzqoY3zILxjp6bU3TxDesVHfnrQIE8SsWYXSy4zlq6Xigj20HS9zbU41zOi3u
	Gd5SVCOlK78KOx2XyBPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQPhr-0001zl-Ln; Tue, 14 May 2019 05:10:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQPhn-0001y4-RZ
 for kexec@lists.infradead.org; Tue, 14 May 2019 05:10:25 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 754E9307D869;
 Tue, 14 May 2019 05:10:23 +0000 (UTC)
Received: from kasong-rh-laptop.pek2.redhat.com (wlc-trust-112.pek2.redhat.com
 [10.72.3.112])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5F8C519C67;
 Tue, 14 May 2019 05:10:21 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 1/4] x86: Update boot parameters defination
Date: Tue, 14 May 2019 13:09:57 +0800
Message-Id: <20190514050959.21093-2-kasong@redhat.com>
In-Reply-To: <20190514050959.21093-1-kasong@redhat.com>
References: <20190514050959.21093-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Tue, 14 May 2019 05:10:23 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_221023_906772_AD8DBC88 
X-CRM114-Status: GOOD (  11.91  )
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
from boot params if available"), kernel accept a acpi_rsdp_addr param in
boot_params. Sync the x86_linux_param_header to support this param.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 include/x86/x86-linux.h | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/include/x86/x86-linux.h b/include/x86/x86-linux.h
index 352ea02..a5d8df8 100644
--- a/include/x86/x86-linux.h
+++ b/include/x86/x86-linux.h
@@ -45,8 +45,7 @@ struct apm_bios_info {
 	uint16_t cseg_len;	/* 0x4e */
 	uint16_t cseg_16_len;	/* 0x50 */
 	uint16_t dseg_len;	/* 0x52 */
-	uint8_t  reserved[44];	/* 0x54 */
-};
+} __attribute__((packed));
 
 /*
  * EDD stuff
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
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
