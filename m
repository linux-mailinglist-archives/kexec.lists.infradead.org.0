Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EC27E4BD
	for <lists+kexec@lfdr.de>; Thu,  1 Aug 2019 23:28:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BRoYhP3lZAqQ1Z69FNVH26Z94uBQIb5B7/9M61bcOCM=; b=QHF
	942W+GBtOpymGkbxRjxIVMQvVq8SQMKCCBidOVMMzVElnx2R0pt251mjAxgtc3edYsxAHQwGjG8V3
	seb5ad9cCmL7R24m9ox3sYszIUTA3yI+kzxSG/9IYlIZ0r0ob7C3HTqlQVlUlYlyLMNDDirJFSd77
	d16jlkmT3mkpa2IPlmGF/WJKvGTiy6ZDrdCvE12RrZh+7APqJNawQ0qm5t1Lvkufqf7VrBBfhdJPn
	tStlIWCZNPVR3o7PQ2ltoeY8IY+7+cNa/JhtTgYb+F0sSuY3AKEpY+De9cX5gw+akffYLGvnvcS6H
	/i+d5CTPPX8e5mXEQv67q2NImguKdcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htIcb-0006zC-Bf; Thu, 01 Aug 2019 21:28:25 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htIcW-0006yj-Uq
 for kexec@lists.infradead.org; Thu, 01 Aug 2019 21:28:22 +0000
Received: by mail-io1-xd44.google.com with SMTP id k20so147594843ios.10
 for <kexec@lists.infradead.org>; Thu, 01 Aug 2019 14:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=delphix.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=8FNA0qpVrYhtL9JdX97K97YA1XeOAEW9NW5Srfu4ATY=;
 b=VyqSG/2QLTtgI9tcsLe04gM9Ffhq/QG5XHXhHeAbwACUHeX+KD/3AaTaxBHRrq7N/K
 7+g6gdr3gQnpyF6Jwv3PD2Fn5TF7JItrrfDRbgZtpogbDobEJiF53WCdoDmEaSr24OZd
 /P0wZrOBLxHHKmp7d0t6hsWKqrN39VYzTl3Qk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8FNA0qpVrYhtL9JdX97K97YA1XeOAEW9NW5Srfu4ATY=;
 b=bP1myFcSaS7ry4OYb3jFCShaXilYY5g7dKs6uuU8T2SbX45j2N5MB5PHQQwxxwnUF/
 De3vZhNA2vTr+WObyw83QGSttZXhUyD9xrsAnmpkJv9MPDekKukmqQ07NWQfzuMOPorm
 m2X8Sf5NyfG/aPYBD0Zoh/Nvq8Di1ljW7AgRZw1Xc5I/Wvp9ctTTaGolLEuSLkHJaOAv
 uaOSfH0BVOhP46M809ONsaJaWQpTp2Wj5RicXi1io1W+VJAptT2ezluRYs5rjbLw+P/Q
 Q7GpDWLxq27qeDNSewjxDMhdClGgT7P1NrTIF82k3QJfLZsyB4LLtDxCYnUPhKe2ZAQY
 8CKQ==
X-Gm-Message-State: APjAAAVz0DwQMbu3rOLln1OeXiFWtwkFMqMl/mYyuPPjiT/jVqrIEa90
 +idDbP4xuRMip1oAUWyKvL76ThoZ9+4=
X-Google-Smtp-Source: APXvYqwlYKWJfpk01KF/TYXZsg6GIPfn+j7rDqWJrVznZ3Jju+65XmsY5VbDgSoVYAaVAX2gCEc75g==
X-Received: by 2002:a5d:9550:: with SMTP id a16mr82707703ios.106.1564694897187; 
 Thu, 01 Aug 2019 14:28:17 -0700 (PDT)
Received: from localhost.localdomain ([209.201.79.49])
 by smtp.gmail.com with ESMTPSA id c11sm40663184ioi.72.2019.08.01.14.28.16
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 14:28:16 -0700 (PDT)
From: =?UTF-8?q?Don=20Brady=C2=A0?= <don.brady@delphix.com>
To: kexec@lists.infradead.org
Subject: [RFC PATCH] makedumpfile: exclude ZFS file cache pages
Date: Thu,  1 Aug 2019 15:26:17 -0600
Message-Id: <20190801212617.9698-1-don.brady@delphix.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_142820_999757_DFB89480 
X-CRM114-Status: GOOD (  13.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Don Brady <don.brady@delphix.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Don Brady <don.brady@delphix.com>

ZFS caches pages for file data in its Adaptive Replacement Cache (ARC).
This cache is separate from the VFS page cache.  The amount of data
cached can be significant and it would be ideal to exclude it from the
crashdump file.  ZFS can tag these pages so they are easily identifiable
from within makedumpfile.

ref https://github.com/zfsonlinux/zfs/pull/8899/files

Below is a suggested patch that can work in tandem with the above ZFS
changes to exclude the ZFS ARC file data pages from a dump file.

Signed-off-by: Don Brady <don.brady@delphix.com>
---
 makedumpfile.c | 36 ++++++++++++++++++++++++++++++++++--
 1 file changed, 34 insertions(+), 2 deletions(-)

diff --git a/makedumpfile.c b/makedumpfile.c
index d76a435..b760934 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -85,6 +85,7 @@ mdf_pfn_t pfn_zero;
 mdf_pfn_t pfn_memhole;
 mdf_pfn_t pfn_cache;
 mdf_pfn_t pfn_cache_private;
+mdf_pfn_t pfn_zfs_arc_pages;
 mdf_pfn_t pfn_user;
 mdf_pfn_t pfn_free;
 mdf_pfn_t pfn_hwpoison;
@@ -282,6 +283,20 @@ is_cache_page(unsigned long flags)
 	return FALSE;
 }
 
+#define	ZFS_ABD_FILE_CACHE	0x2F5ABDF11ECAC4E
+
+static int
+is_zfs_cache_page(unsigned long flags, unsigned long private)
+{
+	/*
+	 * ZFS cached file data resides in pages with a private tag
+	 */
+	if (isPrivate(flags) && private == ZFS_ABD_FILE_CACHE)
+		return TRUE;
+
+	return FALSE;
+}
+
 static inline unsigned long
 calculate_len_buf_out(long page_size)
 {
@@ -6048,6 +6063,13 @@ __exclude_unnecessary_pages(unsigned long mem_map,
 			else
 				pfn_counter = &pfn_cache;
 		}
+		/*
+		 * Exclude ZFS ARC pages
+		 */
+		else if ((info->dump_level & DL_EXCLUDE_CACHE_PRI)
+		    && is_zfs_cache_page(flags, private)) {
+			pfn_counter = &pfn_zfs_arc_pages;
+		}
 		/*
 		 * Exclude the data page of the user process.
 		 *  - anonymous pages
@@ -7551,6 +7573,7 @@ write_elf_pages_cyclic(struct cache_data *cd_header, struct cache_data *cd_page)
 	if (info->flag_cyclic) {
 		pfn_zero = pfn_cache = pfn_cache_private = 0;
 		pfn_user = pfn_free = pfn_hwpoison = pfn_offline = 0;
+		pfn_zfs_arc_pages = 0;
 		pfn_memhole = info->max_mapnr;
 	}
 
@@ -8833,6 +8856,7 @@ write_kdump_pages_and_bitmap_cyclic(struct cache_data *cd_header, struct cache_d
 		 */
 		pfn_zero = pfn_cache = pfn_cache_private = 0;
 		pfn_user = pfn_free = pfn_hwpoison = pfn_offline = 0;
+		pfn_zfs_arc_pages = 0;
 		pfn_memhole = info->max_mapnr;
 
 		/*
@@ -9777,7 +9801,8 @@ print_report(void)
 	pfn_original = info->max_mapnr - pfn_memhole;
 
 	pfn_excluded = pfn_zero + pfn_cache + pfn_cache_private
-	    + pfn_user + pfn_free + pfn_hwpoison + pfn_offline;
+	    + pfn_user + pfn_free + pfn_hwpoison + pfn_offline
+	    + pfn_zfs_arc_pages;
 	shrinking = (pfn_original - pfn_excluded) * 100;
 	shrinking = shrinking / pfn_original;
 
@@ -9788,6 +9813,9 @@ print_report(void)
 	REPORT_MSG("    Non-private cache pages : 0x%016llx\n", pfn_cache);
 	REPORT_MSG("    Private cache pages     : 0x%016llx\n",
 	    pfn_cache_private);
+	if (pfn_zfs_arc_pages != 0)
+		REPORT_MSG("    ZFS ARC file data pages : 0x%016llx\n",
+		    pfn_zfs_arc_pages);
 	REPORT_MSG("    User process data pages : 0x%016llx\n", pfn_user);
 	REPORT_MSG("    Free pages              : 0x%016llx\n", pfn_free);
 	REPORT_MSG("    Hwpoison pages          : 0x%016llx\n", pfn_hwpoison);
@@ -9819,7 +9847,8 @@ print_mem_usage(void)
 	pfn_original = info->max_mapnr - pfn_memhole;
 
 	pfn_excluded = pfn_zero + pfn_cache + pfn_cache_private
-	    + pfn_user + pfn_free + pfn_hwpoison + pfn_offline;
+	    + pfn_user + pfn_free + pfn_hwpoison + pfn_offline
+	    + pfn_zfs_arc_pages;
 	shrinking = (pfn_original - pfn_excluded) * 100;
 	shrinking = shrinking / pfn_original;
 	total_size = info->page_size * pfn_original;
@@ -9833,6 +9862,9 @@ print_mem_usage(void)
 	    pfn_cache);
 	MSG("PRI_CACHE	%-16llu	yes		Cache pages with private flag\n",
 	    pfn_cache_private);
+	if (pfn_zfs_arc_pages != 0)
+		MSG("ZFS_CACHE	%-16llu	yes		ZFS ARC data pages\n",
+		    pfn_zfs_arc_pages);
 	MSG("USER		%-16llu	yes		User process pages\n", pfn_user);
 	MSG("FREE		%-16llu	yes		Free pages\n", pfn_free);
 	MSG("KERN_DATA	%-16llu	no		Dumpable kernel data \n",
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
