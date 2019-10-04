Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3F8CC303
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 20:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqhH3fD0lGypXa/34p01Nt9uCRbj1bdX1yEz/oNZISQ=; b=R7sRoayLn2Sp6M
	LZBR/wl3a44nDgpxQG4oXZDcjb4nU/CS6ITZoLq5yINpgQvwUdkhotIQjqiW3kFY9BiWU07efuem/
	9fkhlX4vXlBtwEyMRipKlvYmirKFxBKQFShpOtE+9cy/FMwPcKvSEluOBr3T1Sre3K7BSwhoD6oIS
	ZjQxJAHPGDZeP4VYjWmc7F7oqF3lTmDJjgDnZX8md+5B1L6NtGTLPwYcU3Xb0xlXRsc7dIIgyAMeW
	IPPnpqJ7YVh+LWTJL80DUCFoEGE8yA7QViAsP5GvFArwzinvffp+rRzKHaJb5vPF5WSntfvATt8K6
	gFIdMfpG5goQVxKrLILw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGShi-0002e0-VO; Fri, 04 Oct 2019 18:53:26 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGSgz-00023H-05
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 18:52:42 +0000
Received: by mail-qt1-x842.google.com with SMTP id u40so9908649qth.11
 for <kexec@lists.infradead.org>; Fri, 04 Oct 2019 11:52:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=3zTijyt8B1oVtT9JT6yCKls7nJQIDBWuYolaWDAK7ic=;
 b=QBfxsXlV7QG8qGyT7yovERfIlFzUSjbPWKWeYhz6on/h85J+eTplEGg+PnYLNe2g2V
 5K1buQ67xs+gJJrvrxE2PnrXBiC/WKbpjDK/y05bxM9jw4pW7RhuVOwtWUQQ+KiXF7ml
 JA751aW5xF8qW02iqVleyASrW/+TGd3dgtpvq7AFHfGO6TV+tsjdz0sbYDOTj56WsKwM
 zDdQJgSHc3StoExrI2ytE0r7vFhhZZdhdq3IqWEzHDTYn3s/BTm/QtNy654271iMnGcu
 mtGsbJLQWQSsE1Vg/9uQta2yjEZvs3zI6mJ3pmibJMTwXefrPnfkV4n4jpIrmPvjFu5r
 2e9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3zTijyt8B1oVtT9JT6yCKls7nJQIDBWuYolaWDAK7ic=;
 b=B79MRH4r5KC2f/dT579pNXZeLaHjiiqpGw543+kNEiYURr3oH7OiUz7bv++64HCZpr
 /Ltn/EJgZaaPk1MjGb8r3euxW+zr+YvdVlFPihRVUSwhBYjM/+tIU/74ksIkf5hM9ZRc
 5W9Ueqw9r9YZI+ae357cuCL6Y0W906oZ4ctDxbHD++y+w5cfVe5otsa3FmqDQ0nqZwAh
 T3kOpZdHYZBwfCfqN3TS4rWBFo70eke9f+8AFsINyE3NrxkKZ079R0kxaIUS4U8oJbd5
 qfu2rEoW8y7a/FnJJpXrS/x2H88VJzMVoE7VGIehzsHMsQ8H56RAz6q7bxtSAxkIv7qU
 e29g==
X-Gm-Message-State: APjAAAWQuYooI6Ci9iLE7gt2SRohDpAwWYvpm31S2dk5trmET1r9ZPUh
 EWvVmLeEiO66O8zGRIr/FsZALA==
X-Google-Smtp-Source: APXvYqz0VrEtbfOPZiQUcwn5FhaB6/JDqh7xKU3KH/BA6dVj2t/BXgqShHLdvVsoAFfqxEftxuHL5A==
X-Received: by 2002:ac8:6bc5:: with SMTP id b5mr17605033qtt.244.1570215160265; 
 Fri, 04 Oct 2019 11:52:40 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id p77sm4042514qke.6.2019.10.04.11.52.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 11:52:39 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v6 02/17] arm64: hibernate: pass the allocated pgdp to ttbr0
Date: Fri,  4 Oct 2019 14:52:19 -0400
Message-Id: <20191004185234.31471-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191004185234.31471-1-pasha.tatashin@soleen.com>
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_115241_062523_E3DF6A8E 
X-CRM114-Status: GOOD (  10.60  )
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

ttbr0 should be set to the beginning of pgdp, however, currently
in create_safe_exec_page it is set to pgdp after pgd_offset_raw(),
which works by accident.

Fixes: 0194e760f7d2 ("arm64: hibernate: avoid potential TLB conflict")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index e0a7fce0e01c..d52f69462c8f 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -201,6 +201,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 				 gfp_t mask)
 {
 	int rc = 0;
+	pgd_t *trans_pgd;
 	pgd_t *pgdp;
 	pud_t *pudp;
 	pmd_t *pmdp;
@@ -215,7 +216,8 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	memcpy((void *)dst, src_start, length);
 	__flush_icache_range(dst, dst + length);
 
-	pgdp = pgd_offset_raw(allocator(mask), dst_addr);
+	trans_pgd = allocator(mask);
+	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
 		if (!pudp) {
@@ -262,7 +264,7 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	 */
 	cpu_set_reserved_ttbr0();
 	local_flush_tlb_all();
-	write_sysreg(phys_to_ttbr(virt_to_phys(pgdp)), ttbr0_el1);
+	write_sysreg(phys_to_ttbr(virt_to_phys(trans_pgd)), ttbr0_el1);
 	isb();
 
 	*phys_dst_addr = virt_to_phys((void *)dst);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
