Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFCED9AB2
	for <lists+kexec@lfdr.de>; Wed, 16 Oct 2019 22:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KtvkbyndVsKVF3IKqslLIxmDoieA8fmPjHggWzNoukI=; b=b3Qgxpj/4bnE8Q
	VsVT4toSpXtjbaHgrSS32EWS38xle4KA3fR/0Tx9zJKSX4v80UuTgWfDnA5ckA2ORK4FOumEncgQ0
	YlAdHO2IMlEYt4YEkXLiLxGm4ys/fZGsVVlORs3/RWpVbqmvo5nVFrWckb4hEKW57RluoMzMPex41
	pJPuVRtB5y7yNxrwTXvk2UfzV2YPjHfnvrwmbS5c4Z8MVroZX0C7JrI6V8ambmCaEcEOt+yRbC0db
	aDR+j9dcxnuVS3bjocuel3CsyzLcBDhJsQ/MZo0vVA4hJk8/Hb7ix03P6VQfd1cVCiLz0I604Wr1I
	EGGaPHr9WljnxE3L6Svg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpVQ-0005oC-7h; Wed, 16 Oct 2019 20:02:48 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpTQ-00045U-Kr
 for kexec@lists.infradead.org; Wed, 16 Oct 2019 20:00:46 +0000
Received: by mail-qk1-x741.google.com with SMTP id f16so23977675qkl.9
 for <kexec@lists.infradead.org>; Wed, 16 Oct 2019 13:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bEALksuMGDCoXJUsPuJK9KjzrlYMPFHPnYP/iTi6nJA=;
 b=PmgVNinlAhKoCy38ovygoke5eHkmtndpc1qCG+WMEy9t9CEaDFzQKRRgmdC+/OTIAr
 cClxqiICWNaO9nHeEsZv1j3YqYY8c2OLUOt90mSsJlaqZ0yME3UdcMJnjBBcAFw/MxOB
 1gU5t4NkzRJAnW47EOb8ae4y2t+V1JiAo3wDbEYc0YRWeJM0RtUeU8C3aWxAqgm21r2X
 2TjH36zN66FahrRc6sj/m312DAfD5zn543Be9cOWsRTaprJZ2ao3oHfuJffHHQSvKTfH
 Y7lPKpfR61Aw+x4ek1rgWv3PvQp/5zoyFWjLSW5+KPcvj4n3qAvnRZospNLcs5gjEocg
 UXTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bEALksuMGDCoXJUsPuJK9KjzrlYMPFHPnYP/iTi6nJA=;
 b=sSyzu0RFsNM7dlR2w9Aq/aL7SuxtG3uKyqFBBXTk2YcZn7nTCcFZywlDJOfjj1DNAa
 1jZncGlI0vq06zfPWLzb6Zpd5sI7qAQQaEDTdpe6KQEmtFVLyaU1xSFCIzTgzEq/EU3q
 vXY6ejkCA1tEvFnabgyCHvFGNO4sU0fRmBUoFmT35ogTF8XcpjJ+9kikE1ss6AQ9Xeid
 jfDFEQSASIi3ouwHgI0BhlNw4wRPNcgyoenOMCdhtn3A72m8u2XCTvNVZIkKVdMxI12i
 67j6KDWsfnG7ReLVyoFBgzklvyjxVkxwrBSB2TicJpWZivVcz/tlgVHqwyzbMKMPr4pM
 RAIw==
X-Gm-Message-State: APjAAAXgD6hl8uKahmiWFz9xdDdQgoZCPEQwQEIBpaTaQ4l6OteU/Ixr
 WzRzAgkUa/Lg3Se1UZkl0XEPTg==
X-Google-Smtp-Source: APXvYqzyH+2jZ2ynpwq6pYQufa7x4iWmQOZSfM/oXRiz2GauBXOrA822WeZtbs4kkqeqKB/SnonOpw==
X-Received: by 2002:a37:56c6:: with SMTP id
 k189mr41781172qkb.124.1571256043570; 
 Wed, 16 Oct 2019 13:00:43 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id c204sm13342030qkb.90.2019.10.16.13.00.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 13:00:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com, steve.capper@arm.com, rfontana@redhat.com,
 tglx@linutronix.de
Subject: [PATCH v7 04/25] arm64: kexec: make dtb_mem always enabled
Date: Wed, 16 Oct 2019 16:00:13 -0400
Message-Id: <20191016200034.1342308-5-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
References: <20191016200034.1342308-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_130044_795845_21DAA2A6 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
