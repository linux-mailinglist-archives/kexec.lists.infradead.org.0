Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E471E10F902
	for <lists+kexec@lfdr.de>; Tue,  3 Dec 2019 08:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Mw/HDME9Z5tFk5lq6Mqm/Ce1etnfYeJ46gRi+ij9GRY=; b=BrI
	GZJOkjnjsVJfy0kwDHYvxraKwwWxBvL8aXoov7ZsfzAhggqTlV/oqzDhs1HoW5ElqOvoMt6S/G05M
	qSyMuWA71HJA8/zU7ltzExrszU2I+Kc2ScTDGQURATYmXjeYPeiVq8LGLmwB9VxY/ObMxK7wuxKua
	RHxyS0JbqPpBUrkEbjvqEs4bg9KBq+jc68UGINiLMv9jAo4oylNRxIzMvDmRjHo6MsCZ6Zvf4AxkN
	LcdyL2KBV8QH+eVt7L7MvJDlIV5aoCOqO7ZrFCqwEIgKWSyx5763CXeGCsSu5JjqQluVPFBS+g2uf
	PXH/sVVoFjbI3SYqW1j77pgetwcnK4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2mP-0003O1-BK; Tue, 03 Dec 2019 07:39:29 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2kH-0001RU-Ko
 for kexec@lists.infradead.org; Tue, 03 Dec 2019 07:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575358634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=SP7dVTHwbrCDa1VFgj5y7QByHefLYr79Rc9vjWMzfBU=;
 b=efhAkcv0yLK6FNrCieNlVZYpoStGSbS+VwiqcWerEyXOfHqr2vkU4RnRE18KCAsbHSBAbH
 2vXkxKC+mnrvK9czoOshHqQcAOw4Nyyg+SIml7k3SVjtxtTmppqnTNXzSXVvyQy7HiW6Iq
 f7JkEki1upx0WUXuU1cuwhAu2FAZALc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-AFpCc8RnOSW2Vn5SBtvQ9g-1; Tue, 03 Dec 2019 02:37:11 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45FB9107ACC4;
 Tue,  3 Dec 2019 07:37:10 +0000 (UTC)
Received: from mylaptop.redhat.com (ovpn-8-30.pek2.redhat.com [10.72.8.30])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBADD5D6A7;
 Tue,  3 Dec 2019 07:37:08 +0000 (UTC)
From: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
Date: Tue,  3 Dec 2019 15:37:07 +0800
Message-Id: <1575358627-17152-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-MC-Unique: AFpCc8RnOSW2Vn5SBtvQ9g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_233717_770299_D8936E84 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

In refiltering mode, each sub process inherits bitmap2->fd from parent.
Then they lseek()/read() on the same fd, which means that they interference
with each other.

This breaks the purpose of SPLITTING_FD_BITMAP(i) for each sub process.
Fix it by assigning a sub process dedicated fd to bitmap2->fd.

Signed-off-by: Pingfan Liu <piliu@redhat.com>
---
 makedumpfile.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/makedumpfile.c b/makedumpfile.c
index d76a435..1dc8640 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -8857,7 +8857,8 @@ write_kdump_pages_and_bitmap_cyclic(struct cache_data *cd_header, struct cache_d
 	if (info->flag_cyclic) {
 		if (!prepare_bitmap2_buffer())
 			return FALSE;
-	}
+	} else if (info->flag_refiltering)
+		info->bitmap2->fd = info->fd_bitmap;
 
 	/*
 	 * Write pages and bitmap cyclically.
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
