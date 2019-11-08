Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6035EF533F
	for <lists+kexec@lfdr.de>; Fri,  8 Nov 2019 19:09:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dN066vGIuIxv5dxdN1nO2BJhsajOilcIRzJogKY0MNc=; b=nYMkM9uSB/+BVp
	p/er+wYeapiZYeQZwUWSUDI9LuaKKrZQ0EkBNJR2RMDcJxRmWC/KjJw6EYwesZKz0cZQBTPatcS+0
	BgeK60MbV6LT7WOMciOlNgslUDNlS7DQyjRQpn92fkq1/8/o9xbqtMrQNZb5SFksLC2rN+F70khQ8
	CzaoT7xqQyCgptcxDV+Wbmg4A7HsLh06Tdi6xqt6Q1mWwBGW6rS0tc5Rv+uYGyrirETybGlMdzZAO
	WdBoMwBwPevfabUt/EbDmaXU2FluqQOJM0ml8rlmiGwcErYY7B+VpOEGSIMZAPwfNwYkjurz1KhGc
	pKKdyliLek0bAYSV+UIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8hA-0004cp-Qg; Fri, 08 Nov 2019 18:09:16 +0000
Received: from secvs04.rockwellcollins.com ([205.175.225.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8h7-0004c7-0T
 for kexec@lists.infradead.org; Fri, 08 Nov 2019 18:09:14 +0000
IronPort-SDR: YSHRzYUFf2K7Utj+GpeeY191A+SDdL7FBgPt0hGr3iUnXrI7wtsqAnQaqX+EolFUwkLrOcwHau
 VXLBNqfyYE7djTLxs4D1VKNnhjRUcbkt5tYo1yIQPEPgycTQn7GhJ42GpDegpBvWAAk9F/1D5O
 2uPTYDdFur4MPT6olNv6eUGFJ18jFKurkbrP//yLmmbX92WDe6/zigEE4vSId5ExWgbQATbM/b
 SGHPTm5IAlGhlfrAHnjuC8LOjbjM1MBId14xu1nVadl1xMbRaNquOG+T0nGzgsAJ3q1yFiLptL
 HgE=
Received: from ofwgwc03.rockwellcollins.com (HELO
 crulimr01.rockwellcollins.com) ([205.175.225.12])
 by secvs04.rockwellcollins.com with ESMTP; 08 Nov 2019 12:09:05 -0600
X-Received: from righttwix.rockwellcollins.com (righttwix.rockwellcollins.com
 [192.168.141.218])
 by crulimr01.rockwellcollins.com (Postfix) with ESMTP id 0491F60561;
 Fri,  8 Nov 2019 12:09:04 -0600 (CST)
From: Brandon Maier <brandon.maier@rockwellcollins.com>
To: kexec@lists.infradead.org
Subject: [PATCH] ARM: Use mmap for zImage initrd
Date: Fri,  8 Nov 2019 12:08:54 -0600
Message-Id: <20191108180854.126452-1-brandon.maier@rockwellcollins.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_100913_165829_98752166 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Brandon Maier <brandon.maier@rockwellcollins.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

We use a large initrd that maxes out our available RAM when loading
kexec. The problem can be mitigated by using slurp_file_mmap(), which
avoids creating a copy of the initrd. The initrd does not use free,
realloc, etc, so it should be safe to use.

Signed-off-by: Brandon Maier <brandon.maier@rockwellcollins.com>
---
 kexec/arch/arm/kexec-zImage-arm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kexec/arch/arm/kexec-zImage-arm.c b/kexec/arch/arm/kexec-zImage-arm.c
index 2a7eea9..f9d452f 100644
--- a/kexec/arch/arm/kexec-zImage-arm.c
+++ b/kexec/arch/arm/kexec-zImage-arm.c
@@ -478,7 +478,7 @@ int zImage_arm_load(int argc, char **argv, const char *buf, off_t len,
 			command_line_len = COMMAND_LINE_SIZE;
 	}
 	if (ramdisk)
-		ramdisk_buf = slurp_file(ramdisk, &initrd_size);
+		ramdisk_buf = slurp_file_mmap(ramdisk, &initrd_size);
 
 	if (dtb_file)
 		dtb_buf = slurp_file(dtb_file, &dtb_length);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
