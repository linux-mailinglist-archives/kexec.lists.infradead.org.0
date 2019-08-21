Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3269831D
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 20:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R0sUQp2mY+Y2TSHydHCVcO9phLd8ufgOskI8rO69RQA=; b=D5GHQCn8n1okiD
	ETq0vkhk5TBKMmUCoYL6QRW3HwtaE3Cs+KhLjfqxyiIGLbeJMGkTTS4zOvo0fyHLVs8jNMTWIBZ+d
	W79UoF36wOVjjgFzjCNgQA36bRz5ziXr+YcjHWu812DzTbvpfaF6CnEbQhOmVJNq11Yeq07Eita7X
	uC44jP9UznXnIe935nBsO0VqH4eG3uYE3Dr/rSyPN96g3oOnROYL7DxfEgLKA0DX02qIaULPOzgyZ
	vtEFpIahoU060X40+0+O1GdpLx49SQe/m2Lku+T1B5tRqdA1v873l8IgGIqPKzqQSOvIdR/MMz6D0
	y16dFDoAGB1GjAkbcOKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VSw-0000zI-Ei; Wed, 21 Aug 2019 18:36:14 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VPF-0004If-OR
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 18:32:29 +0000
Received: by mail-qk1-x744.google.com with SMTP id r21so2746010qke.2
 for <kexec@lists.infradead.org>; Wed, 21 Aug 2019 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=;
 b=GlTWlepJvHyRbDlaHEFdDhjwr7ME6G3tgiH11e6zSHF0Yx3tG8+rX1LzQN9AxSvN5F
 eJHnR/A5iyS53ubpbQ7M2Rb0Qk3777oAjf3dYhxU7TssIsqeiE3gzsBsc9dNRK5JSwOs
 F3poSqq52q3oMa0JaQRQWhCbsmu3f7EurINkJ7fjV+5baUeM9/xWwhc1XLqecXGet8Ba
 ZpPa40huaT3e2j+zey0uLbMYFT1k0FKom6uI7dZJN69YlvG5TVagA+YBRsDBHENaAFPw
 VBZD6f/PTENBGtIIAdu1MbJ97QZQP0c/22pFDOAsvhBB7MgcQAQHsiaQkMXDjwSbIT+/
 ywIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kCOV/SKGyCS/idoYOjNn3DaQRL2Ie2fUru8T4/v0tiY=;
 b=gfvF+QthWVMNmKqwfVKEk3stERAFI9JyuH5G2V+vX2OBfLy6RLqIu1vQRhEHH1XGK7
 +BR+rT8XWLIeyq+tRqdLQ930DkD4Rh+Y9RM/Fq0DNUDgsJSEkK1Y6n2e5LjXANrD1G/a
 mQDMZoE3kmR5t4yqv6Ga7X2tfREoElJRzXXj9ZG5vde0B3ZhKs+CkbpHkxIYTLovJmwI
 GTkG+/TDdSyCW9F15HV+Z9svbv8jvJr21/bE0xRxKtOiBa1g4SuwCdzt+FYl6B3QrTIn
 NWtGA+Ob0zPaI7v3C5UfQMDiBuIUUDGU2v/AQzjne7jVv5hlREXEUKBMJ5N3PRFWVM/j
 mG8Q==
X-Gm-Message-State: APjAAAWDdzZHz50mNw/dB2pyjA0aAv2EfyyM9UdtaFWhoaxgZWnNQSYu
 kvD1irL9cQPc2o+9qTlkpjUr2w==
X-Google-Smtp-Source: APXvYqwt48uvxRp+EENQtSiynp6FQfq8H8l0y0bSzNIwyq4yP+ezYfhMfD/LoNrfv6n+23xSn0fbQA==
X-Received: by 2002:a05:620a:126d:: with SMTP id
 b13mr33824244qkl.452.1566412344835; 
 Wed, 21 Aug 2019 11:32:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:24 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 13/17] kexec: add machine_kexec_post_load()
Date: Wed, 21 Aug 2019 14:32:00 -0400
Message-Id: <20190821183204.23576-14-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113225_967558_D423F0A9 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
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
