Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00B568360
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 08:03:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sQ6rUXwRukO3BASlemxmJ14rEcKujQRg8cU0FKClow0=; b=KDlp4OBwz1qJLOQ3Dgm6JreHzO
	hACQLEhohM3mh++J1kxjNbxRIVadFkz0PETeIUZ5mR0NyP+NQUSWHfgd/TtueGBq2DZlnswDwi5e5
	6cEt8OB6rO94u7o/tI33tiV+g9WeB59w5QuaYrWI1IyIP6NZspNKIhNqPIT6YTIvsKqetmjQPHHVq
	b4I7gWS8BbDxaMKTt8gsXuS4fmbD7+W2NEQqP93WfDt0rqQfYZk3migwI/5Av+/drFRJjH8qvIhUz
	mpqsu/zL155WZSbBgsyuScDuxpO7XDVrED0bFf4AwE80ebcYwwNttEJ1QkYGx7juHTVopYWJUexN5
	MqwGhmdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmu4y-0005sC-EH; Mon, 15 Jul 2019 06:03:16 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmu4q-0005qc-6Y
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 06:03:09 +0000
Received: by mail-pg1-f193.google.com with SMTP id o13so7154614pgp.12
 for <kexec@lists.infradead.org>; Sun, 14 Jul 2019 23:03:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=zpFsWsCr/OqjVbJkKQ05MKxH0fgBxVzwWaDb1ichIOw=;
 b=POy2vAPoWAtkLhRri5c4vfva8xsGshEtbZqTMOGZjHmVgpd5F3qVLIBHZd82mAVtJN
 dKcuHotK6Tr/H7R0Q3rsJgiDu7oYbUtWwYU1eD7OJeD47lTBNB0dMy2nG3ZQCICs6rJY
 ikY8jcRVgLExbdT4EoBlVddrph7Vr265038TpKSo+o0D7Uv+AXJvJPXn7KPGg6L1d9E/
 +mrMOt5bYEy8wuH49hABX26Q26jBTw+M93FtAQg4r1Tpue9vkRU7AsRkjFcHvWNTUn4X
 VSB0mv1GvivnF7q1tpFHRHp6v7ZQdi0p6xSQGD0gTY3sh+hRJ5FMcy592MoOTJGWX9aW
 Da9A==
X-Gm-Message-State: APjAAAWAYdnSeacLhdu5GUs0TJbGU3QS/XwYQvPDkk1ylyI4R3tC07G2
 TSqNisULW3yuA7sPC9RBGtM/wAoSiHM=
X-Google-Smtp-Source: APXvYqyZ4x1PJESHqsQdAuvWUdMUEB5atKRg1o5+f/mutwZu1aIj4M+PqCGEAu/7/pNPNJnlG+OLwg==
X-Received: by 2002:a17:90a:2430:: with SMTP id
 h45mr28077609pje.14.1563170586606; 
 Sun, 14 Jul 2019 23:03:06 -0700 (PDT)
Received: from localhost ([106.215.98.33])
 by smtp.gmail.com with ESMTPSA id d14sm21508336pfo.154.2019.07.14.23.03.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 23:03:05 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH v2 1/4] kexec/kexec.c: Add the missing close() for fd used for
 kexec_file_load()
Date: Mon, 15 Jul 2019 11:32:53 +0530
Message-Id: <1563170576-13134-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
References: <1563170576-13134-1-git-send-email-bhsharma@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_230308_240627_D4C25475 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: takahiro.akashi@linaro.org, bhsharma@redhat.com, bhupesh.linux@gmail.com,
 horms@verge.net.au
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
