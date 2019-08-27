Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAC39DBCC
	for <lists+kexec@lfdr.de>; Tue, 27 Aug 2019 05:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LxCRczPkkB9jXdKrDhGmZ/2l7TjuZZT5M981sVwWm9I=; b=eQwLs1eTm5iNGV/gIDKRloa3bJ
	DGCtJTYBXEWcwF3riIJITrFiWUwlKXFLKRRug0E03IKRgs0GywwHx3F4baCH7RqyJBTwcrtWv+h8z
	udjcD+KVXSNRZqwbRZKstJSg3a+IsSxt4XVPr1kxHFcKjf4V2tWDJD+kpiZ/jXIm8RSWh4TcnMfAH
	qKo2kB62K5hfb7H9QxiwO3pw4hYMccwAzAxhidekodW1HWsekcgg05upPdtqE47yE/7FIQdSh6nx6
	JegHxnhdtg2sTnkWoOD8pDjdUal20/u3/AoGLPnYI7saD/Bh7n5A1AqYwmzbr6JfE4rWcNA8Re3d6
	72qujsfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Rl5-0006bG-RC; Tue, 27 Aug 2019 03:02:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Rl3-0006aD-1Q
 for kexec@lists.infradead.org; Tue, 27 Aug 2019 03:02:58 +0000
Received: by mail-pl1-x643.google.com with SMTP id bj8so11020642plb.4
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 20:02:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+678Xv5ru8PcQuczzEyKD2Pw0q4hQ1y6t38q+jHCNZs=;
 b=IYjfYeg2SY10CgAnFjQidvjw8uO4HIpNGr+sWsaHzTVz8BzWkE+tl0xH6Bf6wWnfmY
 hJ3Y020hTO33N2n+CK9nuT/0LV2HZdFq8fb2pU04S8jTsSeXo60elpa9fcnjLxPsSsPC
 uRLPqxUiJw6/bqGhiLMXW722bfYpwCmfWwcH8xiWmlwLEVZR23sXDGLgW2GDWI17LCb5
 ydBHcw/CvX03GwJSlLYvL5dpsoOi4/+h3oKgCLN4rrd9J05jkoIoF0v3Vrdv+pySvv2O
 0SeqN+kaN3LOhIz6gxiTzAZWfvIfkVz+zksM5a7XW2O5S+f9kQ6MxPS+HZ63ohbP3RmF
 fH6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+678Xv5ru8PcQuczzEyKD2Pw0q4hQ1y6t38q+jHCNZs=;
 b=XLBr1LYzxWKZMDESFjjMVFAWkAiILOty8kVwXLzZ02OSs80N9749X5my/HMhDQEhdb
 t3+t16H5FFb4glu5KF9vLL9rFAMFZNN4Vd5JlnRiWdBQOCUiCdI+CHOb8dlsnnsN7LHF
 XGGrgb/KrVVcNHgmKYKCZmZ8VaGJYc354ZPxId1mgWr1jVttXl9vwn6C1tn5/2b3Um9P
 dgKsSnab/WiNKvLVX3seCW8vfvx4gjBed4HEnI/YG8/N23Rh5GETxV6AIZiTgqdsnBf+
 Ow/FKzXylMz6BomOJa9v7XB7Fp/yyXEdU0djZRMyOnNzJ1qwOd7QExuPhp2izMpuYCZo
 7HjQ==
X-Gm-Message-State: APjAAAXnaGpqdUoeWFCiwnuZWZ1G0Dj6U+Al148tcgx8AncDU6dAzEw8
 Kjqprk1DDUiOkPhOgpzIfA==
X-Google-Smtp-Source: APXvYqxy5aax1zCxTBqsR8zHF1JVOxQUspv/kSUvTRdHfceCX0u+jQsLz1i41dOfUEMbkoqp6qcK2g==
X-Received: by 2002:a17:902:6b88:: with SMTP id
 p8mr20470650plk.95.1566874976285; 
 Mon, 26 Aug 2019 20:02:56 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s24sm11696535pgm.3.2019.08.26.20.02.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 20:02:55 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCHv2 1/4] x86/apic: correct the ENO in generic_processor_info()
Date: Tue, 27 Aug 2019 11:02:20 +0800
Message-Id: <1566874943-4449-2-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
References: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_200257_082166_1C262EE9 
X-CRM114-Status: GOOD (  13.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jacob Pan <jacob.jun.pan@linux.intel.com>, Baoquan He <bhe@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, kexec@lists.infradead.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Michal Hocko <mhocko@suse.com>,
 linux-kernel@vger.kernel.org, Pingfan Liu <kernelfans@gmail.com>,
 Daniel Drake <drake@endlessm.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Masami Hiramatsu <mhiramat@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Qian Cai <cai@lca.pw>,
 Dave Young <dyoung@redhat.com>, Vlastimil Babka <vbabka@suse.cz>,
 Eric Biederman <ebiederm@xmission.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When capped by nr_cpu_ids, the current code return -EINVAL or -ENODEV. It
is better to return -EINVAL for both cases.

Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>
To: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H. Peter Anvin" <hpa@zytor.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Peter Zijlstra <peterz@infradead.org>
To: x86@kernel.org
Cc: Masami Hiramatsu <mhiramat@kernel.org>
Cc: Qian Cai <cai@lca.pw>
Cc: Vlastimil Babka <vbabka@suse.cz>
Cc: Daniel Drake <drake@endlessm.com>
Cc: Jacob Pan <jacob.jun.pan@linux.intel.com>
Cc: Michal Hocko <mhocko@suse.com>
Cc: Eric Biederman <ebiederm@xmission.com>
Cc: linux-kernel@vger.kernel.org
Cc: Dave Young <dyoung@redhat.com>
Cc: Baoquan He <bhe@redhat.com>
Cc: kexec@lists.infradead.org
---
 arch/x86/kernel/apic/apic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/x86/kernel/apic/apic.c b/arch/x86/kernel/apic/apic.c
index f529136..f4f603a 100644
--- a/arch/x86/kernel/apic/apic.c
+++ b/arch/x86/kernel/apic/apic.c
@@ -2346,7 +2346,7 @@ int generic_processor_info(int apicid, int version)
 			"  Processor %d/0x%x ignored.\n", max, thiscpu, apicid);
 
 		disabled_cpus++;
-		return -ENODEV;
+		return -EINVAL;
 	}
 
 	if (num_processors >= nr_cpu_ids) {
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
