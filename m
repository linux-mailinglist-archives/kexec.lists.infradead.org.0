Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B9C8572D
	for <lists+kexec@lfdr.de>; Thu,  8 Aug 2019 02:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEg+DJt1wp8YfJh4Aq7aDZgkfcfaSf4f5usW4l2aRb0=; b=Hcz2HF3AjOKWk3
	XxzWAZyCRm/5Dy7AsEKG9vaciEdjN/YU8/sesMUN1XrdAKVm5wZpXLVELmL1RHP4EZiBLdX0YeH07
	XqLIJKBxxXV7cvQZmC+JYXwSe0ECXGBKZnL1IgJBTVvJImiW5RYLbXllNx/G9JSoNm4GHoG6VpkrG
	pBr4oC08G1Vazs6KpU2n/xRdakl0IpOgS2Sz3yhR2d3YjeLNJMnD+xySJC7dUE//ia7d8cmlXtPcq
	juShssrkj0sqL3Nqukn9TfvdCmgz0a5GbFHiP0flpEOAxJoxYdgC0l8UmefQ5yvcEdZtzFjSjtikk
	8mBTL4fdUpodzs/gV+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvW8U-0003je-MG; Thu, 08 Aug 2019 00:18:30 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvW8R-0003ir-4K
 for kexec@lists.infradead.org; Thu, 08 Aug 2019 00:18:28 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 17:18:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="349995877"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 07 Aug 2019 17:18:22 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hvW8L-000Gdp-Ma; Thu, 08 Aug 2019 08:18:21 +0800
Date: Thu, 8 Aug 2019 08:17:44 +0800
From: kbuild test robot <lkp@intel.com>
To: Pingfan Liu <kernelfans@gmail.com>
Subject: [RFC PATCH] x86/apic: __cpu_capped_mask can be static
Message-ID: <20190808001744.beecoooj27rph2ky@48261080c7f1>
References: <1564995539-29609-3-git-send-email-kernelfans@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1564995539-29609-3-git-send-email-kernelfans@gmail.com>
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_171827_215310_562816EE 
X-CRM114-Status: GOOD (  14.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Eric Biederman <ebiederm@xmission.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Baoquan He <bhe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, kexec@lists.infradead.org,
 Jacob Pan <jacob.jun.pan@linux.intel.com>, x86@kernel.org,
 Michal Hocko <mhocko@suse.com>, linux-kernel@vger.kernel.org,
 Pingfan Liu <kernelfans@gmail.com>, Daniel Drake <drake@endlessm.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 kbuild-all@01.org, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Qian Cai <cai@lca.pw>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Vlastimil Babka <vbabka@suse.cz>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Fixes: 294b1ea98966 ("x86/apic: record capped cpu in generic_processor_info()")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 common.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
index 4d87df5be9124..b95721e7376d4 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -67,7 +67,7 @@ cpumask_var_t cpu_initialized_mask;
 cpumask_var_t cpu_callout_mask;
 cpumask_var_t cpu_callin_mask;
 /* size of NR_CPUS is required. */
-struct cpumask __cpu_capped_mask __initdata;
+static struct cpumask __cpu_capped_mask __initdata;
 struct cpumask *cpu_capped_mask;
 
 /* representing cpus for which sibling maps can be computed */

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
