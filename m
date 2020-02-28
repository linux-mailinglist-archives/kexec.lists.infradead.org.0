Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 137601730A9
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 06:55:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=86xyIsc7/OYYSVu+IBS1Qdn6OXxfvobKxiCYPzvnzHg=; b=Ikz4SPdeiSTvwMulOx5TjDFhqY
	fDCjo+EJrcYc2w9EP3OyNbmwAONBW2X/ZlhwxC6wWmdO0k6m+ltQUNuJn0m+iD+I/p3zqjz2WXsli
	Yj54PKGlAgNj7uWd6wFTMkNMNK/ztGL3ox4A/akMtWLovis27WcaU1GWFnFBQyMd7OCIL3gBAtKAd
	b4/2ALmQ5Y6Pm2pxixqVFp0QEOveB9xXPmNxseDINjPa6KH2j20ROTy4LcaQn+xeQ6LRx7bUrhE+p
	6E89RkV4YSAdAQAsAQQDHrZHIgZFlLJvw8mo9bPwshq4sYUkAn/1LrwfkbwZnhl8+fWSbFgwZK0sp
	BgN7Mnvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Yco-0003ds-9z; Fri, 28 Feb 2020 05:55:50 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Yck-0003cn-Qg
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 05:55:48 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9so801406plo.11
 for <kexec@lists.infradead.org>; Thu, 27 Feb 2020 21:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K4R793wlk3OMQcTGTmVkqO8V/TfCUC1nFa9LOzJKhOI=;
 b=TTClaJRSPeEH5l2uCigsy0LEbVnvtmwGQ66mjjYuoGUdAptgVU+m9vM5l+EKllPBum
 luEVwxMRkc/qMTZnG47jycxLQ0DTQkLtShMEeUeAdHunG4yesucQnmgzhP9av5V/utZp
 jky1EXKLQy88ST5Dt899uWhSh6SBqQ/Cz0addr9cQLE6Oux97VGtMsK/1vk3AW1LvOb4
 4R9+LtRU/J40dRYrVIyEP+O9juHLHHaAVGbPPdq1MPqY+h3lw+n5RE9vy8zF3MIBPvul
 NFzkK38tcGtlCaLngbzCaTzNCSLJt633TtEadO9ozPZjLASzSpdYTELt2GoafyHDywXO
 tT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K4R793wlk3OMQcTGTmVkqO8V/TfCUC1nFa9LOzJKhOI=;
 b=gyrXaA9Ka3UnpNQ+kCuj4suK0b4BjV9egnBulj4Pu/aFJK0njQQIzwle7mNjg5kQw4
 BV+Qptl6bbxDjOmSXgljDzSRuhicP8kcGPSq435cogoBWcmRjfdpYQ4VYKr8as7Df8wH
 +Q3vdAna6KfbiuA3GyZtPaXZZe2NonRNZX6zIFpmgBLKQyk0TSikq2drh3lZgv0sX/y+
 jzYmSMZNrQQuyWfOoalndtNWHIs09rA4AB6fiWu1Vei0Ad7hIEY8geS6LbD5+r7ZPDeG
 U3LlGJd5caL00OyBtHxcckRkFlrMkAvcm9LKAdNDiKkf+MdCSg6D0SL54JPsKMDUMvfr
 ODrQ==
X-Gm-Message-State: APjAAAUC60qYYGlVX5B2GgBU9Dg5cgqxPlpW+GxBXXzte4GsbrA/o6We
 rjHI7R8kBiif0kQjI+D8Jw==
X-Google-Smtp-Source: APXvYqwM4tayrZ9x+lk5R6uvwN10SxlVKsAHe3tOCbcvXG8BcyLhs+WQZnsIzUf4GJ8lh+Xe9YnHJg==
X-Received: by 2002:a17:902:142:: with SMTP id
 60mr2450068plb.115.1582869345926; 
 Thu, 27 Feb 2020 21:55:45 -0800 (PST)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id h4sm4350370pgq.20.2020.02.27.21.55.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Feb 2020 21:55:45 -0800 (PST)
From: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Subject: [PATCH 2/3] powerpc/of: coding style cleanup
Date: Fri, 28 Feb 2020 13:53:11 +0800
Message-Id: <1582869192-9284-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
References: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_215546_871011_620455BD 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 kexec@lists.infradead.org, Pingfan Liu <kernelfans@gmail.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: linuxppc-dev@lists.ozlabs.org
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Hari Bathini <hbathini@linux.ibm.com>
Cc: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
Cc: Oliver O'Halloran <oohall@gmail.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: kexec@lists.infradead.org
---
 arch/powerpc/kernel/of_property.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/kernel/of_property.c b/arch/powerpc/kernel/of_property.c
index e56c832..c6abf7e 100644
--- a/arch/powerpc/kernel/of_property.c
+++ b/arch/powerpc/kernel/of_property.c
@@ -5,16 +5,18 @@
 #include <linux/slab.h>
 
 struct property *new_property(const char *name, const int length,
-				     const unsigned char *value, struct property *last)
+		const unsigned char *value, struct property *last)
 {
 	struct property *new = kzalloc(sizeof(*new), GFP_KERNEL);
 
 	if (!new)
 		return NULL;
 
-	if (!(new->name = kstrdup(name, GFP_KERNEL)))
+	new->name = kstrdup(name, GFP_KERNEL);
+	if (!new->name)
 		goto cleanup;
-	if (!(new->value = kmalloc(length + 1, GFP_KERNEL)))
+	new->value = kmalloc(length + 1, GFP_KERNEL);
+	if (!new->value)
 		goto cleanup;
 
 	memcpy(new->value, value, length);
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
