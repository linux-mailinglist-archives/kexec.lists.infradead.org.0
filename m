Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D1E9AEAF
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 14:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HbxDr4sLu4bu2x6qLd9HmnEkkb5Bj12t9PBtDatY/vc=; b=KMoeppQn6CL6si0cIHDK2tJyr1
	+MTWlCkXYFpitMW+On5oVkhWlhExe2Zl9Hw6S8gCP2QLoKQAX6hM4jZq32XlYLA6CkkFrkfVsc6iz
	PI/lx5dCc71p9648nsbdM/ZxdsU/IdRRiVFtM0ngaVV5NIitgW4CryCUndq+2YTuuPF2IdDsUQjjr
	0zxtC9omepWEehhaV2V/YVk8DZ8WNuAaS/9qaoKWPTL0AsyGGU/HXN0q5IvQHOHl9jXjUizeMQE98
	uf8MkeKJ6dCS1f7i+Wzu5JGpuLEG0waphAjVXLBkzPzwONpxiHdslLZ/398aVsxnn5OSeA1QKbtAF
	uO/btP1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18Ki-0007p8-2b; Fri, 23 Aug 2019 12:06:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18Ke-0007oQ-Gf
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 12:06:17 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3F8A1796FF;
 Fri, 23 Aug 2019 12:06:16 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-117.pek2.redhat.com
 [10.72.12.117])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4FB1665EB5;
 Fri, 23 Aug 2019 12:06:06 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 2/4 v2] Fix an error definition about the variable 'fname'
Date: Fri, 23 Aug 2019 20:05:37 +0800
Message-Id: <20190823120539.18330-3-lijiang@redhat.com>
In-Reply-To: <20190823120539.18330-1-lijiang@redhat.com>
References: <20190823120539.18330-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Fri, 23 Aug 2019 12:06:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_050616_572608_FEBAE2E3 
X-CRM114-Status: GOOD (  12.76  )
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

The variable 'fname' is mistakenly defined two twice, the first definition
is in the vmcore-dmesg.c, and the second definition is in the elf_info.c.
That is confused and incorrect although it's a static type, because the
value of variable 'fname' is not assigned(set) in elf_info.c. Anyway, its
value will be always 'null' when printing an error information.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 util_lib/elf_info.c         | 2 +-
 vmcore-dmesg/vmcore-dmesg.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
index d9397ecd8626..5d0efaafab53 100644
--- a/util_lib/elf_info.c
+++ b/util_lib/elf_info.c
@@ -20,7 +20,7 @@
 /* The 32bit and 64bit note headers make it clear we don't care */
 typedef Elf32_Nhdr Elf_Nhdr;
 
-static const char *fname;
+const char *fname;
 static Elf64_Ehdr ehdr;
 static Elf64_Phdr *phdr;
 static int num_pt_loads;
diff --git a/vmcore-dmesg/vmcore-dmesg.c b/vmcore-dmesg/vmcore-dmesg.c
index 7a386b380291..bebc348a657e 100644
--- a/vmcore-dmesg/vmcore-dmesg.c
+++ b/vmcore-dmesg/vmcore-dmesg.c
@@ -3,7 +3,7 @@
 /* The 32bit and 64bit note headers make it clear we don't care */
 typedef Elf32_Nhdr Elf_Nhdr;
 
-static const char *fname;
+extern const char *fname;
 
 int main(int argc, char **argv)
 {
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
