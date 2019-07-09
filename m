Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FCC63ABA
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 20:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vTGSjtFKOhUawOSXLZOxulNKcZLf9eZwEi5lORX250o=; b=SWc56YgdFrlCkU
	rsnUpT6EtKw513ZgBhFma2+JrbbQGr7Z/vz2UEVVomOYeaQIZ84GJirQOAdyzV/GmV8kJfp5eOvoq
	dRsnMOIAR3eltJQNkS47qvIHEL9r0ON9S4DlB42aCF6HpAnuds3ExLz5K8Xhc/9eV5lyxGBlZ702d
	XXoTANvO007dY0P3ub2I5tAOnanH9vT4ghLUyx7pyd6atcZ++lkDy06jGeg7L18CxVo/6t+OwnZoh
	FyuZbhLk9sXoDuPbtMuUVgCQNyPnKRxlTdJxyJekAJ3zYtJcIqn72BLF3jrWLMQUO3lNcTLmXytoI
	osAafJ9EKIl0MO2HIyxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuk0-0000gm-Cq; Tue, 09 Jul 2019 18:21:24 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuiz-0008Ba-1r
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 18:20:23 +0000
Received: by mail-qt1-x842.google.com with SMTP id h24so22676477qto.0
 for <kexec@lists.infradead.org>; Tue, 09 Jul 2019 11:20:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=VdsesycGrscxvl9VUJv2OrYGiO6I5hjIVNNGDZpPz+A=;
 b=Lxz1gcUMBjd/teRSMIUe0VCxgzAsMdo3Rrn2b801LIo6TpuHTsRwusYzWVPRKkazNn
 aAdOj2lu6GpB5lRRJHygM5I8HppPYWYDQAaywxAfo2xqyv64cDjnnOeOHkGgezgBW6Nu
 djzd2PEL9D+Qec4rkUSmWz1H+lTOHJEjt7GhXcSO4imn4ddhyK3Hk7AQ70/qN00gW7hu
 wIEFtsDNWfbhO2cfJblKWFwp6D9W3cUBuqCUlw0F2/VglB2QrsaAsobfraWn1QISADWD
 dpJWu9FxbHD/vEFNL3NozHPeDPJcYEXDBomOxuPMe6xhnzj7RHJpqS2pUV7nuPeTWBA3
 oM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VdsesycGrscxvl9VUJv2OrYGiO6I5hjIVNNGDZpPz+A=;
 b=rVLFQVHiT4ia+nW1yGEhPBeFWspozAe0WWCfkI7WxDzA3OziI/Epom/XgzfhIKp1u5
 ciyx1SW6RnWNyUx9C7uIxw8bsU0OZ35ynlsJqOQSyFlz7Cyy6jKjqZdFnkA7KdNCqa6P
 l5WNLYGXX3/rmx6LTyONI46zk789DQFDOMAFSd+tFJK8IjJGrEmIQlrdM71olOenB3og
 7iympdmKALwdbHdIN+qT6VNsQPFcnXmsxhZ3V/QCW0lTSKlWk3RhHVdYccYY0sifliGg
 TjPtrEKDseyZLSXglgX3/JQIMTdFf62nxUyup6HHmPjyFrphil3ODayCiaSlwuprLD0u
 ml4g==
X-Gm-Message-State: APjAAAUmRKTdu501VdgsUUkVq0gWPgTix+S1Gi2p7L1LyjCIveqhmp9S
 T7AbUjwMlW3Rjaqj2EW3aMds5A==
X-Google-Smtp-Source: APXvYqwAG4/7u8EKC7EBi9MHlMvmuFXHJunA2cypRFYP7aL7Lw7iEQ73R7gZHDrIdOHZAo9JKHhQaw==
X-Received: by 2002:ac8:35ae:: with SMTP id k43mr19635975qtb.259.1562696419082; 
 Tue, 09 Jul 2019 11:20:19 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id k123sm9113056qkf.13.2019.07.09.11.20.17
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:20:18 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v2 2/5] kexec: add resource for normal kexec region
Date: Tue,  9 Jul 2019 14:20:11 -0400
Message-Id: <20190709182014.16052-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709182014.16052-1-pasha.tatashin@soleen.com>
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112021_097951_217FF1FB 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

crashk_res resource is used to reserve memory for crash kernel. There is
also, however, a benefit to reserve memory for normal kernel to speed up
reboot performance. This is because during regular kexec reboot, kernel
performs relocations to the final destination of the loaded segments, and
the relocation might take a long time especially if initramfs is big.

Therefore, similarly to crashk_res, add kexeck_res that will be used to
reserve memory for normal kexec kernel.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 include/linux/ioport.h | 1 +
 include/linux/kexec.h  | 6 ++++--
 kernel/kexec_core.c    | 9 +++++++++
 3 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/include/linux/ioport.h b/include/linux/ioport.h
index da0ebaec25f0..3b18a3c112f3 100644
--- a/include/linux/ioport.h
+++ b/include/linux/ioport.h
@@ -133,6 +133,7 @@ enum {
 	IORES_DESC_PERSISTENT_MEMORY_LEGACY	= 5,
 	IORES_DESC_DEVICE_PRIVATE_MEMORY	= 6,
 	IORES_DESC_DEVICE_PUBLIC_MEMORY		= 7,
+	IORES_DESC_KEXEC_KERNEL			= 8,
 };
 
 /* helpers to define resources */
diff --git a/include/linux/kexec.h b/include/linux/kexec.h
index b9b1bc5f9669..4c1121b385fb 100644
--- a/include/linux/kexec.h
+++ b/include/linux/kexec.h
@@ -303,12 +303,14 @@ extern int kexec_load_disabled;
 #define KEXEC_FILE_FLAGS	(KEXEC_FILE_UNLOAD | KEXEC_FILE_ON_CRASH | \
 				 KEXEC_FILE_NO_INITRAMFS)
 
-/* Location of a reserved region to hold the crash kernel.
- */
+/* Location of a reserved region to hold the crash kernel. */
 extern struct resource crashk_res;
 extern struct resource crashk_low_res;
 extern note_buf_t __percpu *crash_notes;
 
+/* Location of a reserved region to hold normal kexec kernel. */
+extern struct resource kexeck_res;
+
 /* flag to track if kexec reboot is in progress */
 extern bool kexec_in_progress;
 
diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 2c5b72863b7b..932feadbeb3a 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -70,6 +70,15 @@ struct resource crashk_low_res = {
 	.desc  = IORES_DESC_CRASH_KERNEL
 };
 
+/* Location of the reserved area for the normal kexec kernel */
+struct resource kexeck_res = {
+	.name  = "Kexec kernel",
+	.start = 0,
+	.end   = 0,
+	.flags = IORESOURCE_BUSY | IORESOURCE_SYSTEM_RAM,
+	.desc  = IORES_DESC_KEXEC_KERNEL
+};
+
 int kexec_should_crash(struct task_struct *p)
 {
 	/*
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
