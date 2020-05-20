Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C5F61DACE0
	for <lists+kexec@lfdr.de>; Wed, 20 May 2020 10:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gRk0lPNsS6cOpZzHYKpfaDxfm0Yc7/dM5kbAYhm/Ue4=; b=TjO
	Wlmd0GYiQvmgRvQXFo+AOxLJz05Pc9t/3G3gdb0kZKY7a+kZ+gF8JG/YkCJV7qwAP8q2Ta4Cob/mc
	p0byI7D8tlTPHMjDlhB0jJnrEXPPC7r+f+KbzYaj/oV2D83ulNEcIhbXuOPAIQ0OklPGkwg2xe7X/
	rA68jrl7b2ZiKVZrw5IH6JdrT2JIOsd/w/zFR7JRtk0Un/vZ3k/T7WGva08X8WoGJ2O1UIDvHxEEs
	DL7UNYLteVMguu4cD+RHoROMl0yuRHryTObClP7UuR0rpI0c90vPdlm1mF4mAh95OgXiV4U7ea23V
	/HgKOelnFmWa3QAVKizEvFFiWRiHI1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbJjy-0002B9-Ex; Wed, 20 May 2020 08:06:14 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJju-0002AR-Hx
 for kexec@lists.infradead.org; Wed, 20 May 2020 08:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589961967;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc; bh=nFRT2Dwzeb1s4TncyaAvoKFX2GM9mDLYe58xsFJAsBQ=;
 b=KnWPpIrpI7UVLxC49BP4fuifYk/SzVu0SMy1LwaR2azyMmYKhR2y22cpfGYGrAFGYwIk3/
 yzOgIA+ce0853RdOg1YQg5wXW56ZrKJ7g8ndAXKG3iPk7K6JUYoZrNTTAGHHphEtkfe133
 JT+vzPMILPmhn/QpxRzdQvdni22wEV8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-PybYBE1GPJ6AN7cxRRyUkQ-1; Wed, 20 May 2020 04:06:04 -0400
X-MC-Unique: PybYBE1GPJ6AN7cxRRyUkQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C5F938018A5;
 Wed, 20 May 2020 08:06:03 +0000 (UTC)
Received: from MiWiFi-R3L-srv.redhat.com (ovpn-12-22.pek2.redhat.com
 [10.72.12.22])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 09DD85C1D0;
 Wed, 20 May 2020 08:05:58 +0000 (UTC)
From: Baoquan He <bhe@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] MAINTAINERS: add files related to kdump
Date: Wed, 20 May 2020 16:05:57 +0800
Message-Id: <20200520080557.13260-1-bhe@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_010610_807116_052DD375 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kexec@lists.infradead.org, akpm@linux-foundation.org, dyoung@redhat.com,
 vgoyal@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Kdump is implemented based on kexec, however some files are only
related to crash dumping and missing, add them to KDUMP entry.

Signed-off-by: Baoquan He <bhe@redhat.com>
---
 MAINTAINERS | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 83cf5c43242a..2f9eefd33114 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9251,6 +9251,11 @@ L:	kexec@lists.infradead.org
 S:	Maintained
 W:	http://lse.sourceforge.net/kdump/
 F:	Documentation/admin-guide/kdump/
+F:	fs/proc/vmcore.c
+F:	include/linux/crash_core.h
+F:	include/linux/crash_dump.h
+F:	include/uapi/linux/vmcore.h
+F:	kernel/crash.*
 
 KEENE FM RADIO TRANSMITTER DRIVER
 M:	Hans Verkuil <hverkuil@xs4all.nl>
-- 
2.17.2


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
