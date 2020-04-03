Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A32019D5B7
	for <lists+kexec@lfdr.de>; Fri,  3 Apr 2020 13:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xKw03rk+i2ZbmIqYp2ylTa07QC5JYnsDKe+PTVSw3Rs=; b=q6e
	FmNRtcOZoiNGBo4lvU6hMZOTqxqsxD5pK/aY7ANomjwMmBEG7b4f9jOiyRmIavC+DINBL29j7PGVW
	9NxCkfI1Acwzmm4FFDZvMOdrRR6AgcVlQdNwAyFzdSfZbRVRx2bK7e8Yr83/wHTk7z2SI4u/7qLLt
	eMeVSCkI/FuuwbrAejFGOcoOIl9nVPEGzP8zQI5mJyOB3XKNSy3TNO3/Vx/xPzgTetypSOJMM7CCG
	PCBYYdZ6xCXvUIyOFckU+xz/qIHI4fDQ3WGw3hablWRVQaGbM/1WqW62SzwLxkhJ48ucOf9R1Qie/
	M78Yxr93+HTpFVZ35rTcmFpaalc0IYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKNB-00027l-Ez; Fri, 03 Apr 2020 11:20:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKN8-00026L-4e
 for kexec@lists.infradead.org; Fri, 03 Apr 2020 11:20:28 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 989D1AC0C;
 Fri,  3 Apr 2020 11:20:18 +0000 (UTC)
From: Petr Tesarik <ptesarik@suse.com>
To: Simon Horman <horms@verge.net.au>
Subject: [PATCH] kexec-tools: s390: Reset kernel command line on syscall
 fallback
Date: Fri,  3 Apr 2020 13:19:16 +0200
Message-Id: <20200403111916.14663-1-ptesarik@suse.com>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_042026_325376_98183C5C 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec mailing list <kexec@lists.infradead.org>,
 Petr Tesarik <ptesarik@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The command line is duplicated on s390 if kexec_file_load(2) is not
implemented. That's because the corresponding variable is not reset
to an empty string before re-parsing the kexec command line.

Fixes: 9cf721279f6c ("Reset getopt before falling back to legacy syscall")
Signed-off-by: Petr Tesarik <ptesarik@suse.com>
---
 kexec/arch/s390/kexec-image.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kexec/arch/s390/kexec-image.c b/kexec/arch/s390/kexec-image.c
index 8b39566..3c24fdf 100644
--- a/kexec/arch/s390/kexec-image.c
+++ b/kexec/arch/s390/kexec-image.c
@@ -112,6 +112,7 @@ image_s390_load(int argc, char **argv, const char *kernel_buf,
 		};
 	static const char short_options[] = KEXEC_OPT_STR "";
 
+	command_line[0] = 0;
 	ramdisk = NULL;
 	ramdisk_len = 0;
 	ramdisk_origin = 0;
-- 
2.16.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
