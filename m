Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8967C70F
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 17:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RP1InaYngFi8un8fm3ytu3h3gQGwfO+BHv8HOihX6zA=; b=SfNVdO9I87mx4R
	Lp2nv2Ce/8eQz3yKI2z3qQzwGDQ0XGGKMuVeqeBXS8hyNfze99auo3pZ6lMpdH9Scw4zCcYtXiZZz
	90YnKO+4z/fh1YVKpWnAaJRZA8Co/iGvCZ4EPH+YhBd00+BWG96lJ5sR2sqwSFrLyR3fyeIhGxIuR
	JkGgLffMTS/+riI63rDQ/bWPkM/XykjSwt0UTFx9cQHnbGt1nQZ9DXrE23UIEZQXJaNjfOK86r2pO
	A9L0rjDrtqHEuFt6CJAlbbsbEq9FKeKU5uFmC1jykf+KcLh35yChnszcYxCryrb1sELZK/XbGrxb6
	Iy4Wcw3p0q0aaMRZpyKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqiQ-00025Q-4v; Wed, 31 Jul 2019 15:40:34 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqgz-0007lQ-Lh
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 15:39:07 +0000
Received: by mail-qt1-x844.google.com with SMTP id a15so66991956qtn.7
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 08:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=a8h6/KaC5Piq1VkFuiQLhvl2ZdeRxBmHZozqoP8J2iw=;
 b=kozB+ytYyHw9RhluUzblYdsFfY3Dv43ogPWJXWl7P1oNu+oyHMha8I7lwP+NjNLmZt
 UOmHrGMgf5sYEl0a2/cKbMoV2kq9Z/eQbDzblyi13+Xrm/Tnp3ITIQqK1UfJd/qxpXkS
 0aGI974bEakxPT/bxoEOaNl18hQ3yeYLEut1AtR1KIw+epSAEQ54Dfi5T0SdU66hCyjE
 QihiV01sf1ndWDDZ0NB2//SZoDf37BmsurqPijIqDVf/LkvSW63siZlcfNnAjGWzoWSn
 1L7bkl1Cd8jJxCulHiPGHEUuMn2KzotmzW4qJ4xVa+yuSrh8dbaqho+xrP5uejKhShlF
 +hrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a8h6/KaC5Piq1VkFuiQLhvl2ZdeRxBmHZozqoP8J2iw=;
 b=MJrEu9bFk7kmp1l1Eds6vTnJkFh4QgCHKN3HvRO4/PUIpGe/SK1p0fwuJObKObMaO6
 iRCQ2KU6BQ6gTMUmCDfZSO0iI4lcbIyPgdy1ff3l/5E9dS7dnkNN+h9JkErwbfY3RfU1
 F85rRKZhPBs4fLHFuj6gaNWvLRfoiFtY3sTROUGaekgrXmo3xFR0lMZUODy6+ypz0lE1
 jwjnJwrrst8uo7oZOwfGwIxPrbe8f4cnti0S2odP30aaSpATf/kvMVVHarb3rnY58hpe
 o0P5pLG02H6EZIoY3+4pMENE/c5fM9kpIBjs9gQnWgDlbM0bBykiTme3gywchJpacHcj
 AWuA==
X-Gm-Message-State: APjAAAVpWB16GWaN1pYvDcGUq6F5et95d5cEbJTQKtSGFvEo9YyN6kdO
 kAzLLdzM29x9Tt3GzuvZEzIN3i0F
X-Google-Smtp-Source: APXvYqwuACOTaf8gffAijH2Zzx0ksDXKqJiEVvsEccygqEisgOhp5Vs/4mMgCK39Hh+y7F4PhUqq4w==
X-Received: by 2002:a0c:d003:: with SMTP id u3mr90210411qvg.112.1564587544806; 
 Wed, 31 Jul 2019 08:39:04 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f25sm35116803qta.81.2019.07.31.08.39.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 08:39:04 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com
Subject: [RFC v2 4/8] kexec: add machine_kexec_post_load()
Date: Wed, 31 Jul 2019 11:38:53 -0400
Message-Id: <20190731153857.4045-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190731153857.4045-1-pasha.tatashin@soleen.com>
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_083905_744620_AA88026D 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

It is the same as machine_kexec_prepare(), but is called after segments are
loaded. This way, can do processing work with already loaded relocation
segments. One such example is arm64: it has to have segments loaded in
order to create a page table, but it cannot do it during kexec time, because
at that time allocations won't be possible anymore.

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
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
