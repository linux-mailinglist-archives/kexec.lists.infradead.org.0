Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 184501C7EC8
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:44:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hQyYNeDljZHi3/+rRQIryFINi8cnaunAFzZTLXjbX2Y=; b=KC2AMaqoXy6sCzsW7tLiWl7deL
	7lLbvIqC6jCVJAsIHwgE2QweI9DbHW6qY8CoL8mDDc/xAOsUEMyXUWyH7VT48hIB6gcWLcRQ4YUxN
	STh6ltlU/g9Pw7cAS+fv2W8DhD9plgHvM63oDUQqBfEMnpqDk+Pyr9MTQm2UStt1l08z+fPak7tvh
	tGy504NI408vQlBSSZRLJGWakWfQUaD2KwHPUTMxqu6CJo6G54W8bubkngy2LdQ5hS+ld+rfdbYlg
	tgyQLPnWkNFbyS1gBMKC8ELbqon+Dacmo2eUtA4ptY5L3v7My4XiA8o9SH9+s0l46JqjYy4Lbhur5
	+GeYDpfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUeT-0008Rq-98; Thu, 07 May 2020 00:44:37 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUeO-0008Kh-HS
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:44:34 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470d0Rc076188;
 Thu, 7 May 2020 00:43:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=J7Q+8SZ1gV5T2Of756nJv1YzUrvepjMeioLG71z3S9M=;
 b=ZyZVIh+MFM4KSfqsEhgzO46tDmQNFz765fTjdy+D4xU3ipcRB4RqVS3Ui8zi49/8Ap5m
 uxAO0SZOBdfYpSHGBGsUK9p6hQSzdgS+89nD1xz9fhavAyL7kDa4j1OR1SuUMBON8fbs
 PVxNXpO35dZqRxizwgRFvZ0lao4k0btp9BTTGY1o8N3OnCEDci+NxECx4IwJ+VzMCCzu
 irdnqptbP0eeiMXPTKaufoXZ92kCvw3vlQyKH2rWoyy+r3Amkwp//FBzsBUefmAR7hJM
 zZQWi7OuDr/0R7Lb3Ar6Mr3h4BfOX4xxQ1mDCXA9rWFiBnQOxo9XrkS4cm6Mo7VqGSP7 lg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 30s09rdf9p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:43:46 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470alNK170704;
 Thu, 7 May 2020 00:43:46 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30us7p2n40-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:43:46 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0470hhja024556;
 Thu, 7 May 2020 00:43:43 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:43:42 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 19/43] mm: PKRAM: allow preserved memory to be freed from
 userspace
Date: Wed,  6 May 2020 17:41:45 -0700
Message-Id: <1588812129-8596-20-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 adultscore=0 suspectscore=2
 mlxlogscore=999 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0
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
X-CRM114-CacheID: sfid-20200506_174432_716250_0E358F32 
X-CRM114-Status: GOOD (  14.19  )
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

To free all space utilized for preserved memory, one can write 0 to
/sys/kernel/pkram. This will destroy all PKRAM nodes that are not
currently being read or written.

Originally-by: Vladimir Davydov <vdavydov.dev@gmail.com>
Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/pkram.c | 39 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/mm/pkram.c b/mm/pkram.c
index 0aaaf9b79682..95e691382721 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -509,6 +509,32 @@ static void pkram_truncate_node(struct pkram_node *node)
 	node->obj_pfn = 0;
 }
 
+/*
+ * Free all nodes that are not under operation.
+ */
+static void pkram_truncate(void)
+{
+	struct page *page, *tmp;
+	struct pkram_node *node;
+	LIST_HEAD(dispose);
+
+	mutex_lock(&pkram_mutex);
+	list_for_each_entry_safe(page, tmp, &pkram_nodes, lru) {
+		node = page_address(page);
+		if (!(node->flags & PKRAM_ACCMODE_MASK))
+			list_move(&page->lru, &dispose);
+	}
+	mutex_unlock(&pkram_mutex);
+
+	while (!list_empty(&dispose)) {
+		page = list_first_entry(&dispose, struct page, lru);
+		list_del(&page->lru);
+		node = page_address(page);
+		pkram_truncate_node(node);
+		pkram_free_page(node);
+	}
+}
+
 static void pkram_add_link(struct pkram_link *link, struct pkram_obj *obj)
 {
 	link->link_pfn = obj->link_pfn;
@@ -1141,8 +1167,19 @@ static ssize_t show_pkram_sb_pfn(struct kobject *kobj,
 	return sprintf(buf, "%lx\n", pfn);
 }
 
+static ssize_t store_pkram_sb_pfn(struct kobject *kobj,
+		struct kobj_attribute *attr, const char *buf, size_t count)
+{
+	int val;
+
+	if (kstrtoint(buf, 0, &val) || val)
+		return -EINVAL;
+	pkram_truncate();
+	return count;
+}
+
 static struct kobj_attribute pkram_sb_pfn_attr =
-	__ATTR(pkram, 0444, show_pkram_sb_pfn, NULL);
+	__ATTR(pkram, 0644, show_pkram_sb_pfn, store_pkram_sb_pfn);
 
 static struct attribute *pkram_attrs[] = {
 	&pkram_sb_pfn_attr.attr,
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
