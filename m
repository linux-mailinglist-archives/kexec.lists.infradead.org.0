Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868A61C7EA9
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:44:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qGauAsk6osBTs6QOvw3VzLLdpovMlR6MBy2u66/yqFg=; b=o14KMI1rm8hr6jvVbwwjVVcrEK
	zrgxJtIWAoUNEz4jWesW8SRgQbvmThtZKCC0yZ0mXU2L9d/eIhvAHQDTlfIOAOk/DFmVdmwc+xlWu
	RWZoMPPsC45KVYar4o/I95i7cVX0wvO9WYMNuFQROhs6Sl11ofZSTvDIH36tVdLTmpfDL2WeAP/HQ
	lAqCvT7wTi9OfinSI5TEodSIJD4BiJpSr6PTpYUU+zFcYiYsA3kHfdum3sc/7owhDqg2JpJcFObCK
	z6t6yhBVvtUiMhk8oFYWdGjGxmpp3T8OQ+u8qHYfYZQjGVf8mno6gGyvzZFnAxQxaG4cSLcLGZKuC
	lHpUkI7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUdm-0007ju-VG; Thu, 07 May 2020 00:43:54 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUdc-0007Zv-An
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:43:46 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bsEQ064662;
 Thu, 7 May 2020 00:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=SpL3oKOP1UxupMjs93me4aiFXOO1A2VSszu1s3lkQmE=;
 b=UrmNLP0/tNsOo2Ji29J5AZ9A7RkHNfzxRzF3rav8+hRASZW4Duvh8uT+pZDF6H3zWKU2
 /202rP9YThZNIHoKaOGQBIyfgkQEuU6tmMG1rYH38Of8YlNR2FX2ITHoSeQXbBsV2QRQ
 kXjPmaZxZXfdvPG7uqvUo0xNFd3P4DJR3CNhKsyWnrWT2q7/cheB+C/KWDV7ShneEy5u
 ZUgmUsqRPA1/e9u9Ab1oiHezM4HS/AjdypfYZ9nzyc0+usWobKBzF6fPWv9a247nmqB9
 1uq24OdbiUFFzA49N05/7YtGMk/afxEI0JU5tidZ970dhtUfzTYIDxMWQw2hWIWi0XmK AA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 30s09rdf6s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:56 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470bUYE098714;
 Thu, 7 May 2020 00:42:55 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 30sjnma1gw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:42:55 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 0470gsjj019822;
 Thu, 7 May 2020 00:42:54 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:42:53 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 11/43] PKRAM: pass the preserved pages pagetable to the next
 kernel
Date: Wed,  6 May 2020 17:41:37 -0700
Message-Id: <1588812129-8596-12-git-send-email-anthony.yznaga@oracle.com>
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
X-CRM114-CacheID: sfid-20200506_174344_454460_65707AFA 
X-CRM114-Status: GOOD (  15.27  )
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

Add a pointer to the pagetable to the pkram_super_block page.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/pkram.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/mm/pkram.c b/mm/pkram.c
index 5a7b8f61a55d..54b2779d0813 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -94,6 +94,7 @@ struct pkram_node {
  */
 struct pkram_super_block {
 	__u64	node_pfn;		/* first element of the node list */
+	__u64	pgd_pfn;
 };
 
 static unsigned long pkram_sb_pfn __initdata;
@@ -769,15 +770,20 @@ static void __pkram_reboot(void)
 	struct page *page;
 	struct pkram_node *node;
 	unsigned long node_pfn = 0;
-
-	list_for_each_entry_reverse(page, &pkram_nodes, lru) {
-		node = page_address(page);
-		if (WARN_ON(node->flags & PKRAM_ACCMODE_MASK))
-			continue;
-		node->node_pfn = node_pfn;
-		node_pfn = page_to_pfn(page);
+	unsigned long pgd_pfn = 0;
+
+	if (pkram_pgd) {
+		list_for_each_entry_reverse(page, &pkram_nodes, lru) {
+			node = page_address(page);
+			if (WARN_ON(node->flags & PKRAM_ACCMODE_MASK))
+				continue;
+			node->node_pfn = node_pfn;
+			node_pfn = page_to_pfn(page);
+		}
+		pgd_pfn = page_to_pfn(virt_to_page(pkram_pgd));
 	}
 	pkram_sb->node_pfn = node_pfn;
+	pkram_sb->pgd_pfn = pgd_pfn;
 }
 
 static int pkram_reboot(struct notifier_block *notifier,
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
