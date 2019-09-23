Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EFDBBD04
	for <lists+kexec@lfdr.de>; Mon, 23 Sep 2019 22:36:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3m5Skgke5LNte1kP54mm6fDPgVXD4aTAQ2qNeM8aWU=; b=J2utTkv2e0Yt8T
	Xm3RKKPwxMrGC44RX6P2738OHEIM1Vx2FMRDOWs25aKjxjq0x0SUgqIPmS8MpeFpotvG2DTA/46+I
	Hobb4AhFXoM0ohLCfvhZNIqLb6Si1iAoooHNdwUEvGGWhtfSIbppJ9Mge7uXnpZuX16RYcij08SZ+
	awlU/w9YgkIzIbqJfCar4m62KennpF8IIWAd4NpfszEQaupXY29iLDJU5raFyJlMQXm1brx4RB7l+
	VHC8N6oWXqGjkqqx9xwVLKlPo8a6iGUnQdy/m8OsSf6ktEVVgtEMe/pTmhHt1kuZ2g/bI3Sdt4Owq
	5KlmjrFqNVV90xskZogw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCV48-0004rJ-RU; Mon, 23 Sep 2019 20:36:12 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCV2j-0002FT-RD
 for kexec@lists.infradead.org; Mon, 23 Sep 2019 20:34:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id d3so7022378plr.1
 for <kexec@lists.infradead.org>; Mon, 23 Sep 2019 13:34:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=oWTaiXQUOW/n+bZ3aNPNA4OtwzBJkIcKJ7w8UHidzdwXhLyBh7H6XeCFOH4hrLa0TF
 5tO48HD+yimpY3hC6jgRBluPwrr5tgxt77/q6RSoQIg8t/tRCWOU6l8oYNCNvsXRKB4D
 Z8cHhyCyQ6gPEYAU2u5cdpMqDzvOZEnFOvri1Ewy4jmdOYjAh+x8UWdyU39v2SL5rPSV
 K4dkoFFYKtiBQ1BjRZfz7omkXdFczekyPXcpEcNWyxECRtdRYNCDtUFUDOsq8wHx+W9f
 xkjwmwwuLO8WLQ/ZZtLJsCija11LteHo6qyLnvLelyuoP2vORsoEtQA4U9vpzDPIcO1V
 1N7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4PNhEWMnxTPqUB+Gwx2nqJhU+kkzlGq5UWgg81CPAOk=;
 b=O1oG5cquNkc/4WCt/8IK2VfItliJUe2n8xXhztSPbe9+/AsUf7R9zL50JMYs54kKIb
 LqlX/j+Y3S2c6wVplopjqtyZmqkWyQLmuqwAFKT1i0mI4TizlvPOVtJSmCI7TpDTi3G3
 eTyP/5KNT59OEdhFyXmDhPYvlgGU6pTfPSyktul9wn3k4W64tiApxgGA/8E5HHLLAMrh
 +NxXzWJBrvY5oBtf4NWXIe1rADiiVCANn7V7lG/vx+jNGnOxMudwYXPfLtRW+e557+PX
 dPjUdEMaIEbe++p760Jqo0MrPAIBKxb/nZqpvOo16ObFdffz+hyZehSCTwmpVDmAFtVt
 sb3w==
X-Gm-Message-State: APjAAAWhyd5/2R0XHQuqaJgJNyfV9VyZoS86Uf7KtXko2MC8Es66D9hL
 iJyPzE8Zlaac3Sc+9Ts7/xeVCQ==
X-Google-Smtp-Source: APXvYqzyh38AtgfcuB6R0U6M0N80Ipw7rS/QgbnW4pA75DgBWBEPXi74l8ts5ld5MRP7duUrSaZIBA==
X-Received: by 2002:a17:902:8492:: with SMTP id
 c18mr1658221plo.279.1569270884919; 
 Mon, 23 Sep 2019 13:34:44 -0700 (PDT)
Received: from xakep.corp.microsoft.com (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id n29sm12798676pgm.4.2019.09.23.13.34.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Sep 2019 13:34:44 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v5 03/17] arm64: hibernate: check pgd table allocation
Date: Mon, 23 Sep 2019 16:34:13 -0400
Message-Id: <20190923203427.294286-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190923203427.294286-1-pasha.tatashin@soleen.com>
References: <20190923203427.294286-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_133446_050185_72F09E5A 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

There is a bug in create_safe_exec_page(), when page table is allocated
it is not checked that table is allocated successfully:

But it is dereferenced in: pgd_none(READ_ONCE(*pgdp)).  Check that
allocation was successful.

Fixes: 82869ac57b5d ("arm64: kernel: Add support for hibernate/suspend-to-disk")

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 arch/arm64/kernel/hibernate.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/kernel/hibernate.c b/arch/arm64/kernel/hibernate.c
index d52f69462c8f..ef46ce66d7e8 100644
--- a/arch/arm64/kernel/hibernate.c
+++ b/arch/arm64/kernel/hibernate.c
@@ -217,6 +217,11 @@ static int create_safe_exec_page(void *src_start, size_t length,
 	__flush_icache_range(dst, dst + length);
 
 	trans_pgd = allocator(mask);
+	if (!trans_pgd) {
+		rc = -ENOMEM;
+		goto out;
+	}
+
 	pgdp = pgd_offset_raw(trans_pgd, dst_addr);
 	if (pgd_none(READ_ONCE(*pgdp))) {
 		pudp = allocator(mask);
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
