Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C1463AC1
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 20:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTR0Dr4AhHQLdJFPekhTizmMw+UHtQgXLtQTe0wWjgI=; b=WhUlbpxz9nlTy0
	fA4MiC3OfaiS6SvxQ2amvOglrkY5yZkuR8vdCAHhO2/uRKEMPZOryZHZoV5MeSaLtwvcEz4s0czht
	8W8PeghRK02R1vLra57nxqc6UTWG5oy28idr6LtdXC12FQgltlqIZ2/XlEO6a2mrRHjMNbIMQ3gQs
	YQ2FNpb36S6p2pYtA0PaoQFI6kA8NHMpIBbu0KYctn2QV5DCSsNQ4eUVHSVEDvd5LLhi1c0KhS3aH
	BbMmVlPw6n2481AZjaHbj35F8qmO+gycQH6j0YaBJ2CjlwJ4Eywsxr9DyL4JOiO+uwbcCRCJM1h9F
	sfsOdmthzlIG5/IH5YeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkukf-0001HP-94; Tue, 09 Jul 2019 18:22:05 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuj0-0008Dg-Hx
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 18:20:24 +0000
Received: by mail-qt1-x842.google.com with SMTP id l9so14352759qtu.6
 for <kexec@lists.infradead.org>; Tue, 09 Jul 2019 11:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0AMQxB8fjID6n1nIoBRP/bexLOV4+LcL9MqYB3dLbp0=;
 b=alGd9MvUbfRqM3kWiylqGdR8tXCWntU7urG6O/GicndbUQb45Df3lZ60ss0lN4iTMX
 jILCKJ8XZjIJdyeJ9PcMuePTuVByoJd0pIN6Zvi/4M5oIPlwrKJ9CLBWGL1jSDoRpkf0
 7X2QpEiClR1Sqxlu/X0MWv0BSWiGKT7v524JLl7HEKf6FhOOLIOozehl9Jf+5Bybqzb3
 Yq18ArXRnGQthoo3H5BaaEHVGZOc/wySgb/UPR0PjLwFUdTbZAL5xBFZQi23eAr5VBtf
 IN7pVQ8wypit/IlAEFI+AYFsKgAOblvL17tMEno3+sg80gzfyoxh8k12uI7mGYUEGlMz
 VC2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0AMQxB8fjID6n1nIoBRP/bexLOV4+LcL9MqYB3dLbp0=;
 b=WDQkkuQu04ufEIPu5/W+ViCMlKebhzwsxW7PARzReWAszh3nABEtWI66P4BT48mtPf
 sRoru0zLauSnuad39qNAYQ3bnxWVouuksMbouURP2zSJZNQHI/a2Pwwf8XfNv4mpuZJP
 h4oloMQR+51e+px3YbGFkhyLjXmr3Dpt3j6tMahPFaX1k+PP0xu7CAhRHGmsuSn2VeWr
 HlYnyBzOy2wXe2BAp0A1PDO38eDp68A/dPJeYvQ1QuPIwo16tCzOEMhWThCd8199nPTU
 b+TRxhbjmcUiA0+aZZYq4u6/O/tK9cY5i/f+g2QWJGgwppz+xN4URX0zFYSD6b/nLfki
 xhmA==
X-Gm-Message-State: APjAAAUMgov0ep+hJgmoN8KdsdQmGd+I35V527teLiEUzj7PPwkW8yrR
 dI39WIyJiEDNsOymLieLICp5Ng==
X-Google-Smtp-Source: APXvYqw8hj3zXjnTBHv5EU0i1mynT0zTuqlV/Rhh2l9bHQwU9e09NhIl+cnbQoA6x9C2nK4A4lK5kg==
X-Received: by 2002:a0c:81b8:: with SMTP id 53mr19886187qvd.91.1562696421760; 
 Tue, 09 Jul 2019 11:20:21 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id k123sm9113056qkf.13.2019.07.09.11.20.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:20:21 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v2 4/5] kexec: use reserved memory for normal kexec reboot
Date: Tue,  9 Jul 2019 14:20:13 -0400
Message-Id: <20190709182014.16052-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190709182014.16052-1-pasha.tatashin@soleen.com>
References: <20190709182014.16052-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112022_630932_478B50E2 
X-CRM114-Status: GOOD (  13.75  )
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

If memory was reserved for the given segment use it directly instead of
allocating on per-page bases. This will avoid relocating this segment to
final destination when machine is rebooted.

This is done on a per segment bases because user might decide to always
load kernel segments at the given address (i.e. non-relocatable kernel),
but load initramfs at reserved address, and thus save reboot time on
copying initramfs if it is large, and reduces reboot performance.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 kernel/kexec_core.c | 39 ++++++++++++++++++++++++++-------------
 1 file changed, 26 insertions(+), 13 deletions(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 932feadbeb3a..2a8d8746e0a1 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -154,6 +154,18 @@ static struct page *kimage_alloc_page(struct kimage *image,
 				       gfp_t gfp_mask,
 				       unsigned long dest);
 
+/* Check whether this segment is fully within the resource */
+static bool segment_is_reserved(struct kexec_segment *seg, struct resource *res)
+{
+	unsigned long mstart = seg->mem;
+	unsigned long mend = mstart + seg->memsz - 1;
+
+	if (mstart < phys_to_boot_phys(res->start) ||
+	    mend > phys_to_boot_phys(res->end))
+		return false;
+	return true;
+}
+
 int sanity_check_segment_list(struct kimage *image)
 {
 	int i;
@@ -246,13 +258,9 @@ int sanity_check_segment_list(struct kimage *image)
 
 	if (image->type == KEXEC_TYPE_CRASH) {
 		for (i = 0; i < nr_segments; i++) {
-			unsigned long mstart, mend;
-
-			mstart = image->segment[i].mem;
-			mend = mstart + image->segment[i].memsz - 1;
 			/* Ensure we are within the crash kernel limits */
-			if ((mstart < phys_to_boot_phys(crashk_res.start)) ||
-			    (mend > phys_to_boot_phys(crashk_res.end)))
+			if (!segment_is_reserved(&image->segment[i],
+						 &crashk_res))
 				return -EADDRNOTAVAIL;
 		}
 	}
@@ -848,12 +856,13 @@ static int kimage_load_normal_segment(struct kimage *image,
 	return result;
 }
 
-static int kimage_load_crash_segment(struct kimage *image,
-					struct kexec_segment *segment)
+static int kimage_load_crash_or_reserved_segment(struct kimage *image,
+						 struct kexec_segment *segment)
 {
-	/* For crash dumps kernels we simply copy the data from
-	 * user space to it's destination.
-	 * We do things a page at a time for the sake of kmap.
+	/*
+	 * For crash dumps and kexec-reserved kernels we simply copy the data
+	 * from user space to it's destination. We do things a page at a time
+	 * for the sake of kmap.
 	 */
 	unsigned long maddr;
 	size_t ubytes, mbytes;
@@ -923,10 +932,14 @@ int kimage_load_segment(struct kimage *image,
 
 	switch (image->type) {
 	case KEXEC_TYPE_DEFAULT:
-		result = kimage_load_normal_segment(image, segment);
+		if (segment_is_reserved(segment, &kexeck_res))
+			result = kimage_load_crash_or_reserved_segment(image,
+								       segment);
+		else
+			result = kimage_load_normal_segment(image, segment);
 		break;
 	case KEXEC_TYPE_CRASH:
-		result = kimage_load_crash_segment(image, segment);
+		result = kimage_load_crash_or_reserved_segment(image, segment);
 		break;
 	}
 
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
