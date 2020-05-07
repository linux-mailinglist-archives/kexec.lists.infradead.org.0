Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8486C1C7EC9
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 02:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GuUWOwt2NFILgZAh0rspkaNhjEGRm1fktcUFp5AdAv4=; b=Ls0+qQ1iw1D64BZizj7JlLswct
	Y1U4X9JxUR0ntjrtF2uPc0em9IkxuXdyD5ScjWhfq0MQcAKSk4CRpWxlKl3TPYD7Wo7GF3swdZ53o
	xkPMSNQu2ESTJxm6JXbjMWiN9gfYZbD9dI9jbdba0czDelhAkMpIwgvx3aQjSeRMIdrMx2ccVmXB3
	fxibFTDBlPuDIL+ffxFnIEPhM2CFnqXT2YijgtG38sDfilPYhTewgM72Cb4bbTkHinDm7ooU7ES1w
	GccJKhZ18N4QCJwIJ6KW9ndjD8j/cGX4L3q7h0xfMG5ime5ru7+/XGyoioOKP8MBAnmjs9Ni+fmNF
	zsT6NQ1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWUeV-00007l-QL; Thu, 07 May 2020 00:44:39 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWUeR-0008Lk-1W
 for kexec@lists.infradead.org; Thu, 07 May 2020 00:44:36 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470dCV4097456;
 Thu, 7 May 2020 00:43:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=corp-2020-01-29;
 bh=w6gOhqdHP7hbtdLBjCjLiDcomUNMD9tvJtFBbgdcHPI=;
 b=Lv++/U9G1thp1Jx477m45dEIdSTTpOl/IZTc1/2RMGCUioiWeeoVm7oSSB6ITBLuLy3E
 hb4PEu9jOPp5h43qH3/TWELHqYV83F6pWkutzNXpCvrrUAGx6RKuzZoitB9sZME1+Dpn
 yxpBGXG0EmRLkPCfwp52kSGt+cSAm6nJscyd6ST/1t9CehBtFlDtztZ/e6QJPuixX++d
 yTrGU6b11vzjTeFJyjloX0w+wJrLi0Tph93RVY2loNtSnbBGClJBO2D8eqPCitU1WyS2
 qMfxR55riNPEtqH+5Lszl9DKwQAyK/+tbaauixpximYhHRrI5FXZfvC0GwvWPe4vWRWU bw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 30usgq4gyy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:43:47 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0470an8G136067;
 Thu, 7 May 2020 00:43:47 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 30sjdwrr7b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 07 May 2020 00:43:47 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0470hkb0029778;
 Thu, 7 May 2020 00:43:46 GMT
Received: from ayz-linux.localdomain (/68.7.158.207)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 17:43:46 -0700
From: Anthony Yznaga <anthony.yznaga@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org
Subject: [RFC 20/43] PKRAM: disable feature when running the kdump kernel
Date: Wed,  6 May 2020 17:41:46 -0700
Message-Id: <1588812129-8596-21-git-send-email-anthony.yznaga@oracle.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
References: <1588812129-8596-1-git-send-email-anthony.yznaga@oracle.com>
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9613
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
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
X-CRM114-CacheID: sfid-20200506_174435_173111_BFCB941B 
X-CRM114-Status: GOOD (  16.21  )
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

The kdump kernel should not preserve or restore pages.

Signed-off-by: Anthony Yznaga <anthony.yznaga@oracle.com>
---
 mm/pkram.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/mm/pkram.c b/mm/pkram.c
index 95e691382721..4d4d836fea53 100644
--- a/mm/pkram.c
+++ b/mm/pkram.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
+#include <linux/crash_dump.h>
 #include <linux/err.h>
 #include <linux/gfp.h>
 #include <linux/highmem.h>
@@ -193,7 +194,7 @@ void __init pkram_reserve(void)
 {
 	int err = 0;
 
-	if (!pkram_sb_pfn)
+	if (!pkram_sb_pfn || is_kdump_kernel())
 		return;
 
 	pr_info("PKRAM: Examining preserved memory...\n");
@@ -305,6 +306,9 @@ static void pkram_show_banned(void)
 	int i;
 	unsigned long n, total = 0;
 
+	if (is_kdump_kernel())
+		return;
+
 	pr_info("PKRAM: banned regions:\n");
 	for (i = 0; i < nr_banned; i++) {
 		n = banned[i].end - banned[i].start + 1;
@@ -1223,7 +1227,7 @@ static int __init pkram_init_sb(void)
 
 static int __init pkram_init(void)
 {
-	if (pkram_init_sb()) {
+	if (!is_kdump_kernel() && pkram_init_sb()) {
 		register_reboot_notifier(&pkram_reboot_notifier);
 		register_shrinker(&banned_pages_shrinker);
 		sysfs_update_group(kernel_kobj, &pkram_attr_group);
-- 
2.13.3


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
