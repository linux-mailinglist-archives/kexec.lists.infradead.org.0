Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C37027204
	for <lists+kexec@lfdr.de>; Thu, 23 May 2019 00:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k/HaKBsFAkcm1L1dQ5+hLIwk2rBh7oWPfH05G2lEasg=; b=pV8PyqBNBdnj7e
	LbAAzs+BGw08zozKgEE1aReeXYJ/hI6RmofFtbdRbjPoa9j3QDPagQwfYBD6n6WHfEGZIDB3UE1qB
	or784Da7AaJakqo90oB5Fx2ncOm+zbLTn0s419L8yki+clHyvbZOrlBLQbvlKI5n3gJRcQSSLw8x6
	lB/MZAAtREtEWk8J4I1bGp+yKcLi1OCynWn5Ky4kHG4tsKNT6zDw9/5wewlsTSOl3RbAz4JEIG8gU
	bZKsSIV8pnl+3r4GChx5EElyq2hEns4jXoRyu+RHA2jLmOcWwMfw1kISHfoDBPjvikEdr24NxuGQp
	N8U8f+Kqzb/U1WTFrBPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTZL1-00034f-Cr; Wed, 22 May 2019 22:03:55 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTZKx-00033v-HP
 for kexec@lists.infradead.org; Wed, 22 May 2019 22:03:53 +0000
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4MLxLnQ144726
 for <kexec@lists.infradead.org>; Wed, 22 May 2019 18:03:49 -0400
Received: from e31.co.us.ibm.com (e31.co.us.ibm.com [32.97.110.149])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2snetvg5t5-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Wed, 22 May 2019 18:03:48 -0400
Received: from localhost
 by e31.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <bauerman@linux.ibm.com>;
 Wed, 22 May 2019 23:03:48 +0100
Received: from b03cxnp08028.gho.boulder.ibm.com (9.17.130.20)
 by e31.co.us.ibm.com (192.168.1.131) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 22 May 2019 23:03:46 +0100
Received: from b03ledav005.gho.boulder.ibm.com
 (b03ledav005.gho.boulder.ibm.com [9.17.130.236])
 by b03cxnp08028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4MM3inC33423744
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 May 2019 22:03:45 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DA690BE079;
 Wed, 22 May 2019 22:03:44 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E3D59BE07A;
 Wed, 22 May 2019 22:03:42 +0000 (GMT)
Received: from morokweng.localdomain.com (unknown [9.80.216.227])
 by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTP;
 Wed, 22 May 2019 22:03:42 +0000 (GMT)
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCH] powerpc: Fix loading of kernel + initramfs with
 kexec_file_load()
Date: Wed, 22 May 2019 19:01:58 -0300
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19052222-8235-0000-0000-00000E9CE3BB
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011145; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000286; SDB=6.01207156; UDB=6.00633942; IPR=6.00988131; 
 MB=3.00027009; MTD=3.00000008; XFM=3.00000015; UTC=2019-05-22 22:03:48
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052222-8236-0000-0000-000045ADF716
Message-Id: <20190522220158.18479-1-bauerman@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-22_13:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905220152
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_150351_688066_7407C953 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, Mimi Zohar <zohar@linux.ibm.com>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Commit b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()")
changed kexec_add_buffer() to skip searching for a memory location if
kexec_buf.mem is already set, and use the address that is there.

In powerpc code we reuse a kexec_buf variable for loading both the kernel
and the initramfs by resetting some of the fields between those uses, but
not mem. This causes kexec_add_buffer() to try to load the kernel at the
same address where initramfs will be loaded, which is naturally rejected:

  # kexec -s -l --initrd initramfs vmlinuz
  kexec_file_load failed: Invalid argument

Setting the mem field before every call to kexec_add_buffer() fixes this
regression.

Fixes: b6664ba42f14 ("s390, kexec_file: drop arch_kexec_mem_walk()")
Signed-off-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
---
 arch/powerpc/kernel/kexec_elf_64.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/powerpc/kernel/kexec_elf_64.c b/arch/powerpc/kernel/kexec_elf_64.c
index ba4f18a43ee8..52a29fc73730 100644
--- a/arch/powerpc/kernel/kexec_elf_64.c
+++ b/arch/powerpc/kernel/kexec_elf_64.c
@@ -547,6 +547,7 @@ static int elf_exec_load(struct kimage *image, struct elfhdr *ehdr,
 		kbuf.memsz = phdr->p_memsz;
 		kbuf.buf_align = phdr->p_align;
 		kbuf.buf_min = phdr->p_paddr + base;
+		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 		ret = kexec_add_buffer(&kbuf);
 		if (ret)
 			goto out;
@@ -581,7 +582,8 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 	struct kexec_buf kbuf = { .image = image, .buf_min = 0,
 				  .buf_max = ppc64_rma_size };
 	struct kexec_buf pbuf = { .image = image, .buf_min = 0,
-				  .buf_max = ppc64_rma_size, .top_down = true };
+				  .buf_max = ppc64_rma_size, .top_down = true,
+				  .mem = KEXEC_BUF_MEM_UNKNOWN };
 
 	ret = build_elf_exec_info(kernel_buf, kernel_len, &ehdr, &elf_info);
 	if (ret)
@@ -606,6 +608,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 		kbuf.bufsz = kbuf.memsz = initrd_len;
 		kbuf.buf_align = PAGE_SIZE;
 		kbuf.top_down = false;
+		kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 		ret = kexec_add_buffer(&kbuf);
 		if (ret)
 			goto out;
@@ -638,6 +641,7 @@ static void *elf64_load(struct kimage *image, char *kernel_buf,
 	kbuf.bufsz = kbuf.memsz = fdt_size;
 	kbuf.buf_align = PAGE_SIZE;
 	kbuf.top_down = true;
+	kbuf.mem = KEXEC_BUF_MEM_UNKNOWN;
 	ret = kexec_add_buffer(&kbuf);
 	if (ret)
 		goto out;


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
