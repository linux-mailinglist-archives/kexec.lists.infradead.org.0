Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A1B1C7EAD
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:44:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MkR9qVDLCHv3SQKeFhIVU8pyQuqO6QiIH/QPpsRAWlY=; b=Co5B2JkyF2OakJoKGTZ5dSz9oE
	yJSdrYnIGPdkMIkm0KUevM+dgx5LNA85GHrVPwKaDS5TCB2LCrPbEzfXx5SHUfsZmFyAH1vwqFm8u
	V3HfOQZcW2mlGro0dIqgCTvNWMyNcM4ziUfaq4XVD232lbaWLoDUHLxLuE9GQK5dEO4W4hB1k1dLi
	rU8BKMfi8GbrYDFJlPH63NplR7yvEy6n394PUA6OKpZYGg+l5iRAxTZehkF04RcN2LlPOWJnEuaIV
	Oaqg0RsVrkgZxgrvuiuvzDDWHkG+AJGj1MWNMLpVWc7vVKTz0iHgOXEdp8z1hrNM+bbjI3qWVSTh5
	5fFor+Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUe5-00086M-5B; Thu, 07 May 2020 00:44:13 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUdt-0007sb-Io
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:44:06 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bn87092995;
 Thu, 7 May 2020 00:43:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=7FlNkRF1oblAeXIUyymeHAqshs+dkh2quuYtBUHergU=;
 b=kcHW/TPO1YMNUkHh0blDwat1m2OeaHhivZ//2tjB83CvkHLWVfxwAMzKQjxlyklkvESi
 xSqemzMlgECWBv4ppxad67bEfH1xwDDIoxsBgLWFpZ4RPaz7deQs6LQFMr4rGoQNM0HY
 iCRzbXY6UJCYRXPu8Ab20cpqQZv3UBKqrPv2MBDT6rohUz5+JcXi2NTYEgB2aILy3ykj
 OhkqeIxFrE/mglKShKR10Gp2Vdq15HYSME8zuWBCGdtB5uZ0YOuRPCNkK5mcgxXtzDLm
 Gr0aeDT2ATIBEPPK6peQvmiTmlhx09vYA8AMq0GMJ3eapI+0BRIbyrVzyGUHC8OAi/5m NA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30s1gnd8kd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:43:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bm3P131725;
 Thu, 7 May 2020 00:43:06 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 30t1r958s2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:43:06 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470h5NU019964;
 Thu, 7 May 2020 00:43:05 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:43:04 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 14/43] mm: memblock: PKRAM: prevent memblock resize from
 clobbering preserved pages
Date: Wed,  6 May 2020 17:41:40 -0700
Message-Id: <1588812129-8596-15-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=2
 spamscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=2 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174402_046600_491CC371 
X-CRM114-Status: GOOD (  18.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: x86@kernel.org, linux-doc@vger.kernel.org, gustavo@embeddedor.com,
 peterz@infradead.org, kexec@lists.infradead.org, paul.c.lai@intel.com,
 dave.hansen@linux.intel.com, mhocko@kernel.org, lei.l.li@intel.com,
 nivedita@alum.mit.edu, ziqian.lzq@antfin.com, hpa@zytor.com, ardb@kernel.org,
 ashok.raj@intel.com, bhe@redhat.com, corbet@lwn.net, masahiroy@kernel.org,
 rafael.j.wysocki@intel.com, hughd@google.com, willy@infradead.org,
 rppt@linux.ibm.com, mingo@redhat.com, vdavydov.dev@gmail.com,
 ying.huang@intel.com, Thomas.Lendacky@amd.com, kevin.tian@intel.com,
 jroedel@suse.de, keescook@chromium.org, dan.j.williams@intel.com, bp@alien8.de,
 zhiyuan.lv@intel.com, luto@kernel.org, tglx@linutronix.de,
 andriy.shevchenko@linux.intel.com, dima@golovin.in, yang.shi@linux.alibaba.com,
 ndesaulniers@google.com, zhenzhong.duan@oracle.com, guro@fb.com,
 minchan@kernel.org, ebiederm@xmission.com, jason.zeng@intel.com,
 hannes@cmpxchg.org, linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org,
 daniel.kiper@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The size of the memblock reserved array may be increased while preserved
pages are being reserved. When this happens, preserved pages that have
not yet been reserved are at risk for being clobbered when space for a
larger array is allocated.
When called from memblock_double_array(), a wrapper around
memblock_find_in_range() walks the preserved pages pagetable to find
sufficiently sized ranges without preserved pages and passes them to
memblock_find_in_range().

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |  3 +++
 mm/memblock.c         | 15 +++++++++++++--
 mm/pkram.c            | 51 +++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 67 insertions(+), 2 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index edc5d8bef9d3..409022e1472f 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -62,6 +62,9 @@ struct page *pkram_load_page(struct pkram_stream *ps, unsigned long *index,
 ssize_t pkram_write(struct pkram_stream *ps, const void *buf, size_t count);
 size_t pkram_read(struct pkram_stream *ps, void *buf, size_t count);
 
+phys_addr_t pkram_memblock_find_in_range(phys_addr_t start, phys_addr_t end,
+					 phys_addr_t size, phys_addr_t align);
+
 #ifdef CONFIG_PKRAM
 extern unsigned long pkram_reserved_pages;
 void pkram_reserve(void);
diff --git a/mm/memblock.c b/mm/memblock.c
index c79ba6f9920c..69ae883b8d21 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -16,6 +16,7 @@
 #include <linux/kmemleak.h>
 #include <linux/seq_file.h>
 #include <linux/memblock.h>
+#include <linux/pkram.h>
 
 #include <asm/sections.h>
 #include <linux/io.h>
@@ -349,6 +350,16 @@ phys_addr_t __init_memblock memblock_find_in_range(phys_addr_t start,
 	return ret;
 }
 
+phys_addr_t __init_memblock __memblock_find_in_range(phys_addr_t start,
+					phys_addr_t end, phys_addr_t size,
+					phys_addr_t align)
+{
+	if (IS_ENABLED(CONFIG_PKRAM))
+		return pkram_memblock_find_in_range(start, end, size, align);
+	else
+		return memblock_find_in_range(start, end, size, align);
+}
+
 static void __init_memblock memblock_remove_region(struct memblock_type *type, unsigned long r)
 {
 	type->total_size -= type->regions[r].size;
@@ -447,11 +458,11 @@ static int __init_memblock memblock_double_array(struct memblock_type *type,
 		if (type != &memblock.reserved)
 			new_area_start = new_area_size = 0;
 
-		addr = memblock_find_in_range(new_area_start + new_area_size,
+		addr = __memblock_find_in_range(new_area_start + new_area_size,
 						memblock.current_limit,
 						new_alloc_size, PAGE_SIZE);
 		if (!addr && new_area_size)
-			addr = memblock_find_in_range(0,
+			addr = __memblock_find_in_range(0,
 				min(new_area_start, memblock.current_limit),
 				new_alloc_size, PAGE_SIZE);
 
diff --git a/mm/pkram.c b/mm/pkram.c
index dd3c89614010..e49c9bcd3854 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -1238,3 +1238,54 @@ void pkram_free_pgt(void)
 	__free_pages_core(virt_to_page(pkram_pgd), 0);
 	pkram_pgd = NULL;
 }
+
+static int __init_memblock pkram_memblock_find_cb(struct pkram_pg_state *st, unsigned long base, unsigned long size)
+{
+	unsigned long end = base + size;
+	unsigned long addr;
+
+	if (size < st->min_size)
+		return 0;
+
+	addr =  memblock_find_in_range(base, end, st->min_size, PAGE_SIZE);
+	if (!addr)
+		return 0;
+
+	st->retval = addr;
+	return 1;
+}
+
+/*
+ * It may be necessary to allocate a larger reserved memblock array
+ * while populating it with ranges of preserved pages.  To avoid
+ * trampling preserved pages that have not yet been added to the
+ * memblock reserved list this function implements a wrapper around
+ * memblock_find_in_range() that restricts searches to subranges
+ * that do not contain preserved pages.
+ */
+phys_addr_t __init_memblock pkram_memblock_find_in_range(phys_addr_t start,
+					phys_addr_t end, phys_addr_t size,
+					phys_addr_t align)
+{
+	struct pkram_pg_state st = {
+		.range_cb = pkram_memblock_find_cb,
+		.min_addr = start,
+		.max_addr = end,
+		.min_size = PAGE_ALIGN(size),
+		.find_holes = true,
+	};
+
+	if (!pkram_reservation_in_progress)
+		return memblock_find_in_range(start, end, size, align);
+
+	if (!pkram_pgd) {
+		WARN_ONCE(1, "No preserved pages pagetable\n");
+		return memblock_find_in_range(start, end, size, align);
+	}
+
+	WARN_ONCE(memblock_bottom_up(), "PKRAM: bottom up memblock allocation not yet supported\n");
+
+	pkram_walk_pgt_rev(&st, pkram_pgd);
+
+	return st.retval;
+}
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
