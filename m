Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1D4ADE9D
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 20:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AyyUnFLFg90nrmVh6socScOU+GKVpNyb7rV4PRVlJKc=; b=LX5bS8rIyPTY8O
	jX+uO5j1a95hb1u598SNtQd45vsj9k9bELrBdLS+gYBxRkr5utXgMUNkGR0Wb077o7/bJs3bpwnpJ
	joqaVEDkpP2/916iLfcXJooKuOFojIGS2eDB3C9IolCAXANyWes6jjCAgVe37zSZUxNqdmam+hlb1
	D5Ijdp6IIyFkrRSODE2YMeI7Ap0cnQ5wlVnZCd85dTMda73LAi7RU76KuPk+KEGKAd/+Ra5SSpTLs
	AAZl4JAZtThQCJZxkBEFcW/Sxz8SdGsXIaDC/06fgjlsQvfv8BkDlf3XVVLajvsw92ilqRGpAJyx8
	Xfu9IoT13C7iqjskUL2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OC2-0003y6-FU; Mon, 09 Sep 2019 18:15:14 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9S-0008QT-SX
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 18:12:36 +0000
Received: by mail-qt1-x841.google.com with SMTP id c9so17256149qth.9
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 11:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=9qwJvK7duEPa5cSydJwLuayx187fiYj4pOWC7XOD35U=;
 b=hJiNQQMhPzUeNhjSqA+wl+M2Yw4VzmLAzetQQIh1yJcVnbibJdozQMUJIPTj7G1fZ5
 uIcSVRVD7sQv4/zb3vvoXmG7nEkgaDTeuvoEu2B5hEQ4HKyKvqCdxkrMNxnLQvbnC5Sp
 GXJFdIB9Aa+WwqYBwe5OAvMNEHi0mE0MDeX0ZPZjHb8snLd1akNp9JPJJYPCGkMalc8q
 KUixyhfh6ehZRO08DryaR+QFPF2S0018x6Gv5fzx8kXs+kuCJp2nCeGP2cJBD0372qDa
 S1kzC6KQRbcG17aW6isKu0YCKQmeUiKgxNFdBtuyymq/m8jbblhdUBGwoKmff1pBx6J7
 /Y0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9qwJvK7duEPa5cSydJwLuayx187fiYj4pOWC7XOD35U=;
 b=Wh6CD9xXh7Oka4x484Y+gxvrrsftKAvK98LpqCZdfyw0r2srJta1Panj3Ew3KDBjsB
 S9qEFZ3fr50xjRTrovfIjBqguM3l2x3p40ynZxxcCMvoCzUiYXXIyqHPucZpaDQp8x/0
 /az3lcpfEGqeVvEmwjrYAnDzL/eeSp+OLy4AIekv6+uk2yxmpPkvXYER+0cb3h8ZXl3x
 Ft0xPgF9gRgkM/NxGbQy0P4Lm9xGuMqe4uoEjEDztWJQcxdcUrbAPlnKvgqDoSpFUuda
 qmNOUIfTxin/pZsmMn8ywNyniK3aDE7lyykWqyFLXbgHQu8eZavSDwADej5SEEpXWTDd
 7NyA==
X-Gm-Message-State: APjAAAXQC4wJU8Y9hZchOY0uQtNdJZP2BnvPhoCX6Mk4ANATEk8HB+GE
 7lkEvN2hsOnMyM5Z+68DKg01Dg==
X-Google-Smtp-Source: APXvYqz8CjF5wzOFrAWFe3y7s/Lo+3E4+zqXPfUNMu+qW08GhYxza7uSUBke5A6jwxTbDkv2QIy0jg==
X-Received: by 2002:a0c:9665:: with SMTP id 34mr15164929qvy.223.1568052754025; 
 Mon, 09 Sep 2019 11:12:34 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:33 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 07/17] arm64: hibernate: add PUD_SECT_RDONLY
Date: Mon,  9 Sep 2019 14:12:11 -0400
Message-Id: <20190909181221.309510-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190909181221.309510-1-pasha.tatashin@soleen.com>
References: <20190909181221.309510-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111235_054225_AB3B13CB 
X-CRM114-Status: UNSURE (   9.41  )
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

There is PMD_SECT_RDONLY that is used in pud_* function which is confusing.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/hibernate.c          | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index db92950bb1a0..dcb4f13c7888 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -110,6 +110,7 @@
 #define PUD_TABLE_BIT		(_AT(pudval_t, 1) << 1)
 #define PUD_TYPE_MASK		(_AT(pudval_t, 3) << 0)
 #define PUD_TYPE_SECT		(_AT(pudval_t, 1) << 0)
+#define PUD_SECT_RDONLY		(_AT(pudval_t, 1) << 7)		/* AP[2] */
 
 /*
  * Level 2 descriptor (PMD).
diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index 750ecc7f2cbe..da2b3c5e94cb 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -436,7 +436,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 				return -ENOMEM;
 		} else {
 			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PMD_SECT_RDONLY));
+				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
 		}
 	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
 
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
