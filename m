Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF3D90C51
	for <lists+kexec@lfdr.de>; Sat, 17 Aug 2019 04:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOBbtMYrbxr+2K6H1nwVpLQKJic7XKKhPhe+EFt89uI=; b=P31d/YyyfQDMeM
	Crt81ixSGIxOwJV4/PdB5Y10bHsJfs7hT+0vgYubgpO1DvRvA2jxmw64DoWb2Yc5Tiv5dtZU7Q1DV
	jDUkrlG27X5eYGVi/xClQ/eJpVHBAdbtvdmME9dVOCXoTyv6m85PLOp96qqu5W0Ja1Ks7tNHdwT6a
	lVQTdkrxFX0Nd45m0wlpYwT3vjqVdpKoWknzY3WmnrHHk5qlfbclKkT6t4fFpfr/xcNhFgw9RNGlV
	lwzXSq4xNeGQQrCv6Djh1b9hLiBB6kxfWkmiKZHDyv42CSqaV2NP4TNO9sbyH2hT2d1bEgby3iSVd
	k72KDK062MQ7rWSLZHLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyomL-0004oS-6r; Sat, 17 Aug 2019 02:49:17 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyojr-0002Xu-E8
 for kexec@lists.infradead.org; Sat, 17 Aug 2019 02:46:46 +0000
Received: by mail-qt1-x842.google.com with SMTP id i4so8194877qtj.8
 for <kexec@lists.infradead.org>; Fri, 16 Aug 2019 19:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=RGtrOUupW4z37ipmqcLJyB3m7q6WPq+p9ucEiFhnLcg=;
 b=K3uh07Qn3TrpcWz7z/N+EGQbeyvKel3p7LpHgPxW5XHEjHN0nGfMdgMxXJEwmCcG6B
 nhWCIGqiH1BVHTBUWPfRA9ND8m+l/2KTafHuxqDij7+QKz/6GZD6bCgPhsJWTHE4AHiI
 6QuEh9K7DIQ65DSCwGlbOOE6+FpfL41IRKJgh1HQ6gIEoUzJizo4TtnYl8fFrxPVcgT6
 I/Rh6DFEQ9kD9MkGVP+CrWhb4fozfe+U3YNn6UXqxmwHpiDRJHemP2SO4pOJXNXrs2EC
 j/tgcGrskD3ABV484TSaBLkoWfzEkalgsgMt+pLjBW9D4bLY1lQad/JI8NYEodMP3lxH
 z25g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RGtrOUupW4z37ipmqcLJyB3m7q6WPq+p9ucEiFhnLcg=;
 b=bzMWYtxGgrLv5WZBiYwZumMrwX2YIbN2TRkFyVyTjJcffEsjYmK7zr/hr7Q/70hGmW
 TZOqCl6n7lR6t6crdoEpYrYXlmOLHKRlJ9Z5o7Gpn2r9xAL2+GIRXnXCZOCPs98iwWAn
 XmSJU7UaTdOaIZVaxtWD8MrmMr4vZBT9MtIt73u6yl5gM1tLHP/LxmTySve8U7sMV0Pi
 6WoV7NkRCRFvo4A4D+4xCKcs7v3PFgX/0w1TVaMK01yNS+dcxhMf5S2qtWQbk55fVK5N
 9uPt6ADWnGaZfWQgHoCQNsouhIu0BzfgGOJ/jR3N8YO7uZCXt11MiIAR+whMKDarBSGO
 5jnA==
X-Gm-Message-State: APjAAAWQgBoAXPsxLB+bZQTlvQID9usqELIt43okBA8zPPm1FegpFSNJ
 GW59rHuMyF24gjs23i3PA+EVYA==
X-Google-Smtp-Source: APXvYqxHWuJZxhJoL32IA5dYdauUAj5ZZIoyQiY5axJ7rJ6tklLVzo2+3JJMyaLqd0hjiXW2rE1ZaQ==
X-Received: by 2002:a0c:b786:: with SMTP id l6mr3917888qve.148.1566010002583; 
 Fri, 16 Aug 2019 19:46:42 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o9sm3454657qtr.71.2019.08.16.19.46.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 19:46:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org
Subject: [PATCH v2 08/14] arm64, trans_table: add PUD_SECT_RDONLY
Date: Fri, 16 Aug 2019 22:46:23 -0400
Message-Id: <20190817024629.26611-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190817024629.26611-1-pasha.tatashin@soleen.com>
References: <20190817024629.26611-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_194643_522335_14D65B0B 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
---
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/mm/trans_table.c            | 2 +-
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
diff --git a/arch/arm64/mm/trans_table.c b/arch/arm64/mm/trans_table.c
index 634293ffb54c..815e40bb1316 100644
--- a/arch/arm64/mm/trans_table.c
+++ b/arch/arm64/mm/trans_table.c
@@ -138,7 +138,7 @@ static int copy_pud(pgd_t *dst_pgdp, pgd_t *src_pgdp, unsigned long start,
 				return -ENOMEM;
 		} else {
 			set_pud(dst_pudp,
-				__pud(pud_val(pud) & ~PMD_SECT_RDONLY));
+				__pud(pud_val(pud) & ~PUD_SECT_RDONLY));
 		}
 	} while (dst_pudp++, src_pudp++, addr = next, addr != end);
 
-- 
2.22.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
