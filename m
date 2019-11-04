Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEA4EE098
	for <lists+kexec@lfdr.de>; Mon,  4 Nov 2019 14:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ajLcE7/XgqFV6UUpvS04HXo5qX8slSnwGZULFWcoItw=; b=mKb
	XIS8XdqaA/om8Fiar8eL/EZ+Ga4kgImk/cvW1Jo1I8XBgiD2pz7S4UXQ3mW29WqYQDbFaY93attJR
	jMe9KUgZOWzM5yFhI5Gg8dAqvzVP2mDLzWXqnEJ3QfW5he5iI5RqrA9qzmTgE6C2sfM+6NgRvyS06
	9gUVqAt9tWXDo1bbDtdRcBBWQE2VnY8kd6Mc5u2p0NgZeH+4laHdiByBTwpmALoyUrDHAYW4WjHWD
	ZMR4FWxKRLL9A+Bh9vAQ1yXTjzZFHE7hqB5ari+vJvMyPiHMlgnOO8jM+0M5q6EIYcaZtAwmDJcrU
	st2InoU9n87Okhh2Zs/p5F9dewaF90w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRc34-0001vA-Bm; Mon, 04 Nov 2019 13:05:34 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRc2w-0001uW-Cm
 for kexec@lists.infradead.org; Mon, 04 Nov 2019 13:05:30 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xA4Ct6tC046091
 for <kexec@lists.infradead.org>; Mon, 4 Nov 2019 08:05:22 -0500
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w2m00j0wt-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Mon, 04 Nov 2019 08:05:21 -0500
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <zaslonko@linux.ibm.com>;
 Mon, 4 Nov 2019 13:05:18 -0000
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 4 Nov 2019 13:05:17 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xA4D5FBC8192196
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 4 Nov 2019 13:05:15 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B73DFA4060;
 Mon,  4 Nov 2019 13:05:15 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7EAFDA4054;
 Mon,  4 Nov 2019 13:05:15 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Mon,  4 Nov 2019 13:05:15 +0000 (GMT)
From: Mikhail Zaslonko <zaslonko@linux.ibm.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile: Fix off-by-one issue in exclude_nodata_pages()
Date: Mon,  4 Nov 2019 14:05:15 +0100
X-Mailer: git-send-email 2.17.1
X-TM-AS-GCONF: 00
x-cbid: 19110413-4275-0000-0000-0000037A9DFF
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19110413-4276-0000-0000-0000388DE49A
Message-Id: <20191104130515.26741-1-zaslonko@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-04_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1908290000 definitions=main-1911040128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_050529_303223_6C755295 
X-CRM114-Status: GOOD (  23.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: prudo@linux.ibm.com, dyoung@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When building a dump bitmap (2nd bitmap) for the ELF dump, the last pfn
of the cycle is always ignored in exclude_nodata_pages() function due to
off-by-one error on cycle boundary check. Thus, the respective bit of
the bitmap is never cleared.
That can lead to the error when such a pfn should not be dumpable (e.g.
the last pfn of the ELF-load of zero filesize). Based on the bit in the
bitmap the page is treated as dumpable in write_elf_pages_cyclic() function
and the follow on error is triggered in write_elf_load_segment() function
due to the failing sanity check of paddr_to_offset2():

   $ makedumpfile -E dump.elf dump.elf.E
   Checking for memory holes                         : [100.0 %] |
   write_elf_load_segment: Can't convert physaddr(7ffff000) to an offset.
   makedumpfile Failed.

Signed-off-by: Mikhail Zaslonko <zaslonko@linux.ibm.com>
---
 makedumpfile.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/makedumpfile.c b/makedumpfile.c
index de0973f..4a00011 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -4740,7 +4740,7 @@ exclude_nodata_pages(struct cycle *cycle)
 		if (pfn < cycle->start_pfn)
 			pfn = cycle->start_pfn;
 		if (pfn_end >= cycle->end_pfn)
-			pfn_end = cycle->end_pfn - 1;
+			pfn_end = cycle->end_pfn;
 		while (pfn < pfn_end) {
 			clear_bit_on_2nd_bitmap(pfn, cycle);
 			++pfn;
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
