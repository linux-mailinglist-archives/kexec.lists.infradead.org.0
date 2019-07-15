Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B62868523
	for <lists+kexec@lfdr.de>; Mon, 15 Jul 2019 10:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ujaKi4LerRiRRk8SEcKe7M2T3aPZi6ZxUkWFwagqoI=; b=Ql8s3gnqG+FDCA
	O/bCBQhESgjhtid8JsNwPdarb4C/8fGBXfGGUEyBkNTVUh7IX6CHKo1Z3N2uuU+xPMNZqSB9+6k1o
	tzNzSqd0mlvoS/qhFxx+/VDB2rZvGiIgdiSWkEf347apOOkHtJ2zGT3OVbdFFoJSCBoL2nh3XU76y
	qg0k20T52bpeZWfTweaEWV+D9mhjZqAngGe3dxhHXhrh+LnxGpoxUezG9Hr5XjsWsY9J1AHtLUaG9
	zsL7OFhD71I1p1UZzw1O8CPmOnwNTdWUnuyYDgUYT/f9TJDZhyXzYWhV5j+D1gut84oWF7vXnlWwU
	BcolyS50lVRIF9J8ZsvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmwKr-0005Bq-NL; Mon, 15 Jul 2019 08:27:49 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmwKc-000549-9K
 for kexec@lists.infradead.org; Mon, 15 Jul 2019 08:27:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From;
 bh=41hNx7RJF3M/NVaosyif8t4ddhlZec6gxVrDuKDyR9E=; b=RGeUccMT03M3UC8pJZ59RMhg83
 IhUd+/WszbXLJeJ6Q4Ye46Llv3nTNMX3mTAhVP388MEYf/bqACCYbmF80jWqzgWeFvTL50bOzneM5
 gyqTatH8KKSMydl18B1ykG+Xd0aDcoH7wfXVoRIFcxuStwu5kY4OK1keRcvLiT9RtsgQ=;
Received: from frobwit.duncanthrax.net ([89.31.1.178] helo=t470p.intern)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hmwKZ-0005LV-JZ; Mon, 15 Jul 2019 10:27:31 +0200
From: Sven Schnelle <svens@stackframe.org>
To: kexec@lists.infradead.org
Subject: [PATCH v4 2/7] kexec_elf: change order of elf_*_to_cpu() functions
Date: Mon, 15 Jul 2019 10:26:57 +0200
Message-Id: <20190715082702.27308-3-svens@stackframe.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715082702.27308-1-svens@stackframe.org>
References: <20190715082702.27308-1-svens@stackframe.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_012738_291422_B23067B1 
X-CRM114-Status: UNSURE (   7.25  )
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
Cc: Sven Schnelle <svens@stackframe.org>, deller@gmx.de,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Change the order to have a 64/32/16 order, no functional change.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 kernel/kexec_elf.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
index 6e9f52171ede..76e7df64d715 100644
--- a/kernel/kexec_elf.c
+++ b/kernel/kexec_elf.c
@@ -31,22 +31,22 @@ static uint64_t elf64_to_cpu(const struct elfhdr *ehdr, uint64_t value)
 	return value;
 }
 
-static uint16_t elf16_to_cpu(const struct elfhdr *ehdr, uint16_t value)
+static uint32_t elf32_to_cpu(const struct elfhdr *ehdr, uint32_t value)
 {
 	if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
-		value = le16_to_cpu(value);
+		value = le32_to_cpu(value);
 	else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
-		value = be16_to_cpu(value);
+		value = be32_to_cpu(value);
 
 	return value;
 }
 
-static uint32_t elf32_to_cpu(const struct elfhdr *ehdr, uint32_t value)
+static uint16_t elf16_to_cpu(const struct elfhdr *ehdr, uint16_t value)
 {
 	if (ehdr->e_ident[EI_DATA] == ELFDATA2LSB)
-		value = le32_to_cpu(value);
+		value = le16_to_cpu(value);
 	else if (ehdr->e_ident[EI_DATA] == ELFDATA2MSB)
-		value = be32_to_cpu(value);
+		value = be16_to_cpu(value);
 
 	return value;
 }
-- 
2.20.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
