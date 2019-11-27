Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545CD10A903
	for <lists+kexec@lfdr.de>; Wed, 27 Nov 2019 04:12:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CMuq2/mQKNs0rRWmM5Ezb5KQMQ5cgWm7vj/ltKt/6d8=; b=g8O15Qyl1fpy88
	/S4NDkyqcdWymSkPuc2SXJP0YvukNL9CyjCqXKdPpWtozK6rWknAGYNhn9H2TaF63nShj+gDkCrBm
	ghSaghEblPfWqtMXUHV8lHEtfif3+V4LeIIpMVPRr3jnkj8+2wFNtQWBJpQbQ5OHpLR4RlxkkQFkh
	B2lv6Yc7LqClkINMrWL/CLsB5k4YGNPL3rgGCZLNRu5pp+Qh9+UZ7LHj6h8a93IuTgtgt6Iez72Bx
	NT0gwAyQjYTRrZyzvE6mbP0HOP4EeCh0JnjX1sy+zezRekzZIXwUPDSl7bqHpoEkMhdLCBpl9EZ86
	UAXRObBTQlcNipkyDPQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZnky-0007yK-GY; Wed, 27 Nov 2019 03:12:44 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZnkv-0007x5-BF
 for kexec@lists.infradead.org; Wed, 27 Nov 2019 03:12:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574824359;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=kFsWWgO/7qJIuM+cNRd51VBHacE7gqWBitOeKeHHReU=;
 b=H0O8f3wlr4mNAHjJbywbdLJW66PN5VTFMcyanrei/4QSkHz8gwJKtQYKFhJW5MppaUC9/s
 GAPtU2JXn08fw0HTf2MUw/MxtRSF731RcUn5ljO/1+sRM7yz73YCSdXi7hPBtbWoVUW69b
 cdwCYsxJDnbLhKyuCRK+p5yTPrLtP6Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-161-WcSlXhc-OTe1g8oo4o7yCA-1; Tue, 26 Nov 2019 22:12:37 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AE880107ACE6
 for <kexec@lists.infradead.org>; Wed, 27 Nov 2019 03:12:36 +0000 (UTC)
Received: from mylaptop.redhat.com (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7BF7919C7F
 for <kexec@lists.infradead.org>; Wed, 27 Nov 2019 03:12:35 +0000 (UTC)
From: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] doc: vmcore-dmesg should work on ELF format
Date: Wed, 27 Nov 2019 11:12:33 +0800
Message-Id: <1574824353-5309-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: WcSlXhc-OTe1g8oo4o7yCA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_191241_463001_342D1A4C 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

User may mistake to run vmcore-dmesg against an kdump format dumpfile, and
fail to get kernel message.

Signed-off-by: Pingfan Liu <piliu@redhat.com>
---
 vmcore-dmesg/vmcore-dmesg.8 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/vmcore-dmesg/vmcore-dmesg.8 b/vmcore-dmesg/vmcore-dmesg.8
index d9e3c62..dc06909 100644
--- a/vmcore-dmesg/vmcore-dmesg.8
+++ b/vmcore-dmesg/vmcore-dmesg.8
@@ -27,7 +27,7 @@ vmcore-dmesg \- This is just a placeholder until real man page has been written
 .\" respectively.
 \fBvmcore-dmesg\fP extracts the dmesg from a vmcore and write it to
 standard out.  \fBvmcore-dmesg\fP works against either
-\fB/proc/vmcore\fP in a crash dump capture context or a copy
+\fB/proc/vmcore\fP in a crash dump capture context or a ELF format copy
 of \fB/proc/vmcore\fP that has been saved for later analysis.  A
 single build of \fBvmcore-dmesg\fP should work against any linux
 vmcore written created on any architecture.
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
