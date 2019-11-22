Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859C1106D1A
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 11:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHETVehdClSie23Ba0NFdQaphvrbDD82ZtifL/4UCnE=; b=obtzmsM/Z39g8D
	6kTa7w0L0/tlbqvLCRDd/cVGVk9XWMLEdmahieX/VM9AQ3jDVhX0JHLVd1Ud7TXjWlvqiEHe1ZXI/
	TUAvrkJInuB04jab8n+gx/m1WRZv5DN2REEK7UrBkC1p5nszp6epxdCyD0Fa+KDlTTWd/Xt7/cSZc
	fjOqzr4mr7lWVDtXBiOShrUCC4Vl3rjm0t4J0y+a3RUS+3M342WI5CkBom/EjFgTqTJ6J+H3PfNhn
	aK48jv/AIC5WWkZ9J98yvMprQhz134uVbt0IXyR2Sre4KRgdvnohMEc/GmRCmJCX6eXeM5R8JzfwC
	Sgne2PZL8EmSw5Y5X6SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6d9-0004Kz-VW; Fri, 22 Nov 2019 10:57:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6Zw-0008Er-LD
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 10:54:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 601EF2070E;
 Fri, 22 Nov 2019 10:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574420059;
 bh=esQHSeTVM91ePA4FJLhiHKk/DtarxUAqDEScTNlyDvw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HlUfFUAGE9n9Gbb94WhByzaXup4OMD0deYMdsJGCI/nlNvBoaowL8g4237bpwXFtw
 8AgHUGcCDbtkKPPZjfgOJ9i6suJRZ9RSE0zfcscqC4PbsFOyAar2epX2V6R7bx3uOf
 4j1NcrVHnIAZRGT/kB6KsgSP6o4K+zfImrVOmD7A=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.14 102/122] x86/kexec: Correct KEXEC_BACKUP_SRC_END
 off-by-one error
Date: Fri, 22 Nov 2019 11:29:15 +0100
Message-Id: <20191122100831.655547656@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191122100722.177052205@linuxfoundation.org>
References: <20191122100722.177052205@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_025420_771661_0A8FE136 
X-CRM114-Status: GOOD (  12.09  )
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
 Brijesh Singh <brijesh.singh@amd.com>, Lianbo Jiang <lijiang@redhat.com>,
 bhe@redhat.com, Takashi Iwai <tiwai@suse.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dan.j.williams@intel.com,
 stable@vger.kernel.org, kexec@lists.infradead.org,
 Ingo Molnar <mingo@redhat.com>, baiyaowei@cmss.chinamobile.com,
 "H. Peter Anvin" <hpa@zytor.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 dyoung@redhat.com, Thomas Gleixner <tglx@linutronix.de>,
 Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Bjorn Helgaas <bhelgaas@google.com>

[ Upstream commit 51fbf14f2528a8c6401290e37f1c893a2412f1d3 ]

The only use of KEXEC_BACKUP_SRC_END is as an argument to
walk_system_ram_res():

  int crash_load_segments(struct kimage *image)
  {
    ...
    walk_system_ram_res(KEXEC_BACKUP_SRC_START, KEXEC_BACKUP_SRC_END,
                        image, determine_backup_region);

walk_system_ram_res() expects "start, end" arguments that are inclusive,
i.e., the range to be walked includes both the start and end addresses.

KEXEC_BACKUP_SRC_END was previously defined as (640 * 1024UL), which is the
first address *past* the desired 0-640KB range.

Define KEXEC_BACKUP_SRC_END as (640 * 1024UL - 1) so the KEXEC_BACKUP_SRC
region is [0-0x9ffff], not [0-0xa0000].

Fixes: dd5f726076cc ("kexec: support for kexec on panic using new system call")
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Borislav Petkov <bp@suse.de>
CC: "H. Peter Anvin" <hpa@zytor.com>
CC: Andrew Morton <akpm@linux-foundation.org>
CC: Brijesh Singh <brijesh.singh@amd.com>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: Ingo Molnar <mingo@redhat.com>
CC: Lianbo Jiang <lijiang@redhat.com>
CC: Takashi Iwai <tiwai@suse.de>
CC: Thomas Gleixner <tglx@linutronix.de>
CC: Tom Lendacky <thomas.lendacky@amd.com>
CC: Vivek Goyal <vgoyal@redhat.com>
CC: baiyaowei@cmss.chinamobile.com
CC: bhe@redhat.com
CC: dan.j.williams@intel.com
CC: dyoung@redhat.com
CC: kexec@lists.infradead.org
Link: http://lkml.kernel.org/r/153805811578.1157.6948388946904655969.stgit@bhelgaas-glaptop.roam.corp.google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/include/asm/kexec.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/include/asm/kexec.h b/arch/x86/include/asm/kexec.h
index f327236f0fa71..5125fca472bb0 100644
--- a/arch/x86/include/asm/kexec.h
+++ b/arch/x86/include/asm/kexec.h
@@ -67,7 +67,7 @@ struct kimage;
 
 /* Memory to backup during crash kdump */
 #define KEXEC_BACKUP_SRC_START	(0UL)
-#define KEXEC_BACKUP_SRC_END	(640 * 1024UL)	/* 640K */
+#define KEXEC_BACKUP_SRC_END	(640 * 1024UL - 1)	/* 640K */
 
 /*
  * CPU does not save ss and sp on stack if execution is already
-- 
2.20.1




_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
