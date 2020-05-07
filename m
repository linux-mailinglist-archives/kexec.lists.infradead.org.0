Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0111C7ECA
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:44:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2V7FAbFxTaSuEV52BhLxa5bG+GhuCZZ0qxzhSS8ey2E=; b=Y3BSKXOZHRa9fvSK3NoqnK0F1k
	8dl5UbGdJnb6yKFyPz40NzBv1hGaruy4DY+uo8NjLO8TuhUbDOdRGwWlvNC69d2HQuiHtVlUuQv63
	IyDiPT7LRFSOXBK6OO9YmvpGqouUc7oNeQtem8BwOzEFBWlx3yc0X9jOgl+f6oiCX4OessLwcIV3i
	w5H4U14VGFDBcmhY2CtrSMfpZnN32dQ4+GsR9M/5SaG8Xse52dEhNctux/CV2mZEOiMzGOIAhS7W2
	yzWrlsB3dWpJUl+7fchMVnvAtMMgetZApw28m4ELRNdvX2NuvXd4Ljhfr4N05sJYZzgrcorryG8cv
	p7WUiRMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUea-0000DO-2A; Thu, 07 May 2020 00:44:44 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUeU-0008W4-8J
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:44:40 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bhgt064591;
 Thu, 7 May 2020 00:42:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=psiEr0BjUwGfJSVN/B86fSYWhjKbmypK5l+ecN1OxxM=;
 b=R7/5c2I5iJXHOrpMqsRsPsUY3YR1Eb6PigW5wVdcEPriZiQNIRJI1YTZNLf05qgQqxdw
 /jGJDui8JsJ3E6FWQZxyQXQrAgzs5Gv2peYa8o6sGC3CtC5lKgbwxuH+aJK7y0HbSfDO
 YbaDIfLoLf+l0vFOtbz/jTTbnpXsU3FGCR9WgA9o9kp3PGvMP2748pfjDk5YB0ExGYVh
 EP8mXMfE6+YSKEyCW2Mfh0YKMduDSjyMP0xdJovzXnL87s+k8+YteZjPDFH7pdmDstAM
 qsHU+6liXhnaHJN9iKnpLHjUDIUMqDCoywiB/0X6ZW4JUVKeqjOiHzYSmIQTxQ4PU9Zw aw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30s09rdf5d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:29 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470aoVc136163;
 Thu, 7 May 2020 00:42:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 30sjdwrpvd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:28 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470gQlv019614;
 Thu, 7 May 2020 00:42:26 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:26 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 02/43] mm: PKRAM: implement node load and save functions
Date: Wed,  6 May 2020 17:41:28 -0700
Message-Id: <1588812129-8596-3-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=2 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1011 suspectscore=2
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174438_381618_83D09B01 
X-CRM114-Status: GOOD (  22.87  )
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

Preserved memory is divided into nodes which can be saved and loaded
independently of each other. PKRAM nodes are kept on a list and
identified by unique names. Whenever a save operation is initiated by
calling pkram_prepare_save(), a new node is created and linked to the
list. When the save operation has been committed by calling
pkram_finish_save(), the node becomes loadable. A load operation can be
then initiated by calling pkram_prepare_load() which deletes the node
from the list and prepares the corresponding stream for loading data
from it. After the load has been finished, the pkram_finish_load()
function must be called to free the node. Nodes are also deleted when a
save operation is discarded, i.e. pkram_discard_save() is called instead
of pkram_finish_save().

Originally-by: Vladimir Davydov <vdavydov.dev@gmail.com>
Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |   7 ++-
 mm/pkram.c            | 148 ++++++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 149 insertions(+), 6 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index 4c4e13311ec8..83a0579e4c1c 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -6,7 +6,12 @@
 #include <linux/types.h>
 #include <linux/mm_types.h>
 
-struct pkram_stream;
+struct pkram_node;
+
+struct pkram_stream {
+	gfp_t gfp_mask;
+	struct pkram_node *node;
+};
 
 #define PKRAM_NAME_MAX		256	/* including nul */
 
diff --git a/mm/pkram.c b/mm/pkram.c
index d6f2f79d4852..5c57126353ff 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -2,16 +2,85 @@
 #include <linux/err.h>
 #include <linux/gfp.h>
 #include <linux/kernel.h>
+#include <linux/list.h>
 #include <linux/mm.h>
+#include <linux/mutex.h>
 #include <linux/pkram.h>
+#include <linux/string.h>
 #include <linux/types.h>
 
+/*
+ * Preserved memory is divided into nodes that can be saved or loaded
+ * independently of each other. The nodes are identified by unique name
+ * strings.
+ *
+ * The structure occupies a memory page.
+ */
+struct pkram_node {
+	__u32	flags;
+
+	__u8	name[PKRAM_NAME_MAX];
+};
+
+#define PKRAM_SAVE		1
+#define PKRAM_LOAD		2
+#define PKRAM_ACCMODE_MASK	3
+
+static LIST_HEAD(pkram_nodes);			/* linked through page::lru */
+static DEFINE_MUTEX(pkram_mutex);		/* serializes open/close */
+
+static inline struct page *pkram_alloc_page(gfp_t gfp_mask)
+{
+	return alloc_page(gfp_mask);
+}
+
+static inline void pkram_free_page(void *addr)
+{
+	free_page((unsigned long)addr);
+}
+
+static inline void pkram_insert_node(struct pkram_node *node)
+{
+	list_add(&virt_to_page(node)->lru, &pkram_nodes);
+}
+
+static inline void pkram_delete_node(struct pkram_node *node)
+{
+	list_del(&virt_to_page(node)->lru);
+}
+
+static struct pkram_node *pkram_find_node(const char *name)
+{
+	struct page *page;
+	struct pkram_node *node;
+
+	list_for_each_entry(page, &pkram_nodes, lru) {
+		node = page_address(page);
+		if (strcmp(node->name, name) == 0)
+			return node;
+	}
+	return NULL;
+}
+
+static void pkram_stream_init(struct pkram_stream *ps,
+			     struct pkram_node *node, gfp_t gfp_mask)
+{
+	memset(ps, 0, sizeof(*ps));
+	ps->gfp_mask = gfp_mask;
+	ps->node = node;
+}
+
 /**
  * Create a preserved memory node with name @name and initialize stream @ps
  * for saving data to it.
  *
  * @gfp_mask specifies the memory allocation mask to be used when saving data.
  *
+ * Error values:
+ *	%ENAMETOOLONG: name len >= PKRAM_NAME_MAX
+ *	%ENOMEM: insufficient memory available
+ *	%EEXIST: node with specified name already exists
+ *
  * Returns 0 on success, -errno on failure.
  *
  * After the save has finished, pkram_finish_save() (or pkram_discard_save() in
@@ -19,7 +88,34 @@
  */
 int pkram_prepare_save(struct pkram_stream *ps, const char *name, gfp_t gfp_mask)
 {
-	return -ENOSYS;
+	struct page *page;
+	struct pkram_node *node;
+	int err = 0;
+
+	if (strlen(name) >= PKRAM_NAME_MAX)
+		return -ENAMETOOLONG;
+
+	page = pkram_alloc_page(GFP_KERNEL | __GFP_ZERO);
+	if (!page)
+		return -ENOMEM;
+	node = page_address(page);
+
+	node->flags = PKRAM_SAVE;
+	strcpy(node->name, name);
+
+	mutex_lock(&pkram_mutex);
+	if (!pkram_find_node(name))
+		pkram_insert_node(node);
+	else
+		err = -EEXIST;
+	mutex_unlock(&pkram_mutex);
+	if (err) {
+		__free_page(page);
+		return err;
+	}
+
+	pkram_stream_init(ps, node, gfp_mask);
+	return 0;
 }
 
 /**
@@ -50,7 +146,12 @@ void pkram_finish_save_obj(struct pkram_stream *ps)
  */
 void pkram_finish_save(struct pkram_stream *ps)
 {
-	BUG();
+	struct pkram_node *node = ps->node;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
+
+	smp_wmb();
+	node->flags &= ~PKRAM_ACCMODE_MASK;
 }
 
 /**
@@ -60,7 +161,15 @@ void pkram_finish_save(struct pkram_stream *ps)
  */
 void pkram_discard_save(struct pkram_stream *ps)
 {
-	BUG();
+	struct pkram_node *node = ps->node;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
+
+	mutex_lock(&pkram_mutex);
+	pkram_delete_node(node);
+	mutex_unlock(&pkram_mutex);
+
+	pkram_free_page(node);
 }
 
 /**
@@ -69,11 +178,36 @@ void pkram_discard_save(struct pkram_stream *ps)
  *
  * Returns 0 on success, -errno on failure.
  *
+ * Error values:
+ *	%ENOENT: node with specified name does not exist
+ *	%EBUSY: save to required node has not finished yet
+ *
  * After the load has finished, pkram_finish_load() is to be called.
  */
 int pkram_prepare_load(struct pkram_stream *ps, const char *name)
 {
-	return -ENOSYS;
+	struct pkram_node *node;
+	int err = 0;
+
+	mutex_lock(&pkram_mutex);
+	node = pkram_find_node(name);
+	if (!node) {
+		err = -ENOENT;
+		goto out_unlock;
+	}
+	if (node->flags & PKRAM_ACCMODE_MASK) {
+		err = -EBUSY;
+		goto out_unlock;
+	}
+	pkram_delete_node(node);
+out_unlock:
+	mutex_unlock(&pkram_mutex);
+	if (err)
+		return err;
+
+	node->flags |= PKRAM_LOAD;
+	pkram_stream_init(ps, node, 0);
+	return 0;
 }
 
 /**
@@ -106,7 +240,11 @@ void pkram_finish_load_obj(struct pkram_stream *ps)
  */
 void pkram_finish_load(struct pkram_stream *ps)
 {
-	BUG();
+	struct pkram_node *node = ps->node;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_LOAD);
+
+	pkram_free_page(node);
 }
 
 /**
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
