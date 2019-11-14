Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C93AAFBF59
	for <lists+kexec@lfdr.de>; Thu, 14 Nov 2019 06:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVb5gUgTsLvHakvFJaD2GxQt/ELzxEppR22gozh/c7o=; b=Ww+/jUP8KkYSIt
	A69OoFh1iSDuHWYumd1hLD4zPSRCyOtCt7RLfUrwAwgXqTCOWEiMqLtyFtR9gemdf4Q6xMGI6Do/F
	3EAS2tCciWGA5NrpOSiDgjAHRhhT09hr0TfZVYHSp/S9Lse1c+hjUJcGDEuACjGXd0MKHXOluG32o
	qMHSWEUxYCSusR30gAhFgQlOfwOrH/fV9P2rK5GrVlYIOsrNBeGo4ulhHW2BiLJlyFt65leZTXzG2
	/ZvacdOF+2e5v6AIs8rXAI7d/ZBXyZ7FK8fD4CXHCtsAr3NY0gtt2ZevfoHNRgJ/iReqmT5wcLSaz
	+5fVxLxIR0EUzi8FS0KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV7XA-0004og-Cm; Thu, 14 Nov 2019 05:19:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV7Sy-0007So-26
 for kexec@lists.infradead.org; Thu, 14 Nov 2019 05:14:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id w8so2081712plq.5
 for <kexec@lists.infradead.org>; Wed, 13 Nov 2019 21:14:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zfaZ7B1OIQM+O5UvJ/wV2ZCp71JUGqq5m81NfGqahU8=;
 b=s7vJIIecua6jio8GHP1SNLsWbrutJhjvfgoslAJdyNfzmy2b9kqOYLOYM2io59i57Q
 jHqssXPr1DHovyseaLXmzWBud240mH+UczZjWG9GydYicchKzi4Wla8GgBJHMEh5oRFF
 jQvFs0JkSiGRkjFe88ooLL/JT+Hcmel4OTYtA2+A/YQTZhpxB2FKtIWwxw0Tx8vuDky2
 7NVZHUujA72FiD4PpVq1EJDZEi7D2Vek7s0SsAE0g+DcZjJtNS7cFcPUdPZpqUkJeRoO
 a+gl4l0qGEmtluToROVonxdeXyD5qmLzG9MHlYvsMuFXNqsAfIOUCp7J05JVm7W5ZCVd
 Tu7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zfaZ7B1OIQM+O5UvJ/wV2ZCp71JUGqq5m81NfGqahU8=;
 b=TQccRhqNG5QAQlQlqENSJC3uy02e8SN1cCk1GTBeNvJRwLQTeIsRC8PG0/NlKCGV7z
 R0yRbwN+bmwyr4jsVLHljJA+yGzunN2B35io3yIzkfQDW5iq7Xv8pW/vdUT7DA+VMpbd
 hT4PdH3E9/TOVVX9eTTvzYQ7wt32EpVZQpibH0zRqW9hHRUbAOtbRnhmhoGSjxlFet00
 IbbzgazPbsxcbWa5MPthtFENoNTrlODKcMCfJ4pbwWQLciudCJqqlH+0nwAKEJLkJFE/
 6f+TsLK1DgGgnDJDB/j34WMdvdFt1Js5VFFXTRop8L5yWbS3zlRmzqZ7Q1LnuebbIpin
 No0w==
X-Gm-Message-State: APjAAAWgYdpLKZORO8SBylbwpF3igjHGz5w2S6g/xxvaIGlL1YrMqHz7
 mYxl5bFKyA7BGHs4ARPhS8OCzQ==
X-Google-Smtp-Source: APXvYqwvSy/LfRqw2z0v90Wt959y1d3zEAzp3xYzp6pLJgAetEFbCnaPuTr2G6XfYbzFoablMg0SNQ==
X-Received: by 2002:a17:902:7892:: with SMTP id
 q18mr7731002pll.171.1573708484192; 
 Wed, 13 Nov 2019 21:14:44 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id ay16sm9718758pjb.2.2019.11.13.21.14.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 Nov 2019 21:14:43 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v2 2/3] libfdt: include fdt_addresses.c
Date: Thu, 14 Nov 2019 14:15:09 +0900
Message-Id: <20191114051510.17037-3-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191114051510.17037-1-takahiro.akashi@linaro.org>
References: <20191114051510.17037-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_211448_163209_B9D2750F 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kexec@lists.infradead.org, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AKASHI Takahiro <takahiro.akashi@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In the implementation of kexec_file_loaded-based kdump for arm64,
fdt_appendprop_addrrange() will be needed.

So include fdt_addresses.c in making libfdt.

Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
---
 lib/Makefile        | 2 +-
 lib/fdt_addresses.c | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 lib/fdt_addresses.c

diff --git a/lib/Makefile b/lib/Makefile
index c5892807e06f..1587a2de99c6 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -220,7 +220,7 @@ KASAN_SANITIZE_stackdepot.o := n
 KCOV_INSTRUMENT_stackdepot.o := n
 
 libfdt_files = fdt.o fdt_ro.o fdt_wip.o fdt_rw.o fdt_sw.o fdt_strerror.o \
-	       fdt_empty_tree.o
+	       fdt_empty_tree.o fdt_addresses.o
 $(foreach file, $(libfdt_files), \
 	$(eval CFLAGS_$(file) = -I $(srctree)/scripts/dtc/libfdt))
 lib-$(CONFIG_LIBFDT) += $(libfdt_files)
diff --git a/lib/fdt_addresses.c b/lib/fdt_addresses.c
new file mode 100644
index 000000000000..23610bcf390b
--- /dev/null
+++ b/lib/fdt_addresses.c
@@ -0,0 +1,2 @@
+#include <linux/libfdt_env.h>
+#include "../scripts/dtc/libfdt/fdt_addresses.c"
-- 
2.21.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
