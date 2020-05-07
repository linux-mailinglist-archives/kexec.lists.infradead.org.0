Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 932391C7EE2
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:46:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tTiZd8Q2d9QYTJ28rMpGzCZLIvsKgpGzcQQ2B+gpj14=; b=OvV38YVihnG2Fmo1y/gNdSUQvC
	NpNFHAXwV3Quy5gx+xora949uOjdfAFnaNF5VBcpVU2vbKuRKj8dya5Q8B3XAJPRWw2dDK9I2qdtU
	C6SoQnvITl3evJOcd3ZWDDeDqvc+6cfAequbCXAvxOIWstQMwGh/JFIB1ZKeQFHrZBiPOsvEAiKDJ
	Fp5WeiosypWjIA6baV3a0Yngo7NskwWkC5jT2jEle2sUXhHtqKF17IrwLnyPoNKc5OLUFXdvQMQ6h
	7mUINPRyb3Z6lDFObbnLa3lJmDTTTwSaW+x6LlxUoFz9anCSIA8BZeupCp7B7070c4Z90y1/LsVnX
	WuJ0bvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUgQ-0004Sf-Cy; Thu, 07 May 2020 00:46:38 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfj-000409-Jz
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:46:06 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470ep5K098400;
 Thu, 7 May 2020 00:45:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=GHyTm1dF4tuIvRr/Sme8g0LfjNUADURL5kv1ja2d5gg=;
 b=B2ieybBw6yGUeCUHVlAsRBnlc2/4Xd/KOmp96lhPgAt8aY+OY0nx5m0HV49zY4rmmwNJ
 C2s+DocZP+0TkwaFub5pxJI6VLiZDTcntuJuwRiK6BhA4pqOyBsR5hSUgs8TBMEtVRwq
 OElN/qCU2uFHMkJBBKXftNAEdERNSddgfIfiOzBTs8P4ylt3KV1I3R+rr5nplsc4zmhK
 ndh51F39UD6VOjw/FzRcndPUY74810gTKBZWOztHuZiGWlEMz8N9DZFuEnfShhYFDYJm
 6QwLRCsTOBx7pn2Mq4SU4ShEr7RZ2iKufkGsu48ZeUFaikGwL8cPgZL4TT7Ejf7MNy1O 3A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 30usgq4h41-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:45:12 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bUBT098659;
 Thu, 7 May 2020 00:45:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 30sjnma71q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:45:11 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0470j8I8025069;
 Thu, 7 May 2020 00:45:08 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:45:08 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 43/43] PKRAM: improve index alignment of pkram_link entries
Date: Wed,  6 May 2020 17:42:09 -0700
Message-Id: <1588812129-8596-44-git-send-email-anthony.yznaga@oracle.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174555_878872_B30EDD3C 
X-CRM114-Status: GOOD (  15.41  )
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

To take advantage of optimizations when adding pages to the page cache
via shmem_insert_pages(), improve the likelihood that the pages array
passed to shmem_insert_pages() starts on an aligned index.  Do this
when preserving pages by starting a new pkram_link page when the current
page is aligned and the next aligned page will not fit on the pkram_link
page.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/pkram.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/mm/pkram.c b/mm/pkram.c
index ef092aa5ce7a..416c3ca4411b 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -913,11 +913,21 @@ static int __pkram_save_page(struct pkram_stream *ps,
 {
 	struct pkram_link *link = ps->link;
 	struct pkram_obj *obj = ps->obj;
+	int order, align, align_cnt;
 	pkram_entry_t p;
-	int order;
+
+	if (PageTransHuge(page)) {
+		align = 1 << (HPAGE_PMD_ORDER + XA_CHUNK_SHIFT - (HPAGE_PMD_ORDER % XA_CHUNK_SHIFT));
+		align_cnt = align >> HPAGE_PMD_ORDER;
+	} else {
+		align = XA_CHUNK_SIZE;
+		align_cnt = XA_CHUNK_SIZE;
+	}
 
 	if (!link || ps->entry_idx >= PKRAM_LINK_ENTRIES_MAX ||
-	    index != ps->next_index) {
+	    index != ps->next_index ||
+	    (IS_ALIGNED(index, align) &&
+	    (ps->entry_idx + align_cnt > PKRAM_LINK_ENTRIES_MAX))) {
 		struct page *link_page;
 
 		link_page = pkram_alloc_page((ps->gfp_mask & GFP_RECLAIM_MASK) |
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
