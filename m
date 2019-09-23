Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90213BBD0E
	for <lists+kexec@lfdr.de>; Mon, 23 Sep 2019 22:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trIcwZ+xra+ZAj+PmhbJzz1wLfZj0ivZ6V/55uIkpCs=; b=WvN0TycHJRiVxH
	WlVbbrqH0/VdOx2kFfiaI2ZN41BXaSkWGmONVrjzuWhAs89FKwV6X/FMLSMXZ/2UuFqCiM9+ooNjC
	v9sjkItZwrciVxLZN+KPhes53j5V6aTTR3cCV4VmrCjDqaSzShztmWTyOs7uzhSVTA6L7C5ilsj7p
	1vwCXulTv2DfngEaHj3usLNwl2oJJD3gfoNgcMlw9K048rRN8NDMJdfjkWamc2/+eweIoXDn/0FlH
	gOYzAHccJR9tw5xzI0HdRIMRIcY0eHmZU7Gy/dlVqthMm4uqJL5S8Pf0TciKILXnklNUlsZFDq9t1
	5vkE0bDfe4mQujC06Abg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV5I-00062D-42; Mon, 23 Sep 2019 20:37:24 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2v-0002Su-3v
 for kexec@lists.infradead.org; Mon, 23 Sep 2019 20:34:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id 205so9852388pfw.2
 for <kexec@lists.infradead.org>; Mon, 23 Sep 2019 13:34:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=LwEAxQjMu7W1QVZ23k/g1S4Eyx/tFZWSFOlnPakoYnP0ZAU2dmXFAKO2Oxrbqk1VaX
 AfgCnMNHzL9+qHkNVurT7ZHFnvl4gqQXCtMOx1UyGRVHrhSxv9+npn68KE8GC7IT+RRe
 SmLG9/jB22QvYfRuUHH82/bA6S9fNOUiYGPTxCFxiHwjEU4rXZsEjXnLQsfgv+gclC7b
 BD1+Q3J8Jry4/pY7Bz4mzVK5LteVKPXJkGwjkNv08PKILtB+xRyQ1C9cCMUZZroxQmy5
 0cFI7Ks3jDLpcpzUqeRn7R7xXfc84q8H5qJoaryaJ8zt4fmCPEkoTA40UJ1vjXj2y2et
 d8Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=s3w2g1Mr9ryTMThGYdezYj0TwbMYvRZfJPJ/5PGS/968zvaGLDX2M5366/1iTp6FE8
 2nUdYFX9o78rLQNwQocJIR3lSNJxis8uf9+j9EYmqLguRNxb4FyH5O/MZ2Eb5sIOzqWE
 Xd2GUtZ6SubILMgbq39ezHvG5vuWSTo8Z9R1CDHzddn0/VpOeDkNOgVBwr8KAqoeq9fe
 7wzxqxB9zA9V9WYqsoBu6+yE2tVaEwPw3rGT9UHuadr+YwQj3L1mjC2HP1fnYwSrAYfn
 nIK0HQFtcgOpZEDrKOyML9p0pcqHvkzZdCb6i5aiAA/AAqysFqv8ytudsqIjdptlLM8T
 UHeQ==
X-Gm-Message-State: APjAAAWHYMK4SBzSueGwRYzn7nbbRXquhINJE8IIU/Abw/V+X9D8W3qt
 U3XbdQlMpv579YNsBuzQ3D9cYA==
X-Google-Smtp-Source: APXvYqwnL0GEjIshKzO5kl0urcaVAH5d910rW/z2mm7V4txKhm3HL8CIVxbIbYZBpIjpI74fhCfRHw==
X-Received: by 2002:a65:5543:: with SMTP id t3mr1763983pgr.242.1569270895507; 
 Mon, 23 Sep 2019 13:34:55 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:54 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 07/17] arm64: hibernate: add PUD_SECT_RDONLY
Date: Mon, 23 Sep 2019 16:34:17 -0400
Message-Id: <20190923203427.294286-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133457_423590_DFEC570E 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

There is PMD_SECT_RDONLY that is used in pud_* function which is confusing.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
Acked-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/hibernate.c          | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index 3df60f97da1f..756a1dfb4f55 100644
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
index 1ca8af685e96..ce60bceed357 100644
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
