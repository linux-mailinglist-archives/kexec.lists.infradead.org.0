Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8761D1FBDC2
	for <lists+kexec@lfdr.de>; Tue, 16 Jun 2020 20:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EAhS09ENqa0dCH9ohzrWn/DVDe2tkKgdr5hHTgpXQCc=; b=JDOxdtZh5DkdoK
	TziBeLYItA/ddsK+GfedRbSo2QLPZTZvne3V46q5z6MSseiHPwrPYIDKWOpR/HIxga0SWPTfXUbh0
	tBVP8YqlmsZ9+pv3zu5K2DoRRVGvlCySDrGiPjP57jTgIui1NcveiERA0TQszn2m9zaNcU2ns9f9j
	7YlZSRPeuMQF/6ki5u6LTLtqNycPm/JIBNbYQ5eJ0xz4vInqy/HL4dmuXLua/b/+VR3c2mghqPP4l
	VeoemnZfKgYxLrFpN0PoCT8KdPt10lhVA3AVJUEsQfMptqX9TI+OgLM8rwS7vBplffcNdInGO8EPY
	qJUeIRX5VOFgeDsZhJDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlG7J-0004WI-DQ; Tue, 16 Jun 2020 18:15:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlG7G-0004VJ-60
 for kexec@lists.infradead.org; Tue, 16 Jun 2020 18:15:23 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5328B2080D;
 Tue, 16 Jun 2020 18:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592331321;
 bh=U6SVQrYdpf3H64Y1wEHug/hOhG566b3UUfUaO0UkwUM=;
 h=Date:From:To:Cc:Subject:From;
 b=Z22lz4ucpDlx7104ED8yFNClfc/DJZRnYjbrC5Vj8nauicrfTbNM9QL/BXVFiL0e3
 Fqm68PHlBHdabTZmLxzQdAMi6nUjWLofIOFUaWDfPZXf5r47bNxkShSkN+kD6X5DU9
 8LYJ/7toJJhqY6QhwM85MoMDeurzMmoo+O5LeozA=
Date: Tue, 16 Jun 2020 13:20:41 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Eric Biederman <ebiederm@xmission.com>
Subject: [PATCH][next] kexec_file: Use array_size() helper in memcpy()
Message-ID: <20200616182041.GA30841@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_111522_249475_F9E0FDB3 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kees Cook <keescook@chromium.org>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Use array_size() instead of the open-coded version in memcpy(). These
sorts of multiplication factors need to be wrapped in array_size().

Also, while there, use the preferred form for passing a size of a struct.
The alternative form where struct name is spelled out hurts readability
and introduces an opportunity for a bug when the pointer variable type is
changed but the corresponding sizeof that is passed as argument is not.

This issue was found with the help of Coccinelle and, audited and fixed
manually.

Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 kernel/kexec_file.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
index bb05fd52de85..2bbb001cd505 100644
--- a/kernel/kexec_file.c
+++ b/kernel/kexec_file.c
@@ -910,11 +910,11 @@ static int kexec_purgatory_setup_sechdrs(struct purgatory_info *pi,
 	 * The section headers in kexec_purgatory are read-only. In order to
 	 * have them modifiable make a temporary copy.
 	 */
-	sechdrs = vzalloc(array_size(sizeof(Elf_Shdr), pi->ehdr->e_shnum));
+	sechdrs = vzalloc(array_size(sizeof(*sechdrs), pi->ehdr->e_shnum));
 	if (!sechdrs)
 		return -ENOMEM;
 	memcpy(sechdrs, (void *)pi->ehdr + pi->ehdr->e_shoff,
-	       pi->ehdr->e_shnum * sizeof(Elf_Shdr));
+	       array_size(sizeof(*sechdrs), pi->ehdr->e_shnum));
 	pi->sechdrs = sechdrs;
 
 	offset = 0;
-- 
2.27.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
