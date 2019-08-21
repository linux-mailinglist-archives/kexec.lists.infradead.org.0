Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F323398319
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 20:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRigYhDYMkUoeSq8TlC7KnHuDB04fuIExNzjej9/eYw=; b=fXIT6x+JLqSExL
	w8YZUEkWGE3jqwzJ3s3pvPgLXdg/kojgsfV0asvMHR6Xnvj1hJauhU0Zyxy6IFOLu8a67mUIGtTVJ
	AsYBHutoQKORiLn51/Fq3iWrT9a8ME25ZLpPtaFOb/mx/R0SPGv+kprjrdR/k7F+WgBSVJCdxCkje
	Dnpw+Z2AjUJr9wfNiINkkMWQnrw7mIlEhJ0Z7g5ydGUDd7G/iCmfkfI5cPwBGczbFQvp5GR7l79vX
	UemcGyOUjjaZ2Oq97KKP7xAeRkNVc8q55VSV6GS03TiWCHD/1oURC9Lm9eg06//7F0cnZNW6xOsfs
	9b8WgaandPEFxDe/Jo9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0VSE-0000Ca-G4; Wed, 21 Aug 2019 18:35:30 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0VPC-0004EL-Uu
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 18:32:24 +0000
Received: by mail-qk1-x742.google.com with SMTP id m2so2697373qki.12
 for <kexec@lists.infradead.org>; Wed, 21 Aug 2019 11:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Yf2fYsGWmgnnQqiDNWCmPXM/COSxiztPqOnwojagYFM=;
 b=AV9pCfKUsiawZGUWx3hjjiRiURb24lZoFSDXVLZDUm4ii8r2zEff9xP3F8HWOaVnz9
 7549slyFfkoTf49vracJw6NGvjRE2I54NYncbRXZcR1oT4pt/TZPRNeLfWLPTbmVwO8F
 n7ch3vRDnihAKBNzxR+zskyPitFluivKs5ODI9V9heJTCJPtTK4/QtWPi4+3DwLKUNRT
 Ddl0fN20/xgUuhQ9ptEy7RCSMz9vHuZdIP44a9kJkCkXj62MP15VWMrI7KKNnj77vDxt
 e7amT1uwjq8BKEy8vADVY2I1/fKnJ/He5LBqUadvT2iXTqPPl1M5nCnRd3cBKM8veD0g
 FnZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yf2fYsGWmgnnQqiDNWCmPXM/COSxiztPqOnwojagYFM=;
 b=oztWC6QK5ZbodYbSXE/RT8KzktmnOJ+YuHHap0wOlPy4q3VWONGR3ymtPtJPZ+Ulf/
 domq2wloVN9vRoFGWmngHlNhXEpd+h7nzGMjuvtjXoVOsuM7Wss5E/PoLsv8xRnMMEHP
 AVETgHOwspzp6M7PJJ3MdWWxlM8IW0dLLguF9Xs1Mw7Yo0xboRfUqEx6sIxIvpt0FRVY
 1S8v+EbLRK45uJwcgibg9xNjO10vzH5dBlcRMKKacmH5fPJmTW+G2/2q7Nx6SHOLxuJR
 s1I0/R0s6xh3yCp/moFcaOlLGY5oBpQE1O3AZh/mQvTVv9jN+4mzcR05HbCEc4iAF/MD
 OCbQ==
X-Gm-Message-State: APjAAAUnZmcTUjIPd0APOJLONaaZq9uIYuTJ2hhaXLwC2kraVHLnvj8D
 RUIF9l7HJeUpbG5ZZtilKYGiuA==
X-Google-Smtp-Source: APXvYqyonOE9Pa9E8IpTB2dIML7UFPRfxTQ79CX7u/hfje5VCjkBAXfDiMf191JorFAgip6FOT91+Q==
X-Received: by 2002:a37:395:: with SMTP id 143mr33533257qkd.317.1566412342049; 
 Wed, 21 Aug 2019 11:32:22 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q13sm10443332qkm.120.2019.08.21.11.32.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 11:32:21 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v3 11/17] arm64, trans_pgd: add PUD_SECT_RDONLY
Date: Wed, 21 Aug 2019 14:31:58 -0400
Message-Id: <20190821183204.23576-12-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190821183204.23576-1-pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_113223_016030_170CBBEC 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Thre is PMD_SECT_RDONLY that is used in pud_* function which is confusing.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/mm/trans_pgd.c              | 2 +-
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
diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
index 7d8734709b61..efd42509d069 100644
--- a/arch/arm64/mm/trans_pgd.c
+++ b/arch/arm64/mm/trans_pgd.c
@@ -138,7 +138,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
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
