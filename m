Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AF6112F47
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:01:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hfoll+Pyv8+ZI93ZngtXwbHAbZwiNvU8uLxRAdjStRo=; b=eljc65WoxoCYui
	Us9brN8TLVh8Wstsc96zJH/aFii2AkEETn9Xe6YQWGSXikxrYX+8deYAsbaCdKB9Mu7a8ZCpCS2sr
	2DArP5kRDxAP8ETVisa6byXhlGHtQ5KMlmcn3VRF+Zmc00MXhveJzHQhsOo62osCCiaXcFFUXttO5
	bfgLJSxueoEkQI/N8s6nBQqauPcxXkhSxvytUN1wOcGPZKZwyY9rHgsQryHeKIF0PJAc85kgOJvOR
	U8RytljuuRIUFUI4LCAGwyOsK6LDAkI9fwOpsSJN7Y62FMEA27G9684t9GlTw52NAyeCGlOz8buN/
	PKuU+BAVSAHn7ugzwWSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX5X-0001Ib-7z; Wed, 04 Dec 2019 16:01:15 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX45-0007G5-E8
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 15:59:48 +0000
Received: by mail-qk1-x741.google.com with SMTP id f5so298423qkm.13
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 07:59:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=uS5983uJoHZy5JiqeIGQWhAtmT2ue7W1CVbOZjIqk6g=;
 b=ZtlqW1OByAmf47tXyRsopiX+BaNBesr84wke0vTVLOd+GkIrY+k3iBOCn8+k3BhroD
 UNPyg/sFg82rChe6aGKjY90pK15vcnyPSHWI/ntL/xrCb92iqtTCUuFQDgzNKJ3heYcj
 aamqSO5AfV4WR7UoOsASk9fB/ywo0S5VTXfuTqiZNofg+uS4jCiKICD+fWy0+/ahLoap
 dC7A63cF49Lmtymqy1AMRt03PDqSLFIz9dhvMvNL4HhZmvcOOqWAj0KpmU9tEjjVDK+Z
 LjhirTdzsonzWezv7RaT1Qz2fpdpTFzh8noDuDAhec1ZgziXt4/L1/RYgTO0O77TxhMn
 VFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uS5983uJoHZy5JiqeIGQWhAtmT2ue7W1CVbOZjIqk6g=;
 b=QJKY8w5SSZYjEEfG5L1GNP6hVugKLR6e+ojGO3O8vJMu7Ji8WrmFt/+ilj1gAkbIbD
 IEM3heJu93+PhrPxiRmr8j+CDiX/3+Bl+d5TZPKaKfHfWbnJDEBcYHbA6SA9RX6xazR4
 u+8K+kzF+btDrNveYckHmnSbjxXxFT1HWCotE2pAuCjVZgC3wnSmuPFyPDGlV1jlAvs3
 UeSB11naMB9sDpnrjyjQ2YnqgCAGuNyuwv2sNdCR3iiY9l80Fogym2eapt/ZXVNc32z1
 IYWKwxgihhKLzBDlf9XMOb53Sj0m7TyWX/XFuQi6AZKk/bgEmLknixC19UHzeUCGY1xz
 3Xlg==
X-Gm-Message-State: APjAAAUzMmI09gwMnhkPNU8qTQVh1RNNQiJ296VkvmNEWoD1ZpFICsfP
 kQS1D7JAebZAP8KM2GtFVoD6Hw==
X-Google-Smtp-Source: APXvYqxd8yp8Dngio2HO2NRx40UjWPIBx2dPgEFDiwpELJdmzYKJ7ihFd7m3wohPBcadKXvewYRGxg==
X-Received: by 2002:a37:8e45:: with SMTP id q66mr3685650qkd.129.1575475183874; 
 Wed, 04 Dec 2019 07:59:43 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:43 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 02/25] kexec: add machine_kexec_post_load()
Date: Wed,  4 Dec 2019 10:59:15 -0500
Message-Id: <20191204155938.2279686-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075945_472983_7B4F0090 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

It is the same as machine_kexec_prepare(), but is called after segments are
loaded. This way, can do processing work with already loaded relocation
segments. One such example is arm64: it has to have segments loaded in
order to create a page table, but it cannot do it during kexec time,
because at that time allocations won't be possible anymore.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: Dave Young <dyoung@redhat.com>
---
 kernel/kexec.c          | 4 ++++
 kernel/kexec_core.c     | 6 ++++++
 kernel/kexec_file.c     | 4 ++++
 kernel/kexec_internal.h | 2 ++
 4 files changed, 16 insertions(+)

diff --git a/kernel/kexec.c b/kernel/kexec.c
index bc933c0db9bf..f977786fe498 100644
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
index f7ae04b8de6f..c19c0dad1ebe 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -589,6 +589,12 @@ static void kimage_free_extra_pages(struct kimage *image)
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
index a2df93948665..faa74d5f6941 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -441,6 +441,10 @@ SYSCALL_DEFINE5(kexec_file_load, int, kernel_fd, int, initrd_fd,
 
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
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
