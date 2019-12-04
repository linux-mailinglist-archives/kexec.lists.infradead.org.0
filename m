Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F4B112F65
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 17:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qagVrN6ywNkL6c8IO2yUtm/gjMPqcNleanuOBpZf4HQ=; b=U3yVSVeZIaafgX
	0r74UCcC/d8LbLOvgvppv2v8JlC1unswiigrbqm+fEJVrhjzeckCrNEBt+tlEFC6y2q3m6BJIBYt5
	zFQlpgepTJ4G+T4K5gYkIStke43/a3AJNawJiIA9uaRi4NdOrEViYfYgaT7nNtjkfyS36qHuLMuCJ
	ajDpcZfBespK/Uax/0/prmU404Vu29ZZuhvODg9JULdl57LnhMIZFk2l/ia0wZpk7EphoxkSFR3nR
	3++xIu1qcFafvbd8/Wzj3B79ArzhXki4IPvbMR6Yzu3Mh2S9aPBLs5b+HAzzBXov6Tnzd3qXVBGgM
	fi+VX+pvvnhYI3eq6nrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icX6P-000282-Jj; Wed, 04 Dec 2019 16:02:09 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icX4C-0007IV-CE
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 15:59:56 +0000
Received: by mail-qt1-x844.google.com with SMTP id j5so201273qtq.9
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 07:59:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=2gHoWz5U3gDvwOIWS+f4ZdY50s/vcrKHXb/YTJoNTqU=;
 b=a8S4mBC3Dt23xxnDE1I9wz9WiyUF1CmXE2b5cIfPza4Al587zhEJsQ3/UfRwm9U+G/
 rRRqctcvpDnT6sJ4PjIsg0jEuIdwrHHFaf9DZrY+XcZa5X5HqfADC4/ZE/fK2jOaAWgU
 W2eTwrnf5+BiTNu9IleEmtU0sXaYA1ww/f2Z04R08eCD67sNZB4PEOIQ3156ZCKhqt1Q
 F/b9ovj2Jub3p4xim85ROV4ZHUG0gj54u/9VbLyh6qveLWICy/KpXEvfQm/MlfKFqDLS
 8vFiPKLYJ57TxShn7SFwh0QWW3AfkDec3XUS+DjVhJwEFPhmbNHzu28bBSQFiNURWkoT
 4eLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2gHoWz5U3gDvwOIWS+f4ZdY50s/vcrKHXb/YTJoNTqU=;
 b=LZBW0DgoJIZJ5cBDPjLdm/6Dj0aBwRcMxouMJVsdLemGBiAcCS5ZO29Pgc4ESUb6UQ
 2uK2a8uA+b8+lPVltpyPJpSJ9Lf1rJG2BkgD4y73uXbba7HTWR5dXilxDPR9M7PE+QJz
 702eANCKu+QlFrSa0c2pBPG/Sv8kWqpdg6F92qpMmOoXuQpt09dMqkMEnkppILGWedH0
 8eO7yw2nZc99yFcZfxoV3vxzQH/QAdvi17V/WicRbO7yMPzEZT6UpzIV3vojvoF2g8Sl
 HgAh1xXKwAQGQtsJ4UYqhqVfa5vARA+T/47J+ABF9Kaz3e4s8yvMGaPHkr4Yo7O582/N
 s7+Q==
X-Gm-Message-State: APjAAAVJJ7n5x1xhMFsdbcBGxfXf7DxZSu2UEm79qy0ST3mQIn5hb8bE
 d2BPn34gn7O9eb1tUaPCA2Pjyg==
X-Google-Smtp-Source: APXvYqx9KAIwGf5i0C+05hdOsoH1Qz53bF4Ua1D78Kp4D5OsFHhBK4l+6RncFcIz1n4N/yJalTasNg==
X-Received: by 2002:ac8:5319:: with SMTP id t25mr3419613qtn.242.1575475186888; 
 Wed, 04 Dec 2019 07:59:46 -0800 (PST)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id w21sm4177585qth.17.2019.12.04.07.59.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 07:59:46 -0800 (PST)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v8 04/25] arm64: kexec: make dtb_mem always enabled
Date: Wed,  4 Dec 2019 10:59:17 -0500
Message-Id: <20191204155938.2279686-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_075952_536470_F4EB0E5C 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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

Currently, dtb_mem is enabled only when CONFIG_KEXEC_FILE is
enabled. This adds ugly ifdefs to c files.

Always enabled dtb_mem, when it is not used, it is NULL.
Change the dtb_mem to phys_addr_t, as it is a physical address.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/kexec.h    | 4 ++--
 arch/arm64/kernel/machine_kexec.c | 6 +-----
 2 files changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
index 12a561a54128..ad6afed69078 100644
--- a/arch/arm64/include/asm/kexec.h
+++ b/arch/arm64/include/asm/kexec.h
@@ -90,14 +90,14 @@ static inline void crash_prepare_suspend(void) {}
 static inline void crash_post_resume(void) {}
 #endif
 
-#ifdef CONFIG_KEXEC_FILE
 #define ARCH_HAS_KIMAGE_ARCH
 
 struct kimage_arch {
 	void *dtb;
-	unsigned long dtb_mem;
+	phys_addr_t dtb_mem;
 };
 
+#ifdef CONFIG_KEXEC_FILE
 extern const struct kexec_file_ops kexec_image_ops;
 
 struct kimage;
diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
index 8e9c924423b4..ae1bad0156cd 100644
--- a/arch/arm64/kernel/machine_kexec.c
+++ b/arch/arm64/kernel/machine_kexec.c
@@ -203,11 +203,7 @@ void machine_kexec(struct kimage *kimage)
 	 * In kexec_file case, the kernel starts directly without purgatory.
 	 */
 	cpu_soft_restart(reboot_code_buffer_phys, kimage->head, kimage->start,
-#ifdef CONFIG_KEXEC_FILE
-						kimage->arch.dtb_mem);
-#else
-						0);
-#endif
+			 kimage->arch.dtb_mem);
 
 	BUG(); /* Should never get here. */
 }
-- 
2.24.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
