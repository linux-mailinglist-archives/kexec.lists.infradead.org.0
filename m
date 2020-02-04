Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6131518AE
	for <lists+kexec@lfdr.de>; Tue,  4 Feb 2020 11:18:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wnOuiNzHvHiHnQF7mi3phjKhKQlk+fyFoY2PsN8Y9/g=; b=qFX9GPXSYVdxEA
	gaPH3M5+w260lYI3iXEGYV4OdLgcD0e6kaGZTp/0zEbwcepGVYQ6ZWQXfctis5XQ1NVsVzvxhXppw
	nEhq59OcA3fMWMagJKikzT8YuNRvX0vSUmb3dOq+pUwcpyT3ESvjwEBCWx2XNU99P0ih7iAVkrswU
	1BD9FrAbztvRt7gdGAeWCtpgoSeIAHRV65e0hPCHAFfMGdtiLy5UIISAbzOEwxsS72xXXWSWQvBGt
	eb1skgxax+F4jS5egllXN/KKX8aXL0LOGXKwSKmRm51EUtRTLg8NKb4NS/MkZ2QM59xuK55bvpDfP
	jN0iA33cxeYJ4za0PHJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyvHl-00038r-1i; Tue, 04 Feb 2020 10:18:25 +0000
Received: from out4436.biz.mail.alibaba.com ([47.88.44.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyvHh-00038H-K8
 for kexec@lists.infradead.org; Tue, 04 Feb 2020 10:18:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aliyun.com; s=s1024;
 t=1580811369; h=From:To:Subject:Date:Message-Id:MIME-Version;
 bh=+2Vd1NgosUJUntyVOK51yJb3dzpPsfl3V9V3OGUalig=;
 b=KlogPYp0xUYSHac5D72r0qXthp2y/P36TYwKgQVpicvMCnzAsBeYbImoAx1s32wvlwpuU42JvaZZ/Uwc9jht0EQE/feRPnqz5YXRORIHMAcH2/bSkKYTo/BNeogH1zbbKXfS8RC2s8BLkMdqhZDYjjb+afttbmj1pmXiHuGnhfg=
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.2714265|-1; CH=green;
 DM=CONTINUE|CONTINUE|true|0.0450496-0.00114098-0.953809;
 DS=CONTINUE|ham_system_inform|0.0113916-0.0001292-0.988479;
 FP=0|0|0|0|0|-1|-1|-1; HT=e01e07484; MF=fishland@aliyun.com; NM=1; PH=DS; RN=4;
 RT=4; SR=0; TI=SMTPD_---0Tp7nteF_1580811360; 
Received: from localhost.localdomain(mailfrom:fishland@aliyun.com
 fp:SMTPD_---0Tp7nteF_1580811360) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 04 Feb 2020 18:16:08 +0800
From: Liu Song <fishland@aliyun.com>
To: ebiederm@xmission.com
Subject: [PATCH] kexec: remove useless code in kimage_alloc_page
Date: Tue,  4 Feb 2020 18:15:00 +0800
Message-Id: <20200204101500.2814-1-fishland@aliyun.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_021821_938966_4745E529 
X-CRM114-Status: UNSURE (   5.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [47.88.44.36 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fishland[at]aliyun.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 liu.song11@zte.com.cn
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Liu Song <liu.song11@zte.com.cn>

"addr = old_addr" has no effect, so remove it.

Signed-off-by: Liu Song <liu.song11@zte.com.cn>
---
 kernel/kexec_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 15d70a90b50d..09c60c9347b1 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -761,7 +761,6 @@ static struct page *kimage_alloc_page(struct kimage *image,
 				kimage_free_pages(old_page);
 				continue;
 			}
-			addr = old_addr;
 			page = old_page;
 			break;
 		}
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
