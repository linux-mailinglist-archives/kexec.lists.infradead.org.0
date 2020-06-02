Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 936E91EB498
	for <lists+kexec@lfdr.de>; Tue,  2 Jun 2020 06:32:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:To:From:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d8iq14JaQNwbF8t82ybSTDu1upaHN8Z4sNPlbK5T9Lo=; b=RryRbMN4tGl+aY
	89VaCfI3B3aDkp1a93QsZc4aYVyzUz8DrDSRt65ninRp2r3HtKryhMvUT19+PqeoZ7feXXPCrEcXt
	fLIfAymacngWXq7UKVqn7majxt/57aZ47tOZrUln6D3bSMYB9l2kixD2HxBH5Qqs/Da0Ol58HMvFe
	WlalnS1f1HsBXI4vttsv876QYOvwf8L0o0jla4vNrrsFtLZoFYZ3KNw8Ty/7UXq3QYpJlCV02GmK0
	6fLQQJqJm+tIU6QimLey7AUnSX+iy9glFEJIXJ06a1WqcpBUi6gY/FdKHmyPxz+SvXsPmAVGS1JVs
	wMho2DarRc5Yi9iwgxEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfyay-0004pq-GP; Tue, 02 Jun 2020 04:32:12 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfyav-0004p9-KJ
 for kexec@lists.infradead.org; Tue, 02 Jun 2020 04:32:11 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05243kgA180594; Tue, 2 Jun 2020 00:32:06 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31bm07m1md-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Jun 2020 00:32:06 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 05243k1T180591;
 Tue, 2 Jun 2020 00:32:06 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 31bm07m1jw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Jun 2020 00:32:06 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0524G9qj010848;
 Tue, 2 Jun 2020 04:32:04 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma04ams.nl.ibm.com with ESMTP id 31bf47w9kf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 02 Jun 2020 04:32:04 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 0524W1VD66585074
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 2 Jun 2020 04:32:01 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BB55C52065;
 Tue,  2 Jun 2020 04:32:01 +0000 (GMT)
Received: from hbathini.in.ibm.com (unknown [9.102.0.25])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id CB5235205A;
 Tue,  2 Jun 2020 04:32:00 +0000 (GMT)
Subject: [PATCH] kexec-tools: fix the unintended fallthrough when '-d'
 option is used
From: Hari Bathini <hbathini@linux.ibm.com>
To: Simon Horman <horms@verge.net.au>
Date: Tue, 02 Jun 2020 10:01:59 +0530
Message-ID: <159107231976.24822.8366905851318047662.stgit@hbathini.in.ibm.com>
User-Agent: StGit/0.17.1-dirty
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-02_04:2020-06-01,
 2020-06-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=716 phishscore=0
 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 cotscore=-2147483648 priorityscore=1501 clxscore=1011 mlxscore=0
 suspectscore=0 spamscore=0 adultscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006020023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_213209_673136_98A68205 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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
Cc: Cong Wang <xiyou.wangcong@gmail.com>, Kexec-ml <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Fixes: 28d4ab532808 ("Add generic debug option")
Cc: Cong Wang <xiyou.wangcong@gmail.com>
Signed-off-by: Hari Bathini <hbathini@linux.ibm.com>
---
 kexec/kexec.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/kexec/kexec.c b/kexec/kexec.c
index 7ef3d2a..a62b362 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -1374,6 +1374,7 @@ int main(int argc, char *argv[])
 			return 0;
 		case OPT_DEBUG:
 			kexec_debug = 1;
+			break;
 		case OPT_NOIFDOWN:
 			skip_ifdown = 1;
 			break;


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
