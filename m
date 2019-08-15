Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45D4C8E33B
	for <lists+kexec@lfdr.de>; Thu, 15 Aug 2019 05:38:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oIChtNwhavvFC4XPeJZf7p3CYiSpFBYHgNJBXsSLtEo=; b=MHygXhcXyDdC4zpEujiBPhFeFk
	Jc915tmhnHK3ML00nbuLodpzH66dDBiEKgUKZJMYNK226zRsZiYiWMcRyWA3f49pi59FYwEOKGuzf
	gSjyBpC+E/tiVvQ8CxsBRLZm8HpixuDNjn7zDJqlOqlz7zvzGBSuc353Q6OuCVv5p4IdT66kKd4zH
	uLjWM7JnNcpC/J0k5os8+Wbc05uEl45ZIitRlOHICZ1zeGRAADQ6pAKOF7vYIrSS9LdL/DdHaFH85
	cwkfc9Usv9bQCHkwJexOmWQjT0XCpjYu/S8nyCdUeNT+4DEfGS3NMz57G3ubr9eJ/NjOFpZDM2tMb
	GxKBNS9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy6am-0004jD-LV; Thu, 15 Aug 2019 03:38:24 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy6ai-0004hR-Ch
 for kexec@lists.infradead.org; Thu, 15 Aug 2019 03:38:21 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D49ED85541;
 Thu, 15 Aug 2019 03:38:19 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-36.pek2.redhat.com
 [10.72.12.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0EEF4179ED;
 Thu, 15 Aug 2019 03:38:15 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 2/2] Limit the size of vmcore-dmesg.txt to 2G
Date: Thu, 15 Aug 2019 11:37:56 +0800
Message-Id: <20190815033756.15587-3-lijiang@redhat.com>
In-Reply-To: <20190815033756.15587-1-lijiang@redhat.com>
References: <20190815033756.15587-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Thu, 15 Aug 2019 03:38:19 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_203820_458944_DD588F58 
X-CRM114-Status: GOOD (  12.75  )
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

With some corrupted vmcore files, the vmcore-dmesg.txt file may grow
forever till the kdump disk becomes full, and also probably causes
the disk error messages as follow:
...
sd 0:0:0:0: [sda] tag#6 FAILED Result: hostbyte=DID_BAD_TARGET driverbyte=DRIVER_OK
sd 0:0:0:0: [sda] tag#6 CDB: Read(10) 28 00 08 06 4c 98 00 00 08 00
blk_update_request: I/O error, dev sda, sector 134630552
sd 0:0:0:0: [sda] tag#7 FAILED Result: hostbyte=DID_BAD_TARGET driverbyte=DRIVER_OK
sd 0:0:0:0: [sda] tag#7 CDB: Read(10) 28 00 08 06 4c 98 00 00 08 00
blk_update_request: I/O error, dev sda, sector 134630552
...

If vmcore-dmesg.txt occupies the whole disk, the vmcore can not be
saved, this is also a problem.

Lets limit the size of vmcore-dmesg.txt to avoid such problems.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 vmcore-dmesg/vmcore-dmesg.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/vmcore-dmesg/vmcore-dmesg.c b/vmcore-dmesg/vmcore-dmesg.c
index ff0d540c9130..5ada3566972b 100644
--- a/vmcore-dmesg/vmcore-dmesg.c
+++ b/vmcore-dmesg/vmcore-dmesg.c
@@ -1,8 +1,18 @@
 #include <elf_info.h>
 
+/* stole this macro from kernel printk.c */
+#define LOG_BUF_LEN_MAX (uint32_t)(1 << 31)
+
 static void write_to_stdout(char *buf, unsigned int nr)
 {
 	ssize_t ret;
+	static uint32_t n_bytes = 0;
+
+	n_bytes += nr;
+	if (n_bytes > LOG_BUF_LEN_MAX) {
+		fprintf(stderr, "The vmcore-dmesg.txt over 2G in size is not supported.\n");
+		exit(55);
+	}
 
 	ret = write(STDOUT_FILENO, buf, nr);
 	if (ret != nr) {
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
