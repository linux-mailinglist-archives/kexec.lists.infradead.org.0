Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2AD10D04C
	for <lists+kexec@lfdr.de>; Fri, 29 Nov 2019 02:09:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6XKbA38mOlvdw/st1RB3tHy1Mjs0z2/kSDVljLhBzAM=; b=f1I
	wJ2X/muxuNGshbi4iiRZYV/pzdp9Tw0KzcL/HsMllHR4Bj9Nm4gk+kCMh4c/qiAuYDcFnMMz8Lhgm
	z3azj+eQZtGE0wf8IpdxcY4wv1nxQJuvnYzQsB+7e1Gr9WLiMWMBqWDWM5qYTBIfPbF5U1c2og8ku
	Md7t6xv13bvEKNGndMAaRBFJGno00EVMtJ9QSb/8Rk9q0ClLmdrCtCYUZx+XcJts3c4dgZiaQnE2+
	TWUvTDcHJssJlpAqE2dTdDo0OZoP98UyYM/JCQbj5UOmlE9Gz2IvUa8UVAwP1DheEIdCMDT+QUb/z
	1AEb/NSOp4wqhjzycGB+xSeRm/DsdOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaUmh-00044o-Tm; Fri, 29 Nov 2019 01:09:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaUmd-00044A-B8
 for kexec@lists.infradead.org; Fri, 29 Nov 2019 01:09:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574989753;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=R28EpKZ0/2yI+xqLsWU7apf6gQMKJF4Q2esbHdaGGiE=;
 b=gRNN7IRmKRu+n1DxBmQcEiFEvlzckvZGDTB0k07SelRBTi399Vln4tctGLe9RqdIk0gac3
 hZz0GYveENTgHj+6/tXD6k4kqezxOEqutHsaBKfnRdFvK4tI6RgyKoWJy3PisyTtX3MUz4
 IiADNHNhY59kOnhdyAlmCKJlPqaL9nM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-92-XxyfG4SEMHGwEBGZn0Sing-1; Thu, 28 Nov 2019 20:09:10 -0500
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 19D92107ACC5;
 Fri, 29 Nov 2019 01:09:09 +0000 (UTC)
Received: from mylaptop.redhat.com (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 900335D9E1;
 Fri, 29 Nov 2019 01:09:07 +0000 (UTC)
From: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile/Makefile: remove -lebl from LIBS
Date: Fri, 29 Nov 2019 09:09:05 +0800
Message-Id: <1574989745-5262-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-MC-Unique: XxyfG4SEMHGwEBGZn0Sing-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_170919_454587_CDC2CC58 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

since the following commit, -lebl has been removed from elfutils.
commit b833c731359af12af9f16bcb621b3cdc170eafbc
Author: Mark Wielaard <mark@klomp.org>
Date:   Thu Aug 29 23:34:11 2019 +0200

    libebl: Don't install libebl.a, libebl.h and remove backends from spec.

    All archive members from libebl.a are now in libdw.a. We don't generate
    separate backend shared libraries anymore. So remove them from the
    elfutils.spec file.

    Signed-off-by: Mark Wielaard <mark@klomp.org>

So remove it from LIBS for makedumpfile

Signed-off-by: Pingfan Liu <piliu@redhat.com>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 1fdb628..df21b93 100644
--- a/Makefile
+++ b/Makefile
@@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
 SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c arch/ia64.c arch/ppc64.c arch/s390x.c arch/ppc.c arch/sparc64.c
 OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))
 
-LIBS = -ldw -lbz2 -lebl -ldl -lelf -lz
+LIBS = -ldw -lbz2 -ldl -lelf -lz
 ifneq ($(LINKTYPE), dynamic)
 LIBS := -static $(LIBS)
 endif
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
