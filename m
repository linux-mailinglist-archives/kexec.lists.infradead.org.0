Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BAE0DA8EA
	for <lists+kexec@lfdr.de>; Thu, 17 Oct 2019 11:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oBuo9pkZ6KdFPmhYLGXHv+8un5REybeHfa9+GfowPeM=; b=XWDOsMY2IflYiuf3NGiR/lsBMz
	Z66ONacwYJnhcWUnqYQoPvohNB31ZGsz7i7hceo6BmxLM09B1mrOaHXZkxjqWYJGqWIFuoxQUWNOB
	UNUdNHtIsAIdLrSe+bCM29Of6KOU4vrK5vhowJ0tS89ycUZa5hxEyIcrBCXFZsWomoYu//TZRz/Cr
	6/eos8E6s18RPr35RKYbDMjfgr39/kD3m99T/mIBg9IIev9QjdMIxEZRrAMxNjKmYRAqTNWy+qLLT
	AODjypYCnq8+OXM1Yk/esXc0fzA170uZU12Br1rk9MIBGNp2b3hgDKUBkWinkTZMzI2wdLgdGICni
	UQtL6Qng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2L0-0003Lv-JP; Thu, 17 Oct 2019 09:44:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2Kw-0003Kb-NR
 for kexec@lists.infradead.org; Thu, 17 Oct 2019 09:44:51 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5DDC5C0021D7;
 Thu, 17 Oct 2019 09:44:50 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-12-16.pek2.redhat.com
 [10.72.12.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4668519C68;
 Thu, 17 Oct 2019 09:44:30 +0000 (UTC)
From: Lianbo Jiang <lijiang@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/3 v4] x86/kdump: remove the unused crash_copy_backup_region()
Date: Thu, 17 Oct 2019 17:43:46 +0800
Message-Id: <20191017094347.20327-3-lijiang@redhat.com>
In-Reply-To: <20191017094347.20327-1-lijiang@redhat.com>
References: <20191017094347.20327-1-lijiang@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Thu, 17 Oct 2019 09:44:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024450_784614_8D60A3C7 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, dhowells@redhat.com, mingo@redhat.com, bp@alien8.de,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 vgoyal@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

The crash_copy_backup_region() has never been used, so clean
up the redundant code.

Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
---
 arch/x86/include/asm/crash.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/x86/include/asm/crash.h b/arch/x86/include/asm/crash.h
index 0acf5ee45a21..089b2850f9d1 100644
--- a/arch/x86/include/asm/crash.h
+++ b/arch/x86/include/asm/crash.h
@@ -3,7 +3,6 @@
 #define _ASM_X86_CRASH_H
 
 int crash_load_segments(struct kimage *image);
-int crash_copy_backup_region(struct kimage *image);
 int crash_setup_memmap_entries(struct kimage *image,
 		struct boot_params *params);
 void crash_smp_send_stop(void);
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
