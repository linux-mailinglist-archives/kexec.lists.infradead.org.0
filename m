Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19FC1A012B
	for <lists+kexec@lfdr.de>; Tue,  7 Apr 2020 00:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qA4dNKWwtRbK9bXqmwHdPY6fA2lsmIRKTC6Yla1rT9Q=; b=je2
	OQByVbcFOlsY2uQvPLALrsTETqoxgHnMINbKdRVtSy2Jsw6A/r/BdGYCTM2m3Bi59jYCPRyiyTz14
	ZX56qhhPq7ujzHxNaBzBtyNLJeljGWNGadd2P6xf1PSBZU++dF8rQFdVlYrn5/NZsi1WUmfRBIOfK
	I1yS5i5x1BTbh1anZNFgW2NCq6nF9wosBWW2ne8FfqOAieEBYWDfQBCu122Cye7eiXEty4LRha533
	r/S1QecfiDkTR2XzfK8uQ/ZGn3jdptWfgVwjAMTMqjlqKH9sbB8VJF2+NgjMCRBwyAKjqtc0870xN
	jEiRqRvk89ELBeqTTt0i0vx/xo1mEcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLaHu-000377-1h; Mon, 06 Apr 2020 22:32:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLaHp-000320-Vo
 for kexec@lists.infradead.org; Mon, 06 Apr 2020 22:32:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586212328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=LnXawnHl3x+8nzXE6aPqR1EZWlC7TbGYKhmtxBQaYQg=;
 b=BDwP5QA4O40MwsIbaBLiCURNc5xBfh0CaD7Yppn0NmdVUW44ioxwR9Hhl99Ncm2de3Chyi
 I/BcQLZMSsdIDrHXTLgpQmu+99GhQdrkTn7vtttL/k7ZdhQQ8AN8Vkn9AC/1pR2IWZJncu
 5FhA1xigGx2nByozlMoHXBaIzekj0v8=
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com
 [209.85.215.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-216-SjRYDGAKM3iLGCzKjdmmUg-1; Mon, 06 Apr 2020 18:32:02 -0400
X-MC-Unique: SjRYDGAKM3iLGCzKjdmmUg-1
Received: by mail-pg1-f200.google.com with SMTP id 201so805434pgg.11
 for <kexec@lists.infradead.org>; Mon, 06 Apr 2020 15:32:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=iUOiyug6a5WDWQL8+e8y1fw+vPajXweHaHtFWZ115vI=;
 b=PEoo5cvzItP0blMhSpPMGkMDIm7uhVO7yGPI5bzRdo4Qd0Gfz9uLFAPTluWQTVdYjD
 p+M7tQR35Xv8e/mchfCQUwQwOf/qyBW4vY4UIPhjnI0b+mXpr6vgCc301/Xz4mSPPfLM
 5IvTnvMwRAtJnpqMPN0e5QQNpQb/qonSjXGoVvUwByyEPWy4/EHjKDJyNnTuSXSOyUOP
 YLlk5TxHEEtOgeHrQEFw9WOOE50HNazSuyMJCzsUae9ANXlDEMzcite1vQM3P5W0qVpm
 eAENJt+XxLCm3Pg4UX+JPadhdXu1kM6a/VZepNPp0GnR9B05eCFzMY2NQfNgqtXwGniW
 f73Q==
X-Gm-Message-State: AGi0PuZc7/04qgKz4mjbCKSHkSPfDjl2ii9Tv0Q+pK3aYnPi1kB7D8ss
 NLlErsbF8nkyFAegM2AoH421AUIJV8sjegDvsyqJbS9H9RP7lnf4SmYIapipEbnKx5Bl61JTSYW
 w6yxA1tIw5WapcUb4L8gH
X-Received: by 2002:a17:90a:254f:: with SMTP id
 j73mr1668199pje.11.1586212319048; 
 Mon, 06 Apr 2020 15:31:59 -0700 (PDT)
X-Google-Smtp-Source: APiQypL9P8FhAmlffwlXt0IjAgBtmJsCmO7NbdYFMZOcnukZIpnSmdTuAHXA6WHf1XjCGTOtyxLKEw==
X-Received: by 2002:a17:90a:254f:: with SMTP id
 j73mr1668157pje.11.1586212318632; 
 Mon, 06 Apr 2020 15:31:58 -0700 (PDT)
Received: from localhost ([106.215.98.135])
 by smtp.gmail.com with ESMTPSA id 63sm12375538pfe.96.2020.04.06.15.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 Apr 2020 15:31:56 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/defconfig: Enable CONFIG_KEXEC_FILE
Date: Tue,  7 Apr 2020 04:01:40 +0530
Message-Id: <1586212300-30797-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_153210_146852_04B5BEAC 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhsharma@redhat.com,
 kexec@lists.infradead.org, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 James Morse <james.morse@arm.com>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

kexec_file_load() syscall interface is now supported for
arm64 architecture as well via commits:
3751e728cef2 ("arm64: kexec_file: add crash dump support") and
3ddd9992a590 ("arm64: enable KEXEC_FILE config")].

This patch enables config KEXEC_FILE by default in the
arm64 defconfig, so that user-space tools like kexec-tools
can use the same as the default interface for kexec/kdump
on arm64.

Cc: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: kexec@lists.infradead.org

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 24e534d85045..fa122f4341a2 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -66,6 +66,7 @@ CONFIG_SCHED_SMT=y
 CONFIG_NUMA=y
 CONFIG_SECCOMP=y
 CONFIG_KEXEC=y
+CONFIG_KEXEC_FILE=y
 CONFIG_CRASH_DUMP=y
 CONFIG_XEN=y
 CONFIG_COMPAT=y
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
