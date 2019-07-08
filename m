Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E0C62AC8
	for <lists+kexec@lfdr.de>; Mon,  8 Jul 2019 23:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVn3Q5vgyJcKMrIqYiWwFpHN3lTTvqjbAv6FqBia2JU=; b=aMO6hpH5S02hJD
	i6f3gapFgkW5u0vjFukARyZkqDYdi8aIfp716XOiOriNclzUAQNQAXN7cltr/Yd13Gi0Ag6O7dbVX
	TaP/TUpBxiS4woFXKPYoZBrMHl5Af8RBTW0XgSOz/cTL8W2umQtyam6XsYvN1Gv4998pp+/wXeyw3
	mzAXRC+ZKDKCqfTc1YeREH8iGU2sZusKHUUzi8M8ukb5cJn/C4LsEdAyEuQSYonzX5WwjLoPqdydB
	Da0UGZ7Z0vXCs15kQ7/tSjjBhPLnYTvjjBQSCkXcVXWobMvrZG2kwMnjNUzMwEP81fArjmKpp5mPq
	sSYwFvbH5f+wcX3EUhRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkazY-0001qN-Bm; Mon, 08 Jul 2019 21:16:08 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkayz-0001N0-ID
 for kexec@lists.infradead.org; Mon, 08 Jul 2019 21:15:37 +0000
Received: by mail-qt1-x843.google.com with SMTP id h21so17317023qtn.13
 for <kexec@lists.infradead.org>; Mon, 08 Jul 2019 14:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=n8BIhwWJ9zh0jUg2RW2/uYQy7FXCgRGeTdMBO55KXOXgAIespxSPLZq0PYdQHargu4
 8/6ZmX6+n021l86aooEGRSG6OOh9z87P2hsOb//zkA6XSfbnLwX1J6q9EqiRDhiSEkei
 37/LIxbZzFCypM5/mZYla7j/sFWUIrbc8e3qhgO4wFofOmUK0lhXe4tr6tDxWT0nr2tS
 QQ0+d7Qy7D/REmw0t12Dt0EtWx80RzWMBAEUOejhW8CkeW2/+kE8QKMZkyyV8nLai6eQ
 0uWgAgMS4TLYACEQUE8stDXIn7xumtxeI3mjoGdxI0wMvKfmReYsVjRk6sJfFqriuHbY
 Us6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O8sp7Ivz1alrz3xXygPalicyjdu3OPu+GkykS7h2DZg=;
 b=K8KDeYbUYAa0z6OVDrSEVSz6jYpfjIqg6dlcG6VtVFXqeqZp+98SNhRC36BjySk+NZ
 fq+1NUzt0LatuqS+KmCEfTny1d0/ZO6TQvdIRMlCT05GXoxdqLzeTxAc8+9Qf4pwZ2hp
 32sbUsdEf72t5UAh20E4Cj5bMwXfPOq0Kp2uxznv3v0qo7umXyrJJI1hU8ExcgQnV7SA
 ZbDiBL0xqckXaz4kdXsZw4evGwbkDWepVke6QasHVz6atEhvGhc3d3Ek4VG5rMkcK5bg
 z8Hb+WLsQIDoJMIGV6umxlIcgD67U7SqkS+VS0xj/O9sh0+NKwHbjCEuMn4NTjscXFEj
 CkBA==
X-Gm-Message-State: APjAAAXCHR/8RH0G+IjIyxREEwzqjXd2TqammoMTCxbSYOjemsPtQyS7
 tWtbq1LMtTbWtQRGixl/bP7rng==
X-Google-Smtp-Source: APXvYqyKqoOHu6EcUgIJIytE2kcvp422ziKgpaW7euQ8lCRv+YnhnmdNGlmL0VXgx8QTvMj1RSZ8nQ==
X-Received: by 2002:a0c:b148:: with SMTP id r8mr16207600qvc.240.1562620532517; 
 Mon, 08 Jul 2019 14:15:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id b67sm8335620qkd.82.2019.07.08.14.15.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 14:15:31 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v1 1/5] kexec: quiet down kexec reboot
Date: Mon,  8 Jul 2019 17:15:24 -0400
Message-Id: <20190708211528.12392-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708211528.12392-1-pasha.tatashin@soleen.com>
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141534_155998_B60311F0 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Here is a regular kexec command sequence and output:
=====
$ kexec --reuse-cmdline -i --load Image
$ kexec -e
[  161.342002] kexec_core: Starting new kernel

Welcome to Buildroot
buildroot login:
=====

Even when "quiet" kernel parameter is specified, "kexec_core: Starting
new kernel" is printed.

This message has  KERN_EMERG level, but there is no emergency, it is a
normal kexec operation, so quiet it down to appropriate KERN_NOTICE.

Machines that have slow console baud rate benefit from less output.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Reviewed-by: Simon Horman <horms@verge.net.au>
---
 kernel/kexec_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index d5870723b8ad..2c5b72863b7b 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -1169,7 +1169,7 @@ int kernel_kexec(void)
 		 * CPU hotplug again; so re-enable it here.
 		 */
 		cpu_hotplug_enable();
-		pr_emerg("Starting new kernel\n");
+		pr_notice("Starting new kernel\n");
 		machine_shutdown();
 	}
 
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
