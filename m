Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7734A187287
	for <lists+kexec@lfdr.de>; Mon, 16 Mar 2020 19:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+N8w67sdrEKKpv2JkJMXo8bG/kXTxgdexyCv7HodZX8=; b=dmRen31jTI+AMm
	HT256VRE6wiTYMjz0fvVXzHHzuR1VB+GynxkgHs1SIcTIp8Z7PVXFcNIvrU2nh9WeU3XFEf2Sn4S+
	sPvcQ8jwwF2Eb2cDTWyOEAUfZggP67WK+aelEFM4AmVAnxXNOSzvNYsIMkOzXIL2BAkscIDUI9h2L
	MBWUB5sqRN9tkGbsxIWZbs/rFePP8RtzscvE33zb/cSvrgtuQwl+4HmboSlLA/JwQDx4jKqB2vPWp
	7FpM9dIGF9V1a4hkkFx4x5GuWXaXeG6QV/4LmsDqCVSNbb/O6AjTPpl0X8oxvpGEaOrmJLzwCLyOf
	lSX13dIw/RTMb42ZxefA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDuex-0002cs-5l; Mon, 16 Mar 2020 18:40:19 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDuet-0002cQ-HE
 for kexec@lists.infradead.org; Mon, 16 Mar 2020 18:40:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1A8B3AD05
 for <kexec@lists.infradead.org>; Mon, 16 Mar 2020 18:40:12 +0000 (UTC)
From: Michal Suchanek <msuchanek@suse.de>
To: kexec@lists.infradead.org
Subject: [PATCH makedumpfile] Align PMD_SECTION_MASK with PHYS_MASK
Date: Mon, 16 Mar 2020 19:39:58 +0100
Message-Id: <20200316183958.20984-1-msuchanek@suse.de>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_114015_720543_D81CD411 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: =?UTF-8?q?Petr=20Tesa=C5=99=C3=ADk?= <ptesarik@suse.de>,
 Michal Suchanek <msuchanek@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Reportedly on some arm64 systems makedumpfile loops forever exhausting
all memory when filtering kernel core. It turns out the reason is it
cannot resolve some addresses because the PMD mask is wrong. When
physical address mask allows up to 48bits pmd mask should allow the
same.
I suppose you would need a system that needs physical addresses over 1TB
to be able to reproduce this. This may be either because you have a lot
of memory or because the firmware mapped some memory above 1TB for some
reason.

Signed-off-by: Michal Suchanek <msuchanek@suse.de>
---
 arch/arm64.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64.c b/arch/arm64.c
index 43164ccc32d4..54d60b440850 100644
--- a/arch/arm64.c
+++ b/arch/arm64.c
@@ -81,7 +81,7 @@ static unsigned long kimage_voffset;
  * Remove the highest order bits that are not a part of the
  * physical address in a section
  */
-#define PMD_SECTION_MASK	((1UL << 40) - 1)
+#define PMD_SECTION_MASK	((1UL << PHYS_MASK_SHIFT) - 1)
 
 #define PMD_TYPE_MASK		3
 #define PMD_TYPE_SECT		1
-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
