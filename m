Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FC6ADE86
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 20:13:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/y9wk41wfJYc9ZN5VOGkKrtoFLHlNvPxa/ifnh8tpgY=; b=LUbwdeE/RoBHjG
	8fyrJS1UGpO1OncyMIcAJZmiE29cUTE39iLGGwxHf51xuEgKOh0lEn+QNTdROguv4erCpmIdV7TCC
	fm+aKPk46gYWFs4Jg0V8G2/mNcbX+Ia7noDqfG9jDtBftPELEvIaSo1ngvNFP8vhN9tlCLuY/m9CA
	Lj25PWECEX+kgSUOq8zQ+R167G2xvme5lKi+hJDS9/p6kMaviMiGtL7T7IbCk9EvjgQTIddGNs83f
	ON2i7oT7E12x3TM3CZt/hZSV9cIhydV2cycq/TpQdwmWRLC2USOKPgJWGybx5pMvu6DJDJ7+6DUJJ
	n65FR9TXHVxhVw9dJJ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OAU-0001Aj-53; Mon, 09 Sep 2019 18:13:38 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9N-0008Ij-1w
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 18:12:30 +0000
Received: by mail-qt1-x841.google.com with SMTP id j1so4536035qth.1
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 11:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=hIvv7JZmNGiFtMsjwPiXKldWZ14j/ed2TQl7Sv/FusU=;
 b=lGvVtaczZepcY3pVB902EwUXMLPY+wfRloMScgteToa6kMFSBvVkWpsD7vtQgvSnpb
 n/a54fuNHqwxUvxcFSzx0cdrSI3mvLlUG+wIbjNeDvCSbMpPXxVZiNC3frr/K8fEKaC5
 CexW4Wn3gLJtqbiGVGh4QhuREdkhbMZJsiQpyIH2GbgbDZWnUIFdVP9M4rfJSr+W/OqJ
 xfYnNoOEc6u+Yyu9eBmybePWEGSyM+5bPWq/2wFa59phJZztRB4Lcn61oUtH4Zxxm7uW
 hyvJXiag0PQpx5U2WS0yHf8InIp947VYjVgAUFFyWL9SJvJ/5W880Im12Kt7v3afQCVJ
 EQbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hIvv7JZmNGiFtMsjwPiXKldWZ14j/ed2TQl7Sv/FusU=;
 b=MCR/Hz9iMGP0VrpCMMLY+Y8LxBeDIOm8VN1LR9rK843hF6dddE4i8RiSJKr6MTEQT4
 2It6nofKfctLnjT3bV1onpMghN8V3WywMZiy4XtorWg7KlXV1ZSZ8Cqdkjek4X//WPqm
 cn2LrrSQgUXR/oCrD5XynZDgY1HK46tqSQN/pV/NbmFW8EMuf7TunSghBol95cOXKLMk
 w4DvqJ063zyrLIUS1B83228XrbijhwuloSLk/Z87HTYavbp+bYDVPKwLOe1OpcFZKXee
 46GU5LH8kbfHFNYa8G79hS3qObp+VZPDHUVOHa/xp/bkF/+JKNQ6vijGQZZmkpu0a440
 UMUg==
X-Gm-Message-State: APjAAAWPJIc5BW5DKH7eMWT51wUlAnUJEHZa/0HBJNOuw87aUZrw3Oxi
 L6lABh3KaFRTVey3qHV6Xh4cMA==
X-Google-Smtp-Source: APXvYqzqCGrV++beTKTDQJdhdQgon7XutZsT6/j1WY0FvUCkwan7YuQ95/1EShbY3LwmpFjAnArpdw==
X-Received: by 2002:a0c:a0e6:: with SMTP id c93mr15594165qva.109.1568052748291; 
 Mon, 09 Sep 2019 11:12:28 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:27 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 03/17] arm64: hibernate: check pgd table allocation
Date: Mon,  9 Sep 2019 14:12:07 -0400
Message-Id: <20190909181221.309510-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111229_110732_4BAC64FF 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
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

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
allocation was successful.

Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 025221564252..227cc26720f7 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -217,6 +217,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = allocator(mask);
+	if (!trans_pgd) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
