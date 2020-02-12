Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E056815A989
	for <lists+kexec@lfdr.de>; Wed, 12 Feb 2020 13:57:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ARvcAzKq8y+EfOQD+xTyeaFVqSxNHOizWdneDeSaZ7Y=; b=MTu
	Eqf92SpPOAeOIZ0KPoC2F7c3+yuXlwQT5sQgI+sHkEZIRjWyNpyUuwU+w3vGmNMkxpj/8Ck4//P8J
	2BxiugA6bFTHcEZZSfnaPSjaWIDcq/Bi2Azk/5ALrOHpgIblsisbjSt2xhTyTzvBCpU8ZrXNKOff5
	TJFOpcCEbykNi6Siho16Ey5NOQxDFoI4W2WzAOXqcm/GxdLPqb9nuI3Qyw/6yK1Ssji69ocusLgkg
	ZULOyLiYDNeHHWTX0GUiCLrXhvfYmLRLqMnixQIDkUAuqj0cx3xLz/nSorzw8gXRFcS5jkFSNPY/L
	vh/aPJE6QTcElgJRbAMVbFuZkgzQp0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1rZt-0006eI-5L; Wed, 12 Feb 2020 12:57:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1rZq-0006d9-3G
 for kexec@lists.infradead.org; Wed, 12 Feb 2020 12:57:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581512232;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=7tSWJHpWoiFH6anUQsIHgIqf5LFduWbVQyF463hAEWk=;
 b=D2VsUSRrpp+Cjn1kvmq8VMYLQugORzMEMKmdhN2Qkyxm7vv9faBb+8r+rkeF+3s93zazeX
 wiXrKSw78Yt5iHalg8Tbl+1kN2EP6v+kYW9ZDP9Rt/tK5mMU12qegvCZ/4gWFCi3CTf2ML
 NFwYAxhLAgV4/ND9BHQqcLkphuTzf+8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-349-tgViwdBdMniJLq_TXtcgnA-1; Wed, 12 Feb 2020 07:57:10 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C408B19251A0;
 Wed, 12 Feb 2020 12:57:08 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-13-86.pek2.redhat.com
 [10.72.13.86])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7B3F160BF1;
 Wed, 12 Feb 2020 12:57:02 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] kexec: support parsing the string "Reserved" to get the
 correct e820 reserved region
Date: Wed, 12 Feb 2020 20:56:58 +0800
Message-Id: <20200212125658.9654-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: tgViwdBdMniJLq_TXtcgnA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_045714_216724_88DC4519 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: horms@verge.net.au, dyoung@redhat.com, bhe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When loading kernel and initramfs for kexec, kexec-tools could get the
e820 reserved region from "/proc/iomem" in order to rebuild the e820
ranges for kexec kernel, but there may be the string "Reserved" in the
"/proc/iomem", which caused the failure of parsing. For example:

 #cat /proc/iomem|grep -i reserved
00000000-00000fff : Reserved
7f338000-7f34dfff : Reserved
7f3cd000-8fffffff : Reserved
f17f0000-f17f1fff : Reserved
fe000000-ffffffff : Reserved

Currently, kexec-tools can not handle the above case because the memcmp()
is case sensitive when comparing the string.

So, let's fix this corner and make sure that the string "reserved" and
"Reserved" in the "/proc/iomem" are both parsed appropriately.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
Note:
Please follow up this commit below about kdump fix.
1ac3e4a57000 ("kdump: fix an error that can not parse the e820 reserved region")

 kexec/arch/i386/kexec-x86-common.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
index 61ea19380ab2..86bcc8c0677e 100644
--- a/kexec/arch/i386/kexec-x86-common.c
+++ b/kexec/arch/i386/kexec-x86-common.c
@@ -93,6 +93,9 @@ static int get_memory_ranges_proc_iomem(struct memory_range **range, int *ranges
 		else if (memcmp(str, "reserved\n", 9) == 0) {
 			type = RANGE_RESERVED;
 		}
+		else if (memcmp(str, "Reserved\n", 9) == 0) {
+			type = RANGE_RESERVED;
+		}
 		else if (memcmp(str, "ACPI Tables\n", 12) == 0) {
 			type = RANGE_ACPI;
 		}
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
