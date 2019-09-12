Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDE8B087F
	for <lists+kexec@lfdr.de>; Thu, 12 Sep 2019 07:59:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMUfowvvOHtj6dGaeWpnXJ1SCx8dbQ2xac0UM1vY3k4=; b=lHwE7Bi7ZY5jh6
	BpNdqi6EbVNNMjIrwB2IZKFZ0V4TnZ+kEHdMR4H5O/kQbvvbpBU7hZNE6qkdQCD24Nh+MckdkVLjd
	TBfwXK2+7bL9b+DjrSPlfI14Pzv6iOvweRWHXSG7OCN20Y9ABPo5OVO61m2pW/RsLBVU+x1siAGkS
	nNFiIqbe9h9eaxe7onIm5IbnKYma1nNq9AsVJjeybo0T+YrzVZl2yCX+uPed3/0x9vq4ocNY8hsP9
	nAcx40FbCU5lb27YNde7o0JTwQAx7Q8TEdJZftV2c/tMVacRs5I92rF8Z0WdGqp6lq1AFdgPZVRKC
	cN3TzdTKd4YSGOMX9YKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8I97-0001eN-Dd; Thu, 12 Sep 2019 05:59:57 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8I8q-0001Qr-RC
 for kexec@lists.infradead.org; Thu, 12 Sep 2019 05:59:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id j191so2304926pgd.3
 for <kexec@lists.infradead.org>; Wed, 11 Sep 2019 22:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=K2wlRR3w/KTNdVqCYnrEwvs7sg2WubrsMP6gUzcCK3w=;
 b=a1izBfJNPh0xpl62rBUom1TVz4AD5siG6EraiJHLvL4gUGp0cW8alx2ORZ9jzKbGFX
 xWVqVXev/nHzAR9H/cEc2LKR9JLK9zWH6tIwAT1lb2tISj+ZgqjofZOR/0iNeBECZ+BS
 ISy/kii4aozfEQv4ehzP1Rh7lrkusxFuiyJiIHyoj0SKN/QmGlgCB2U1T/hLXT+RwfrE
 OjtbsEXNz20nDjM751kbB4MqoXEIxqUq9mykMCgRPGxRnkJkL0PwVvQIHk1sCR/Sg/iX
 26r3FUpGtVGk0UXhPg5W9g5oLCXS8RwCvpYAKtspZr+l8KYQFGoiKt+yEy4nJVAuVrfd
 UMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=K2wlRR3w/KTNdVqCYnrEwvs7sg2WubrsMP6gUzcCK3w=;
 b=Z+M7DIdBdO7EZkIIiS5Tyu6/qmZvHxcnhL9MQXlPF3sqKcUvS62dQrxFPWKpWXgp8f
 mwMh0GoLpq+rRj4+5s4yb2O+ZMVWj4m3PPVFoF3EtiRm2WLAzs54y+HzDdLSCQT3Wr5t
 r6X9EKxn09VJHrzlT7IR6Dbtjz+en+l5ypqifQK+bFUJX8yuRlF2PAdl19JO+0ImDI68
 2S3tDRXr7jaSV+OyFt2YuKXHzbORaHFpqSLwms+ZK6JkDGcJ//p+EBpmIpoCbWuxcnpR
 2iF6pfoTrfeZtWcl84MyHOoPMURZa5OBdmK7cbdHvSvJdFDn/JUXze2PYRV6ay9IPzk3
 xK5A==
X-Gm-Message-State: APjAAAVJmUFsFeocZdkafO4RnTDZ8UOup7m7VxpPcoTJCPUMHxrvrk+M
 vzr+BA5MXpavKvLXhxdrJWmMRg==
X-Google-Smtp-Source: APXvYqxhrvEMXCYdoVnQe8x2WLbfUA2cbM+KZMZ+EXo6BWAKSNzbpi4c8Q5F6ZhyyyGKEBV5ult3JQ==
X-Received: by 2002:aa7:9a48:: with SMTP id x8mr45589514pfj.201.1568267980014; 
 Wed, 11 Sep 2019 22:59:40 -0700 (PDT)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id x9sm11590512pje.27.2019.09.11.22.59.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Sep 2019 22:59:39 -0700 (PDT)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH 1/3] libfdt: define UINT32_MAX in libfdt_env.h
Date: Thu, 12 Sep 2019 15:01:48 +0900
Message-Id: <20190912060150.10818-2-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190912060150.10818-1-takahiro.akashi@linaro.org>
References: <20190912060150.10818-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_225940_875393_CC14E039 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In the implementation of kexec_file_load-based kdump for arm64,
fdt_appendprop_addrrange() will be used, but fdt_addresses.c
will fail to compile due to missing UINT32_MAX.

So just define it in libfdt_env.h.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---
 include/linux/libfdt_env.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index edb0f0c30904..9ca00f11d9b1 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -3,6 +3,7 @@
 #define LIBFDT_ENV_H
 
 #include <linux/kernel.h>	/* For INT_MAX */
+#include <linux/limits.h>	/* For UINT32_MAX */
 #include <linux/string.h>
 
 #include <asm/byteorder.h>
@@ -11,6 +12,8 @@ typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
 
+#define UINT32_MAX U32_MAX
+
 #define fdt32_to_cpu(x) be32_to_cpu(x)
 #define cpu_to_fdt32(x) cpu_to_be32(x)
 #define fdt64_to_cpu(x) be64_to_cpu(x)
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
