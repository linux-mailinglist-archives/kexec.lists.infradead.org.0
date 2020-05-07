Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E21E1C7ED2
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZPX0/daCkqs2XwER/M7Rf3Y3j3/zGmPotHJ/bLMc/n0=; b=XTy6GSvEp8csce8eBPJijkdrrc
	HT3mTa0D7iGSmpquGDgWTrYHjLNPGnIOY1oJJ8TGJIqoaCkrqVxNofX+/r+xcpEoPDD5yQzF110tp
	2VjTqzlwjTyuPVS7mw0vdywe25G5ZrBQl63w9fsBTVRxTF3AwjRkCKNnVwgSFz6YyH0EHrzPjI3Lu
	roXbN/AJaF+ey4VgmrFeJPvKhPLNPihIrxwSoLDBY0Zwzt9s56e6BjQJx2Gl1aWq8eFnjyoK/v9DU
	PaEF2jIv8r9kqK09fucyLhsdbuTUTdZCkL3JL2eQGhN2RoALPVICqAJkdUmLqEXLo9dlQnWtBsbH/
	K648pfVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUfS-0003jD-7h; Thu, 07 May 2020 00:45:38 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfF-0003bC-4T
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:45:29 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470c16Z064684;
 Thu, 7 May 2020 00:44:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=9f3UmDwL/aqxnXqEfybd2gNvyfWYGqkBvYGTXbV7Xmo=;
 b=TW6ZzRePDXfEU0ecjZeUmFlqbW9LoXtCpaOl0HlyOXm1Me6fsnBFHZrpCPNhhq7ttnTD
 t0TBEzgUoxr/3lONrETFdIlI09RlNdX6CuSHn+9A4e8QgDsUeJm5++2u9tADLBJOux+l
 fgkHDqoJN12o0sMaicYlau4KG5phGGI5rWDkH8NacH8Y8SoN93PvuLYdTLSasJpFpBPb
 H9tdopuB1vR10FMfJJfkGY8Jg0pg2/Rby/r4PfyL1DVWfdh0qJhobQRNlO71jjzfD6a4
 bSYCi7CY/aShuBoGMuZ3DeCkUgAJQB4pNmxUE9lUJ6bQQjGuF4GDadaKs6PgPQoarjlj BA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 30s09rdfc6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:37 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bm9X131707;
 Thu, 7 May 2020 00:44:37 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 30t1r95cpc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:37 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470iX0S026145;
 Thu, 7 May 2020 00:44:34 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:33 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 33/43] PKRAM: atomically add and remove link pages
Date: Wed,  6 May 2020 17:41:59 -0700
Message-Id: <1588812129-8596-34-git-send-email-anthony.yznaga@oracle.com>
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
X-CRM114-CacheID: sfid-20200506_174525_359313_06C6E4AA 
X-CRM114-Status: GOOD (  13.80  )
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

Add and remove pkram_link pages from a pkram_obj atomically to prepare
for multithreading.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/pkram.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/mm/pkram.c b/mm/pkram.c
index 5f4e4d12865f..042c14dedc25 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -551,22 +551,31 @@ static void pkram_truncate(void)
 
 static void pkram_add_link(struct pkram_link *link, struct pkram_obj *obj)
 {
-	link->link_pfn = obj->link_pfn;
-	obj->link_pfn = page_to_pfn(virt_to_page(link));
+	__u64 link_pfn = page_to_pfn(virt_to_page(link));
+	__u64 *head = &obj->link_pfn;
+
+	do {
+		link->link_pfn = *head;
+	} while (cmpxchg64(head, link->link_pfn, link_pfn) != link->link_pfn);
 }
 
 static struct pkram_link *pkram_remove_link(struct pkram_obj *obj)
 {
 	struct pkram_link *current_link;
+	__u64 *head = &obj->link_pfn;
+	__u64 head_pfn = *head;
+
+	while (head_pfn) {
+		current_link = pfn_to_kaddr(head_pfn);
+		if (cmpxchg64(head, head_pfn, current_link->link_pfn) == head_pfn) {
+			current_link->link_pfn = 0;
+			return current_link;
+		}
 
-	if (!obj->link_pfn)
-		return NULL;
-
-	current_link = pfn_to_kaddr(obj->link_pfn);
-	obj->link_pfn = current_link->link_pfn;
-	current_link->link_pfn = 0;
+		head_pfn = *head;
+	}
 
-	return current_link;
+	return NULL;
 }
 
 static void pkram_stream_init(struct pkram_stream *ps,
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
