Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43426BBCE7
	for <lists+kexec@lfdr.de>; Mon, 23 Sep 2019 22:34:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LegefOV7DsTtgCKyGN0KWD/Cxm3+cZkqauyXX3jOl14=; b=D7pLl/fLV7A3EG
	/G96fDk/ADME/tRSlMHv38E8CYGiRHjrbqVqnDNHZgUNONm7POO3dDcVK6Nj1SV1OXmgBrOaQTZTJ
	MxfYB89HwkWcmM4eEITnTGcirGqXPCAQtWWzCVadaP2UKoLKBvbF4bEWKjqk1EgNgTfsERUuFIAmA
	i05PUOAHNdP85PWcFosOMbNY7RGWOKZ95OSXlVLJsFxY50msssF1zoVN1YIr+r6M7zFxeP9Lskfw0
	ceWbIYZP3eE/JWYkmIoyAoJHLd9SH5FDp2hEL3s45Gx2ex5NqLdhMtlInt3GSoCPWhtYjOkq3eDEK
	9JCg57C3hrUWsWYntFaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV2l-0002Gk-Kp; Mon, 23 Sep 2019 20:34:47 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2e-0002Cw-6X
 for kexec@lists.infradead.org; Mon, 23 Sep 2019 20:34:41 +0000
Received: by mail-pg1-x542.google.com with SMTP id c17so8650053pgg.4
 for <kexec@lists.infradead.org>; Mon, 23 Sep 2019 13:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=g7DE7rX2uCp8tfoUWCXCLl034/utkvLPBdVIKc8+powWUExFWSItdszP8Cm/yR3bQA
 INyWFFWB57bbdD2iHNW1/fZENA+1VBlqYaMxRwKUwsr13wORyC7Njz/SoqYlIMCXWndy
 +2lPVOCdcRmjy3opEnn14+U9nd/vOCxsE7gGnmOczmK8wF6uSKK9ePWHSOSG4IdNhWL4
 i6B0jQ3c/Hc+3IQ4XVvxJF0T0VSgEARneLSQ8kgrBRVlnEy0OVPrm3FAAWvjOBu96um6
 TJyjAuN1XqnAdwdM/bythEqz6HBUc9ctqw1AsAPVwpa9SaVxY5Z1wKyBAHCKwQ0/s4aD
 R+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KZlSM1+HYlx5AabYJySSHWoh4S6JQNg+E/eloF1WuIo=;
 b=pSGkwRCR4fO/9+FfoKX61e6MPOiIeu770kQ6Ce+mkqHwGnzdcg+j2mRn2rQ0ezkZvw
 mdvdeaqnZeEWyjI4cdKUOCUn4IYXrfyvU0gGPVNcQhLBFwH561sq+TxFJtzEBxtxNOWw
 RMlXRy5suj0kcDN9jurdOEtXi3/EJ40azV5gztkKGX7tXuGrUk3NKcgiCsP3iCLxqvGy
 QPoeK1y/EsSQFbyyZYD6KL2kxFk8DbvOcrk68q3OTUCe5K8VzHSn277BxMc6K/MHAAXu
 8JGdUELxQESg8F7I7aHu80maxks7phu0BUBvVKd9rj0vytQgDibTrhtCLz1snYEB0O17
 DxBw==
X-Gm-Message-State: APjAAAXynuQNTzoqz4/HHxT5xNuy+04FNRuHZLxwxuTA6wk7ryEEhGo1
 1iae7/oB7hc0HpdsPvhde2CntA==
X-Google-Smtp-Source: APXvYqy145da1OUiQVlRDiBy/OIzvCU32t+7Zhz/DSbXEWYlU+3nmVsNL564Bq6FlkTk3IW8uBpmsA==
X-Received: by 2002:a63:c947:: with SMTP id y7mr1755459pgg.345.1569270879589; 
 Mon, 23 Sep 2019 13:34:39 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:38 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 01/17] kexec: quiet down kexec reboot
Date: Mon, 23 Sep 2019 16:34:11 -0400
Message-Id: <20190923203427.294286-2-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133440_237747_9656F4F5 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
