Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AAF1C7FE6
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 04:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bK6FCh4XAc8VcabrX5Iw/o7l8Qewlel5e15vTKOvg5Q=; b=p/Wn7DOWQogw8Xzi7URmMl8FSw
	QYhVFG1mvIkgn/AupyIffHgxBcYjB7oFg/jSy6TvJidsLy6mTnBNOWUEGLMl0rv62hfi0TnAsQDZJ
	DaOyhM8WRFlgeQ543zIqQaEyQOJ+O0UKhIeB+mnQHLPUTRrzy16JgkAf4kx5mn6aggx5mtL0vX3vf
	JtxMMPHlFF4Nk+XCTog7i8nFl9X0tEthUH220Sto1BcNONdsN9bq+qSdFr38OXgFIR9vgYlTssmbe
	EdQTzY0LaCtEpmbdckcEbqCMJ/skuxwNj7e7j/myZUxFMQNS861jATIw1w7JF62saLrXb3NMy/Not
	1Q6vwPmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWVqA-0002W7-6s; Thu, 07 May 2020 02:00:46 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUgr-0004no-C8
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:47:12 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bff3064527;
 Thu, 7 May 2020 00:46:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=lgTPbgWuooIASoan6azS78lSy4rZcz4p1fF1/JwE5D8=;
 b=eDBZ91s7uE20PGEknQieoApNYK/X77uRpkvgWH4Ntib2svHdQgiuVmaJOv/DQs9lsO5n
 Twu1RFkZRs4PyGgLJQAG5PbOyCndVv6DYU3uXRbClF2JqmHgmO3VXeOGA9djveUI7PRF
 zWqffMx29K81BhOHkusXw6BhLtvyWnbGl3cqATmwXxDdiiV0w8G+DMJWe2IeW7RRRhSZ
 t87VaSvZf3/XtFgn3AATvs0EzrZwQa3MGceKqVcDL/6MzWCdRvPsW9EJwqks/OlsamJG
 GO6ldoFj7hHx9C2S6ZgaXzJ0HpHph4rTLbT/IQjT/xY7kkJOLnQKfwtNX6bhlYU+vAYU hg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 30s09rdfh3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:46:20 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470ausi170938;
 Thu, 7 May 2020 00:44:19 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30us7p2p25-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:19 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470iGkU026090;
 Thu, 7 May 2020 00:44:16 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:16 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 29/43] memblock: PKRAM: mark memblocks that contain preserved
 pages
Date: Wed,  6 May 2020 17:41:55 -0700
Message-Id: <1588812129-8596-30-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=2
 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 suspectscore=2
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174705_804187_D67E835A 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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

To support deferred initialization of page structs for preserved pages,
separate memblocks containing preserved pages by setting a new flag
when adding them to the memblock reserved list.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/memblock.h | 7 +++++++
 mm/memblock.c            | 8 +++++++-
 mm/pkram.c               | 4 ++--
 3 files changed, 16 insertions(+), 3 deletions(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 6bc37a731d27..27ab2b30ae1d 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -37,6 +37,7 @@ enum memblock_flags {
 	MEMBLOCK_HOTPLUG	= 0x1,	/* hotpluggable region */
 	MEMBLOCK_MIRROR		= 0x2,	/* mirrored region */
 	MEMBLOCK_NOMAP		= 0x4,	/* don't add to kernel direct mapping */
+	MEMBLOCK_PRESERVED	= 0x8,	/* preserved pages region */
 };
 
 /**
@@ -111,6 +112,7 @@ void memblock_allow_resize(void);
 int memblock_add_node(phys_addr_t base, phys_addr_t size, int nid);
 int memblock_add(phys_addr_t base, phys_addr_t size);
 int memblock_remove(phys_addr_t base, phys_addr_t size);
+int __memblock_reserve(phys_addr_t base, phys_addr_t size, enum memblock_flags flags);
 int memblock_free(phys_addr_t base, phys_addr_t size);
 int memblock_reserve(phys_addr_t base, phys_addr_t size);
 #ifdef CONFIG_HAVE_MEMBLOCK_PHYS_MAP
@@ -215,6 +217,11 @@ static inline bool memblock_is_nomap(struct memblock_region *m)
 	return m->flags & MEMBLOCK_NOMAP;
 }
 
+static inline bool memblock_is_preserved(struct memblock_region *m)
+{
+	return m->flags & MEMBLOCK_PRESERVED;
+}
+
 #ifdef CONFIG_HAVE_MEMBLOCK_NODE_MAP
 int memblock_search_pfn_nid(unsigned long pfn, unsigned long *start_pfn,
 			    unsigned long  *end_pfn);
diff --git a/mm/memblock.c b/mm/memblock.c
index 69ae883b8d21..1a9a2055ed11 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -831,6 +831,12 @@ int __init_memblock memblock_free(phys_addr_t base, phys_addr_t size)
 	return memblock_remove_range(&memblock.reserved, base, size);
 }
 
+int __init_memblock __memblock_reserve(phys_addr_t base, phys_addr_t size,
+					enum memblock_flags flags)
+{
+	return memblock_add_range(&memblock.reserved, base, size, MAX_NUMNODES, flags);
+}
+
 int __init_memblock memblock_reserve(phys_addr_t base, phys_addr_t size)
 {
 	phys_addr_t end = base + size - 1;
@@ -838,7 +844,7 @@ int __init_memblock memblock_reserve(phys_addr_t base, phys_addr_t size)
 	memblock_dbg("%s: [%pa-%pa] %pS\n", __func__,
 		     &base, &end, (void *)_RET_IP_);
 
-	return memblock_add_range(&memblock.reserved, base, size, MAX_NUMNODES, 0);
+	return __memblock_reserve(base, size, 0);
 }
 
 #ifdef CONFIG_HAVE_MEMBLOCK_PHYS_MAP
diff --git a/mm/pkram.c b/mm/pkram.c
index 97a7dd0a5b7d..b83d31740619 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -170,7 +170,7 @@ static int __init pkram_reserve_page(unsigned long pfn)
 	size = PAGE_SIZE;
 
 	if (memblock_is_region_reserved(base, size) ||
-	    memblock_reserve(base, size) < 0)
+	    __memblock_reserve(base, size, MEMBLOCK_PRESERVED) < 0)
 		err = -EBUSY;
 
 	if (!err)
@@ -1446,7 +1446,7 @@ static void pkram_remove_identity_map(struct page *page)
 static int __init pkram_reserve_range_cb(struct pkram_pg_state *st, unsigned long base, unsigned long size)
 {
 	if (memblock_is_region_reserved(base, size) ||
-	    memblock_reserve(base, size) < 0) {
+	    __memblock_reserve(base, size, MEMBLOCK_PRESERVED) < 0) {
 		pr_warn("PKRAM: reservations exist in [0x%lx,0x%lx]\n", base, base + size - 1);
 		/*
 		 * Set a lower bound so another walk can undo the earlier,
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
