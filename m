Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B4BADEA9
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 20:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0sUQp2mY+Y2TSHydHCVcO9phLd8ufgOskI8rO69RQA=; b=RVvK0AEKsIbnRg
	rVNc2cgjTwYqYArxSxB7pNynuvu/doiTq4RSU8vFOV482C3awmfUrB5RgVSTTPwpebPaUx378I2c4
	NUYbPhqNX+a4PXDs2SJPvqPV95uqtg/OIg6dHlVxhyYS6FTj9vklyhoE87oA9z4p9ekoHz3XYOoOM
	UoVMe1YHeQMdDCYxZp7ig6UJKzK3OoHjOo0L6ZhtoQoi3llsfpCzX6tR/L7ukN+Mq+Y+JI23jlGQ3
	QfiHAKmLiJnoyVBak1DBcjAfnoWIGtDIdlXWQ8Ns6RmShZcdKiQPUfTUbDBlYWSzbq7W0mSlrDEfY
	pvO2b+lFlvVJZsWt/Btg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7ODi-0005jM-4e; Mon, 09 Sep 2019 18:16:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9c-0000Ar-2X
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 18:12:47 +0000
Received: by mail-qt1-x843.google.com with SMTP id l22so17244919qtp.10
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 11:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=;
 b=WSuiLH/ElypDjQ34fWlc09v2lQ92yg7ePKKlJT2R3aZtootAoUm4IJlQpYdsKPFreN
 dpG5qcVAh2mngZA1/2H4b0qLtReGH2MCcbrCPA5y+UV3P7a485AFcZBTegOCGdcJwBxo
 9gs19c4gMMRWJp1NC7ATV1U16xjnxBej7id2nho6TQv/fzuLv8JZgd6/4yoJ9bwRtY9c
 V4ZTGMI4qeZ5LWssLrlZGRTvgnWhESrHwINMyVrNSbBzIGRXVKmTUgk/uRCV9RLAnLqM
 YpdJMzCZEAoE3sGF08ftCMb9PiTGeH7cfVJBN2685ZTBKxUt8c5rcuUkGpWDtmKGR+fr
 jwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=;
 b=Teu7oJwJ5y0voMcX3jxzPUUnWt9sWkWckG5o5Au1oIw8AaWMhv94WCb2uS8KmTzm1t
 nwAlSrSI13hpqOMBZahZz9WRazQihKZZojrEsd19bPA/zBM8I/Tgwl2BvZ+mT1SxEfUa
 6qT/0TDsw62Z/kL+4pW0nmMnJJAF4r8KrbNxsnqQGaFiDgnsb6SaDC834dtBUexbddEY
 v2yRIrpaqEJyBqdxfQgyKOaroPwYG4ObZer+xoOQAz4kQ879pjYCC/F+G+nv+C78xgVe
 B3byFM5ddCUzDNKj5zpWkPYgL2B1PmOCWHV+Kk7HuJgQM6KgQVLpmp39lUtJ7lOLhHpN
 Xr5Q==
X-Gm-Message-State: APjAAAWAqy6ykGV8YiRFY+44K5Mpb8vqfkmWsLqr/qp4ql9jrz3rBvki
 KOlv7KJGSVUPFwGwmw6jgOPLCg==
X-Google-Smtp-Source: APXvYqz2qIj5gN7e5Hvb6xiqAO3cyUStcV6SZ03no6qDeMeKeESePA5eLLwvVG4yIXOLRtT962e1Ig==
X-Received: by 2002:a0c:fc05:: with SMTP id z5mr8556570qvo.128.1568052763165; 
 Mon, 09 Sep 2019 11:12:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 13/17] kexec: add machine_kexec_post_load()
Date: Mon,  9 Sep 2019 14:12:17 -0400
Message-Id: <20190909181221.309510-14-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111244_327430_95050BA7 
X-CRM114-Status: GOOD (  10.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

It is the same as machine_kexec_prepare(), but is called after segments are
loaded. This way, can do processing work with already loaded relocation
segments. One such example is arm64: it has to have segments loaded in
order to create a page table, but it cannot do it during kexec time,
because at that time allocations won't be possible anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 kernel/kexec.c          | 4 ++++
 kernel/kexec_core.c     | 6 ++++++
 kernel/kexec_file.c     | 4 ++++
 kernel/kexec_internal.h | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/kernel/kexec.c b/kernel/kexec.c
index 1b018f1a6e0d..27b71dc7b35a 100644
--- a/kernel/kexec.c
+++ b/kernel/kexec.c
@@ -159,6 +159,10 @@ static int do_kexec_load(unsigned long entry, unsigned long nr_segments,
 
 	kimage_terminate(image);
 
+	ret = machine_kexec_post_load(image);
+	if (ret)
+		goto out;
+
 	/* Install the new kernel and uninstall the old */
 	image = xchg(dest_image, image);
 
diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 2c5b72863b7b..8360645d1bbe 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -587,6 +587,12 @@ static void kimage_free_extra_pages(struct kimage *image)
 	kimage_free_page_list(&image->unusable_pages);
 
 }
+
+int __weak machine_kexec_post_load(struct kimage *image)
+{
+	return 0;
+}
+
 void kimage_terminate(struct kimage *image)
 {
 	if (*image->entry != 0)
diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index b8cc032d5620..cb531d768114 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -391,6 +391,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
 
 	kimage_terminate(image);
 
+	ret = machine_kexec_post_load(image);
+	if (ret)
+		goto out;
+
 	/*
 	 * Free up any temporary buffers allocated which are not needed
 	 * after image has been loaded
diff --git a/kernel/kexec_internal.h b/kernel/kexec_internal.h
index 48aaf2ac0d0d..39d30ccf8d87 100644
--- a/kernel/kexec_internal.h
+++ b/kernel/kexec_internal.h
@@ -13,6 +13,8 @@ void kimage_terminate(struct kimage *image);
 int kimage_is_destination_range(struct kimage *image,
 				unsigned long start, unsigned long end);
 
+int machine_kexec_post_load(struct kimage *image);
+
 extern struct mutex kexec_mutex;
 
 #ifdef CONFIG_KEXEC_FILE
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
