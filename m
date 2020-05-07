Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F5F1C7EDC
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:46:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lvuTyX2qArL6p3FGxxxyzBeDwCWtJhp7SYCwIouWhTw=; b=cGLwHOlI7muKgsGSHaQntVP1PA
	RxnixMky+X0puIPObidqFDrxxMoFzhdebNNC1OExqiy+RVJC+FgF64RW+A5+YQ4Znsc0FJzvcxsNz
	PBv7yRjLDsjEHGhLJwo5/4zbzx3c9uHLpeUTU6VDByaiYpl9v0BnuGGZ5IMqrmz5NOXoZa6KThOWk
	Wscx+T+zqgD+4eqMmM7IeWJogikgSw1c/cSH1E2L4a1rhFZtabztEHf8YjjnEMtoTlnzbZM7HG+WE
	pjXU1FEGZBc4j0bLWbD9C9kEzIG4/pjcKj8JhZyLCeGMDB1JX42e7mtsep3UdnxHSEQSwcuRaSZqg
	qTFXeD+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUg3-0004Bx-AJ; Thu, 07 May 2020 00:46:15 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfX-0003qB-Mi
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:45:54 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470befJ064522;
 Thu, 7 May 2020 00:44:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=cg4oKTlkz7COgexHCFzVJnE42b7eeQownh5JuIB+IVo=;
 b=H1det3gMfdv8Nw3uK+9bx7D1A8RL3637W4FILQ5ULMPvVpbUEtQITqpXr4+XhPK9zRiK
 tN+YtTCWcgh/a2asuQqUOQhmNLxg90x07tg/FXahQhekcuk1eJaJfZsrxHNSJmE+RhkY
 5+aPjy98gm4Vsqu++p0KOgzDfqxT7HtS3ieI8FuYttljU0J4BqilSgeWNUrVO803/Igm
 pLPSqbMCekuQJXTezhoBDdwyWLzQc0AWcg7Jdu4cH12b4Nw88bHSlV+wFvoZVsfqfzy2
 TcwOgt0ZwUNcd9sLaRDnyfiMreokb+K23IwOHa0KXvhozdKyJMLhzgtCZU+LtD4ZoVOi GA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 30s09rdfd0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:52 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bmIF131679;
 Thu, 7 May 2020 00:42:52 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 30t1r958af-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:52 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470go88019800;
 Thu, 7 May 2020 00:42:50 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:50 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 10/43] PKRAM: add code for walking the preserved pages pagetable
Date: Wed,  6 May 2020 17:41:36 -0700
Message-Id: <1588812129-8596-11-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 spamscore=0 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0
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
X-CRM114-CacheID: sfid-20200506_174543_933734_A351E186 
X-CRM114-Status: GOOD (  18.91  )
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

Add the ability to walk the pkram pagetable from high to low addresses
and execute a callback for each contiguous range of preserved or not
preserved memory found.  The reason for walking high to low is to align
with high to low memblock allocation when finding holes that memblocks
can safely be allocated from as will be seen in a later patch.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |  15 +++++
 mm/Makefile           |   2 +-
 mm/pkram_pagetable.c  | 169 ++++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 185 insertions(+), 1 deletion(-)
 create mode 100644 mm/pkram_pagetable.c

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index a58dd2ea835a..b6fa973d37cc 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -25,6 +25,21 @@ struct pkram_stream {
 
 #define PKRAM_NAME_MAX		256	/* including nul */
 
+struct pkram_pg_state {
+	int (*range_cb)(struct pkram_pg_state *state, unsigned long base,
+			unsigned long size);
+	unsigned long curr_addr;
+	unsigned long end_addr;
+	unsigned long min_addr;
+	unsigned long max_addr;
+	unsigned long min_size;
+	bool tracking;
+	bool find_holes;
+	unsigned long retval;
+};
+
+void pkram_walk_pgt_rev(struct pkram_pg_state *st, pgd_t *pgd);
+
 int pkram_prepare_save(struct pkram_stream *ps, const char *name,
 		       gfp_t gfp_mask);
 int pkram_prepare_save_obj(struct pkram_stream *ps);
diff --git a/mm/Makefile b/mm/Makefile
index 59cd381194af..c4ad1c56e237 100644
--- a/mm/Makefile
+++ b/mm/Makefile
@@ -112,4 +112,4 @@ obj-$(CONFIG_MEMFD_CREATE) += memfd.o
 obj-$(CONFIG_MAPPING_DIRTY_HELPERS) += mapping_dirty_helpers.o
 obj-$(CONFIG_PTDUMP_CORE) += ptdump.o
 obj-$(CONFIG_PAGE_REPORTING) += page_reporting.o
-obj-$(CONFIG_PKRAM) += pkram.o
+obj-$(CONFIG_PKRAM) += pkram.o pkram_pagetable.o
diff --git a/mm/pkram_pagetable.c b/mm/pkram_pagetable.c
new file mode 100644
index 000000000000..d31aa36207ba
--- /dev/null
+++ b/mm/pkram_pagetable.c
@@ -0,0 +1,169 @@
+// SPDX-License-Identifier: GPL-2.0
+#include <linux/bitops.h>
+#include <asm/pgtable.h>
+#include <linux/pkram.h>
+
+#define pgd_none(a)  (pgtable_l5_enabled() ? pgd_none(a) : p4d_none(__p4d(pgd_val(a))))
+
+static int note_page_rev(struct pkram_pg_state *st, unsigned long curr_size, bool present)
+{
+	unsigned long curr_addr = st->curr_addr;
+	bool track_page = present ^ st->find_holes;
+
+	if (!st->tracking && track_page) {
+		unsigned long end_addr = curr_addr + curr_size;
+
+		if (end_addr <= st->min_addr)
+			return 1;
+
+		st->end_addr = min(end_addr, st->max_addr);
+		st->tracking = true;
+	} else if (st->tracking) {
+		unsigned long base, size;
+
+		/* Continue tracking if lower bound has not been reached */
+		if (track_page && curr_addr && curr_addr >= st->min_addr)
+			return 0;
+
+		if (!track_page)
+			base = max(curr_addr + curr_size, st->min_addr);
+		else
+			base = st->min_addr;
+
+		size = st->end_addr - base;
+		st->tracking = false;
+
+		return st->range_cb(st, base, size);
+	}
+
+	return 0;
+}
+
+static int walk_pte_level_rev(struct pkram_pg_state *st, pmd_t addr, unsigned long P)
+{
+	unsigned long *bitmap;
+	int present;
+	int i, ret;
+
+	bitmap = __va(pmd_val(addr));
+	for (i = PTRS_PER_PTE - 1; i >= 0; i--) {
+		unsigned long curr_addr = P + i * PAGE_SIZE;
+
+		if (curr_addr >= st->max_addr)
+			continue;
+		st->curr_addr = curr_addr;
+
+		present = test_bit(i, bitmap);
+		ret = note_page_rev(st, PAGE_SIZE, present);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+static int walk_pmd_level_rev(struct pkram_pg_state *st, pud_t addr, unsigned long P)
+{
+	pmd_t *start;
+	int i, ret;
+
+	start = (pmd_t *)pud_page_vaddr(addr) + PTRS_PER_PMD - 1;
+	for (i = PTRS_PER_PMD - 1; i >= 0; i--, start--) {
+		unsigned long curr_addr = P + i * PMD_SIZE;
+
+		if (curr_addr >= st->max_addr)
+			continue;
+		st->curr_addr = curr_addr;
+
+		if (!pmd_none(*start)) {
+			if (pmd_large(*start))
+				ret = note_page_rev(st, PMD_SIZE, true);
+			else
+				ret = walk_pte_level_rev(st, *start, curr_addr);
+		} else
+			ret = note_page_rev(st, PMD_SIZE, false);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+static int walk_pud_level_rev(struct pkram_pg_state *st, p4d_t addr, unsigned long P)
+{
+	pud_t *start;
+	int i, ret;
+
+	start = (pud_t *)p4d_page_vaddr(addr) + PTRS_PER_PUD - 1;
+	for (i = PTRS_PER_PUD - 1; i >= 0 ; i--, start--) {
+		unsigned long curr_addr = P + i * PUD_SIZE;
+
+		if (curr_addr >= st->max_addr)
+			continue;
+		st->curr_addr = curr_addr;
+
+		if (!pud_none(*start)) {
+			if (pud_large(*start))
+				ret = note_page_rev(st, PUD_SIZE, true);
+			else
+				ret = walk_pmd_level_rev(st, *start, curr_addr);
+		} else
+			ret = note_page_rev(st, PUD_SIZE, false);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+static int walk_p4d_level_rev(struct pkram_pg_state *st, pgd_t addr, unsigned long P)
+{
+	p4d_t *start;
+	int i, ret;
+
+	if (PTRS_PER_P4D == 1)
+		return walk_pud_level_rev(st, __p4d(pgd_val(addr)), P);
+
+	start = (p4d_t *)pgd_page_vaddr(addr) + PTRS_PER_P4D - 1;
+	for (i = PTRS_PER_P4D - 1; i >= 0; i--, start--) {
+		unsigned long curr_addr = P + i * P4D_SIZE;
+
+		if (curr_addr >= st->max_addr)
+			continue;
+		st->curr_addr = curr_addr;
+
+		if (!p4d_none(*start)) {
+			if (p4d_large(*start))
+				ret = note_page_rev(st, P4D_SIZE, true);
+			else
+				ret = walk_pud_level_rev(st, *start, curr_addr);
+		} else
+			ret = note_page_rev(st, P4D_SIZE, false);
+		if (ret)
+			break;
+	}
+
+	return ret;
+}
+
+void pkram_walk_pgt_rev(struct pkram_pg_state *st, pgd_t *pgd)
+{
+	pgd_t *start;
+	int i, ret;
+
+	start = pgd + PTRS_PER_PGD - 1;
+	for (i = PTRS_PER_PGD - 1; i >= 0; i--, start--) {
+		unsigned long curr_addr = i * PGDIR_SIZE;
+
+		if (curr_addr >= st->max_addr)
+			continue;
+		st->curr_addr = curr_addr;
+
+		if (!pgd_none(*start))
+			ret = walk_p4d_level_rev(st, *start, curr_addr);
+		else
+			ret = note_page_rev(st, PGDIR_SIZE, false);
+		if (ret)
+			break;
+	}
+}
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
