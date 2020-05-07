Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A00281C7EDB
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jj4coltbqzhlfHI1pGGehqRkXeNiET8SdVOUvbD7ky0=; b=ua91ef1N8Hyj7JbcJR1mwq9HZH
	a9oLBFpflfwnWTR8SEuHGNSifU92ERodprUwGiGowf4Ozxw6W4YlFNxkOoL1xXdFZy/B0bChYdKrd
	CxsaSGGAIL4shwxq2O/CTrys5LD3d6FihwSHAoihEFy3uylwiTkrq1sMIsWkSKGCAK8aSODrfkyoE
	cMYwQ1f4beot2jKkWj0DOCbYaVPbhoqXgb0RNqVBQ9XGF0zNm/sEN9bZPfB94XW6x5eVXspNSk9Iv
	+H7KxNZ4fA7L1ZzytxF5Hc5WUluS/8suG594KKsiQBRSWBJ0VmNH/DFnQhxmEj2ttis+JezApiYIY
	g2gUCPAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUfy-00048z-D0; Thu, 07 May 2020 00:46:10 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfV-0007YO-BY
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:45:52 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470eGfM098246;
 Thu, 7 May 2020 00:42:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=rwgijllW6M4XeYhmgrj3fFunHwUOc+7hS8CUFmbdL+Y=;
 b=R133pfJPycmJwf2nkOwOYFHZc44QZzHbHBW+GOTn/ard0CwPxFr1B5n0o2GLQy9oM38i
 HZE8RpmIPtKkvpdd5MKkyYJhpzkhaF3dJcsXnWRKGChHTCZNIUWkvV+5PjaK4cUQun9t
 Y56I+jDYIJcdEE8u1OnTCbSuRbZnSYOhcJQA3d/t0x1aiUlpWnvz2Ek1PEQyTT50cFnR
 QIrrys3PpUBpnz6QcXuClvEAQ/0styrGCrveOGqL2sc2a7+VJ3zrrnYu7Z80jADYzIb7
 tyUfLzsFfZA88gGJjIe6f7HTeRRJO909+XwIkCu1/FQlDhfbzDB7Vj/RIM/XxLdmflX6 Ug== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 30usgq4gw0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:39 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bmCE131715;
 Thu, 7 May 2020 00:42:38 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 30t1r957v3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:38 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470gZvx025355;
 Thu, 7 May 2020 00:42:35 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:35 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 05/43] mm: PKRAM: support preserving transparent hugepages
Date: Wed,  6 May 2020 17:41:31 -0700
Message-Id: <1588812129-8596-6-git-send-email-anthony.yznaga@oracle.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=2 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174541_536733_2FC64E10 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [141.146.126.78 listed in wl.mailspike.net]
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

Support preserving a transparent hugepage by recording the page order and
a flag indicating it is a THP.  Use these values when the page is
restored to reconstruct the THP.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 include/linux/pkram.h |  2 ++
 mm/pkram.c            | 20 ++++++++++++++++----
 2 files changed, 18 insertions(+), 4 deletions(-)

diff --git a/include/linux/pkram.h b/include/linux/pkram.h
index f338d1c2aeb6..584cadb662b4 100644
--- a/include/linux/pkram.h
+++ b/include/linux/pkram.h
@@ -33,6 +33,8 @@ int pkram_prepare_load_obj(struct pkram_stream *ps);
 void pkram_finish_load(struct pkram_stream *ps);
 void pkram_finish_load_obj(struct pkram_stream *ps);
 
+#define PKRAM_PAGE_TRANS_HUGE	0x1	/* page is a transparent hugepage */
+
 int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags);
 struct page *pkram_load_page(struct pkram_stream *ps, unsigned long *index,
 			     short *flags);
diff --git a/mm/pkram.c b/mm/pkram.c
index ab3053ca3539..9164060e36f5 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -21,6 +21,7 @@ typedef __u64 pkram_entry_t;
 
 #define PKRAM_ENTRY_FLAGS_SHIFT	0x5
 #define PKRAM_ENTRY_FLAGS_MASK	0x7f
+#define PKRAM_ENTRY_ORDER_MASK	0x1f
 
 /*
  * Keeps references to data pages saved to PKRAM.
@@ -434,6 +435,7 @@ static int __pkram_save_page(struct pkram_stream *ps,
 	struct pkram_link *link = ps->link;
 	struct pkram_obj *obj = ps->obj;
 	pkram_entry_t p;
+	int order;
 
 	if (!link || ps->entry_idx >= PKRAM_LINK_ENTRIES_MAX ||
 	    index != ps->next_index) {
@@ -452,10 +454,15 @@ static int __pkram_save_page(struct pkram_stream *ps,
 		ps->next_index = link->index = index;
 	}
 
-	ps->next_index++;
+	if (PageTransHuge(page))
+		flags |= PKRAM_PAGE_TRANS_HUGE;
+
+	order = compound_order(page);
+	ps->next_index += (1 << order);
 
 	get_page(page);
 	p = page_to_phys(page);
+	p |= order;
 	p |= ((flags & PKRAM_ENTRY_FLAGS_MASK) << PKRAM_ENTRY_FLAGS_SHIFT);
 	link->entry[ps->entry_idx] = p;
 	ps->entry_idx++;
@@ -485,8 +492,6 @@ int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags)
 
 	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
 
-	BUG_ON(PageCompound(page));
-
 	return __pkram_save_page(ps, page, flags, page->index);
 }
 
@@ -499,6 +504,7 @@ static struct page *__pkram_load_page(struct pkram_stream *ps, unsigned long *in
 	struct pkram_link *link = ps->link;
 	struct page *page;
 	pkram_entry_t p;
+	int order;
 	short flgs;
 
 	if (!link) {
@@ -517,14 +523,20 @@ static struct page *__pkram_load_page(struct pkram_stream *ps, unsigned long *in
 	BUG_ON(!p);
 
 	flgs = (p >> PKRAM_ENTRY_FLAGS_SHIFT) & PKRAM_ENTRY_FLAGS_MASK;
+	order = p & PKRAM_ENTRY_ORDER_MASK;
 	page = pfn_to_page(PHYS_PFN(p));
 
+	if (flgs & PKRAM_PAGE_TRANS_HUGE) {
+		prep_compound_page(page, order);
+		prep_transhuge_page(page);
+	}
+
 	if (flags)
 		*flags = flgs;
 	if (index)
 		*index = ps->next_index;
 
-	ps->next_index++;
+	ps->next_index += (1 << order);
 
 	/* clear to avoid double free (see pkram_truncate_link()) */
 	link->entry[ps->entry_idx] = 0;
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
