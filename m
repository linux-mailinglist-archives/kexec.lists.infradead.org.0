Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7556690C42
	for <lists+kexec@lfdr.de>; Sat, 17 Aug 2019 04:47:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5PClWirDpVo9b7SfCgMUfOT2fF84/CGwsUgLAjKiMQ=; b=JgWahJFHmHG9YU
	8pLio8/pPSO4ictaLA2PFQ3Y03B0WOMORMe++4oWgu8+brvzVr4UHqd0mKt/DXJ8YKbtgMwT8iBr1
	qG5zCaRuNK7XwvV6r3qQn2cF9TGJNyswL/pKmviFo8w81Iy7Tcp9jQkciTC03bcAFY5uZUiKK5ORo
	jhLZUA1pveAu+crC8fUhmX92QwKIWk3nKa+NVf9sx/mbJyYkfVvVYkerb6Eeqn/UsCynqzw/3KNOw
	EquCNfvduclt0ySz/TgLgYrzFhvx+KcmBuTcvTKjQGIkZYpv5t90eBDmVTJ6wzBQPlWjlo+CvcxN/
	NrBYQsKDCIebIc56B42Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyokS-00037K-CR; Sat, 17 Aug 2019 02:47:21 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojl-0002PP-GY
 for kexec@lists.infradead.org; Sat, 17 Aug 2019 02:46:39 +0000
Received: by mail-qt1-x843.google.com with SMTP id 44so8193812qtg.11
 for <kexec@lists.infradead.org>; Fri, 16 Aug 2019 19:46:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=/W9Ma+c4Rolhy4bvMsvhnDmmj8s4aI4sxvLahrmQOEs=;
 b=IzkXm55G371ze9WVXoK9zad2ACOWDzvok3ySCIMBFTsFQm/1InDzb4H9PlQDZg3B+1
 91fZTR5nLchedpHW5aMPgbel2ZEnY/4Y6d81TwasXQGUoWl3pwGmSACJDbW/T3nKDssv
 +h3dvvD8iyrRdZCJ9mha5885pBDWmcYAqYgiE1seOv1ZfRELrnfuyWjc6lHkfNkB8ktJ
 OywN1d704ZniaPy18rJWm0ZLYmHEL1f2xGaIMRi+uXWwoVQjHADEaYflSmFqXYFC50TK
 COI8DMNyB3sCcIRHgivG4DS6VQAKx7jm3bktmlgmeRCdmQ4puTVFBSpYFVIiLAL++B8O
 rYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/W9Ma+c4Rolhy4bvMsvhnDmmj8s4aI4sxvLahrmQOEs=;
 b=QDNa7eGXP5y16kapu66YSSlLWi3aljjZEBXZFJzIo9PNU2B4D1oVPAZzh7YqvIA7iA
 YflOs0lB57S+S8vcJpLBnSRnxp8qGwfYgKj76E6461RpB8e2qHzlCZH3BzNig2CM6Qmz
 oJLH2qE5mVZFQljyyU89ruL5SYu+3hULwsRne4CqQXEOwzbSYcliIHrkonPUKG1JCiO/
 gkNDmchB6JKnYMpf8H6/gpA6sygJN+7YLQSjDNK0ugB5xoR39pYtmXthK+CLgJJKSNLL
 rfoBgR52lJ5Vkuv1UdlkSv1Aj/MIc2oM5WpldR9+QTJn5FxOdhXZVirrIo+X920ckh5I
 tgFw==
X-Gm-Message-State: APjAAAU3fo6mRBaWcUVhBd2/IYapWsq0XEuMDwArYBVUHrU4cjn2277H
 8XcuwoG1DR3ASBXqmAnWv5IIXA==
X-Google-Smtp-Source: APXvYqx1YDVIUM4aXrDf+J+vqbqrtMk2KC2J/YfduCmqN0tJGEM/fwsJ5MGyaogor4fl5Zg9qkbq9Q==
X-Received: by 2002:ac8:23cf:: with SMTP id r15mr10955016qtr.97.1566009992864; 
 Fri, 16 Aug 2019 19:46:32 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:32 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 01/14] kexec: quiet down kexec reboot
Date: Fri, 16 Aug 2019 22:46:16 -0400
Message-Id: <20190817024629.26611-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194637_571519_4BBE1FA1 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.22.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
