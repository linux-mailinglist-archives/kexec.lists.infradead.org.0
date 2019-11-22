Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705DF106D1D
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 11:57:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iI6bRk4rqVQq6GN3DEYqy2/HfrGtSZ094gzhXZgGT20=; b=CNlS0ZhWSJQe4C
	x4SaH/JEe6MOhmxVXA9WdnfpDHR+VGgz4BZCGZTWnlMhKeoupYOYAKRv42R2zhpBkKEJcwz0FD1n/
	qR1b8w6obWxEDbSh0y4DaP7Jn1j855DkIhY1u8MwllRyXtGkXoR37ppwuUTdn9XeT31tBG+CF5mxY
	0fSMboy4FNjvqTk2nkPl1/upq3scP/kGwbXxvxS3Sv9NWxEJDMvzeyVSTiSMGl3uFiN378mdWZtcs
	1BPgFX2+z5OUAh5XY8v7oTdvNCptk60sPJ9WGe2DiikSX3I5YnH4+RstT/qRGAjyNa22uY3g4GMEJ
	Ifp36h1YTS9XNaHkBdVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6dB-0004NS-1E; Fri, 22 Nov 2019 10:57:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6av-0001z9-MW
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 10:55:25 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A811E2071F;
 Fri, 22 Nov 2019 10:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574420121;
 bh=YM+20L3XfJDfQla675w1xo0yGmW/B4bzJN2PdZ3ouaw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E9ix6s8f3NqbyS7S4l6gKFqzAlZ4ZIDuiI/5TKFFJY8aDb5ZD2flc5RO2/yW08Mop
 e6RMYmaPEIra9C9q8+4W/hRJ8XkxpYtTgU1/1YorMuMOGT5UywgVqQcQo9Lcwyda53
 g8/dPLwYxv1jtNbkj7S/cAFHsjvX1BdIJ6SAatTs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.14 079/122] kexec: Allocate decrypted control pages for
 kdump if SME is enabled
Date: Fri, 22 Nov 2019 11:28:52 +0100
Message-Id: <20191122100819.526924385@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122100722.177052205@linuxfoundation.org>
References: <20191122100722.177052205@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025521_779744_BF671172 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Tom Lendacky <thomas.lendacky@amd.com>,
 jroedel@suse.de, brijesh.singh@amd.com, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, tiwai@suse.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kexec@lists.infradead.org, stable@vger.kernel.org, mingo@redhat.com,
 baiyaowei@cmss.chinamobile.com, hpa@zytor.com, bhelgaas@google.com,
 tglx@linutronix.de, Borislav Petkov <bp@suse.de>, dyoung@redhat.com,
 akpm@linux-foundation.org, dan.j.williams@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Lianbo Jiang <lijiang@redhat.com>

[ Upstream commit 9cf38d5559e813cccdba8b44c82cc46ba48d0896 ]

When SME is enabled in the first kernel, it needs to allocate decrypted
pages for kdump because when the kdump kernel boots, these pages need to
be accessed decrypted in the initial boot stage, before SME is enabled.

 [ bp: clean up text. ]

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
Reviewed-by: Tom Lendacky <thomas.lendacky@amd.com>
Cc: kexec@lists.infradead.org
Cc: tglx@linutronix.de
Cc: mingo@redhat.com
Cc: hpa@zytor.com
Cc: akpm@linux-foundation.org
Cc: dan.j.williams@intel.com
Cc: bhelgaas@google.com
Cc: baiyaowei@cmss.chinamobile.com
Cc: tiwai@suse.de
Cc: brijesh.singh@amd.com
Cc: dyoung@redhat.com
Cc: bhe@redhat.com
Cc: jroedel@suse.de
Link: https://lkml.kernel.org/r/20180930031033.22110-3-lijiang@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/kexec_core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index 8f15665ab6167..27cf24e285e0c 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -473,6 +473,10 @@ static struct page *kimage_alloc_crash_control_pages(struct kimage *image,
 		}
 	}
 
+	/* Ensure that these pages are decrypted if SME is enabled. */
+	if (pages)
+		arch_kexec_post_alloc_pages(page_address(pages), 1 << order, 0);
+
 	return pages;
 }
 
@@ -867,6 +871,7 @@ static int kimage_load_crash_segment(struct kimage *image,
 			result  = -ENOMEM;
 			goto out;
 		}
+		arch_kexec_post_alloc_pages(page_address(page), 1, 0);
 		ptr = kmap(page);
 		ptr += maddr & ~PAGE_MASK;
 		mchunk = min_t(size_t, mbytes,
@@ -884,6 +889,7 @@ static int kimage_load_crash_segment(struct kimage *image,
 			result = copy_from_user(ptr, buf, uchunk);
 		kexec_flush_icache_page(page);
 		kunmap(page);
+		arch_kexec_pre_free_pages(page_address(page), 1);
 		if (result) {
 			result = -EFAULT;
 			goto out;
-- 
2.20.1




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
