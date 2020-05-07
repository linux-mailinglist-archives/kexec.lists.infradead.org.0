Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 856BF1C7ED3
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hOxmcu/PCVWoV9vFcBQfiS/L5j7+8VWY23yb1q2l7Uw=; b=ppRSzGzMvQVcaoD26yS2xyi/kP
	tzQBXvahwDemAnpeNUZC8CAUksRBo9zOZGtVNqHFeHoMGGJJsqUYiDVq+cvH/eVIFHh2l9Il+qWrV
	r+hZPto4Na5ms3FihCols4garzDsZtDzVe+myVnk9tENK0l5XjtCP1w/fKOtD+wPcCR10Mat+EQxx
	xKnftXw3RMR5Oo5Mbj1R4i63XThfM+LD6drOePds1yGGCkbfYyg0BJKUnirFA5PlTtfOjeJQ+cf3j
	EtGlduqCUeQRzKATBcIkCjHnupou/SIEwb1KdOHnJ6LRILdVGj+iPfNQCZO6H738HSMQtqqk9CCDW
	8uiduIvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUfV-0003me-Bp; Thu, 07 May 2020 00:45:41 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfG-0003c6-4O
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:45:30 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bgk7064570;
 Thu, 7 May 2020 00:44:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=St3JE32B8DDqwlwkgwkk0bfEnH6+lOQGeM29niLEd0A=;
 b=yXBvQi9HTMMMU1huyex4wrc1y7Z1DfDKRz/ZcxKXikIq7nPKFWfaw5uEmk/o/LH5PrWe
 MVh3hXvABR/ob5om6dPne2Ky4euGj/96rbDwepjk12StUklMh99Ia5xQXIhli7yquWVQ
 P39NA/tI15qHc7DzL1B2hPEXLFUo9ElstoXA47WOI1/juGLon4+gubwDga7chJcNu7fR
 LXSPQmDngLKwSkiIHHO/0M5D9sNFUqEjD+6NhXn026uKfb0WnOgSw+zbKmaOgZW8ulFE
 uoxdZ+J512LEpmrb5916loU5Ajdub6qACvGh4J+vfg7cgjuov/sgoNmfM7vJib7Qmn7K mg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 30s09rdfc0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:35 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470aoW0136163;
 Thu, 7 May 2020 00:44:34 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 30sjdwrsn0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:34 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470iUY9026137;
 Thu, 7 May 2020 00:44:31 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:30 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 32/43] shmem: PKRAM: preserve shmem files a chunk at a time
Date: Wed,  6 May 2020 17:41:58 -0700
Message-Id: <1588812129-8596-33-git-send-email-anthony.yznaga@oracle.com>
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
X-CRM114-CacheID: sfid-20200506_174526_350150_AA20C6DA 
X-CRM114-Status: GOOD (  20.48  )
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

To prepare for multithreading the work done to a preserve a file,
divide the work into subranges of the total index range of the file.
The chunk size is a rather arbitrary 256k indices.

A new API call, pkram_prepare_save_chunk(), is added.  It is called
after calling pkram_prepare_save_obj(), and it initializes pkram_stream
with the index range of the next available range of pages to save.
find_get_pages_range() can then be used to get the pages in the range.
When no more index ranges are available, pkram_prepare_save_chunk()
returns -ENODATA.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |  6 +++++
 mm/pkram.c            | 26 +++++++++++++++++++++
 mm/shmem_pkram.c      | 63 +++++++++++++++++++++++++++++++++++----------------
 3 files changed, 75 insertions(+), 20 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index cbb79d2803c0..e71ccb91d6a6 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -20,6 +20,11 @@ struct pkram_stream {
 	struct address_space *mapping;
 	struct mm_struct *mm;
 
+	unsigned long start_idx;	/* first index in range to save */
+	unsigned long end_idx;		/* last index in range to save */
+	unsigned long max_idx;		/* maximum index to save */
+	atomic64_t *next_idx;		/* first index of next range to save */
+
 	/* byte data */
 	struct page *data_page;
 	unsigned int data_offset;
@@ -46,6 +51,7 @@ void pkram_free_pgt_walk_pgd(pgd_t *pgd);
 int pkram_prepare_save(struct pkram_stream *ps, const char *name,
 		       gfp_t gfp_mask);
 int pkram_prepare_save_obj(struct pkram_stream *ps);
+int pkram_prepare_save_chunk(struct pkram_stream *ps);
 void pkram_finish_save(struct pkram_stream *ps);
 void pkram_finish_save_obj(struct pkram_stream *ps);
 void pkram_discard_save(struct pkram_stream *ps);
diff --git a/mm/pkram.c b/mm/pkram.c
index b83d31740619..5f4e4d12865f 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -638,6 +638,25 @@ int pkram_prepare_save(struct pkram_stream *ps, const char *name, gfp_t gfp_mask
 	return 0;
 }
 
+unsigned long max_pages_per_chunk = 512 * 512;
+
+/*
+ * Initialize the stream @ps for the next index range to save.
+ *
+ * Returns 0 on success, -ENODATA if no index range is available
+ *
+ */
+int pkram_prepare_save_chunk(struct pkram_stream *ps)
+{
+	ps->start_idx = atomic64_fetch_add(max_pages_per_chunk, ps->next_idx);
+	if (ps->start_idx >= ps->max_idx)
+		return -ENODATA;
+
+	ps->end_idx = ps->start_idx + max_pages_per_chunk - 1;
+
+	return 0;
+}
+
 /**
  * Create a preserved memory object and initialize stream @ps for saving data
  * to it.
@@ -667,6 +686,11 @@ int pkram_prepare_save_obj(struct pkram_stream *ps)
 		obj->obj_pfn = node->obj_pfn;
 	node->obj_pfn = page_to_pfn(page);
 
+	ps->next_idx = kmalloc(sizeof(atomic64_t), GFP_KERNEL);
+	if (!ps->next_idx)
+		return -ENOMEM;
+	atomic64_set(ps->next_idx, 0);
+
 	pkram_stream_init_obj(ps, obj);
 	return 0;
 }
@@ -679,6 +703,8 @@ void pkram_finish_save_obj(struct pkram_stream *ps)
 	struct pkram_node *node = ps->node;
 
 	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
+
+	kfree(ps->next_idx);
 }
 
 /**
diff --git a/mm/shmem_pkram.c b/mm/shmem_pkram.c
index c97d64393822..2f4d0bdf3e05 100644
--- a/mm/shmem_pkram.c
+++ b/mm/shmem_pkram.c
@@ -74,58 +74,81 @@ static int save_page(struct page *page, struct pkram_stream *ps)
 	return err;
 }
 
-static int save_file_content(struct pkram_stream *ps)
+static int save_file_content_range(struct address_space *mapping,
+				   struct pkram_stream *ps)
 {
+	unsigned long index, end;
 	struct pagevec pvec;
-	pgoff_t indices[PAGEVEC_SIZE];
-	pgoff_t index = 0;
 	struct page *page;
-	int i, err = 0;
+	int err = 0;
+	int i;
+
+	index = ps->start_idx;
+	end = ps->end_idx;
 
 	pagevec_init(&pvec);
 	for ( ; ; ) {
-		pvec.nr = find_get_entries(ps->mapping, index, PAGEVEC_SIZE,
-				pvec.pages, indices);
+		pvec.nr = find_get_pages_range(mapping, &index, end,
+				PAGEVEC_SIZE, pvec.pages);
 		if (!pvec.nr)
 			break;
-		for (i = 0; i < pagevec_count(&pvec); i++) {
+		for (i = 0; i < pagevec_count(&pvec); ) {
 			page = pvec.pages[i];
-			index = indices[i];
-
-			if (WARN_ON_ONCE(xa_is_value(page))) {
-				err = -EINVAL;
-				break;
-			}
-
 			lock_page(page);
 
 			if (PageTransTail(page)) {
 				WARN_ONCE(1, "PageTransTail returned true\n");
 				unlock_page(page);
+				i++;
 				continue;
 			}
 
-			BUG_ON(page->mapping != ps->mapping);
+			BUG_ON(page->mapping != mapping);
 			err = save_page(page, ps);
 
-			i += compound_nr(page) - 1;
-			index += compound_nr(page) - 1;
+			if (PageCompound(page)) {
+				index = page->index + compound_nr(page);
+				i += compound_nr(page);
+			} else {
+				i++;
+			}
 
 			unlock_page(page);
 			if (err)
 				break;
 		}
-		pagevec_remove_exceptionals(&pvec);
 		pagevec_release(&pvec);
-		if (err)
+		if (err || (index > end))
 			break;
 		cond_resched();
-		index++;
 	}
 
 	return err;
 }
 
+static int do_save_file_content(struct pkram_stream *ps)
+{
+	int ret;
+
+	do {
+		ret = pkram_prepare_save_chunk(ps);
+		if (!ret)
+			ret = save_file_content_range(ps->mapping, ps);
+	} while (!ret);
+
+	if (ret == -ENODATA)
+		ret = 0;
+
+	return ret;
+}
+
+static int save_file_content(struct pkram_stream *ps)
+{
+	ps->max_idx = DIV_ROUND_UP(i_size_read(ps->mapping->host), PAGE_SIZE);
+
+	return do_save_file_content(ps);
+}
+
 static int save_file(struct dentry *dentry, struct pkram_stream *ps)
 {
 	struct inode *inode = dentry->d_inode;
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
