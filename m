Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F28D9B08
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYva0IIgewUt0NUpVadWYPphwhR1Dl9H58ZdUe9tVSE=; b=gbfWTUG8ofDY4B
	Al8FBA+V6jJyaa/C2UesXDIp02UYF1C2SH8zuYHsg/klQB7+uOCEiVlG14oPq21GPKjymdB6BtW9j
	pwLIdWnnueEav6dtYQPqAsj+hXM7lQq3r1MEc5ZgTFn1xwv5liOlnNxJ3OMA9CGwmDC3bnXT4OMhg
	ScK04K4hJ/ivJc8NIbFovX7TYU7SN0ImJWIelknhKUvy29GFeTg5kBVbJTFHRuARE3gUfdW6uH0YO
	iZTw8AKalL3c02HzYPSlg1KH6ys5FBKl+OAnw/sy8nKOPCE0g61GI28HdscrqT1DpC7rfelNXpm4b
	2+uMRdZKFVJ4ZkxgXJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpaQ-0002ez-Ri; Wed, 16 Oct 2019 20:07:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTl-0004RF-8c
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:01:07 +0000
Received: by mail-qt1-x843.google.com with SMTP id r5so38047987qtd.0
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ADaPlgsxUTXDoToK9CJnC6JqPCrliOXSW+GZvxTqrfM=;
 b=fWcMHMdeRF61RXXgFbsSde0TUuD9iStZlRHqG/LFIDJV9kompUv7iirW+QMwSWacq4
 glwYmN0mLJqvl56lLSgUR0hi/113Jr7CRUAmkNwj/53dD8wDyz4Ktzv54yJTXzM/IvBb
 IjObZQ00IZjvNNnyyPoOufxxPcHrZLUqHHp9DP8qFOU3lA7py7Rb86VMbW7fE9d6kzsQ
 ri5vQnwoNik+8utdxKj8qvVZTOqS+ZAIQ8JCpMewuiQRK/yF4Zo/cOHUZs5jWzuIoX6o
 zASj7LGsGPsZak57aoUTxJanmeQNkP67QrmcjHHwC8ePUGZmqQk5Ata/sR17HULf7JVc
 jO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ADaPlgsxUTXDoToK9CJnC6JqPCrliOXSW+GZvxTqrfM=;
 b=K6iT45SRupS/LQtn/sV95gBTHVUkviuuIfHqYA6Za77lOrf+GuPAHb80FHBLb5HQTJ
 3Wgj7cswznMxRHNcYTdWWcQ08UzigNMefS8gx/UtrqkrqMgaqjzVeD7RjUpM/rBLC1dl
 xU2oRZjZ86JMAaH6gqVVeXD9rYitM5uA9BHV/JFKbwIIV3thuGSfISaaiggHB2Ig+S7A
 yI9M+gC/XvAhG3mO91MAmssArylYqN7UhXy+MLOwk5sDEbgD8tXnqNYCT9yLd3G58pRq
 SdE30PPT/dlAUvTDraInmrv/QyRVe/rz+4Cx4uTtdq0uTXwDch7XHbclGcY2udMFqxqy
 dbtg==
X-Gm-Message-State: APjAAAUVFxYimec9ZNha4n8ZBzPVuKXn3sWgTwgGR0k15eVHXXfas/dc
 abjBvTRsQ6vmfUaOpBQIWB7GfQ==
X-Google-Smtp-Source: APXvYqynGGdSXuDQaPwJSbR7snjT6dI3cQ574+9wJQuf+wqqsCeR4boU0L9zKxkcwuMKg89ls9wgtg==
X-Received: by 2002:ac8:1413:: with SMTP id k19mr47859620qtj.360.1571256064395; 
 Wed, 16 Oct 2019 13:01:04 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.01.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:01:03 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 17/25] arm64: kexec: cpu_soft_restart change argument types
Date: Wed, 16 Oct 2019 16:00:26 -0400
Message-Id: <20191016200034.1342308-18-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130105_338162_059FCA7D 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
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

Change argument types from unsigned long to a more descriptive
phys_addr_t.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/cpu-reset.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/kernel/cpu-reset.h b/arch/arm64/kernel/cpu-reset.h
index ed50e9587ad8..3a54c4d987f3 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -10,17 +10,17 @@
 
 #include <asm/virt.h>
 
-void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
-	unsigned long arg0, unsigned long arg1, unsigned long arg2);
+void __cpu_soft_restart(phys_addr_t el2_switch, phys_addr_t entry,
+	phys_addr_t arg0, phys_addr_t arg1, phys_addr_t arg2);
 
-static inline void __noreturn cpu_soft_restart(unsigned long entry,
-					       unsigned long arg0,
-					       unsigned long arg1,
-					       unsigned long arg2)
+static inline void __noreturn cpu_soft_restart(phys_addr_t entry,
+					       phys_addr_t arg0,
+					       phys_addr_t arg1,
+					       phys_addr_t arg2)
 {
 	typeof(__cpu_soft_restart) *restart;
 
-	unsigned long el2_switch = !is_kernel_in_hyp_mode() &&
+	phys_addr_t el2_switch = !is_kernel_in_hyp_mode() &&
 		is_hyp_mode_available();
 	restart = (void *)__pa_symbol(__cpu_soft_restart);
 
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
