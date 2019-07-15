Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92EEF68520
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 10:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQjM9OTDeypRWRAHk/4u3H/6Y3taLIrPXIZ403Np+ic=; b=Tpiv6p6sMEPWfu
	YxmWYixa5qfT9uTJupZFHXcN0F1V77M8SL2KdamBlTeuwhXvr5+I3kZToXu2M9Ei449hA5LHvQhtI
	fQQklbg2t5fkb0X1Dkj9JxtZdHHf8cX1NNtKGETDV5pOvErpnWw2n9tPeyUHVTNKWJysE5f0+rLJu
	apKvKT7d84kCh7Qi9t1BNDMlSzk3IfbDWO0f9filUkinyKxU2ZGw6mNhtMI1dyjXazQ2ee4RFHAOM
	lrtOlU63jsuvvz3YT0fVwy7B3+gc8OJkoq0ykRaKpODOHX3i09Gx/oMUSe5SUNtUoP8J7IToM49Z6
	ZzDyAhIJqgKXNWMCwuAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwKj-00056b-8V; Mon, 15 Jul 2019 08:27:41 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwKc-00054G-9N
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 08:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=z8W9W6QwR0W0eMECiQ26IE6hEHL+BbH5N25UyJpt5cY=; b=oyE5uVroKS3kpUw2YKCTNGZ7Fv
 bCZ2SiDadWPwc1fbu0kZuEjiPz+KfIkm3ARqK2DT7EP0r0aL9jDBEGIGk8Hu9rIZu+q/UvmmBTVg1
 4zwOz7gIAzdKWVtvjuTSs1JCPPq98buW+vBwSEfBejKIyTvp2eZ7R60EOdAYTDeI9e3I=;
Received: from frobwit.duncanthrax.net ([89.31.1.178] helo=t470p.intern)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hmwKa-0005LV-4w; Mon, 15 Jul 2019 10:27:32 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v4 6/7] kexec_elf: remove unused variable in kexec_elf_load()
Date: Mon, 15 Jul 2019 10:27:01 +0200
Message-Id: <20190715082702.27308-7-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715082702.27308-1-svens@stackframe.org>
References: <20190715082702.27308-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_012738_309263_7419A727 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Sven Schnelle <svens@stackframe.org>, deller@gmx.de,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

base was never assigned, so we can remove it.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 kernel/kexec_elf.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index e346659af324..9421eebbacf0 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -350,7 +350,7 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
 			 struct kexec_buf *kbuf,
 			 unsigned long *lowest_load_addr)
 {
-	unsigned long base = 0, lowest_addr = UINT_MAX;
+	unsigned long lowest_addr = UINT_MAX;
 	int ret;
 	size_t i;
 
@@ -372,7 +372,7 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
 		kbuf->bufsz = size;
 		kbuf->memsz = phdr->p_memsz;
 		kbuf->buf_align = phdr->p_align;
-		kbuf->buf_min = phdr->p_paddr + base;
+		kbuf->buf_min = phdr->p_paddr;
 		ret = kexec_add_buffer(kbuf);
 		if (ret)
 			goto out;
@@ -382,9 +382,6 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
 			lowest_addr = load_addr;
 	}
 
-	/* Update entry point to reflect new load address. */
-	ehdr->e_entry += base;
-
 	*lowest_load_addr = lowest_addr;
 	ret = 0;
  out:
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
