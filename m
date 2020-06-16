Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D8B1FA713
	for <lists+kexec@lfdr.de>; Tue, 16 Jun 2020 05:33:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TPDrBqNIwJlnXK4a8THq3YIayL0u/EVRCbfC3Mu+pb4=; b=t3a5OAMwlQPAhp
	7r/b2gKV4wyQh1u0HiToAq0PBOg6MLrXwwAVEHPnEPJlt2IJ7IxnmvJ7qCd/e4CD2YXZ5pIy471UR
	7xXnvOH7cNdaLBzgV5Y0DAr3exHtCHMTMLO5ax9aOnnk49kLTLufrEaE2iJFQa+Coo16YYYxV/Cnx
	ttrASRHPTcQuJiaOpI7efrG8QU5Uv2k9z/ghrN+RYBRRVA4w4eau+FKeno+BVSMnzbKYM968pM7oT
	dOJwcGq8rkpQv3Ydjv/wzlNXTZUkxNa0s+oyz/bZYfiv7F3p7s6dD6Xxaer2gcm/ikHb4d0t0FgUq
	Rr590lG7FGb02Ad770JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl2Ls-0000b6-Uj; Tue, 16 Jun 2020 03:33:32 +0000
Received: from mail1.windriver.com ([147.11.146.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl2Lp-0000ab-LA
 for kexec@lists.infradead.org; Tue, 16 Jun 2020 03:33:30 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id 05G3XNS2014220
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
 Mon, 15 Jun 2020 20:33:23 -0700 (PDT)
Received: from pek-lpggp4.wrs.com (128.224.153.77) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.487.0;
 Mon, 15 Jun 2020 20:33:22 -0700
From: Xulin Sun <xulin.sun@windriver.com>
To: <kexec@lists.infradead.org>, <horms@verge.net.au>
Subject: [PATCH] arm64: continue loading even if kaslr-seed is not wiped to
 zero
Date: Tue, 16 Jun 2020 11:33:20 +0800
Message-ID: <20200616033320.2553-1-xulin.sun@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_203329_707027_316AAC56 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.11.146.13 listed in list.dnswl.org]
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
Cc: xulin.sun@windriver.com, xulinsun@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The commit c3f043241a866a (arm64: Add support to supply 'kaslr-seed' to secondary kernel)
add kaslr-seed support. And consider the primary kernel reads the 'kaslr-seed'
and wipes it to 0. But in the situation, 'CONFIG_RANDOMIZE_BASE' was not set to
y in the primary kernel and ATF firmware has set the 'kaslr-seed' dtb property
with non-zero, Thus will return error.

So in the above case, continue loading the segments with no kaslr
supported situation.

Signed-off-by: Xulin Sun <xulin.sun@windriver.com>
---
 kexec/arch/arm64/kexec-arm64.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kexec/arch/arm64/kexec-arm64.c b/kexec/arch/arm64/kexec-arm64.c
index 2992bce..540f4d7 100644
--- a/kexec/arch/arm64/kexec-arm64.c
+++ b/kexec/arch/arm64/kexec-arm64.c
@@ -506,8 +506,7 @@ static int setup_2nd_dtb(struct dtb *dtb, char *command_line, int on_crash)
 		if (kaslr_seed != 0) {
 			dbgprintf("%s: kaslr-seed is not wiped to 0.\n",
 					__func__);
-			result = -EINVAL;
-			goto on_error;
+			goto unable_kaslr;
 		}
 
 		/*
@@ -550,6 +549,7 @@ static int setup_2nd_dtb(struct dtb *dtb, char *command_line, int on_crash)
 		}
 	}
 
+unable_kaslr:
 	if (on_crash) {
 		/* add linux,elfcorehdr */
 		nodeoffset = fdt_path_offset(new_buf, "/chosen");
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
