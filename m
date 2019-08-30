Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C02A3377
	for <lists+kexec@lfdr.de>; Fri, 30 Aug 2019 11:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nix/MfnawiyI0oDZCkdo3vxqzx1af1wh/MNJjf0kSvw=; b=DspHW3ixq7GvAy
	qccDs9TwI7tMH78PIZwimtf5OxhTfBpru1b+DgSczLGuxHMu12aixnpQCNhSMd9/bzDF5DBdQElno
	txsnNl75st7BjNYYETMqnzZA7xZocstIZBPBvO1MBdm1Tc5lYrb7kvpaVoBl3b/XpE+qb/Tf6zIXA
	9n+6Phmja03kSxLr5UI64nA/rIVN5x4mwKUHDcfMzrml57ARwB2nfbYG8KVPcvtPvz5Q8xTuRTbnh
	r7aOCau7Upvzq0+w90YwX+vMY0xYvLvGHFBYxY+dXTcct5MNYhLC/4W8tgKofwCUOd91zH0zWPliB
	DwoX6FhqjkjbHAj6SN6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cyD-0005be-Cj; Fri, 30 Aug 2019 09:13:25 +0000
Received: from mx3.molgen.mpg.de ([141.14.17.11] helo=mx1.molgen.mpg.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cy9-0005bL-0X
 for kexec@lists.infradead.org; Fri, 30 Aug 2019 09:13:22 +0000
Received: from avaritia.molgen.mpg.de (avaritia.molgen.mpg.de [141.14.26.2])
 by mx.molgen.mpg.de (Postfix) with ESMTP id 46DC42022572C;
 Fri, 30 Aug 2019 11:13:06 +0200 (CEST)
From: Donald Buczek <buczek@molgen.mpg.de>
To: horms@verge.net.au, kexec@lists.infradead.org,
 Bhupesh Sharma <bhsharma@redhat.com>, buczek@molgen.mpg.de
Subject: [PATCH] x86: Fix PAGE_OFFSET for kernels since 4.20
Date: Fri, 30 Aug 2019 11:12:58 +0200
Message-Id: <20190830091258.51133-1-buczek@molgen.mpg.de>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_021321_212907_A40BDE7B 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.14.17.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Linux kernel commit d52888aa2753 ("x86/mm: Move LDT remap out of KASLR
region on 5-level paging") changed the base of the direct mapping
from 0xffff880000000000 to 0xffff888000000000. This was merged
into v4.20-rc2.

Update to new address accordingly.
---
 kexec/arch/i386/crashdump-x86.c | 2 ++
 kexec/arch/i386/crashdump-x86.h | 3 ++-
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/kexec/arch/i386/crashdump-x86.c b/kexec/arch/i386/crashdump-x86.c
index a2aea31..c79791f 100644
--- a/kexec/arch/i386/crashdump-x86.c
+++ b/kexec/arch/i386/crashdump-x86.c
@@ -61,6 +61,8 @@ static int get_kernel_page_offset(struct kexec_info *UNUSED(info),
 
 		if (kv < KERNEL_VERSION(2, 6, 27))
 			elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_2_6_27;
+		else if (kv < KERNEL_VERSION(4, 20, 0))
+			elf_info->page_offset = X86_64_PAGE_OFFSET_PRE_4_20_0;
 		else
 			elf_info->page_offset = X86_64_PAGE_OFFSET;
 	}
diff --git a/kexec/arch/i386/crashdump-x86.h b/kexec/arch/i386/crashdump-x86.h
index ddee19f..e4fdc82 100644
--- a/kexec/arch/i386/crashdump-x86.h
+++ b/kexec/arch/i386/crashdump-x86.h
@@ -13,7 +13,8 @@ int load_crashdump_segments(struct kexec_info *info, char *mod_cmdline,
 
 #define X86_64__START_KERNEL_map	0xffffffff80000000ULL
 #define X86_64_PAGE_OFFSET_PRE_2_6_27	0xffff810000000000ULL
-#define X86_64_PAGE_OFFSET		0xffff880000000000ULL
+#define X86_64_PAGE_OFFSET_PRE_4_20_0	0xffff880000000000ULL
+#define X86_64_PAGE_OFFSET	0xffff888000000000ULL
 
 #define X86_64_MAXMEM        		0x3fffffffffffUL
 
-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
