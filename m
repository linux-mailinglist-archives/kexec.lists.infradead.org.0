Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AEF179C71
	for <lists+kexec@lfdr.de>; Thu,  5 Mar 2020 00:27:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qUP95rYbrtUPbMsMnQOd9GYT5v8LaH6Apk1JqKJQkOM=; b=RtX
	oVOTqbAnAVcKvl1zwttGKptLg79+uEVaKGAqbmvErvE+NHR9HqvrSwzX56XnDTE4mNv98JWYycQy4
	U8P7qOlP5K/XUwIKxvsRWkVc3C+Vdm+8DyFGC2eO7hVTCEwiK3a9yUakQs3XAjPyxwmTHuoDjcQWs
	1z028D/SV83NGEAkS9mPC3MhAWzWPAIWIVVgyekWNPSFXR2+EuiGLq2wboC1CACE1kOsgqG2pJNFW
	Y8ygKKl86WHbs7ML3C9tbjed6RvuiAfJ5waBkHT+SljoIjq+78v8/8e387hUSzH4LLJt1FiD25koQ
	8x9fzxgiUvgMVp2pR7/raJ3DFP41M5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9dQF-0002j1-Gg; Wed, 04 Mar 2020 23:27:27 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9dQC-0002ib-Ci
 for kexec@lists.infradead.org; Wed, 04 Mar 2020 23:27:25 +0000
Received: from 1.general.cascardo.us.vpn ([10.172.70.58]
 helo=mussarela.acentic.lan) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <cascardo@canonical.com>)
 id 1j9dQ5-0001jn-KO; Wed, 04 Mar 2020 23:27:18 +0000
From: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
To: kexec@lists.infradead.org
Subject: [PATCH] crashdump-ppc64: crashkernel-base and crashkernel-size are
 big-endian
Date: Wed,  4 Mar 2020 20:27:11 -0300
Message-Id: <20200304232711.30464-1-cascardo@canonical.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_152724_612295_0FF407F2 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
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
Cc: horms@verge.net.au, hbathini@linux.ibm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When reading the device-tree exported crashkernel-base and
crashkernel-size, their values should be converted from big-endian to the
CPU byte order.

These is the output of running kexec --print-ckr-size on a little-endian
ppc64 box.

$ kexec --print-ckr-size
137438953472
$ kexec --print-ckr-size
536870912

Signed-off-by: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
---
 kexec/arch/ppc64/crashdump-ppc64.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kexec/arch/ppc64/crashdump-ppc64.c b/kexec/arch/ppc64/crashdump-ppc64.c
index 50e3853dbdcf..b2787d5135bd 100644
--- a/kexec/arch/ppc64/crashdump-ppc64.c
+++ b/kexec/arch/ppc64/crashdump-ppc64.c
@@ -612,12 +612,12 @@ int get_crash_kernel_load_range(uint64_t *start, uint64_t *end)
 	unsigned long long value;
 
 	if (!get_devtree_value(DEVTREE_CRASHKERNEL_BASE, &value))
-		*start = value;
+		*start = be64_to_cpu(value);
 	else
 		return -1;
 
 	if (!get_devtree_value(DEVTREE_CRASHKERNEL_SIZE, &value))
-		*end = *start + value - 1;
+		*end = *start + be64_to_cpu(value) - 1;
 	else
 		return -1;
 
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
