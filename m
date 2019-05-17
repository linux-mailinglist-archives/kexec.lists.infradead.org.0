Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040042195B
	for <lists+kexec@lfdr.de>; Fri, 17 May 2019 15:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YV/VNk+Xt3gz4OzBRGXGCulbP3T1gu7eQnxHyl9GSx0=; b=FeLdJ5g7OCCs/d
	WJbsBSYwdwPBiXI33IzxHE5+zmrcXOeu7BRhl0rBYCUKVz4vYywna8+Ei1Bt3BD65GGF1GlGUC7SX
	kU1toPTwktZhtjSRcGviOlOoztM6XbhgcEM9eFoNZ/lkC70U8Bxve3A7cAZwHop54CPFrDFEy/8mZ
	e+0StiDT2GwSy9S/f7aflGcAUU244KtV9pU3b7hTOfskJ3UQuExdFZsLaHy0XZAG6mJw8avABJ/ah
	Jmpdq7uAGU1ZHavikFfFPcOGCIBcJJ0IMWGxl1tj2c5zlX888WDWPoqgk8nn+GNP/yx1ZtufoLJJT
	kSwmpdM3QI1LCwKBUe5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRdFt-0006We-8o; Fri, 17 May 2019 13:50:37 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRdFq-0006VZ-D7
 for kexec@lists.infradead.org; Fri, 17 May 2019 13:50:35 +0000
Received: from zn.tnic (p200300EC2F0C5000C4DD38E37EE1A463.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0c:5000:c4dd:38e3:7ee1:a463])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 137B81EC0874;
 Fri, 17 May 2019 15:50:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1558101032;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=pSULXWxo865hvokHJVuAYuoi1vX3Tfl+hb+Yba1Anj8=;
 b=PI8tfbwE7JYpL2hAAdxUoFbyMF0cAzl84EXyGS3t8w8ap7/1enpEDvutHIc4RmQlaPA1Nx
 f5D6FiUSVe5+kh+h1QmXCAzpDZmN0zuekYqqdnRtNgstjWntGDbh/yGObU/fsPz46UAQKf
 R2OINCPG+AdpUce6BR+r1BfTCquwLB4=
Date: Fri, 17 May 2019 15:50:30 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dave Young <dyoung@redhat.com>
Subject: [PATCH] x86/boot: Call get_rsdp_addr() after console_init()
Message-ID: <20190517135030.GB13482@zn.tnic>
References: <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv>
 <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv>
 <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv>
 <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190517134159.GA13482@zn.tnic>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517134159.GA13482@zn.tnic>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_065034_595045_B97FD059 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, Baoquan He <bhe@redhat.com>,
 x86@kernel.org, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 hpa@zytor.com, j-nomura@ce.jp.nec.com, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

And now as a proper patch:

---
From: Borislav Petkov <bp@suse.de>

... so that early debugging output from the RSDP parsing code can be
visible and collected.

Suggested-by: Dave Young <dyoung@redhat.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Cc: Baoquan He <bhe@redhat.com>
Cc: Chao Fan <fanc.fnst@cn.fujitsu.com>
Cc: Jun'ichi Nomura <j-nomura@ce.jp.nec.com>
Cc: Kairui Song <kasong@redhat.com>
Cc: kexec@lists.infradead.org
Cc: x86@kernel.org
---
 arch/x86/boot/compressed/misc.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/x86/boot/compressed/misc.c b/arch/x86/boot/compressed/misc.c
index c0d6c560df69..24e65a0f756d 100644
--- a/arch/x86/boot/compressed/misc.c
+++ b/arch/x86/boot/compressed/misc.c
@@ -351,9 +351,6 @@ asmlinkage __visible void *extract_kernel(void *rmode, memptr heap,
 	/* Clear flags intended for solely in-kernel use. */
 	boot_params->hdr.loadflags &= ~KASLR_FLAG;
 
-	/* Save RSDP address for later use. */
-	boot_params->acpi_rsdp_addr = get_rsdp_addr();
-
 	sanitize_boot_params(boot_params);
 
 	if (boot_params->screen_info.orig_video_mode == 7) {
@@ -368,6 +365,14 @@ asmlinkage __visible void *extract_kernel(void *rmode, memptr heap,
 	cols = boot_params->screen_info.orig_video_cols;
 
 	console_init();
+
+	/*
+	 * Save RSDP address for later use. Have this after console_init()
+	 * so that early debugging output from the RSDP parsing code can be
+	 * collected.
+	 */
+	boot_params->acpi_rsdp_addr = get_rsdp_addr();
+
 	debug_putstr("early console in extract_kernel\n");
 
 	free_mem_ptr     = heap;	/* Heap */
-- 
2.21.0


-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
