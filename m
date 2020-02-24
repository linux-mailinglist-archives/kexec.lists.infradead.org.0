Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0148169E8E
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 07:37:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=D8Iuvd3ySTLQtJyTcFoU86hjZreTuOOqv/8gLTrgT68=; b=NqA
	tJSb+PowyFBX+oYDdEPhlCmcWttFa+Fn8eF0OjQtiCAPDsjr+79JvSatqsMPo6KKCEV1xsTSfX2vW
	B86vAZsBF1utMMZECNlS8Gmuc3fRr/0DsG8MKzz710tD0b1ZbOGxx/C34jxNOKahxcXm9ymgTPRaR
	yqg+u+WU+Q/2o3R9WzmF5FiqNkw0eYLZd+A5kCSO4sA6qGtreiUnW1UU5IJO3q0pSuXlF7dqTPRV/
	1i0Z31UqgXRghXavZl/3vZll1V3wP0v802bqSsKxrodZ3aybm6ABcXFjyObHi7s4tdMUzm7qYIfxR
	7YzVZG2CfmbxIaZkmIrUJ0wpe47lztA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j67Mi-0000q8-Gs; Mon, 24 Feb 2020 06:37:16 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j67Mf-0000pX-Kv
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 06:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582526231;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=VcfSQCWqF7pvQiqK2O7LHW4dCzjpjU39a+IyuT+VDk8=;
 b=ORhrgCFDGF4Idnu6Yi7ljhiXvT2+ecSfiF1to+IZjQ+3A7WRp7ITSuPmK+/5XB8VFur8rR
 jNaOTS1Q54kYATjuQtMNzFx1DSxXkoHO/k6T4K1olBzfIukIym7beAaUtH1IV4jAoxkTcL
 2IlkihO3Qczz8hKWvDHxUbty+p03Muw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-eSBwKKCFMgeh0SDfvgqqJQ-1; Mon, 24 Feb 2020 01:37:07 -0500
X-MC-Unique: eSBwKKCFMgeh0SDfvgqqJQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9930D800D50;
 Mon, 24 Feb 2020 06:37:06 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-16.pek2.redhat.com
 [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AADE65D9CD;
 Mon, 24 Feb 2020 06:36:58 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2] kexec: support parsing the string "Reserved" to get the
 correct e820 reserved region
Date: Mon, 24 Feb 2020 14:36:55 +0800
Message-Id: <20200224063655.9890-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_223713_757056_1521A7F5 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bhsharma@redhat.com, horms@verge.net.au, dyoung@redhat.com, bhe@redhat.com
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

Changes since v1:
[1] use strncasecmp() instead of introducing another 'else-if'(
suggested by Bhupesh)

 kexec/arch/i386/kexec-x86-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kexec/arch/i386/kexec-x86-common.c b/kexec/arch/i386/kexec-x86-common.c
index 61ea19380ab2..9303704a0714 100644
--- a/kexec/arch/i386/kexec-x86-common.c
+++ b/kexec/arch/i386/kexec-x86-common.c
@@ -90,7 +90,7 @@ static int get_memory_ranges_proc_iomem(struct memory_range **range, int *ranges
 		if (memcmp(str, "System RAM\n", 11) == 0) {
 			type = RANGE_RAM;
 		}
-		else if (memcmp(str, "reserved\n", 9) == 0) {
+		else if (strncasecmp(str, "reserved\n", 9) == 0) {
 			type = RANGE_RESERVED;
 		}
 		else if (memcmp(str, "ACPI Tables\n", 12) == 0) {
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
