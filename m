Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EB81C7ED7
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2hWDRvvmF9MsBwYDkEaJVG2DsSw0Rfgb6ZRYfRTap6o=; b=dNCjlhH2dHkxPaD59O7nGczKAv
	l1RCREPGC+eLI7GDZr4j95vhFvjqkDT6dmgFOXmviNVp+cCYlYcOhHI93i8vPTDDjrozH2F+w2qId
	kehh+tkAb9yQQjfW0WZc4+JA0OPCzU+PgWP9HAp2OOPAMlEAQX5xal7nRM23GfETZPJzG9bdD4KJP
	MS3kBcKVYNIf8+v4JZerDlBa3u1nvEN+pGgg2AZKZ1JDOiTPKyLGVhoHp95gFLbVnt/5nS6ds4iCI
	0dKNjoRJqU62sK8gdZkjnXhInJy0//E35RkfIcX2XwYWQgbwjEjzPxWG1co0zQki8KNVMcThXeC8i
	BIjuNGAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUfe-0003uY-L6; Thu, 07 May 2020 00:45:50 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfJ-0003eE-5s
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:45:33 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470d0Rh076188;
 Thu, 7 May 2020 00:44:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=f+HGLsLngPlAifDSO//pUsSOr/CSejc37nW9hYK4Qnc=;
 b=z0I83G489kwqDnyZRxNRtWp9rtxWw7wN408iq27oUAdeZsReLpruWyziVHztS77bwNn6
 x4VzjF0+NjhFtXQj7HgxodLRuPF/MU+RRfM9sfl3x9rMUUrsBdX22KNaFVQkYvR4gb0G
 GIjDZSvY41UDl8EgddIeJnvfziKYGA2CqzFNcdYx9zoSVRhTJwRy5n2uX5d47aRqOrk+
 1BeJQ/DCmF1Ob90s3tFwY/LSrv38CU1FjPItSL993Dk2IvBm7qocagzg7fQ24s7z6obz
 EbD4dw7gn8tsfkOOTFjypce7GoaQE0XDekxtlI9ypFBbwZbeY8Pw1s872vI9ObIqDmab DQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 30s09rdfc3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:36 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470anji170838;
 Thu, 7 May 2020 00:42:36 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30us7p2kmn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:35 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470gWjC025345;
 Thu, 7 May 2020 00:42:32 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:32 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 04/43] mm: PKRAM: implement page stream operations
Date: Wed,  6 May 2020 17:41:30 -0700
Message-Id: <1588812129-8596-5-git-send-email-anthony.yznaga@oracle.com>
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
X-CRM114-CacheID: sfid-20200506_174529_332015_552BB729 
X-CRM114-Status: GOOD (  25.53  )
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

Using the pkram_save_page() function, one can populate PKRAM objects with
memory pages which can later be loaded using the pkram_load_page()
function. Saving a memory page to PKRAM is accomplished by recording
its pfn and incrementing its refcount so that it will not be freed after
the last user puts it.

Originally-by: Vladimir Davydov <vdavydov.dev@gmail.com>
Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |   5 ++
 mm/pkram.c            | 219 +++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 221 insertions(+), 3 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index fabde2cd8203..f338d1c2aeb6 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -12,6 +12,11 @@ struct pkram_stream {
 	gfp_t gfp_mask;
 	struct pkram_node *node;
 	struct pkram_obj *obj;
+
+	struct pkram_link *link;		/* current link */
+	unsigned int entry_idx;		/* next entry in link */
+
+	unsigned long next_index;
 };
 
 #define PKRAM_NAME_MAX		256	/* including nul */
diff --git a/mm/pkram.c b/mm/pkram.c
index 4934ffd8b019..ab3053ca3539 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/err.h>
 #include <linux/gfp.h>
+#include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
 #include <linux/mm.h>
@@ -10,8 +11,38 @@
 #include <linux/string.h>
 #include <linux/types.h>
 
+#include "internal.h"
+
+
+/*
+ * Represents a reference to a data page saved to PKRAM.
+ */
+typedef __u64 pkram_entry_t;
+
+#define PKRAM_ENTRY_FLAGS_SHIFT	0x5
+#define PKRAM_ENTRY_FLAGS_MASK	0x7f
+
+/*
+ * Keeps references to data pages saved to PKRAM.
+ * The structure occupies a memory page.
+ */
+struct pkram_link {
+	__u64	link_pfn;	/* points to the next link of the object */
+	__u64	index;		/* mapping index of first pkram_entry_t */
+
+	/*
+	 * the array occupies the rest of the link page; if the link is not
+	 * full, the rest of the array must be filled with zeros
+	 */
+	pkram_entry_t entry[0];
+};
+
+#define PKRAM_LINK_ENTRIES_MAX \
+	((PAGE_SIZE-sizeof(struct pkram_link))/sizeof(pkram_entry_t))
+
 struct pkram_obj {
-	__u64   obj_pfn;	/* points to the next object in the list */
+	__u64	link_pfn;	/* points to the first link of the object */
+	__u64	obj_pfn;	/* points to the next object in the list */
 };
 
 /*
@@ -19,6 +50,10 @@ struct pkram_obj {
  * independently of each other. The nodes are identified by unique name
  * strings.
  *
+ * References to data pages saved to a preserved memory node are kept in a
+ * singly-linked list of PKRAM link structures (see above), the node has a
+ * pointer to the head of.
+ *
  * The structure occupies a memory page.
  */
 struct pkram_node {
@@ -68,6 +103,37 @@ static struct pkram_node *pkram_find_node(const char *name)
 	return NULL;
 }
 
+static void pkram_truncate_link(struct pkram_link *link)
+{
+	struct page *page;
+	pkram_entry_t p;
+	int i;
+
+	for (i = 0; i < PKRAM_LINK_ENTRIES_MAX; i++) {
+		p = link->entry[i];
+		if (!p)
+			continue;
+		page = pfn_to_page(PHYS_PFN(p));
+		put_page(page);
+	}
+}
+
+static void pkram_truncate_obj(struct pkram_obj *obj)
+{
+	unsigned long link_pfn;
+	struct pkram_link *link;
+
+	link_pfn = obj->link_pfn;
+	while (link_pfn) {
+		link = pfn_to_kaddr(link_pfn);
+		pkram_truncate_link(link);
+		link_pfn = link->link_pfn;
+		pkram_free_page(link);
+		cond_resched();
+	}
+	obj->link_pfn = 0;
+}
+
 static void pkram_truncate_node(struct pkram_node *node)
 {
 	unsigned long obj_pfn;
@@ -76,6 +142,7 @@ static void pkram_truncate_node(struct pkram_node *node)
 	obj_pfn = node->obj_pfn;
 	while (obj_pfn) {
 		obj = pfn_to_kaddr(obj_pfn);
+		pkram_truncate_obj(obj);
 		obj_pfn = obj->obj_pfn;
 		pkram_free_page(obj);
 		cond_resched();
@@ -83,6 +150,26 @@ static void pkram_truncate_node(struct pkram_node *node)
 	node->obj_pfn = 0;
 }
 
+static void pkram_add_link(struct pkram_link *link, struct pkram_obj *obj)
+{
+	link->link_pfn = obj->link_pfn;
+	obj->link_pfn = page_to_pfn(virt_to_page(link));
+}
+
+static struct pkram_link *pkram_remove_link(struct pkram_obj *obj)
+{
+	struct pkram_link *current_link;
+
+	if (!obj->link_pfn)
+		return NULL;
+
+	current_link = pfn_to_kaddr(obj->link_pfn);
+	obj->link_pfn = current_link->link_pfn;
+	current_link->link_pfn = 0;
+
+	return current_link;
+}
+
 static void pkram_stream_init(struct pkram_stream *ps,
 			     struct pkram_node *node, gfp_t gfp_mask)
 {
@@ -94,6 +181,9 @@ static void pkram_stream_init(struct pkram_stream *ps,
 static void pkram_stream_init_obj(struct pkram_stream *ps, struct pkram_obj *obj)
 {
 	ps->obj = obj;
+	ps->link = NULL;
+	ps->entry_idx = 0;
+	ps->next_index = 0;
 }
 
 /**
@@ -295,9 +385,28 @@ void pkram_finish_load_obj(struct pkram_stream *ps)
 {
 	struct pkram_node *node = ps->node;
 	struct pkram_obj *obj = ps->obj;
+	struct pkram_link *link = ps->link;
 
 	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_LOAD);
 
+	/*
+	 * If link is not null, then loading stopped within a pkram_link
+	 * unexpectedly.
+	 */
+	if (link) {
+		unsigned long link_pfn;
+
+		link_pfn = page_to_pfn(virt_to_page(link));
+		while (link_pfn) {
+			link = pfn_to_kaddr(link_pfn);
+			pkram_truncate_link(link);
+			link_pfn = link->link_pfn;
+			pkram_free_page(link);
+			cond_resched();
+		}
+	}
+
+	pkram_truncate_obj(obj);
 	pkram_free_page(obj);
 }
 
@@ -316,6 +425,44 @@ void pkram_finish_load(struct pkram_stream *ps)
 	pkram_free_page(node);
 }
 
+/*
+ * Insert page to PKRAM node allocating a new PKRAM link if necessary.
+ */
+static int __pkram_save_page(struct pkram_stream *ps,
+			    struct page *page, short flags, unsigned long index)
+{
+	struct pkram_link *link = ps->link;
+	struct pkram_obj *obj = ps->obj;
+	pkram_entry_t p;
+
+	if (!link || ps->entry_idx >= PKRAM_LINK_ENTRIES_MAX ||
+	    index != ps->next_index) {
+		struct page *link_page;
+
+		link_page = pkram_alloc_page((ps->gfp_mask & GFP_RECLAIM_MASK) |
+					    __GFP_ZERO);
+		if (!link_page)
+			return -ENOMEM;
+
+		ps->link = link = page_address(link_page);
+		pkram_add_link(link, obj);
+
+		ps->entry_idx = 0;
+
+		ps->next_index = link->index = index;
+	}
+
+	ps->next_index++;
+
+	get_page(page);
+	p = page_to_phys(page);
+	p |= ((flags & PKRAM_ENTRY_FLAGS_MASK) << PKRAM_ENTRY_FLAGS_SHIFT);
+	link->entry[ps->entry_idx] = p;
+	ps->entry_idx++;
+
+	return 0;
+}
+
 /**
  * Save page @page to the preserved memory node and object associated with
  * stream @ps. The stream must have been initialized with pkram_prepare_save()
@@ -324,10 +471,72 @@ void pkram_finish_load(struct pkram_stream *ps)
  * @flags specifies supplemental page state to be preserved.
  *
  * Returns 0 on success, -errno on failure.
+ *
+ * Error values:
+ *	%ENOMEM: insufficient amount of memory available
+ *
+ * Saving a page to preserved memory is simply incrementing its refcount so
+ * that it will not get freed after the last user puts it. That means it is
+ * safe to use the page as usual after it has been saved.
  */
 int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags)
 {
-	return -ENOSYS;
+	struct pkram_node *node = ps->node;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
+
+	BUG_ON(PageCompound(page));
+
+	return __pkram_save_page(ps, page, flags, page->index);
+}
+
+/*
+ * Extract the next page from preserved memory freeing a PKRAM link if it
+ * becomes empty.
+ */
+static struct page *__pkram_load_page(struct pkram_stream *ps, unsigned long *index, short *flags)
+{
+	struct pkram_link *link = ps->link;
+	struct page *page;
+	pkram_entry_t p;
+	short flgs;
+
+	if (!link) {
+		link = pkram_remove_link(ps->obj);
+		if (!link)
+			return NULL;
+
+		ps->link = link;
+		ps->entry_idx = 0;
+		ps->next_index = link->index;
+	}
+
+	BUG_ON(ps->entry_idx >= PKRAM_LINK_ENTRIES_MAX);
+
+	p = link->entry[ps->entry_idx];
+	BUG_ON(!p);
+
+	flgs = (p >> PKRAM_ENTRY_FLAGS_SHIFT) & PKRAM_ENTRY_FLAGS_MASK;
+	page = pfn_to_page(PHYS_PFN(p));
+
+	if (flags)
+		*flags = flgs;
+	if (index)
+		*index = ps->next_index;
+
+	ps->next_index++;
+
+	/* clear to avoid double free (see pkram_truncate_link()) */
+	link->entry[ps->entry_idx] = 0;
+
+	ps->entry_idx++;
+	if (ps->entry_idx >= PKRAM_LINK_ENTRIES_MAX ||
+	    !link->entry[ps->entry_idx]) {
+		ps->link = NULL;
+		pkram_free_page(link);
+	}
+
+	return page;
 }
 
 /**
@@ -346,7 +555,11 @@ int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags)
  */
 struct page *pkram_load_page(struct pkram_stream *ps, unsigned long *index, short *flags)
 {
-	return NULL;
+	struct pkram_node *node = ps->node;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_LOAD);
+
+	return __pkram_load_page(ps, index, flags);
 }
 
 /**
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
