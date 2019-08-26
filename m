Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B822B9D63A
	for <lists+kexec@lfdr.de>; Mon, 26 Aug 2019 21:03:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgKAvL0g5JS5SZa7EP7Se+IFhPwHEqPHKGarVw/oU+E=; b=spgLgxvgX3VR+G
	RP4zXhFezUliUxU76+xyeH4PE7oZe9xjJZ30+5fEeSwm/eKQ6HU30KNsAGhgYhMODad0aj+IW0aCS
	XRabuOyQJFczNnDDDDnnSKtt/iRsUplMbnDh0iTtzwPqhCB+JWK4ojV1kCASFgl0VjmAfZTXxw0ZD
	j8a7ezwGYRepln+MpKU3huh7aEm5kAzE1B3vfiPSLXioEfpRnaRDHZETlxjR9RrkQNrSspxtdaYwl
	AuVQb4UtDTx7i/InuJHnvUp2GdwXvLCdIGMlIvIRAe8sVoWvxyAuutFqQuvToefjm9XponGusWGNb
	g1P5eVMLcqwk1m2O4ABw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2KGu-000147-Dk; Mon, 26 Aug 2019 19:03:20 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2KEk-0007HB-Ud
 for kexec@lists.infradead.org; Mon, 26 Aug 2019 19:01:09 +0000
Received: by mail-qk1-x741.google.com with SMTP id u190so14982242qkh.5
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 12:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=akAei/7tOU3d191zec9Xi+sZBY39XbiNq2fhlUSUGK8=;
 b=aHKkuUpclP5IMt7wAHzBt9Sc8X4Or7WoFatBAPGA1CH1KYaZWAevUa/XBG1UeD+BiE
 CuxaGUZR5K1uB/VS2dvay75flTkQXz6bh07bAv/u9Qscje6ZQNLAY0a3RjWlN485tVZy
 b4bH4m2ELjpF70da/5WIqrJJVF/TA9aaj1ZKQWRXQs4RwJ3NvZlrgGPsgn1DVPqyNY1Y
 lP7gjWsw5oQgquGCVVGrZTq5l4DaQj8LiJW1jsUNPeMEV0Z4bp6/kkU6UoG9xFgEFmcT
 s5mW9o4SuGsusoVxrGMX6dZs89KvC4+2cyyABuNj6g/3YvkJyeufYRLhWz+86jrOXIyL
 7iLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=akAei/7tOU3d191zec9Xi+sZBY39XbiNq2fhlUSUGK8=;
 b=nC+GAqGs9aBk7QfSEU4rc7cusgDUbxXnqs3wkFIOXPrISk/2bJBk2gkUq1uzspEj7J
 q+6o9OLa/bik7BVVzPvX8BSkDra0a39YO22cnwCWXzXpSA+9bhzi3pBSznvQZBtKXgHI
 9DxOmDfFJmYyNp8zq5blwUh+A4cnkYu6wi1ggtp6oGszER3Lok9L1J4HWGFp+OI0ubPB
 OnW9OAuZmBgI7SasUrnXH5aWDQxbb7eyH/q+vefdlFu4wH2ckY9/4zFwkgRORAhkCjB8
 /VOl/jL9E6S1O/YbjSUQp05XplowJHXdH6IxG4U5k1CLD9HjRu4iAIGKDzDuXxR2nguY
 bkpA==
X-Gm-Message-State: APjAAAVUwZajZkvEMGj0a33sA+XvFTOKJiQMP+wjhz7YN2qeVoSX67s8
 RSZfccXpXxc7hDwCJQQoHKeOTA==
X-Google-Smtp-Source: APXvYqzJXd38pO3iRXZK6ansWFKaAVK7wUwsU2qQ/q6b8pl+RREguA3Jc5PkLVuOG86V0Rto3oaz1Q==
X-Received: by 2002:a37:c206:: with SMTP id i6mr17410846qkm.384.1566846066175; 
 Mon, 26 Aug 2019 12:01:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id o45sm8614377qta.65.2019.08.26.12.01.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 12:01:05 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, marc.zyngier@arm.com,
 james.morse@arm.com, vladimir.murzin@arm.com, mark.rutland@arm.com
Subject: [PATCH v1 6/6] dt-bindings: interrupt-controller: add optional
 memory-region
Date: Mon, 26 Aug 2019 15:00:56 -0400
Message-Id: <20190826190056.27854-7-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190826190056.27854-1-pasha.tatashin@soleen.com>
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_120107_408979_431147A9 
X-CRM114-Status: UNSURE (   6.83  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Allow pre-reserve memory in device tree that can be used in interrupt
controller tabes. This memory is required when kexec functionality is needed
with GICv3 controler and device trees.

Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
---
 .../bindings/interrupt-controller/arm,gic-v3.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
index c34df35a25fc..7640aaa97302 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic-v3.yaml
@@ -102,6 +102,13 @@ properties:
       - $ref: /schemas/types.yaml#/definitions/uint32
       - maximum: 4096   # Should be enough?
 
+  memory-region:
+    description:
+      Memory used to allocate property and pending tables.
+      Required if kexec functionality is needed.
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint64
+
   msi-controller:
     description:
       Only present if the Message Based Interrupt functionnality is
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
