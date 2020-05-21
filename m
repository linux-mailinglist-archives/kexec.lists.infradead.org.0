Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 351BE1DCA38
	for <lists+kexec@lfdr.de>; Thu, 21 May 2020 11:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7erooKG+5b8KI97gyv7rA6RckilGNXNsqs4966qIKL8=; b=ffwB8sgKHvcR8V
	H4ocBitNOv2hKGQKfV2OLUFMyfZAAS2yC8T/FBQeEJRQ1Bq1LPsahK3sMlQGo8Q59v7/GMNfNqzlx
	yjUKI2oFC68WlIMB2Spre0Q6a+usJOceDHOmoB4BdpJBu3+beZtP5yOBlQcT6xPFXrC7juih2uutf
	6lwo0na95u8KQhgwGHBKyV1VX3V7FsvSSvD/QSXzkORh8KlTzVEYhuKJKnd5NkbzVXj9MwcNsTT3/
	50i4hjRbNzo3PSvVwhq2yvH1dyUL0ZOwK7R/IXlsRW9mRmAj3EPkXHefvijN8uq9qPOhit3l3NP+c
	2kzsbIUwvNukj6vlu4iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbhd0-0002yd-Aq; Thu, 21 May 2020 09:36:38 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbhbe-0001G3-1h; Thu, 21 May 2020 09:35:24 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9BA5FE96E50757FA2EB1;
 Thu, 21 May 2020 17:35:12 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.487.0; Thu, 21 May 2020 17:35:06 +0800
From: Chen Zhou <chenzhou10@huawei.com>
To: <tglx@linutronix.de>, <mingo@redhat.com>, <catalin.marinas@arm.com>,
 <will@kernel.org>, <dyoung@redhat.com>, <bhe@redhat.com>,
 <robh+dt@kernel.org>
Subject: [PATCH v8 5/5] dt-bindings: chosen: Document linux,
 low-memory-range for arm64 kdump
Date: Thu, 21 May 2020 17:38:05 +0800
Message-ID: <20200521093805.64398-6-chenzhou10@huawei.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200521093805.64398-1-chenzhou10@huawei.com>
References: <20200521093805.64398-1-chenzhou10@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_023514_281306_D1A6B1E3 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: John.p.donnelly@oracle.com, arnd@arndb.de, devicetree@vger.kernel.org,
 chenzhou10@huawei.com, linux-doc@vger.kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, horms@verge.net.au, guohanjun@huawei.com,
 pkushwaha@marvell.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Add documentation for DT property used by arm64 kdump:
linux,low-memory-range.
"linux,low-memory-range" is an another memory region used for crash
dump kernel devices.

Signed-off-by: Chen Zhou <chenzhou10@huawei.com>
---
 Documentation/devicetree/bindings/chosen.txt | 25 ++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
index 45e79172a646..bfe6fb6976e6 100644
--- a/Documentation/devicetree/bindings/chosen.txt
+++ b/Documentation/devicetree/bindings/chosen.txt
@@ -103,6 +103,31 @@ While this property does not represent a real hardware, the address
 and the size are expressed in #address-cells and #size-cells,
 respectively, of the root node.
 
+linux,low-memory-range
+----------------------
+This property (arm64 only) holds a base address and size, describing a
+limited region below 4G. Similar to "linux,usable-memory-range", it is
+an another memory range which may be considered available for use by the
+kernel.
+
+e.g.
+
+/ {
+	chosen {
+		linux,low-memory-range = <0x0 0x70000000 0x0 0x10000000>;
+		linux,usable-memory-range = <0x202f 0xc0000000 0x0 0x40000000>;
+	};
+};
+
+The main usage is for crash dump kernel devices when reserving crashkernel
+above 4G. When reserving crashkernel above 4G, there may be two crash kernel
+regions, one is below 4G, the other is above 4G. In order to distinct from
+the high region, use this property to pass the low region.
+
+While this property does not represent a real hardware, the address
+and the size are expressed in #address-cells and #size-cells,
+respectively, of the root node.
+
 linux,elfcorehdr
 ----------------
 
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
