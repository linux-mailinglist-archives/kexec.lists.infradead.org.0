Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E99811C7EE6
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jOcyIViN9n5WRzToO3lYyVYL88nY5eWqJ1zgtmIyITo=; b=ou/R7CFg7S18IT1ZNlpFQAQOy0
	xeVfkq20RWJN1nqJ3ak2FB0VYAsQ0ktpNzMVgDBfB/Ot4gj+8C55Gtf+psFsZikdTrPGxisASSOml
	VYiZHPUF0FTSUQRn+27Pmc7K+NJMi1g13SA+nNQiC7TlhWkWD4jDDlJ6MkB53NNIkBme6hdktJFhC
	Gh5SIfWJwBqbcGvxX5JUjGRcP7yXVzjGy1/B6QIVEOK8YMqy9ycE0PJcSuQfHey7Y/hXDTc7S+EXn
	0OuBVuDw2gsZRjVvv7xeskQDOxRfMlRgwyffI6gZjw/YxBwyRFu1h5A1cZ4JwQ+61hfOVT/x3pimQ
	nerbJwNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUgg-0004gD-Ci; Thu, 07 May 2020 00:46:54 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUgJ-0004Qk-FZ
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:46:47 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470dTvg076311;
 Thu, 7 May 2020 00:44:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=J/IiCj+3kST83E/VcM8iyZaL98ROPYAwK19raHrmTZw=;
 b=NaEwX/P0ZZI39WJCV8xbxOOGMpPaIk3KdKPqmf8xqw4W7aDYRJW8HFEbpNiMORAFOvdg
 Pw0JMz+eZIw1ILS1MUToUdL98fMRvPTPn5RInXZTH3CXNINmo4dd871gbwXTMtprIi5c
 OY/w/M9UUV003jvnhTMeGaLUnH/GW8q+W3Ps1wOZYgvxGqADYIXsF1ml9k2aP35nIE65
 AJqv83Hztpww5XQcAIl/iTQk4+71FS6FE5+fB/xoAxqaagg+rcsnPUwprV29UckCzZ3Z
 29bXAE5twy3CU1lwfYpHznoWgzK+Pd7y9lXfIJChI/rgDlTz1AoTZKiuLeSxgkiiZcSB Hw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 30s09rdfcg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:42 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bTQT098629;
 Thu, 7 May 2020 00:44:41 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 30sjnma5t8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:41 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470ibRQ026192;
 Thu, 7 May 2020 00:44:37 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:36 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 34/43] shmem: PKRAM: multithread preserving and restoring shmem
 pages
Date: Wed,  6 May 2020 17:42:00 -0700
Message-Id: <1588812129-8596-35-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 phishscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 suspectscore=0
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174631_698724_91DB5260 
X-CRM114-Status: GOOD (  17.45  )
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

Improve performance by multithreading the work to preserve and restore
shmem pages.

Add 'pkram_max_threads=' kernel option to specify the maximum number
of threads to use to preserve or restore the pages of a shmem file.
The default is 16.

When preserving pages each thread saves chunks of a file to a pkram_obj
until no more no more chunks are available.

When restoring pages each thread loads pages using a copy of a
pkram_stream initialized by pkram_prepare_load_obj(). Under the hood
each thread ends up fetching and operating on pkram_link pages.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |   2 +
 mm/shmem_pkram.c      | 101 +++++++++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 101 insertions(+), 2 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index e71ccb91d6a6..bf2e138b044e 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -13,6 +13,8 @@ struct pkram_stream {
 	struct pkram_node *node;
 	struct pkram_obj *obj;
 
+	int error;
+
 	struct pkram_link *link;		/* current link */
 	unsigned int entry_idx;		/* next entry in link */
 
diff --git a/mm/shmem_pkram.c b/mm/shmem_pkram.c
index 2f4d0bdf3e05..4992b6c3e54e 100644
--- a/mm/shmem_pkram.c
+++ b/mm/shmem_pkram.c
@@ -126,6 +126,16 @@ static int save_file_content_range(struct address_space *mapping,
 	return err;
 }
 
+/* Completion tracking for do_save_file_content_thr() threads */
+static atomic_t pkram_save_n_undone;
+static DECLARE_COMPLETION(pkram_save_all_done_comp);
+
+static inline void pkram_save_report_one_done(void)
+{
+	if (atomic_dec_and_test(&pkram_save_n_undone))
+		complete(&pkram_save_all_done_comp);
+}
+
 static int do_save_file_content(struct pkram_stream *ps)
 {
 	int ret;
@@ -142,11 +152,55 @@ static int do_save_file_content(struct pkram_stream *ps)
 	return ret;
 }
 
+static int do_save_file_content_thr(void *data)
+{
+	struct pkram_stream *ps = data;
+	struct pkram_stream pslocal = *ps;
+	int ret;
+
+	ret = do_save_file_content(&pslocal);
+	if (ret && !ps->error)
+		ps->error = ret;
+
+	pkram_save_report_one_done();
+	return 0;
+}
+#define PKRAM_DEFAULT_MAX_THREADS	16
+
+static int pkram_max_threads = PKRAM_DEFAULT_MAX_THREADS;
+
+static int __init set_pkram_max_threads(char *str)
+{
+	unsigned int val;
+
+	if (kstrtouint(str, 0, &val))
+		return 1;
+
+	pkram_max_threads = val;
+
+	return 1;
+}
+__setup("pkram_max_threads=", set_pkram_max_threads);
+
 static int save_file_content(struct pkram_stream *ps)
 {
+	unsigned int thr, nr_threads;
+
+	nr_threads = num_online_cpus() - 1;
+	nr_threads = clamp_val(pkram_max_threads, 1, nr_threads);
+
 	ps->max_idx = DIV_ROUND_UP(i_size_read(ps->mapping->host), PAGE_SIZE);
 
-	return do_save_file_content(ps);
+	if (nr_threads == 1)
+		return do_save_file_content(ps);
+
+	atomic_set(&pkram_save_n_undone, nr_threads);
+	for (thr = 0; thr < nr_threads; thr++)
+		kthread_run(do_save_file_content_thr, ps, "pkram_save%d", thr);
+
+	wait_for_completion(&pkram_save_all_done_comp);
+
+	return ps->error;
 }
 
 static int save_file(struct dentry *dentry, struct pkram_stream *ps)
@@ -248,7 +302,17 @@ int shmem_save_pkram(struct super_block *sb)
 	return err;
 }
 
-static int load_file_content(struct pkram_stream *ps)
+/* Completion tracking for do_load_file_content_thr() threads */
+static atomic_t pkram_load_n_undone;
+static DECLARE_COMPLETION(pkram_load_all_done_comp);
+
+static inline void pkram_load_report_one_done(void)
+{
+	if (atomic_dec_and_test(&pkram_load_n_undone))
+		complete(&pkram_load_all_done_comp);
+}
+
+static int do_load_file_content(struct pkram_stream *ps)
 {
 	unsigned long index;
 	struct page *page;
@@ -266,6 +330,39 @@ static int load_file_content(struct pkram_stream *ps)
 	return err;
 }
 
+static int do_load_file_content_thr(void *data)
+{
+	struct pkram_stream *ps = data;
+	struct pkram_stream pslocal = *ps;
+	int ret;
+
+	ret = do_load_file_content(&pslocal);
+	if (ret && !ps->error)
+		ps->error = ret;
+
+	pkram_load_report_one_done();
+	return 0;
+}
+
+static int load_file_content(struct pkram_stream *ps)
+{
+	unsigned int thr, nr_threads;
+
+	nr_threads = num_online_cpus() - 1;
+	nr_threads = clamp_val(pkram_max_threads, 1, nr_threads);
+
+	if (nr_threads == 1)
+		return do_load_file_content(ps);
+
+	atomic_set(&pkram_load_n_undone, nr_threads);
+	for (thr = 0; thr < nr_threads; thr++)
+		kthread_run(do_load_file_content_thr, ps, "pkram_load%d", thr);
+
+	wait_for_completion(&pkram_load_all_done_comp);
+
+	return ps->error;
+}
+
 static int load_file(struct dentry *parent, struct pkram_stream *ps,
 		     char *buf, size_t bufsize)
 {
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
