Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 769FD64D0A
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 21:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sQ6rUXwRukO3BASlemxmJ14rEcKujQRg8cU0FKClow0=; b=pA8ciLpwvoQNKwUs/IQRaTnwVa
	+T+eykdB9o45461SQ4JSDurm3utFkl2+tjGTTI1oD0ycDezrfdTJKY6Xj0TrN49GLGlFYr6CKq99y
	cOuczcgC7JSyd/HLIfrL7HH+oyQn2Q9/Gg1Crb+PGOXr1KWY30GNzbX8di/wH03mB1dnrO5b8mhhy
	CXJAiRbyWxVOq/nh/zmvn8ZwKcbR9PTy5pDq34OfiqDNl+bwOC5Ubf7cVAB0cnQG1n5XZ1GkazvgD
	bat9zUInLVZWQttiBn/bdP9dSgfeuMhiMcFs4EpbUHCy50hRn29yLiVsjJXSL9xWrGCLdrpcSQh//
	12tyPP7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlIfs-0006JG-DM; Wed, 10 Jul 2019 19:54:44 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlIfn-0006IP-J9
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 19:54:41 +0000
Received: by mail-pf1-f196.google.com with SMTP id p184so1576774pfp.7
 for <kexec@lists.infradead.org>; Wed, 10 Jul 2019 12:54:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zpFsWsCr/OqjVbJkKQ05MKxH0fgBxVzwWaDb1ichIOw=;
 b=J/yfhe43JMvBpe4jNKCJYYbHShj2m5J40GyH8Vhtjw1She2BtqPbCwPpg0SA1FfQ/Q
 lcduzHuU160SAsF/O9Iimu675yREdB6DHSURIA4hTe2JG3BbBD80XGMJqXLMeSIb94E8
 uG9y9U4tBj2U0LHA9gay5O2ip196Wswt6zRz1CRaVUQIIWMVNMBsUC2zrCT7TSAHeyHZ
 JiLfRI/wTwnBLDyfpDONEA4HMtZ7jo68G2e8VNWsD92FroxD9t3Do9JAM/Cz5oLwnJ3q
 lk6rCfRBNOYbIBESmOkaYrqwxHI51YI3G15cO0I1NS7rGZd20OdFriCnx8c1a47zZOSb
 5LeA==
X-Gm-Message-State: APjAAAXkfUsPDg5I9rE7X6AtlCC6SRGdJ51YzFVDTtTMpQaMxNjbJ+38
 dmqiG4R8f646ebb4SW8nq2l/2xhDN3Y=
X-Google-Smtp-Source: APXvYqyefv0RnCD5L8ISbm/5fWjdibQtCtK/V3sN120pg4oAEOmUGTiC8uM2HpGvrqx1tcWLTeyOmQ==
X-Received: by 2002:a65:6448:: with SMTP id s8mr39224435pgv.223.1562788478263; 
 Wed, 10 Jul 2019 12:54:38 -0700 (PDT)
Received: from localhost ([182.69.207.54])
 by smtp.gmail.com with ESMTPSA id t26sm2414298pgu.43.2019.07.10.12.54.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jul 2019 12:54:37 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH 1/4] kexec/kexec.c: Add the missing close() for fd used for
 kexec_file_load()
Date: Thu, 11 Jul 2019 01:24:26 +0530
Message-Id: <1562788469-22935-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
References: <1562788469-22935-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_125439_755888_46A5FF86 
X-CRM114-Status: GOOD (  10.67  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: bhupesh.linux@gmail.com, bhsharma@redhat.com, horms@verge.net.au,
 takahiro.akashi@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In kexec/kexec.c, we open() the kernel Image file and pass this file
descriptor to the kexec_file_load() system call, but never call a
corresponding close().

Fix the same via this patch.

Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 kexec/kexec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/kexec/kexec.c b/kexec/kexec.c
index 32ae56c8f1c3..8ca3b457cac8 100644
--- a/kexec/kexec.c
+++ b/kexec/kexec.c
@@ -1234,6 +1234,8 @@ static int do_kexec_file_load(int fileind, int argc, char **argv,
 	if (ret != 0)
 		fprintf(stderr, "kexec_file_load failed: %s\n",
 					strerror(errno));
+
+	close(kernel_fd);
 	return ret;
 }
 
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
