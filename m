Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B36CC31B
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 20:56:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trIcwZ+xra+ZAj+PmhbJzz1wLfZj0ivZ6V/55uIkpCs=; b=SwzIke5dXZFX5d
	EH/r+JcLcqhWPsndS8XOLRTKh1aIwJcLckJUF/SL/TLAyR7QB63f5QUSQJR02yHmovaH9bX5El58K
	MRpL6jmTtcjn2SdYGdPYyT4j8KHQnhzdNwaLWkn7bXrrU7ozDxGBN+aAjJlC+c16dnrDdiQYNemah
	kWtM/F/G8BXZmEMDrirZFdYEubmsQm2R4LJrru8DcWJrEVH2Blt0RwLgfcwCD2Y+M/jZDqNPk6KQD
	x3B8XFSS8zK1S9FxMJjXs3iQmlRcDa5nsKIIGPfqXhHib4QbXzh3tzGUUomMlJXdCQBkTedijbkiw
	InUzVFL+RpkACz2TER4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGSkM-0006JR-Tq; Fri, 04 Oct 2019 18:56:11 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSh6-0002B5-Bo
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 18:52:50 +0000
Received: by mail-qt1-x841.google.com with SMTP id c3so9902571qtv.10
 for <kexec@lists.infradead.org>; Fri, 04 Oct 2019 11:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=VHCChoz0fROYiFF3E2hiGeINxfvJE7JQlXXzOJLd54akzbItA1+2rUzr4DI2djJ9O5
 Hyca0gHi/BmtqWzaux8ehDmfQ1GQp6qxgoGtldtG8PBTLXRXEw1mFAwqJcbvoPQ/L/MV
 b4QlOJB3QwU6EgG1nTI/SDmgwYuIGf0zvGu+jUWUpxSEFWz/Lo4IuyDOCCbcPAqreAzp
 rUhodhHLR+4SY72e+9jzUO7EZbvvOu+iqjKQe/fIzZE9uwz0R13jwGpyOKt8BvQ5FjZ3
 lKVmqELSCurVOwUZEKX5HmoOjjr1q/nYg8Cg0T6S+5qXTBzGv8rqKY71guAQ73XZA4U7
 73CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nna15T41FBOo8C0ScgrwWvHxD4xBB4A7rtr2LOcD0mg=;
 b=VTFkiWJ0UVVcW/UpvqbcwmTlNWAa90h+9rr5uwKWKA/suTEQ2VXtFSpDq6CRx/ZSH2
 f5hWf2Iu1GiPips1X3bmVGnFWyvy5LXoADT8ZGx8jnDwUS/copKUZ6SnxE0hOjFUDPz5
 NJBEZrZyZS2lrbbjMcjgjF9saptmvAcvVwR55zXJr/ZZqI7e22CMflzMSt9/Q3Mr9StU
 sgpQyGJY5tN/LptORtZmz/8p82GBVmhzsRc/7by+81SSP19awf2FMFDPkCp8T6+xYszI
 SlJafIzQcBD7kCkHOEYY+xzpKhMrvxhDGCrwFYyAzB+5JGpcXOpmE1JzATk0Gx9uShtK
 Uxkw==
X-Gm-Message-State: APjAAAWEuZcFlhqleMzvDvqIXFcNFQmSajcXt0fEmRBv0+xGSxEQB/1q
 zL+TipWt2nkU/7PCvT5o2tYdrg==
X-Google-Smtp-Source: APXvYqyNbFmYvCagLzsifj1RuTq8tuyaOwA4jFplBgyym0KPw1b7isWuxXmSyyHyKvb+tYw7MVrpqg==
X-Received: by 2002:ad4:418c:: with SMTP id e12mr15569947qvp.70.1570215167250; 
 Fri, 04 Oct 2019 11:52:47 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:46 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 07/17] arm64: hibernate: add PUD_SECT_RDONLY
Date: Fri,  4 Oct 2019 14:52:24 -0400
Message-Id: <20191004185234.31471-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115248_448539_B7FA779F 
X-CRM114-Status: UNSURE (   9.65  )
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
