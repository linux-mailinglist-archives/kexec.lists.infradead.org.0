Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2F6814A1
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 11:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GOtj9QtdamXpcIH+rrURvCCfvr6bRggnUDRPYhf20+w=; b=q1+
	kD2iZzfOKQ/AlOTDs7/LrZzxazhQZzNx39cq3JdKGPMOV5GCZyROVogEFRM6aOYIlEJSvNJ9D5a2x
	Btp9lrjZw/DLaoDtOEsaSoLf8O11fkp7K/e6wgUuXDVEekHHsiLo7c7gZvbX/Ph0olGRkFrReHvKu
	T3ALjusV6Zfhl+OHa+NtX74upglBTcbpTyM3WAH30NZ8v/LXG0KVukgFtukHBIEFUgXPh0FCADn80
	r2x93w1MHJg3V2uRrCHixUHfjlhK195QrMZ+r9u6L8kgBuQhfH7JHx67mTUL19+GBcCpo84WWGEja
	24/mTXfKVLjtYUbWEH2Rm4heayrnm6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYrQ-0008DF-UP; Mon, 05 Aug 2019 09:00:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYqC-0006E4-0X
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 08:59:42 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so36186171plr.11
 for <kexec@lists.infradead.org>; Mon, 05 Aug 2019 01:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=3ZX7vMu/4NbD1ABzKMngh4re81+FpB5xERWJgyHbVpA=;
 b=qxUvV3QxBX8svEaYjw4uGCTkZAUZViNO79y/2mxpYwa5a4wMBOziU41n3j9Zd++oN3
 0xN8Y+2fVxlsQBEsilV0bbIyJumft7XBTf9ynzyJVF9R8dUxu5yiArMBNg5zF/D1RmBC
 Nt4kxOwUDXZlVDtyDG5cXktlF4rgBJGqV07rnIyxoIHYBRa3eCcMxOPLurY4HlLNMn1+
 cV6z5ZuDlPUENxt8OeYwMYnuZpUIjqttP5PvlNZuNLfuGjrkpv5kNjeLM7v37oMBQcUp
 8NpS8j41QbWgIPwAADCMiBvCUcnOce1Cr/knnB6EjNrutyNDsHJZXaOFTIr3cAMS9hXj
 CNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=3ZX7vMu/4NbD1ABzKMngh4re81+FpB5xERWJgyHbVpA=;
 b=Uk03aKHbbYIwtbirqkAiwELq4uRo9bBGaLeP8LkmAFQh2immtvZKFRwreXTVedc9+k
 f+1wCmeWKAhV97hMsZo02+zf28EokdbMqDbPT2zYkhTG/1N4jCqCtdFbGvpUQUqgUkl6
 R/4Impx2TLokszXbzRUaEojwNhyPsAJ8ATk0KRn2J/XXN+9Jk4sJHuYqLZVloJ60BaJC
 nmvCn1Gy9g+AMWDrrcdFOycuQkKIgtQ4I002dhwiOzAHLGJZlPxU3ovO+G5Ov0D3HuPJ
 59NkKIAgQqlf3NtLGXUAYFvhBcHPq+pbwWxzpbL3zut6JpPXTmd5R9DPDd7MWATKBaQV
 eJsA==
X-Gm-Message-State: APjAAAXj8PlQfwArGXE0Ut1tidWtGo0MHKfB1k51AvlQ+JG7Ny1k9pmr
 vScvEeii0v0eOUk4RTHV/A==
X-Google-Smtp-Source: APXvYqy0sG3lsYbbHwd1UmpEYgnFYUP/xKZqbbxvjZkLLOV/uTzAibj1YOk5b2sAi60Lw22BcAeDQw==
X-Received: by 2002:a17:902:7d8b:: with SMTP id
 a11mr89435992plm.306.1564995578334; 
 Mon, 05 Aug 2019 01:59:38 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v184sm82428375pfb.82.2019.08.05.01.59.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 01:59:37 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCH 0/4] x86/mce: protect nr_cpus from rebooting by broadcast mce
Date: Mon,  5 Aug 2019 16:58:55 +0800
Message-Id: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015940_374201_E1162955 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

This series include two related groups:
[1-3/4]: protect nr_cpus from rebooting by broadcast mce
[4/4]: improve "kexec -l" robustness against broadcast mce

When I tried to fix [1], Thomas raised concern about the nr_cpus' vulnerability
to unexpected rebooting by broadcast mce. After analysis, I think only the
following first case suffers from the rebooting by broadcast mce. [1-3/4] aims
to fix that issue.

*** Back ground ***

On x86 it's required to have all logical CPUs set CR4.MCE=1. Otherwise, a
broadcast MCE observing CR4.MCE=0b on any core will shutdown the machine.

The option 'nosmt' has already complied with the above rule by Thomas's patch.
For detail, refer to 506a66f3748 (Revert "x86/apic: Ignore secondary threads if
nosmt=force")

But for nr_cpus option, the exposure to broadcast MCE is a little complicated,
and can be categorized into three cases.

-1. boot up by BIOS. Since no one set CR4.MCE=1, nr_cpus risks rebooting by
broadcast MCE.

-2. boot up by "kexec -p nr_cpus=".  Since the 1st kernel has all cpus'
CR4.MCE=1 set before kexec -p, nr_cpus is free of rebooting by broadcast MCE.
Furthermore, the crashed kernel's wreckage, including page table and text, is
not touched by capture kernel. Hence if MCE event happens on capped cpu,
do_machine_check->__mc_check_crashing_cpu() runs smoothly and returns
immediately, the capped cpu is still pinned on "halt".

-3. boot up by "kexec -l nr_cpus=". As "kexec -p", it is free of rebooting by
broadcast MCE. But the 1st kernel's wreckage is discarded and changed.  when
capped cpus execute do_machine_check(), they may crack the new kernel.  But
this is not related with broadcast MCE, and need an extra fix.

*** Solution ***
"nr_cpus" can not follow the same way as "nosmt".  Because nr_cpus limits the
allocation of percpu area and some other kthread memory, which is critical to
cpu hotplug framework.  Instead, developing a dedicated SIPI callback
make_capped_cpu_stable() for capped cpu, which does not lean on percpu area to
work.

[1]: https://lkml.org/lkml/2019/7/5/3

To: Gleixner <tglx@linutronix.de>
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
Pingfan Liu (4):
  x86/apic: correct the ENO in generic_processor_info()
  x86/apic: record capped cpu in generic_processor_info()
  x86/smp: send capped cpus to a stable state when smp_init()
  x86/smp: disallow MCE handler on rebooting AP

 arch/x86/include/asm/apic.h  |  1 +
 arch/x86/include/asm/smp.h   |  3 ++
 arch/x86/kernel/apic/apic.c  | 23 ++++++++----
 arch/x86/kernel/cpu/common.c |  7 ++++
 arch/x86/kernel/smp.c        |  8 +++++
 arch/x86/kernel/smpboot.c    | 83 ++++++++++++++++++++++++++++++++++++++++++++
 kernel/smp.c                 |  6 ++++
 7 files changed, 124 insertions(+), 7 deletions(-)

-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
