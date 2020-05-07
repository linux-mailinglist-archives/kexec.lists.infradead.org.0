Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9041C7EA4
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FgZukE2T3W1kHaJSZqjT8tzvPPqHGDA8b9OtI8zbGRQ=; b=uJ4hGV0sTIBGShfNltIfuNlZdL
	P6nt7GlbEkCL733ZiM4Ix1bKzEY6y30qnnaO2h+WAnWBfGksK79vMN2d0H0k6ds+FtKF8f1SfMeeV
	8qMOPZneGKcK3x5KKh4J7B/D9x519K2XuI+wHV60nu0wmNNxLPIhnSNDeA8D8DLDM8odqcGagScr1
	vANQIEhaYo+JfgsrS7oWFFSLCMA8yh6925UsK7WTsMk/SaqB7coJqqXU1CyPZ0mdbvInOViG2SzFn
	o2Uova6FZuRP6w+wVg9JRt8z7exzFry/2+5pfr0ehm7xHppZAWgrtxORH1XipX9DK2k8VbHzf2Tth
	0d41pXxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUdi-0007eP-J8; Thu, 07 May 2020 00:43:50 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUdb-0007YQ-AW
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:43:45 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470cDPd093126;
 Thu, 7 May 2020 00:42:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=zbg9yJyCJmJxhHSmdBbD25d4JQwY7L3Qzo2gYkXKc+M=;
 b=NYghlWuaON7yX8JJzdmXURt2zP24mBwfNQAwXmmaGa2VItI56EnRCd8ip9nnfT+v9qBS
 bAQFDt1JBrpfkTL+nlnKsXdCT3dK8TOM2pW5F+IgGxw36XLBjWj54jMm/n3Wc0yoJNiL
 27g7H9L5tjT2ZbEWfHLiCQzKsNymuEKVw+tPVI1xwdAXrkl7FSBj3x0na85W1of6unKg
 Zi7XoRxMHGDdORF1iacWwnOfTsrShL+dgwK5+clmmm2mPtX3Dbn/6ctRLRxTJnX0r48r
 TtQNNZcEPEOOzGp0wJr6GMMrB65ym30KuUEh5RH952jmMMH3uOc5xnw4xv/88sd84gzh ZQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30s1gnd8hn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:41 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470alqm170682;
 Thu, 7 May 2020 00:42:41 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30us7p2kqb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:41 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0470gcTP024000;
 Thu, 7 May 2020 00:42:38 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:38 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 06/43] mm: PKRAM: implement byte stream operations
Date: Wed,  6 May 2020 17:41:32 -0700
Message-Id: <1588812129-8596-7-git-send-email-anthony.yznaga@oracle.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=2 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174343_446856_B7462379 
X-CRM114-Status: GOOD (  21.70  )
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

This patch adds the ability to save arbitrary byte streams up to a
total length of one page to a PKRAM object using pkram_write() to be
restored later using pkram_read().

Originally-by: Vladimir Davydov <vdavydov.dev@gmail.com>
Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |  4 +++
 mm/pkram.c            | 84 +++++++++++++++++++++++++++++++++++++++++++++++++--
 2 files changed, 86 insertions(+), 2 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index 584cadb662b4..a58dd2ea835a 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -17,6 +17,10 @@ struct pkram_stream {
 	unsigned int entry_idx;		/* next entry in link */
 
 	unsigned long next_index;
+
+	/* byte data */
+	struct page *data_page;
+	unsigned int data_offset;
 };
 
 #define PKRAM_NAME_MAX		256	/* including nul */
diff --git a/mm/pkram.c b/mm/pkram.c
index 9164060e36f5..06b471eea0b0 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/err.h>
 #include <linux/gfp.h>
+#include <linux/highmem.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
 #include <linux/list.h>
@@ -42,6 +43,8 @@ struct pkram_link {
 	((PAGE_SIZE-sizeof(struct pkram_link))/sizeof(pkram_entry_t))
 
 struct pkram_obj {
+	__u64	data_pfn;	/* points to the byte data */
+	__u64	data_len;	/* byte data size */
 	__u64	link_pfn;	/* points to the first link of the object */
 	__u64	obj_pfn;	/* points to the next object in the list */
 };
@@ -407,6 +410,9 @@ void pkram_finish_load_obj(struct pkram_stream *ps)
 		}
 	}
 
+	if (ps->data_page)
+		pkram_free_page(page_address(ps->data_page));
+
 	pkram_truncate_obj(obj);
 	pkram_free_page(obj);
 }
@@ -422,6 +428,9 @@ void pkram_finish_load(struct pkram_stream *ps)
 
 	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_LOAD);
 
+	if (ps->data_page)
+		put_page(ps->data_page);
+
 	pkram_truncate_node(node);
 	pkram_free_page(node);
 }
@@ -581,10 +590,41 @@ struct page *pkram_load_page(struct pkram_stream *ps, unsigned long *index, shor
  *
  * On success, returns the number of bytes written, which is always equal to
  * @count. On failure, -errno is returned.
+ *
+ * Error values:
+ *    %ENOMEM: insufficient amount of memory available
  */
 ssize_t pkram_write(struct pkram_stream *ps, const void *buf, size_t count)
 {
-	return -ENOSYS;
+	struct pkram_node *node = ps->node;
+	struct pkram_obj *obj = ps->obj;
+	void *addr;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
+
+	if (!ps->data_page) {
+		struct page *page;
+
+		page = pkram_alloc_page((ps->gfp_mask & GFP_RECLAIM_MASK) |
+				       __GFP_HIGHMEM | __GFP_ZERO);
+		if (!page)
+			return -ENOMEM;
+
+		ps->data_page = page;
+		ps->data_offset = 0;
+		obj->data_pfn = page_to_pfn(page);
+	}
+
+	BUG_ON(count > PAGE_SIZE - ps->data_offset);
+
+	addr = kmap_atomic(ps->data_page);
+	memcpy(addr + ps->data_offset, buf, count);
+	kunmap_atomic(addr);
+
+	obj->data_len += count;
+	ps->data_offset += count;
+
+	return count;
 }
 
 /**
@@ -597,5 +637,45 @@ ssize_t pkram_write(struct pkram_stream *ps, const void *buf, size_t count)
  */
 size_t pkram_read(struct pkram_stream *ps, void *buf, size_t count)
 {
-	return 0;
+	struct pkram_node *node = ps->node;
+	struct pkram_obj *obj = ps->obj;
+	size_t copy_count;
+	char *addr;
+
+	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_LOAD);
+
+	if (!count || !obj->data_len)
+		return 0;
+
+	if (!ps->data_page) {
+		struct page *page;
+
+		page = pfn_to_page(obj->data_pfn);
+		if (!page)
+			return 0;
+
+		ps->data_page = page;
+		ps->data_offset = 0;
+		obj->data_pfn = 0;
+	}
+
+	BUG_ON(count > PAGE_SIZE - ps->data_offset);
+
+	copy_count = min_t(size_t, count, PAGE_SIZE - ps->data_offset);
+	if (copy_count > obj->data_len)
+		copy_count = obj->data_len;
+
+	addr = kmap_atomic(ps->data_page);
+	memcpy(buf, addr + ps->data_offset, copy_count);
+	kunmap_atomic(addr);
+
+	obj->data_len -= copy_count;
+	ps->data_offset += copy_count;
+
+	if (!obj->data_len) {
+		pkram_free_page(page_address(ps->data_page));
+		ps->data_page = NULL;
+	}
+
+	return copy_count;
 }
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
