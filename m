Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A70111BA1
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 23:27:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Mv5YRKVU2y/A3pmpKKowmI5yKcsN+jBEaHEp80OpMkI=; b=jj0
	ijz8bm1C6Zx/nVSzEGgq6RwVbpxmjEj5Z9WUCKhSOh5rWaUrn4E3wQiPIGTBA5OOwXBk1zrpWu8qU
	3lWPQ4t4ylR6XDq8jh9aNVlZLFQ0J8M0kdj/tjRnOWC/IMHRbqBwq5FSBO8TtXYv/uoyQrFVFqq6r
	MsozuLOyh6RchJW5eqNZUQshl8USiL8lHZqIdZRDbDYgXsHVPa+Ti0P/2ZkGTB5aBIPWyDqr0jlCo
	ouCF9QLc/n/R0BzbnO90Nr2uJmGDFcod6wVca+L3Gh57Z1XoPH41Wg5OGN6pZtwr7NWiyr1XC5G2y
	riellAVSWxsRU7eBsszn8QZ1H9mtKEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icGds-00014c-TJ; Tue, 03 Dec 2019 22:27:36 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icGdq-000144-Qw
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 22:27:36 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB3MC6HO048678
 for <kexec@lists.infradead.org>; Tue, 3 Dec 2019 17:27:31 -0500
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2wnp6647dp-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Tue, 03 Dec 2019 17:27:31 -0500
Received: from localhost
 by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <zaslonko@linux.ibm.com>;
 Tue, 3 Dec 2019 22:27:29 -0000
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
 by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 3 Dec 2019 22:27:27 -0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xB3MRQ2p51118206
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 3 Dec 2019 22:27:26 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2E0AF42047;
 Tue,  3 Dec 2019 22:27:26 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id F2E2D42042;
 Tue,  3 Dec 2019 22:27:25 +0000 (GMT)
Received: from tuxmaker.boeblingen.de.ibm.com (unknown [9.152.85.9])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue,  3 Dec 2019 22:27:25 +0000 (GMT)
From: Mikhail Zaslonko <zaslonko@linux.ibm.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
Date: Tue,  3 Dec 2019 23:27:25 +0100
X-Mailer: git-send-email 2.17.1
X-TM-AS-GCONF: 00
x-cbid: 19120322-0008-0000-0000-0000033C9927
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19120322-0009-0000-0000-00004A5BB618
Message-Id: <20191203222725.64734-1-zaslonko@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-03_07:2019-12-02,2019-12-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=1 spamscore=0
 priorityscore=1501 adultscore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 phishscore=0 impostorscore=0 mlxlogscore=807 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912030164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_142734_875723_7A0424A1 
X-CRM114-Status: GOOD (  19.58  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
Cc: prudo@linux.ibm.com, k-hagio@ab.jp.nec.com, dyoung@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Since kernel v5.2 KASLR is supported on s390. In makedumpfile however no
support has been added yet. This patch adds the arch specific function
get_kaslr_offset() for s390x.
Since the values in vmcoreinfo are already relocated, the patch is
mainly relevant for vmlinux processing (-x option).

Signed-off-by: Philipp Rudo <prudo@linux.ibm.com>
Signed-off-by: Mikhail Zaslonko <zaslonko@linux.ibm.com>
---
 arch/s390x.c   | 32 ++++++++++++++++++++++++++++++++
 makedumpfile.h |  3 ++-
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/arch/s390x.c b/arch/s390x.c
index bf9d58e..892df14 100644
--- a/arch/s390x.c
+++ b/arch/s390x.c
@@ -122,6 +122,38 @@ get_machdep_info_s390x(void)
 	return TRUE;
 }
 
+unsigned long
+get_kaslr_offset_s390x(unsigned long vaddr)
+{
+	unsigned int i;
+	char buf[BUFSIZE_FGETS], *endp;
+
+	if (!info->file_vmcoreinfo)
+		return FALSE;
+
+	if (fseek(info->file_vmcoreinfo, 0, SEEK_SET) < 0) {
+		ERRMSG("Can't seek the vmcoreinfo file(%s). %s\n",
+		       info->name_vmcoreinfo, strerror(errno));
+		return FALSE;
+	}
+
+	while (fgets(buf, BUFSIZE_FGETS, info->file_vmcoreinfo)) {
+		i = strlen(buf);
+		if (!i)
+			break;
+		if (buf[i - 1] == '\n')
+			buf[i - 1] = '\0';
+		if (strncmp(buf, STR_KERNELOFFSET,
+			    strlen(STR_KERNELOFFSET)) == 0) {
+			info->kaslr_offset =
+				strtoul(buf + strlen(STR_KERNELOFFSET), &endp, 16);
+			DEBUG_MSG("info->kaslr_offset: %lx\n", info->kaslr_offset);
+		}
+	}
+
+	return info->kaslr_offset;
+}
+
 static int
 is_vmalloc_addr_s390x(unsigned long vaddr)
 {
diff --git a/makedumpfile.h b/makedumpfile.h
index ac11e90..26f6247 100644
--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -1071,11 +1071,12 @@ unsigned long long vaddr_to_paddr_ppc(unsigned long vaddr);
 int get_machdep_info_s390x(void);
 unsigned long long vaddr_to_paddr_s390x(unsigned long vaddr);
 int is_iomem_phys_addr_s390x(unsigned long addr);
+unsigned long get_kaslr_offset_s390x(unsigned long vaddr);
 #define find_vmemmap()		stub_false()
 #define get_phys_base()		stub_true()
 #define get_machdep_info()	get_machdep_info_s390x()
 #define get_versiondep_info()	stub_true()
-#define get_kaslr_offset(X)	stub_false()
+#define get_kaslr_offset(X)	get_kaslr_offset_s390x(X)
 #define vaddr_to_paddr(X)	vaddr_to_paddr_s390x(X)
 #define paddr_to_vaddr(X)	paddr_to_vaddr_general(X)
 #define is_phys_addr(X)		is_iomem_phys_addr_s390x(X)
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
