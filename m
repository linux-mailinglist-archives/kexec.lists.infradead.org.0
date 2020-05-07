Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C751F1C7EE4
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SMtg7qO40li0aqwhAuefiD2YOeWFmzRtk5SU0HHQEnA=; b=eEmGIeM3xgQVm5e49iDd7ybYfH
	i4pEg4RgPRj3N2HywLs7ahu5c8fMB0VpW++d0czHkpg/Dyn1+ZgLRSSs1l8Sea/tDaaVisqOY6RnD
	x1iQFdkquB9wn9EKpNPUQeDy3llVTTmk6PgZK4iwa6fN+f8XhlC3JuTp+SVfYXJq3rN+DbBPJ3kcI
	G/tAz1HvTgYBNRFpaYd0dFTixjGeObPesMKKbHgTMx6dtoxhT18itGN3U0lZJi38rzJ24ito78HxX
	z0W+xWBzh/EshM98GINXfTdkyMeFc9ItevkfYxikj/9Uc4qQVeLuoDzgU0UK49vgwgM15C+TN5lp8
	cMPpINUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUgY-0004ZM-94; Thu, 07 May 2020 00:46:46 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfk-0003zu-8k
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:46:08 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bjvQ092893;
 Thu, 7 May 2020 00:44:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=sXz+5MX/e43ODGutAI7Eoi78pN72CvHNRozhR5OcLiY=;
 b=JpV7XO6RwQPucJ1rzxFOrsUoGfS6PaZu4Xq59fbTr7D8gnurRyXVepNkiKrUY7ZWdWuE
 FYeu8glZtcMNsarunOq7+eS23s7Grd371BkO8UvWf6hmDlnYU0BmdCDtAUPCfpzLMU2Z
 oeHzKLxttnshWsKX5tF9pbl/opBNAylWQ5ags9r7Cd5eMsMDy+lwlbODzH9+jE1pE2e5
 OXzO8JyJy8+aoI+pYt1R4fe7cwE3cX9/TpBvxJnvozO0ov0IrK7M8483f84Le4WlP4ot
 fVHYkurQo2RH3pmEkEgSB5l3vGC/x4CImxxdoGFnkDifY5a4l1ye4OafH3qm6fqBMYMX 0w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30s1gnd8pe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470aqPn170885;
 Thu, 7 May 2020 00:44:08 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 30us7p2np8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:08 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0470i6Ko029955;
 Thu, 7 May 2020 00:44:06 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:05 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 26/43] mm: shmem: when inserting,
 handle pages already charged to a memcg
Date: Wed,  6 May 2020 17:41:52 -0700
Message-Id: <1588812129-8596-27-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174556_489759_B795132F 
X-CRM114-Status: GOOD (  15.67  )
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

If shmem_insert_page() is called to insert a page that was preserved
using PKRAM on the current boot (i.e. preserved page is restored without
an intervening kexec boot), the page will still be charged to a memory
cgroup because it is never freed. Don't try to charge it again.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/shmem.c | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/mm/shmem.c b/mm/shmem.c
index 13475073fb52..1f3b43b8fa34 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -693,6 +693,7 @@ int shmem_insert_page(struct mm_struct *mm, struct inode *inode, pgoff_t index,
 	struct mem_cgroup *memcg;
 	pgoff_t hindex = index;
 	bool on_lru = PageLRU(page);
+	bool has_memcg = page->mem_cgroup ? true : false;
 
 	if (index > (MAX_LFS_FILESIZE >> PAGE_SHIFT))
 		return -EFBIG;
@@ -738,20 +739,24 @@ int shmem_insert_page(struct mm_struct *mm, struct inode *inode, pgoff_t index,
 
 	__SetPageReferenced(page);
 
-	err = mem_cgroup_try_charge_delay(page, mm, gfp, &memcg,
-					PageTransHuge(page));
-	if (err)
-		goto out_unlock;
+	if (!has_memcg) {
+		err = mem_cgroup_try_charge_delay(page, mm, gfp, &memcg,
+						PageTransHuge(page));
+		if (err)
+			goto out_unlock;
+	}
 
 	err = shmem_add_to_page_cache(page, mapping, hindex,
 					NULL, gfp & GFP_RECLAIM_MASK);
 	if (err) {
-		mem_cgroup_cancel_charge(page, memcg,
-			PageTransHuge(page));
+		if (!has_memcg)
+			mem_cgroup_cancel_charge(page, memcg,
+						PageTransHuge(page));
 		goto out_unlock;
 	}
-	mem_cgroup_commit_charge(page, memcg, on_lru,
-			PageTransHuge(page));
+	if (!has_memcg)
+		mem_cgroup_commit_charge(page, memcg, on_lru,
+					PageTransHuge(page));
 
 	if (!on_lru)
 		lru_cache_add_anon(page);
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
