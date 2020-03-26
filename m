Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 784821936F6
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 04:29:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoQBKOcM4Gr2gggqd5a02P4KsPxBEZ+nfGrMf91/Uy8=; b=LcetYfEr5YAr/e
	j909VtJD8DMEfluqMiKhFVL9P2gMADGdNuB1od9uxuuJLFu3LQRV/TLqM6ovUIjOJg7Xj86pqSPiP
	vlUrsMz6Vue9OF9EYacI2SLvS6Yo9W3pK73NrrXLC6QX4Ejz+jCCzxHjKCL0r/ImeZ3iaPSE2QImA
	vwuQv+67OKzop+4RqLgo/oW2aEpzU2avMRMhASBDSAqZxPO9uWvF52u1lpZ84QFbQ9vk3plST2L1Z
	n4Y9q/aEqzqXAP9LOB7/jFXXeghxCzJUmxB2/vsAdTJ7kxXguGryL94rlsMrRfwXamQNM2TpjGlni
	gjh699HWbRNuDH9wqMoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHJD9-0000eQ-D5; Thu, 26 Mar 2020 03:29:39 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHJ8J-0004g5-KX
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 03:24:41 +0000
Received: by mail-qt1-x843.google.com with SMTP id m33so4205301qtb.3
 for <kexec@lists.infradead.org>; Wed, 25 Mar 2020 20:24:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=d2Tg6DUqu4h4AoeF1TJqlJ7g20oT0br2Hcwg7d/p1G4=;
 b=W08QSBFeQAtNj54YvzgesJNcVcH7833kHC2Us83ZevVOe7Do2dNazfnDt+CowHHQIC
 faz2AvdaBb/yLUxNw0/J44AfAn28mCBeR6ZDqxdwi8lE6AphaLIb5sZ6jxgB7vY9oOIk
 WirTf2XUGuqGE0ims6heIVFQaZ1NjjK4vA/HACW8LgMbhJcnRZ8fO4gf3Ukmff15jWgO
 itOmuS1IhfrI1BHKq+fLFhc1JPpepcBtDb/iE42VAxTYZOSl8arS8TAxmsuXEpTMt1T1
 QX+gB0l2JZ6f1BbyCORa0271cXO+lTRznlXSB/d/5l8qUgKci6e0pTZFXHFGgQZwxPKx
 G61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=d2Tg6DUqu4h4AoeF1TJqlJ7g20oT0br2Hcwg7d/p1G4=;
 b=Rbns6nmGWLF6/AvOz4FzGFh8vnkyqUHWzxnJxBXAR8gBf5ripmrIwdFgpx/V75KSrx
 2iufZomY2upHELVm9RilinuUVBwdEhqHHofAKoSuhCAuX/8Xl1kmsWw0OcTbe8wL/9k5
 Gn2ssl7H4yShriyY/kgYKO3QMhkzrKppQV9A2VvjoUX5ALLtPMwwQ7IDYZSci1s1ssJ4
 v4AJ71lglutyPm/KosZlfgwRXPmxBFUJrdrtXdeqUP3xThgmhwzimFv1+ayERwXgLR8p
 ZEdMmDOYKfMsh6ydwvIE01vXhcpU41Dc8KLmshXoj6ApEgL9rL2qJ0VayQTAiKBYqY1h
 RROQ==
X-Gm-Message-State: ANhLgQ0X7F9a2QO7VkWK5r/Ee34L81YFQFDs++HkxlahDq+CgSgI3S2e
 0Mo82Y3+UZvUxWr+Cb+c6nTyVg==
X-Google-Smtp-Source: ADFU+vtNI1N6KYYNTKClbFa5p1eL7S/68psb1NMui9aroUYD5+m0J4zDvXEIXwzpeJXNUnHnRvaNyA==
X-Received: by 2002:ac8:6edc:: with SMTP id f28mr3781501qtv.271.1585193078245; 
 Wed, 25 Mar 2020 20:24:38 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id u4sm620034qka.35.2020.03.25.20.24.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 20:24:37 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org, maz@kernel.org,
 james.morse@arm.com, vladimir.murzin@arm.com, matthias.bgg@gmail.com,
 bhsharma@redhat.com, linux-mm@kvack.org, mark.rutland@arm.com,
 steve.capper@arm.com, rfontana@redhat.com, tglx@linutronix.de,
 selindag@gmail.com
Subject: [PATCH v9 10/18] arm64: kexec: cpu_soft_restart change argument types
Date: Wed, 25 Mar 2020 23:24:12 -0400
Message-Id: <20200326032420.27220-11-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326032420.27220-1-pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_202439_771976_A73E7F3A 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
MIME-Version: 1.0
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
index ed50e9587ad8..38cbd4068019 100644
--- a/arch/arm64/kernel/cpu-reset.h
+++ b/arch/arm64/kernel/cpu-reset.h
@@ -10,17 +10,17 @@
 
 #include <asm/virt.h>
 
-void __cpu_soft_restart(unsigned long el2_switch, unsigned long entry,
-	unsigned long arg0, unsigned long arg1, unsigned long arg2);
+void __cpu_soft_restart(phys_addr_t el2_switch, phys_addr_t entry,
+			phys_addr_t arg0, phys_addr_t arg1, phys_addr_t arg2);
 
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
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
