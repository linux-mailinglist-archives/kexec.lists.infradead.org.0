Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A227C11FCBF
	for <lists+kexec@lfdr.de>; Mon, 16 Dec 2019 03:11:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+2sopPGeDYrv9pnnUiC2SM11HfKhoMIyPgBn9bVMeA=; b=WpBNUA9HlxohO1
	Tv6AiU5nxUXnBbUOH7VNFZoSfvgLT+j4pF1AlPEpSN0EGRgw8V8cXNnW9rp6v5nA5L5o6HpWfUrsP
	DPHdS6swCERrQ5oA3UtP8R4B8QMrYxmo+5H7DibGIbSoPPK5thQ7lT6rC/9ANML4Y1M5DMAIpnB17
	Ia31MDtTpKFK2EuBCy5Vp+cTWBpq0vT7yGmg3MrHRZhFF1Je6qorX3As0a13ENRZFImco20uNbdJ+
	dQ88VdxBi4ca3OLK0N/vim/yoP+5SZ0txNR09hxChgWmLFwkxN2KkGOblzlxgUkTJnAhQ1ourSXim
	+oup65CFB+oFoQGXeOnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igfqu-00009K-G0; Mon, 16 Dec 2019 02:11:16 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igfqc-0008M8-MD
 for kexec@lists.infradead.org; Mon, 16 Dec 2019 02:11:00 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ca19so2271024pjb.8
 for <kexec@lists.infradead.org>; Sun, 15 Dec 2019 18:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3FqOO3wE0tn2QZf6UyRIRojyX4xpI+NMDGsdK9w/Ap4=;
 b=wGyoF6jRoSwSqw+ChtmsGgyLywamuwnCySkdQERJLwj6c5L5qb0fdxqrFu931tlm6N
 8yVFrAfggJMKfdNHQsaLv8RR/v0oqSdDn7G6b4zu0f7F3ZHMCgOEBRNBDYfo1EvnNJ5S
 tbUvpunr92twBkFUM63SSt+pRBt8o1HUUaol7gl/QKAx+uOE6avNdSaIfuNvf9TRBeoE
 tMHoF2u8UktPVgVuCRHiXaV3jEFrAx2XCB8Jo8yDsILDJJu7T+Tt7Ld/7/1ZkOXISopf
 B89pLzreYs2xQKOOj0VmCUR6VPJ8g43mhhEKBO+tHUgicS+W5JXVB8Op5XgmE3iPFIJ9
 l/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3FqOO3wE0tn2QZf6UyRIRojyX4xpI+NMDGsdK9w/Ap4=;
 b=mHMbf9TPPCvjSnnZmP7em9ehp8opGesyRSYHzncjsddQ1LWMQQOyH1q/K86QzdUVTw
 PLwnf8gX5bRqQ3R+u8rSAOo3PSHgHZ7/IRrSgWaMUlHGRINcMZGp/lMRwfJRenz6tkSK
 DSNZXeN2Oadfw03qpsr2N3WtQr1XQA2ubgMefGHvqPaUAJxX7vGsIyy8w0UzVflodSBJ
 UlLdTTaiXH/AXubT8ryVkes2nl77e2ePMIxFP16rBaCRBPYbfRA2jlCfuujZsoeJRr5D
 wJihJVuZod1PLN+kKbcGFUHRReyDmaUnPhfunlOgx3v2LNCBZoa8Syr32VSpd5eEoyXt
 nSwg==
X-Gm-Message-State: APjAAAWp9hIZYcEihHlb5nxJUf2VPMWKGXCdRHtyliIKRiRLosLF3MP/
 7Nvga0zbSKIAOzJqw+hs9UB+Ug==
X-Google-Smtp-Source: APXvYqwqnj6pjtxlkbHv7rjmVjeSeNcfkdhHZLvOyl96O2c83UZCkHGR30ssVZjoytDPl1puOozqUg==
X-Received: by 2002:a17:90a:fa92:: with SMTP id
 cu18mr15301981pjb.114.1576462257870; 
 Sun, 15 Dec 2019 18:10:57 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id p5sm18997185pgs.28.2019.12.15.18.10.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 15 Dec 2019 18:10:57 -0800 (PST)
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com
Subject: [PATCH v4 1/2] libfdt: include fdt_addresses.c
Date: Mon, 16 Dec 2019 11:12:46 +0900
Message-Id: <20191216021247.24950-2-takahiro.akashi@linaro.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216021247.24950-1-takahiro.akashi@linaro.org>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_181058_744164_2FA40986 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bhsharma@redhat.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, AKASHI Takahiro <takahiro.akashi@linaro.org>,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
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
index 93217d44237f..c20b1debe9b4 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -223,7 +223,7 @@ KASAN_SANITIZE_stackdepot.o := n
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
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
