Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD001C7EA5
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:43:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=visw6W/WftlJxn6IsacwAwz9Gp8Onu44Xi94W2SP6Ec=; b=Re+Hjm2oOU8PxXTFygRVyp4w9n
	nHmhnBgDSsFWzUmqspbktl3yfsr1bP+TfklGkn9AQj6KtK0k4ZXFjwD4AcSrZqpDMQ+6BIfO8Vm48
	HgO86plzqISy1EpM88nQ+4nya3Tq5rsSTHoL4TgKRZrJpNArqA9x5w6LgV6cqAwfLNABCpnVIm4dM
	nISMIcwR79FMTyoiCwuz94GRk+rNfAILIMLShSJdl7CM7m7Voj40UAaixkoPsOV0LR0vn0bDxgtc6
	l4QSeSe3YYRTOhAgK0oh/dcxhbXaqAhyYfeNNc21LrJa/4EYWir9aJeuS1VxhLAVpjB2LB4okBCZ8
	JEyt7JDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUde-0007aq-ML; Thu, 07 May 2020 00:43:46 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUda-0007Y4-2w
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:43:43 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470c1Db064681;
 Thu, 7 May 2020 00:42:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=cRokmIrDLimjlBUK/N95gfOnui9YBNCKZCsu0Wq2qw8=;
 b=MhrQqCAoxi0wVRQcC+XPK0A+7PcFgkTJH0gIarTVJaU4dOTsBN3HzX3lQSggnAAe/4Zt
 SxJhil3zqI1dbma9HaBvdoJ0Cfbs1Kyd3H5vTZTlaSoLTAf3h3fBj6HRoEaHBmURzSVe
 16nlhttDRCDzvesj1t+RUuhX5cNwI3QpHzJFaDaAvFdpt8KkdTqucGb8wz+CnBTn8IGi
 gE4JajV8tzZM2lN2OMa2hCfarx4uJHp1EgXFXjr8XF8gLVES+iECVFUUoyvzcFrjnZRR
 xJVT1js58IJHgW+Teouxel65B5IuxJDDtaCFw/b9iq5+JQGxrdJLexhre6+vi5SSiCEX hQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 30s09rdf6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:51 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bmpv131670;
 Thu, 7 May 2020 00:42:50 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 30t1r95894-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:50 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470glXd025517;
 Thu, 7 May 2020 00:42:47 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:47 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 09/43] PKRAM: build a physical mapping pagetable of pages to be
 preserved
Date: Wed,  6 May 2020 17:41:35 -0700
Message-Id: <1588812129-8596-10-git-send-email-anthony.yznaga@oracle.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxscore=0
 lowpriorityscore=0 spamscore=0 adultscore=0 clxscore=1015 suspectscore=2
 priorityscore=1501 malwarescore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174342_262733_BD02476B 
X-CRM114-Status: GOOD (  20.85  )
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

Future patches will need a way to efficiently identify physically
contiguous ranges of preserved pages regardless of their virtual
addresses as well as a way to identify ranges that do not contain
preserved pages. To facilitate this all pages to be preserved across
kexec are added to an identity mapping-style pagetable that is passed
to the next kernel.

The pagetable makes use of the existing architecture definitions for
building a memory mapping pagetable with the primary difference being
that a bitmap is used to represent the presence or absence of preserved
pages at the PTE level.

In general both metadata pages and data pages must be added to the
pagetable.  A mapping for a metadata page can be added when the page is
allocated, but there is an exception: for the pagetable pages themselves
mappings are added after they are allocated to avoid recursion.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/pkram.c | 233 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 230 insertions(+), 3 deletions(-)

diff --git a/mm/pkram.c b/mm/pkram.c
index 70f2219e6218..5a7b8f61a55d 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -99,6 +99,12 @@ struct pkram_super_block {
 static unsigned long pkram_sb_pfn __initdata;
 static struct pkram_super_block *pkram_sb;
 
+static pgd_t *pkram_pgd;
+static DEFINE_SPINLOCK(pkram_pgd_lock);
+
+static int pkram_add_identity_map(struct page *page);
+static void pkram_remove_identity_map(struct page *page);
+
 /*
  * For convenience sake PKRAM nodes are kept in an auxiliary doubly-linked list
  * connected through the lru field of the page struct.
@@ -115,13 +121,31 @@ static int __init parse_pkram_sb_pfn(char *arg)
 }
 early_param("pkram", parse_pkram_sb_pfn);
 
+static inline struct page *__pkram_alloc_page(gfp_t gfp_mask, bool add_to_map)
+{
+	struct page *page;
+	int err;
+
+	page = alloc_page(gfp_mask);
+	if (page && add_to_map) {
+		err = pkram_add_identity_map(page);
+		if (err) {
+			__free_page(page);
+			page = NULL;
+		}
+	}
+
+	return page;
+}
+
 static inline struct page *pkram_alloc_page(gfp_t gfp_mask)
 {
-	return alloc_page(gfp_mask);
+	return __pkram_alloc_page(gfp_mask, true);
 }
 
 static inline void pkram_free_page(void *addr)
 {
+	pkram_remove_identity_map(virt_to_page(addr));
 	free_page((unsigned long)addr);
 }
 
@@ -159,6 +183,7 @@ static void pkram_truncate_link(struct pkram_link *link)
 		if (!p)
 			continue;
 		page = pfn_to_page(PHYS_PFN(p));
+		pkram_remove_identity_map(page);
 		put_page(page);
 	}
 }
@@ -547,10 +572,15 @@ static int __pkram_save_page(struct pkram_stream *ps,
 int pkram_save_page(struct pkram_stream *ps, struct page *page, short flags)
 {
 	struct pkram_node *node = ps->node;
+	int err;
 
 	BUG_ON((node->flags & PKRAM_ACCMODE_MASK) != PKRAM_SAVE);
 
-	return __pkram_save_page(ps, page, flags, page->index);
+	err = __pkram_save_page(ps, page, flags, page->index);
+	if (!err)
+		err = pkram_add_identity_map(page);
+
+	return err;
 }
 
 /*
@@ -599,6 +629,8 @@ static struct page *__pkram_load_page(struct pkram_stream *ps, unsigned long *in
 	/* clear to avoid double free (see pkram_truncate_link()) */
 	link->entry[ps->entry_idx] = 0;
 
+	pkram_remove_identity_map(page);
+
 	ps->entry_idx++;
 	if (ps->entry_idx >= PKRAM_LINK_ENTRIES_MAX ||
 	    !link->entry[ps->entry_idx]) {
@@ -791,7 +823,7 @@ static int __init pkram_init_sb(void)
 	if (!pkram_sb) {
 		struct page *page;
 
-		page = pkram_alloc_page(GFP_KERNEL | __GFP_ZERO);
+		page = __pkram_alloc_page(GFP_KERNEL | __GFP_ZERO, false);
 		if (!page) {
 			pr_err("PKRAM: Failed to allocate super block\n");
 			return 0;
@@ -821,3 +853,198 @@ static int __init pkram_init(void)
 	return 0;
 }
 module_init(pkram_init);
+
+static unsigned long *pkram_alloc_pte_bitmap(void)
+{
+	return page_address(__pkram_alloc_page(GFP_KERNEL | __GFP_ZERO, false));
+}
+
+static void pkram_free_pte_bitmap(void *bitmap)
+{
+	pkram_remove_identity_map(virt_to_page(bitmap));
+	free_page((unsigned long)bitmap);
+}
+
+#define set_p4d(p4dp, p4d)	WRITE_ONCE(*(p4dp), (p4d))
+
+static int pkram_add_identity_map(struct page *page)
+{
+	unsigned long orig_paddr, paddr;
+	unsigned long *bitmap;
+	int result = -ENOMEM;
+	unsigned int index;
+	struct page *pg;
+	LIST_HEAD(list);
+	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
+	pmd_t *pmd;
+
+	if (!pkram_pgd) {
+		spin_lock(&pkram_pgd_lock);
+		if (!pkram_pgd) {
+			pg = __pkram_alloc_page(GFP_KERNEL | __GFP_ZERO, false);
+			if (!pg)
+				goto err;
+			pkram_pgd = page_address(pg);
+		}
+		spin_unlock(&pkram_pgd_lock);
+	}
+
+	orig_paddr = paddr = __pa(page_address(page));
+again:
+	pgd = pkram_pgd;
+	pgd += pgd_index(paddr);
+	if (pgd_none(*pgd)) {
+		spin_lock(&pkram_pgd_lock);
+		if (pgd_none(*pgd)) {
+			pg = __pkram_alloc_page(GFP_KERNEL|__GFP_ZERO, false);
+			if (!pg)
+				goto err;
+			list_add(&pg->lru, &list);
+			p4d = page_address(pg);
+			set_pgd(pgd, __pgd(__pa(p4d)));
+		}
+		spin_unlock(&pkram_pgd_lock);
+	}
+	p4d = p4d_offset(pgd, paddr);
+	if (p4d_none(*p4d)) {
+		spin_lock(&pkram_pgd_lock);
+		if (p4d_none(*p4d)) {
+			pg = __pkram_alloc_page(GFP_KERNEL|__GFP_ZERO, false);
+			if (!pg)
+				goto err;
+			list_add(&pg->lru, &list);
+			pud = page_address(pg);
+			set_p4d(p4d, __p4d(__pa(pud)));
+		}
+		spin_unlock(&pkram_pgd_lock);
+	}
+	pud = pud_offset(p4d, paddr);
+	if (pud_none(*pud)) {
+		spin_lock(&pkram_pgd_lock);
+		if (pud_none(*pud)) {
+			pg = __pkram_alloc_page(GFP_KERNEL|__GFP_ZERO, false);
+			if (!pg)
+				goto err;
+			list_add(&pg->lru, &list);
+			pmd = page_address(pg);
+			set_pud(pud, __pud(__pa(pmd)));
+		}
+		spin_unlock(&pkram_pgd_lock);
+	}
+	pmd = pmd_offset(pud, paddr);
+	if (pmd_none(*pmd)) {
+		spin_lock(&pkram_pgd_lock);
+		if (pmd_none(*pmd)) {
+			if (PageTransHuge(page)) {
+				set_pmd(pmd, pmd_mkhuge(*pmd));
+				spin_unlock(&pkram_pgd_lock);
+				goto next;
+			}
+			bitmap = pkram_alloc_pte_bitmap();
+			if (!bitmap)
+				goto err;
+			pg = virt_to_page(bitmap);
+			list_add(&pg->lru, &list);
+			set_pmd(pmd, __pmd(__pa(bitmap)));
+		} else {
+			BUG_ON(pmd_large(*pmd));
+			bitmap = __va(pmd_val(*pmd));
+		}
+		spin_unlock(&pkram_pgd_lock);
+	} else {
+		BUG_ON(pmd_large(*pmd));
+		bitmap = __va(pmd_val(*pmd));
+	}
+
+	index = pte_index(paddr);
+	BUG_ON(test_bit(index, bitmap));
+	set_bit(index, bitmap);
+	smp_mb__after_atomic();
+	if (bitmap_full(bitmap, PTRS_PER_PTE))
+		set_pmd(pmd, pmd_mkhuge(*pmd));
+next:
+	/* Add mappings for any pagetable pages that were allocated */
+	if (!list_empty(&list)) {
+		page = list_first_entry(&list, struct page, lru);
+		list_del_init(&page->lru);
+		paddr = __pa(page_address(page));
+		goto again;
+	}
+
+	return 0;
+err:
+	spin_unlock(&pkram_pgd_lock);
+	while (!list_empty(&list)) {
+		pg = list_first_entry(&list, struct page, lru);
+		list_del_init(&pg->lru);
+	}
+	return result;
+}
+
+static void pkram_remove_identity_map(struct page *page)
+{
+	unsigned long *bitmap;
+	unsigned long paddr;
+	unsigned int index;
+	pgd_t *pgd;
+	p4d_t *p4d;
+	pud_t *pud;
+	pmd_t *pmd;
+
+	/*
+	 * pkram_pgd will be null when freeing metadata pages after a reboot
+	 */
+	if (!pkram_pgd)
+		return;
+
+	paddr = __pa(page_address(page));
+	pgd = pkram_pgd;
+	pgd += pgd_index(paddr);
+	if (pgd_none(*pgd)) {
+		WARN_ONCE(1, "PKRAM: %s: no pgd for 0x%lx\n", __func__, paddr);
+		return;
+	}
+	p4d = p4d_offset(pgd, paddr);
+	if (p4d_none(*p4d)) {
+		WARN_ONCE(1, "PKRAM: %s: no p4d for 0x%lx\n", __func__, paddr);
+		return;
+	}
+	pud = pud_offset(p4d, paddr);
+	if (pud_none(*pud)) {
+		WARN_ONCE(1, "PKRAM: %s: no pud for 0x%lx\n", __func__, paddr);
+		return;
+	}
+	pmd = pmd_offset(pud, paddr);
+	if (pmd_none(*pmd)) {
+		WARN_ONCE(1, "PKRAM: %s: no pmd for 0x%lx\n", __func__, paddr);
+		return;
+	}
+	if (PageTransHuge(page)) {
+		BUG_ON(!pmd_large(*pmd));
+		pmd_clear(pmd);
+		return;
+	}
+
+	if (pmd_large(*pmd)) {
+		spin_lock(&pkram_pgd_lock);
+		if (pmd_large(*pmd))
+			set_pmd(pmd, __pmd(pte_val(pte_clrhuge(*(pte_t *)pmd))));
+		spin_unlock(&pkram_pgd_lock);
+	}
+
+	bitmap = __va(pmd_val(*pmd));
+	index = pte_index(paddr);
+	clear_bit(index, bitmap);
+	smp_mb__after_atomic();
+
+	spin_lock(&pkram_pgd_lock);
+	if (!pmd_none(*pmd) && bitmap_empty(bitmap, PTRS_PER_PTE)) {
+		pmd_clear(pmd);
+		spin_unlock(&pkram_pgd_lock);
+		pkram_free_pte_bitmap(bitmap);
+	} else {
+		spin_unlock(&pkram_pgd_lock);
+	}
+}
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
