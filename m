Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8147978B7E
	for <lists+kexec@lfdr.de>; Mon, 29 Jul 2019 14:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qqIExtDhXBDmiixxMsGkBJGd/A6elTYkcjylVb7aeAw=; b=sYkP2oxr1mB+98
	fNWQ2KDszWZnNquph2pjlQWcuTyrXZymZHtsNNlhjfAvGcW42G2NCXB86pRVWmY1mjFxjfpo5aphw
	kHeCKN0eg4239Cg2lssG8R/nLday5uL7Tis6vV5w/dQuhUFYhMr9kv0DDTsvQ4pftNnjqUsqJ9jSY
	fpSayN+GFh62zErZZcynGQoH/WSgEU2N1CaHMo4qRvTvZVYYk77AevuiOVYuInCgQYUQcPHXkh+4l
	54OHg9ABf2awk5UcxXE+hTpcC7IWB/kZLDZmnwfCMM9m+1c7bONiPQ23bV1Gmmra9P2XVurg9EWua
	ABxLZDuucAiJ5U/6ehqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs4Y7-0008SD-I2; Mon, 29 Jul 2019 12:14:43 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs4Y4-0008RX-DC
 for kexec@lists.infradead.org; Mon, 29 Jul 2019 12:14:41 +0000
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6TC9GhJ023382
 for <kexec@lists.infradead.org>; Mon, 29 Jul 2019 08:14:39 -0400
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2u208c1832-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Mon, 29 Jul 2019 08:14:39 -0400
Received: from localhost
 by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <gor@linux.ibm.com>;
 Mon, 29 Jul 2019 13:14:36 +0100
Received: from b06avi18626390.portsmouth.uk.ibm.com (9.149.26.192)
 by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 29 Jul 2019 13:14:33 +0100
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com
 [9.149.105.62])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x6TCEGWk13042042
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 29 Jul 2019 12:14:16 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 217A6AE051;
 Mon, 29 Jul 2019 12:14:32 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E27EDAE05A;
 Mon, 29 Jul 2019 12:14:31 +0000 (GMT)
Received: from localhost (unknown [9.152.212.110])
 by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon, 29 Jul 2019 12:14:31 +0000 (GMT)
Date: Mon, 29 Jul 2019 14:14:30 +0200
From: Vasily Gorbik <gor@linux.ibm.com>
To: Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH] kexec: restore arch_kexec_kernel_image_probe declaration
MIME-Version: 1.0
Content-Disposition: inline
X-Patchwork-Bot: notify
X-TM-AS-GCONF: 00
x-cbid: 19072912-0012-0000-0000-0000033748B9
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19072912-0013-0000-0000-00002170E9DA
Message-Id: <patch.git-ff1c9045ebdc.your-ad-here.call-01564402297-ext-5690@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-29_06:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=929 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1907290145
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_051440_451979_6CA90320 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dave Young <dyoung@redhat.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

arch_kexec_kernel_image_probe function declaration has been removed by
commit 9ec4ecef0af7 ("kexec_file,x86,powerpc: factor out kexec_file_ops
functions"). Still this function is overridden by couple of architectures
and proper prototype declaration is therefore important, so bring it
back. This fixes the following sparse warning on s390:
arch/s390/kernel/machine_kexec_file.c:333:5: warning: symbol 'arch_kexec_kernel_image_probe' was not declared. Should it be static?

Signed-off-by: Vasily Gorbik <gor@linux.ibm.com>
---
 include/linux/kexec.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index 1740fe36b5b7..f7529d120920 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -183,6 +183,8 @@ int kexec_purgatory_get_set_symbol(struct kimage *image, const char *name,
 				   bool get_value);
 void *kexec_purgatory_get_symbol_addr(struct kimage *image, const char *name);
 
+int __weak arch_kexec_kernel_image_probe(struct kimage *image, void *buf,
+					 unsigned long buf_len);
 void * __weak arch_kexec_kernel_image_load(struct kimage *image);
 int __weak arch_kexec_apply_relocations_add(struct purgatory_info *pi,
 					    Elf_Shdr *section,
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
