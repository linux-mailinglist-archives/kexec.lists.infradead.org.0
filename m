Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40CDD1C7F61
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2/8HBdicC14ViGITSUbIHkOXLTh25LFLEC4wbl1hKyI=; b=JiygPmA22rHOzBC5EnLSif2dnx
	3awrn6FQK/G6ADkkQ2qXzYUmTvNm1yyQ4RQ5eS6BP4AHOSuVva9DETQQZVo6ZRO4R9ml+uOglYTAY
	dap1BEwwJR88j7v0uvqA1ghZiWtbHgUXva0fPCpkBDnXKBgA6SWCEpPOB2DSySO//+Gk8L3xev8I1
	tFMvfIkTdOAFq9UXqI2sx1CSV486eD8sIpsgK6DUQUBGoUEPvijc6ax8eEdUIO8Jxnjw2IQeWpM8L
	gwJOwJIFUqhrlbqCmlmJMJebeCjktRmkTKcCYJFeZ/1/vB+oprBrWus8Apm+Oryq3mTh5554p85md
	l0P5Xpiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUht-00051Y-2N; Thu, 07 May 2020 00:48:09 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUhm-00050w-8a
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:48:06 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470cd03065150;
 Thu, 7 May 2020 00:47:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=l1jFeQ++L0S4ASpfp6U4S++udUwtZnOa7K5HcmPbm40=;
 b=M8E0M0WwtI3cedOWrkJtCN5Seer3lVIlIgeTRqf/ZAbULwP7hbR/DUd10TGvyh+zKJFu
 Yqbahbnf+BnBlvlzLj9ffvGcE1WmKLs37LsglI7zWYQUZZrkUmRw/Zu8eeB7ow8I3OWq
 ZnEKp3idtHZBAgPqGrPKlom6mEbYfFZVKEpCLi3J5c8FvIhOmbHf7UrgPDpMlYQukFYI
 UOjs92DL79AGbXOmlETANSHaur/mHJLJ5oQw8ozc0QzXCKZVnDa7yXv+0jI31db7oLuM
 EfeVSQ99bXniBIIktzx5ynqu48FqKIKVE81AYG3H9Vh2uM6N+VttsdlqlJSGwds2Vsrl 1g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30s09rdfk9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:47:06 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470aoJd136102;
 Thu, 7 May 2020 00:45:05 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 30sjdwrtfs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:45:05 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0470j141025060;
 Thu, 7 May 2020 00:45:01 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:45:01 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 41/43] XArray: add xas_export_node() and xas_import_node()
Date: Wed,  6 May 2020 17:42:07 -0700
Message-Id: <1588812129-8596-42-git-send-email-anthony.yznaga@oracle.com>
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
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 suspectscore=2
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174805_251962_0BCCF2A6 
X-CRM114-Status: GOOD (  21.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
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

Contention on the xarray lock when multiple threads are adding to the
same xarray can be mitigated by providing a way to add entries in
bulk.

Allow a caller to allocate and populate an xarray node outside of
the target xarray and then only take the xarray lock long enough to
import the node into it.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 Documentation/core-api/xarray.rst |   8 +++
 include/linux/xarray.h            |   2 +
 lib/test_xarray.c                 |  45 +++++++++++++++++
 lib/xarray.c                      | 100 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 155 insertions(+)

diff --git a/Documentation/core-api/xarray.rst b/Documentation/core-api/xarray.rst
index 640934b6f7b4..659e10df8901 100644
--- a/Documentation/core-api/xarray.rst
+++ b/Documentation/core-api/xarray.rst
@@ -444,6 +444,14 @@ called each time the XArray updates a node.  This is used by the page
 cache workingset code to maintain its list of nodes which contain only
 shadow entries.
 
+xas_export_node() is used to remove and return a node from an XArray
+while xas_import_node() is used to add a node to an XArray.  Together
+these can be used, for example, to reduce lock contention when multiple
+threads are updating an XArray by allowing a caller to allocate and
+populate a node outside of the target XArray in a local XArray, export
+the node, and then take the target XArray lock just long enough to import
+the node.
+
 Multi-Index Entries
 -------------------
 
diff --git a/include/linux/xarray.h b/include/linux/xarray.h
index 14c893433139..73bd8ccc4424 100644
--- a/include/linux/xarray.h
+++ b/include/linux/xarray.h
@@ -1504,6 +1504,8 @@ bool xas_nomem(struct xa_state *, gfp_t);
 void xas_pause(struct xa_state *);
 
 void xas_create_range(struct xa_state *);
+struct xa_node *xas_export_node(struct xa_state *xas);
+void xas_import_node(struct xa_state *xas, struct xa_node *node);
 
 /**
  * xas_reload() - Refetch an entry from the xarray.
diff --git a/lib/test_xarray.c b/lib/test_xarray.c
index d4f97925dbd8..5cfaa1720cc1 100644
--- a/lib/test_xarray.c
+++ b/lib/test_xarray.c
@@ -1682,6 +1682,50 @@ static noinline void check_destroy(struct xarray *xa)
 #endif
 }
 
+static noinline void check_export_import_1(struct xarray *xa,
+		unsigned long index, unsigned int order)
+{
+	int xa_shift = order + XA_CHUNK_SHIFT - (order % XA_CHUNK_SHIFT);
+	XA_STATE(xas, xa, index);
+	struct xa_node *node;
+	unsigned long i;
+
+	xa_store_many_order(xa, index, xa_shift);
+
+	xas_lock(&xas);
+	xas_set_order(&xas, index, xa_shift);
+	node = xas_export_node(&xas);
+	xas_unlock(&xas);
+
+	XA_BUG_ON(xa, !xa_empty(xa));
+
+	do {
+		xas_lock(&xas);
+		xas_set_order(&xas, index, xa_shift);
+		xas_import_node(&xas, node);
+		xas_unlock(&xas);
+	} while (xas_nomem(&xas, GFP_KERNEL));
+
+	for (i = index; i < index + (1UL << xa_shift); i++)
+		xa_erase_index(xa, i);
+
+	XA_BUG_ON(xa, !xa_empty(xa));
+}
+
+static noinline void check_export_import(struct xarray *xa)
+{
+	unsigned int order;
+	unsigned int max_order = IS_ENABLED(CONFIG_XARRAY_MULTI) ? 12 : 1;
+
+	for (order = 0; order < max_order; order += XA_CHUNK_SHIFT) {
+		int xa_shift = order + XA_CHUNK_SHIFT;
+		unsigned long j;
+
+		for (j = 0; j < XA_CHUNK_SIZE; j++)
+			check_export_import_1(xa, j << xa_shift, order);
+	}
+}
+
 static DEFINE_XARRAY(array);
 
 static int xarray_checks(void)
@@ -1712,6 +1756,7 @@ static int xarray_checks(void)
 	check_workingset(&array, 0);
 	check_workingset(&array, 64);
 	check_workingset(&array, 4096);
+	check_export_import(&array);
 
 	printk("XArray: %u of %u tests passed\n", tests_passed, tests_run);
 	return (tests_run == tests_passed) ? 0 : -EINVAL;
diff --git a/lib/xarray.c b/lib/xarray.c
index e9e641d3c0c3..478925780e87 100644
--- a/lib/xarray.c
+++ b/lib/xarray.c
@@ -507,6 +507,30 @@ static void xas_delete_node(struct xa_state *xas)
 		xas_shrink(xas);
 }
 
+static void xas_unlink_node(struct xa_state *xas)
+{
+	struct xa_node *node = xas->xa_node;
+	struct xa_node *parent;
+
+	parent = xa_parent_locked(xas->xa, node);
+	xas->xa_node = parent;
+	xas->xa_offset = node->offset;
+
+	if (!parent) {
+		xas->xa->xa_head = NULL;
+		xas->xa_node = XAS_BOUNDS;
+		return;
+	}
+
+	parent->slots[xas->xa_offset] = NULL;
+	parent->count--;
+	XA_NODE_BUG_ON(parent, parent->count > XA_CHUNK_SIZE);
+
+	xas_update(xas, parent);
+
+	xas_delete_node(xas);
+}
+
 /**
  * xas_free_nodes() - Free this node and all nodes that it references
  * @xas: Array operation state.
@@ -1540,6 +1564,82 @@ static void xas_set_range(struct xa_state *xas, unsigned long first,
 }
 
 /**
+ * xas_export_node() - remove and return a node from an XArray
+ * @xas: XArray operation state
+ *
+ * The range covered by @xas must be aligned to and cover a single node
+ * at any level of the tree.
+ *
+ * Return: On success, returns the removed node.  If the range is invalid,
+ * returns %NULL and sets -EINVAL in @xas.  Otherwise returns %NULL if the
+ * node does not exist.
+ */
+struct xa_node *xas_export_node(struct xa_state *xas)
+{
+	struct xa_node *node;
+
+	if (!xas->xa_shift || xas->xa_sibs) {
+		xas_set_err(xas, -EINVAL);
+		return NULL;
+	}
+
+	xas->xa_shift -= XA_CHUNK_SHIFT;
+
+	if (!xas_find(xas, xas->xa_index))
+		return NULL;
+	node = xas->xa_node;
+	xas_unlink_node(xas);
+	node->parent = NULL;
+
+	return node;
+}
+
+/**
+ * xas_import_node() - add a node to an XArray
+ * @xas: XArray operation state
+ * @node: The node to add
+ *
+ * The range covered by @xas must be aligned to and cover a single node
+ * at any level of the tree.  No nodes should already exist within the
+ * range.
+ * Sets an error in @xas if the range is invalid or xas_create() fails
+ */
+void xas_import_node(struct xa_state *xas, struct xa_node *node)
+{
+	struct xa_node *parent = NULL;
+	void __rcu **slot = &xas->xa->xa_head;
+	int count = 0;
+
+	if (!xas->xa_shift || xas->xa_sibs) {
+		xas_set_err(xas, -EINVAL);
+		return;
+	}
+
+	if (xas->xa_index || xa_head_locked(xas->xa)) {
+		xas_set_order(xas, xas->xa_index, node->shift + XA_CHUNK_SHIFT);
+		xas_create(xas, true);
+
+		if (xas_invalid(xas))
+			return;
+
+		parent = xas->xa_node;
+	}
+
+	if (parent) {
+		slot = &parent->slots[xas->xa_offset];
+		node->offset = xas->xa_offset;
+		count++;
+	}
+
+	RCU_INIT_POINTER(node->parent, parent);
+	node->array = xas->xa;
+
+	rcu_assign_pointer(*slot, xa_mk_node(node));
+
+	update_node(xas, parent, count, 0);
+}
+
+/**
  * xa_store_range() - Store this entry at a range of indices in the XArray.
  * @xa: XArray.
  * @first: First index to affect.
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
