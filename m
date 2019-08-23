Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F299B752
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 21:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LEBUylxZNvYGiMS+uU1M3lRbT2mBz3EML6QmTKkMrI=; b=WXdqoMJG6kH0zE
	rB8Gx1abpCfN7GcNg2UtlV1+7Fyp+QKwiR0h7c9kmiwE3B7xEYqAiJW7bt0Yfo+ncXB9UNMnwhXGQ
	5ZdV5WpA5MPwsJ5VaWADBjaYtZpVfpeSZDEIczU9bah1/5POQje+bJVoAR0prXh8TwtXd0udbo+72
	5oeuocHsjU2SrVjTNRAeTEfb59pcwxy4VK3MM1Kynom5nW8+6hJXQ9vnVoKmRNizmL6CPsL/nS6Mi
	FFn5OM8iIHYUMMXVwBCUm0lb7I+UCtL7e7QZKji/JOZwxa9n/0b8BA32KVhifaOrWG/mGbz8qv3nh
	0H3lYK/Yv/AFEKh+GdEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1FZG-0000Qi-VE; Fri, 23 Aug 2019 19:49:50 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1FZ8-0000JZ-BS
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 19:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=rFyKtEp5BI1cjjxOI9RlUdT30At9mbHzmfXbqPz5lKA=; b=AJfhPLDdGMeKSUJIJVEHNSIj6P
 fmd8IzB/KY9KYPux9SJJ/2CQcIh4TKd3+SRq8zF8aY696cRSmm6gVU7PNNU1N8kHR034dlNanBpav
 jodCYkvZTZmeoQW9Xac6k73mtgXJmj8XVDlEfyAYDswTaoxxSSdnLYYAO0/K9zzeBSF8=;
Received: from [134.3.44.134] (helo=x280.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1i1FZ3-00071n-9F; Fri, 23 Aug 2019 21:49:37 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v5 6/7] kexec_elf: remove unused variable in kexec_elf_load()
Date: Fri, 23 Aug 2019 21:49:18 +0200
Message-Id: <20190823194919.30916-7-svens@stackframe.org>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190823194919.30916-1-svens@stackframe.org>
References: <20190823194919.30916-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_124942_689176_664964EA 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sven Schnelle <svens@stackframe.org>, Helge Deller <deller@gmx.de>,
 linuxppc-dev@lists.ozlabs.org, Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

base was never assigned, so we can remove it.

Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>
Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 kernel/kexec_elf.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 6c806ce96ac1..85f2bd177d6e 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -363,7 +363,7 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
 			 struct kexec_buf *kbuf,
 			 unsigned long *lowest_load_addr)
 {
-	unsigned long base = 0, lowest_addr = UINT_MAX;
+	unsigned long lowest_addr = UINT_MAX;
 	int ret;
 	size_t i;
 
@@ -385,7 +385,7 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
 		kbuf->bufsz = size;
 		kbuf->memsz = phdr->p_memsz;
 		kbuf->buf_align = phdr->p_align;
-		kbuf->buf_min = phdr->p_paddr + base;
+		kbuf->buf_min = phdr->p_paddr;
 		kbuf->mem = KEXEC_BUF_MEM_UNKNOWN;
 		ret = kexec_add_buffer(kbuf);
 		if (ret)
@@ -396,9 +396,6 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
 			lowest_addr = load_addr;
 	}
 
-	/* Update entry point to reflect new load address. */
-	ehdr->e_entry += base;
-
 	*lowest_load_addr = lowest_addr;
 	ret = 0;
  out:
-- 
2.23.0.rc1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
