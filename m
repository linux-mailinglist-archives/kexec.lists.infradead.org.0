Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CCD1C7EA8
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:43:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Po2Ucy7s+u7ZZ5VFg5PGkd5x9AtslB01vKRV3yEVEQo=; b=tOAaSrvjHDfcKE3hYXAxXCJd9J
	Hl8t2CwhhpH0wKn97zxqFK0SDJzPSSK1h/hQi/uxbeNVzznFz4ou7YDaPZy6qrBeAtsqxsLypN4+2
	uKKCLoxy4ABHbllq/QUtbswYd18Vg/WzXK0k/uJKDDrx8yDCwV3Z/CHvYcXKM3iwm4iLMVk+6nZ8+
	lh+62wNs1S0j555sXZ+pUZQIDLjJxv1wztg4qq5dlW8bVbUyYVVNRviZioL/O5YlJyGkjE9zNBsAn
	uc+Ny+5VlAaH8I1mOpnT/E8UZxBPk6oclIKRFIZd2PWjFAUuURdYxpT5z/iPtHc3TDO4adftWxTYF
	Drnvxj/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUdk-0007gs-QT; Thu, 07 May 2020 00:43:52 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUdb-0007YR-DY
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:43:46 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470dCV0097456;
 Thu, 7 May 2020 00:42:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=qVxl2ErnbXf/1UqsteUDXYkeq/Y2P3I+THoVh2C3QXE=;
 b=F12Ge6+gJxng7kc3BrCPC3D0kmyef1tgkCH3+F5CcoYuRGu24wTmZa3/TcjafzoeZOS9
 ikSoU4FJAyDyV/qJn5ar/FsIy1d004q/PoeCv6azJeFDITMxR8h9dp7SVmxnTOZKb9AI
 4qlCQbRXjXxaAyw9j1AR/VPEtZx+IQmiKdEjDEX3IZpPldm+BeB1pZsq3vyVcNlfEWLt
 CO7x1jYRty6WsTkyXiEVohVZmSW+u3B9HhqBXcZuznb3HXtk7IVr3fe0ngyfQIwHDz4i
 sZZMbqmMg9srVVHz6ravN0p7iGmTbg8vz/JatdOHZHuw5lM6a7Dsq73U+0iLMzH4xok5 qA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 30usgq4gvj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:30 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bU4j098676;
 Thu, 7 May 2020 00:42:29 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 30sjnma0kq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:29 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470gNXr025322;
 Thu, 7 May 2020 00:42:23 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:23 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 01/43] mm: add PKRAM API stubs and Kconfig
Date: Wed,  6 May 2020 17:41:27 -0700
Message-Id: <1588812129-8596-2-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174343_546737_D437D029 
X-CRM114-Status: GOOD (  25.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [141.146.126.78 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Preserved-across-kexec memory or PKRAM is a method for saving memory
pages of the currently executing kernel and restoring them after kexec
boot into a new one. This can be utilized for preserving guest VM state,
large in-memory databases, process memory, etc. across reboot. While
DRAM-as-PMEM or actual persistent memory could be used to accomplish
these things, PKRAM provides the latency of DRAM with the flexibility
of dynamically determining the amount of memory to preserve.

The proposed API:

 * Preserved memory is divided into nodes which can be saved or loaded
   independently of each other. The nodes are identified by unique name
   strings. A PKRAM node is created when save is initiated by calling
   pkram_prepare_save(). A PKRAM node is removed when load is initiated by
   calling pkram_prepare_load(). See below

 * A node is further divided into objects. An object represents a
   grouping of associated pages and any relevant metadata preserved
   with them. For example, the pages and attributes of a file.

 * For saving/loading data from a PKRAM node/object an instance of the
   pkram_stream struct is used. The struct is initialized by calling
   pkram_prepare_save() for saving data or pkram_prepare_load() for
   loading data. After save (load) is complete, pkram_finish_save()
   (pkram_finish_load()) must be called. If an error occurred during
   save, the saved data and the PKRAM node may be freed by calling
   pkram_discard_save() instead of pkram_finish_save().

 * Both page data and byte data can separately be streamed to a PKRAM
   object.  pkram_save_page() and pkram_load_page() are used to stream
   page data while pkram_write() and pkram_read() are used to stream byte
   data.

A sequence of operations for saving/loading data from PKRAM would
look like:

  * For saving data to PKRAM:

    /* create a PKRAM node and do initial stream setup */
    pkram_prepare_save()

    /* create a PKRAM object associated with the PKRAM node and complete stream initialization */
    pkram_prepare_save_obj()

    /* save data to the node/object */
    pkram_save_page()[,...]      /* for page stream, or
    pkram_write()[,...]           * ... for byte stream */

    pkram_finish_save_obj()

    /* commit the save or discard and delete the node */
    pkram_finish_save()          /* on success, or
    pkram_discard_save()          * ... in case of error */

  * For loading data from PKRAM:

    /* remove a PKRAM node from the list and do initial stream setup */
    pkram_prepare_load()

    /* Remove a PKRAM object from the node and complete stream initializtion for loading data from it. */
    pkram_prepare_load_obj()

    /* load data from the node/object */
    pkram_load_page()[,...]      /* for page stream, or
    pkram_read()[,...]            * ... for byte stream */

    /* free the object */
    pkram_finish_load_obj()

    /* free the node */
    pkram_finish_load()

Originally-by: Vladimir Davydov <vdavydov.dev@gmail.com>
Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |  32 ++++++++++
 mm/Kconfig            |   9 +++
 mm/Makefile           |   1 +
 mm/pkram.c            | 169 ++++++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 211 insertions(+)
 create mode 100644 include/linux/pkram.h
 create mode 100644 mm/pkram.c

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
new file mode 100644
index 000000000000..4c4e13311ec8
--- /dev/null
+++ b/include/linux/pkram.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _LINUX_PKRAM_H
+#define _LINUX_PKRAM_H
+
+#include <linux/gfp.h>
+#include <linux/types.h>
+#include <linux/mm_types.h>
+
+struct pkram_stream;
+
+#define PKRAM_NAME_MAX		256	/* including nul */
+
+int pkram_prepare_save(struct pkram_stream *ps, const char *name,
+		       gfp_t gfp_mask);
+int pkram_prepare_save_obj(struct pkram_stream *ps);
+void pkram_finish_save(struct pkram_stream *ps);
+void pkram_finish_save_obj(struct pkram_stream *ps);
+void pkram_discard_save(struct pkram_stream *ps);
+
+int pkram_prepare_load(struct pkram_stream *ps, const char *name);
+int pkram_prepare_load_obj(struct pkram_stream *ps);
+void pkram_finish_load(struct pkram_stream *ps);
+void pkram_finish_load_obj(struct pkram_stream *ps);
+
+int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags);
+struct page *pkram_load_page(struct pkram_stream *ps, unsigned long *index,
+			     short *flags);
+
+ssize_t pkram_write(struct pkram_stream *ps, const void *buf, size_t count);
+size_t pkram_read(struct pkram_stream *ps, void *buf, size_t count);
+
+#endif /* _LINUX_PKRAM_H */
diff --git a/mm/Kconfig b/mm/Kconfig
index c1acc34c1c35..bddf20ecf6e1 100644
--- a/mm/Kconfig
+++ b/mm/Kconfig
@@ -867,4 +867,13 @@ config ARCH_HAS_HUGEPD
 config MAPPING_DIRTY_HELPERS
         bool
 
+config PKRAM
+	bool "Preserved-over-kexec memory storage"
+	default n
+	help
+	  This option adds the kernel API that enables saving memory pages of
+	  the currently executing kernel and restoring them after a kexec in
+	  the newly booted one. This can be utilized for speeding up reboot by
+	  leaving process memory and/or FS caches in-place.
+
 endmenu
diff --git a/mm/Makefile b/mm/Makefile
index fccd3756b25f..59cd381194af 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -112,3 +112,4 @@ obj-$(CONFIG_MEMFD_CREATE) += memfd.o
 obj-$(CONFIG_MAPPING_DIRTY_HELPERS) += mapping_dirty_helpers.o
 obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
 obj-$(CONFIG_PAGE_REPORTING) += page_reporting.o
+obj-$(CONFIG_PKRAM) += pkram.o
diff --git a/mm/pkram.c b/mm/pkram.c
new file mode 100644
index 000000000000..d6f2f79d4852
--- /dev/null
+++ b/mm/pkram.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/err.h>
+#include <linux/gfp.h>
+#include <linux/kernel.h>
+#include <linux/mm.h>
+#include <linux/pkram.h>
+#include <linux/types.h>
+
+/**
+ * Create a preserved memory node with name @name and initialize stream @ps
+ * for saving data to it.
+ *
+ * @gfp_mask specifies the memory allocation mask to be used when saving data.
+ *
+ * Returns 0 on success, -errno on failure.
+ *
+ * After the save has finished, pkram_finish_save() (or pkram_discard_save() in
+ * case of failure) is to be called.
+ */
+int pkram_prepare_save(struct pkram_stream *ps, const char *name, gfp_t gfp_mask)
+{
+	return -ENOSYS;
+}
+
+/**
+ * Create a preserved memory object and initialize stream @ps for saving data
+ * to it.
+ *
+ * Returns 0 on success, -errno on failure.
+ *
+ * After the save has finished, pkram_finish_save_obj() (or pkram_discard_save()
+ * in case of failure) is to be called.
+ */
+int pkram_prepare_save_obj(struct pkram_stream *ps)
+{
+	return -ENOSYS;
+}
+
+/**
+ * Commit the object started with pkram_prepare_save_obj() to preserved memory.
+ */
+void pkram_finish_save_obj(struct pkram_stream *ps)
+{
+	BUG();
+}
+
+/**
+ * Commit the save to preserved memory started with pkram_prepare_save().
+ * After the call, the stream may not be used any more.
+ */
+void pkram_finish_save(struct pkram_stream *ps)
+{
+	BUG();
+}
+
+/**
+ * Cancel the save to preserved memory started with pkram_prepare_save() and
+ * destroy the corresponding preserved memory node freeing any data already
+ * saved to it.
+ */
+void pkram_discard_save(struct pkram_stream *ps)
+{
+	BUG();
+}
+
+/**
+ * Remove the preserved memory node with name @name and initialize stream @ps
+ * for loading data from it.
+ *
+ * Returns 0 on success, -errno on failure.
+ *
+ * After the load has finished, pkram_finish_load() is to be called.
+ */
+int pkram_prepare_load(struct pkram_stream *ps, const char *name)
+{
+	return -ENOSYS;
+}
+
+/**
+ * Remove the next preserved memory object from the stream @ps and
+ * initialize stream @ps for loading data from it.
+ *
+ * Returns 0 on success, -errno on failure.
+ *
+ * After the load has finished, pkram_finish_load_obj() is to be called.
+ */
+int pkram_prepare_load_obj(struct pkram_stream *ps)
+{
+	return -ENOSYS;
+}
+
+/**
+ * Finish the load of a preserved memory object started with
+ * pkram_prepare_load_obj() freeing the object and any data that has not
+ * been loaded from it.
+ */
+void pkram_finish_load_obj(struct pkram_stream *ps)
+{
+	BUG();
+}
+
+/**
+ * Finish the load from preserved memory started with pkram_prepare_load()
+ * freeing the corresponding preserved memory node and any data that has
+ * not been loaded from it.
+ */
+void pkram_finish_load(struct pkram_stream *ps)
+{
+	BUG();
+}
+
+/**
+ * Save page @page to the preserved memory node and object associated with
+ * stream @ps. The stream must have been initialized with pkram_prepare_save()
+ * and pkram_prepare_save_obj().
+ *
+ * @flags specifies supplemental page state to be preserved.
+ *
+ * Returns 0 on success, -errno on failure.
+ */
+int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags)
+{
+	return -ENOSYS;
+}
+
+/**
+ * Load the next page from the preserved memory node and object associated
+ * with stream @ps. The stream must have been initialized with
+ * pkram_prepare_load() and pkram_prepare_load_obj().
+ *
+ * If not NULL, @index is initialized with the preserved mapping offset of the
+ * page loaded.
+ * If not NULL, @flags is initialized with preserved supplemental state of the
+ * page loaded.
+ *
+ * Returns the page loaded or NULL if the node is empty.
+ *
+ * The page loaded has its refcount incremented.
+ */
+struct page *pkram_load_page(struct pkram_stream *ps, unsigned long *index, short *flags)
+{
+	return NULL;
+}
+
+/**
+ * Copy @count bytes from @buf to the preserved memory node and object
+ * associated with stream @ps. The stream must have been initialized with
+ * pkram_prepare_save() and pkram_prepare_save_obj().
+ *
+ * On success, returns the number of bytes written, which is always equal to
+ * @count. On failure, -errno is returned.
+ */
+ssize_t pkram_write(struct pkram_stream *ps, const void *buf, size_t count)
+{
+	return -ENOSYS;
+}
+
+/**
+ * Copy up to @count bytes from the preserved memory node and object
+ * associated with stream @ps to @buf. The stream must have been initialized
+ * with pkram_prepare_load() and pkram_prepare_load_obj().
+ *
+ * Returns the number of bytes read, which may be less than @count if the node
+ * has fewer bytes available.
+ */
+size_t pkram_read(struct pkram_stream *ps, void *buf, size_t count)
+{
+	return 0;
+}
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
