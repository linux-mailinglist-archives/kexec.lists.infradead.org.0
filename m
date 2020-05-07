Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AD61C7ED0
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ELLTRKvs7ilNuNyKR3yEN8SVw3agGjfnBZkcHz+Besc=; b=gidsQg7ypndVyt7dXNL4obx+H3
	bYB+3CJh+rpcgp3KEAx7MjWfgI0JCsw9Itw3xZbPKxBN6ZcrNxKfgnnFItI1j96fAm6wFxUmRuVf/
	2Hbxim0tsP8ChyUCzgAGJ/CytCuAB2YLR9VKOFipoKIEFQ0ZJZXTRo/Ezit9NPs1ujE1BcDFuUtXN
	38GI6KFv87rSVtJLY07sntoQSSZquC30HKw1ru8yVzOMJxZXjxq0kLsFoI8iiW4s6eiy4x9Ro2opw
	5oloHrTCHubB+GkdTX08GPcnOnTNwGa7I53XVgewptGHO1mqX3R95KVzrGxJXU4d+fN+SEBQDdNV/
	fZfmthcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUfI-0003d3-TI; Thu, 07 May 2020 00:45:28 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUf0-0001sS-Ms
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:45:25 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470cFcS093150;
 Thu, 7 May 2020 00:44:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=DoQrZzU/UMsJZ2IxoUJb14SQbVfDKKaxGdtOnUPWmyk=;
 b=C4+OVNvvwb1kwbmns15EmlXY9rzfDHIB9UetOGbMnxHIDD72iydl9DK8TyWHsrV7hoON
 NlGymJDXMCb7mQYs5tvh0xbxx0IXo4j2n+4Qmtnparvw1yWqiDvgBC87b9arOKz2nX8z
 +N0U/G7DJFx0rfYkFpXKeyDP8lAXVViydT8IbMhZf/8QECxh91r0DRWrkb+oO+N5S4gI
 Te2L4bVGCgMM+hYZTvmkRd43auwozy6qVNCxC4L8nmQrOnPXoEh0+PfFPiCSQCpfeZFZ
 8/h7m8B9MtugkDRYI9OOxt/s0X5ccXnLzXwGbYy1cbl0Lg0MkIH9L7LJDe2+nrsl662C GQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30s1gnd8q2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bonI131815;
 Thu, 7 May 2020 00:44:21 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 30t1r95c43-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:21 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470iJvK020415;
 Thu, 7 May 2020 00:44:19 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:19 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 30/43] memblock: add for_each_reserved_mem_range()
Date: Wed,  6 May 2020 17:41:56 -0700
Message-Id: <1588812129-8596-31-git-send-email-anthony.yznaga@oracle.com>
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
X-CRM114-CacheID: sfid-20200506_174510_875136_C0BB1C0D 
X-CRM114-Status: GOOD (  17.65  )
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

To support deferred initialization of page structs for preserved
pages, add an iterator of the memblock reserved list that can select or
exclude ranges based on memblock flags.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/memblock.h | 10 ++++++++++
 mm/memblock.c            | 51 +++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 60 insertions(+), 1 deletion(-)

diff --git a/include/linux/memblock.h b/include/linux/memblock.h
index 27ab2b30ae1d..f348ebb750c9 100644
--- a/include/linux/memblock.h
+++ b/include/linux/memblock.h
@@ -145,6 +145,11 @@ void __next_mem_range_rev(u64 *idx, int nid, enum memblock_flags flags,
 void __next_reserved_mem_region(u64 *idx, phys_addr_t *out_start,
 				phys_addr_t *out_end);
 
+void __next_reserved_mem_range(u64 *idx, enum memblock_flags flags,
+			       enum memblock_flags exclflags,
+			       phys_addr_t *out_start, phys_addr_t *out_end,
+			       int *out_nid);
+
 void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 
 /**
@@ -202,6 +207,11 @@ void __memblock_free_late(phys_addr_t base, phys_addr_t size);
 	     i != (u64)ULLONG_MAX;					\
 	     __next_reserved_mem_region(&i, p_start, p_end))
 
+#define for_each_reserved_mem_range(i, flags, exclflags, p_start, p_end, p_nid)\
+	for (i = 0UL, __next_reserved_mem_range(&i, flags, exclflags, p_start, p_end, p_nid);	\
+	     i != (u64)ULLONG_MAX;					\
+	     __next_reserved_mem_range(&i, flags, exclflags, p_start, p_end, p_nid))
+
 static inline bool memblock_is_hotpluggable(struct memblock_region *m)
 {
 	return m->flags & MEMBLOCK_HOTPLUG;
diff --git a/mm/memblock.c b/mm/memblock.c
index 1a9a2055ed11..33597f352dc0 100644
--- a/mm/memblock.c
+++ b/mm/memblock.c
@@ -987,6 +987,55 @@ void __init_memblock __next_reserved_mem_region(u64 *idx,
 	*idx = ULLONG_MAX;
 }
 
+/**
+ * __next_reserved_mem_range - next function for for_each_reserved_range()
+ * @idx: pointer to u64 loop variable
+ * @flags: pick blocks based on memory attributes
+ * @exclflags: exclude blocks based on memory attributes
+ * @out_start: ptr to phys_addr_t for start address of the range, can be %NULL
+ * @out_end: ptr to phys_addr_t for end address of the range, can be %NULL
+ * @out_nid: ptr to int for nid of the range, can be %NULL
+ *
+ * Iterate over all reserved memory ranges.
+ */
+void __init_memblock __next_reserved_mem_range(u64 *idx,
+					   enum memblock_flags flags,
+					   enum memblock_flags exclflags,
+					   phys_addr_t *out_start,
+					   phys_addr_t *out_end, int *out_nid)
+{
+	struct memblock_type *type = &memblock.reserved;
+	int _idx = *idx;
+
+	for (; _idx < type->cnt; _idx++) {
+		struct memblock_region *r = &type->regions[_idx];
+		phys_addr_t base = r->base;
+		phys_addr_t size = r->size;
+
+		/* skip preserved pages */
+		if ((exclflags & MEMBLOCK_PRESERVED) && memblock_is_preserved(r))
+			continue;
+
+		/* skip non-preserved pages */
+		if ((flags & MEMBLOCK_PRESERVED) && !memblock_is_preserved(r))
+			continue;
+
+		if (out_start)
+			*out_start = base;
+		if (out_end)
+			*out_end = base + size - 1;
+		if (out_nid)
+			*out_nid = r->nid;
+
+		_idx++;
+		*idx = (u64)_idx;
+		return;
+	}
+
+	/* signal end of iteration */
+	*idx = ULLONG_MAX;
+}
+
 static bool should_skip_region(struct memblock_region *m, int nid, int flags)
 {
 	int m_nid = memblock_get_region_node(m);
@@ -1011,7 +1060,7 @@ static bool should_skip_region(struct memblock_region *m, int nid, int flags)
 }
 
 /**
- * __next_mem_range - next function for for_each_free_mem_range() etc.
+ * __next__mem_range - next function for for_each_free_mem_range() etc.
  * @idx: pointer to u64 loop variable
  * @nid: node selector, %NUMA_NO_NODE for all nodes
  * @flags: pick from blocks based on memory attributes
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
