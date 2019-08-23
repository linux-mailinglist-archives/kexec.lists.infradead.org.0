Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB7E9AEAE
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 14:06:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EiC3dF7NMn5U9lTJ+sDcJC/inARqIJLcT2nIXcfl8BY=; b=BF26J74Zf52sJMMrNBo9XvhKNJ
	KLmvL7xxiPpINzRhcQ9w66GljKaF7Bjt9voCKEc1eiwWVO7ckgqq3Jy/VDjUlI8WEN4pEx1E6DiSr
	G0GQsB6TGbT6CjxU0cp+5Kc59RtlnaYcAUVlFUoWaX3YQXIkA+Ug0PrWyZtiZeDVRc3caiYzmtnWe
	lSMvYGOwUnTo7LGz/9ZXJbxNGRdAcnEQm1HcTCyckfcKzB31gAaXMue0j9qxLEI+4Axkq6MkmrA48
	Sy0iW/eFz55J6H13+wk7SHC2pZcK6iX6tRJNtzczEpKobHUXYD7A2eNBjOlBEDlUCcKeHkLntBbGU
	pRnZZeJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18KX-0007lf-Hn; Fri, 23 Aug 2019 12:06:09 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18KU-0007l1-Bv
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 12:06:07 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1E7638D5BB7;
 Fri, 23 Aug 2019 12:06:06 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-117.pek2.redhat.com
 [10.72.12.117])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CB52365EB5;
 Fri, 23 Aug 2019 12:05:54 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 1/4 v2] Cleanup: remove the read_elf_kcore()
Date: Fri, 23 Aug 2019 20:05:36 +0800
Message-Id: <20190823120539.18330-2-lijiang@redhat.com>
In-Reply-To: <20190823120539.18330-1-lijiang@redhat.com>
References: <20190823120539.18330-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.69]); Fri, 23 Aug 2019 12:06:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050606_426263_DF2FDD8F 
X-CRM114-Status: GOOD (  12.99  )
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
Cc: kasong@redhat.com, bhe@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 junw99@yahoo.com, horms@verge.net.au, dyoung@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Here, no need to wrap the read_elf() again, lets invoke it directly.
So remove the read_elf_kcore() and clean up redundant code.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 kexec/arch/arm64/kexec-arm64.c |  2 +-
 util_lib/elf_info.c            | 15 ++-------------
 util_lib/include/elf_info.h    |  2 +-
 3 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
index eb3a3a37307c..6ad3b0a134b3 100644
--- a/kexec/arch/arm64/kexec-arm64.c
+++ b/kexec/arch/arm64/kexec-arm64.c
@@ -889,7 +889,7 @@ int get_phys_base_from_pt_load(unsigned long *phys_offset)
 		return EFAILED;
 	}
 
-	read_elf_kcore(fd);
+	read_elf(fd);
 
 	for (i = 0; get_pt_load(i,
 		    &phys_start, NULL, &virt_start, NULL);
diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
index 90a3b21662e7..d9397ecd8626 100644
--- a/util_lib/elf_info.c
+++ b/util_lib/elf_info.c
@@ -764,7 +764,7 @@ static void dump_dmesg(int fd)
 		dump_dmesg_legacy(fd);
 }
 
-static int read_elf(int fd)
+int read_elf(int fd)
 {
 	int ret;
 
@@ -824,24 +824,13 @@ int read_elf_vmcore(int fd)
 	return 0;
 }
 
-int read_elf_kcore(int fd)
-{
-	int ret;
-
-	ret = read_elf(fd);
-	if (ret != 0)
-		return ret;
-
-	return 0;
-}
-
 int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
 {
 	int ret;
 
 	*phys_off = UINT64_MAX;
 
-	ret = read_elf_kcore(fd);
+	ret = read_elf(fd);
 	if (!ret) {
 		/* If we have a valid 'PHYS_OFFSET' by now,
 		 * return it to the caller now.
diff --git a/util_lib/include/elf_info.h b/util_lib/include/elf_info.h
index 1a4debd2d4ba..c328a1b0ecf2 100644
--- a/util_lib/include/elf_info.h
+++ b/util_lib/include/elf_info.h
@@ -29,7 +29,7 @@ int get_pt_load(int idx,
 	unsigned long long *virt_start,
 	unsigned long long *virt_end);
 int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off);
-int read_elf_kcore(int fd);
+int read_elf(int fd);
 int read_elf_vmcore(int fd);
 
 #endif /* ELF_INFO_H */
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
