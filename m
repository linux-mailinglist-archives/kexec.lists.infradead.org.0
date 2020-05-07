Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC8D1C7EE0
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QeHdD+9gt4ZqsL+A7BBL7c4PS0SmQ6HfixLMI6T5b2Y=; b=gQ05d9hxVM/Qm8V06BoMa7qnvy
	LbCCAOupeDHI6xUXSbZNw8HFgkiaZgfQB+EQkFR5idwEklIgyCLaSQav6339FnqZhpCCB5LFNmINY
	mKViJsYRxL88I/w3xT2FiBaibVPAR5xxqmbacNzQE1KP0jx3k6MKARyn9KYenoxrAnQe+I42QUrys
	/hGXNRFv4Xw8xI/nzJJ946Bg9liZQIsR1gqrx5EMxEnRice+GNR4S0ZGUr32vCfjfo+Psuj5eE4DC
	7J1f7fDdVfDLM8tfOKbmyIk6n0uOIY+oo/dpTMakH4mJd6MllIyBvZcK0KeCqta1PP3PwUs7rtFQx
	zjjltcBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUgF-0004MT-Tj; Thu, 07 May 2020 00:46:27 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUfd-0003ut-4N
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:46:00 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470dOG7097631;
 Thu, 7 May 2020 00:44:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=U5kSpS0/Dc5fgEe6X16U4eAHbnbPBtC/T/domT4TH8s=;
 b=vm1xGfzfTCm7LXxnLDJHzBg+kv+2Q3Gu1b70Z2+C7lDFsCCkSq2aF5KU4TaJWKovUTbm
 4ZCOEQ05F0FY1NqHr63zFBE+93CAKFygbJaDM38ipDP0MjM3ZnKCMwqPxeYsyU2jqMgs
 EBDvlOYXbwTwEFkmLSqhwG/YD/Rh/FaeX3jxgpBiaR2ZyrHOjnpcWNgOcb0XCceJeF1f
 BdYiGLFJmlbWo697vNbyzh7SOZaBzfqwlhp4wsjkyOoz34sQb6Ti3HK26oJnEH9zCczv
 olmk4xH+Sda92kPCQl7VvYBJq/Bv8KAwazzL+LEYXb1xcT74Gb7QSPUdgly1DKhBX9I6 XQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 30usgq4h2u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470alL4170703;
 Thu, 7 May 2020 00:44:55 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 30us7p2pnn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:44:55 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470irBD020628;
 Thu, 7 May 2020 00:44:53 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:44:53 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 39/43] shmem: optimize adding pages to the LRU in
 shmem_insert_pages()
Date: Wed,  6 May 2020 17:42:05 -0700
Message-Id: <1588812129-8596-40-git-send-email-anthony.yznaga@oracle.com>
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
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005070001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_174549_304094_5BC7B3AB 
X-CRM114-Status: GOOD (  13.16  )
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

Reduce LRU lock contention when inserting shmem pages by staging pages
to be added to the same LRU and adding them en masse.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/shmem.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/mm/shmem.c b/mm/shmem.c
index ca5edf580f24..678a396ba8d3 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -789,9 +789,12 @@ int shmem_insert_pages(struct mm_struct *mm, struct inode *inode, pgoff_t index,
 	struct shmem_sb_info *sbinfo = SHMEM_SB(inode->i_sb);
 	gfp_t gfp = mapping_gfp_mask(mapping);
 	struct mem_cgroup *memcg;
+	struct lru_splice splice;
 	int i, err;
 	int nr = 0;
 
+	memset(&splice, 0, sizeof(splice));
+
 	for (i = 0; i < npages; i++)
 		nr += compound_nr(pages[i]);
 
@@ -866,7 +869,7 @@ int shmem_insert_pages(struct mm_struct *mm, struct inode *inode, pgoff_t index,
 		}
 
 		if (!PageLRU(pages[i]))
-			lru_cache_add_anon(pages[i]);
+			lru_splice_add_anon(pages[i], &splice);
 
 		flush_dcache_page(pages[i]);
 		SetPageUptodate(pages[i]);
@@ -875,6 +878,9 @@ int shmem_insert_pages(struct mm_struct *mm, struct inode *inode, pgoff_t index,
 		unlock_page(pages[i]);
 	}
 
+	if (splice.pgdat)
+		add_splice_to_lru_list(&splice);
+
 	return 0;
 
 out_truncate:
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
