Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9989DBCA
	for <lists+kexec@lfdr.de>; Tue, 27 Aug 2019 05:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=woArh3XZj/l4pXXC/jjDxqqCoBGyldruaQOMeZK90Dw=; b=TZW
	8DsDqS001pqgm1fYPcs0tbg66OL3G9TrueC19sbHEVcNTOgufyvOxvtA3mo6mAOsefzSR9preQ9tj
	ZaHi6RXXGyC6zKS0cjPmGx1v7TzdMLm81OyPJq9SVHiwL/FQI5jvDSwJaOMQE9Ni1L2/4HljTNJHJ
	bjFaQlgvxb3uWDRgGHuboGQG4Y5jBNmdsxIsk82Tic6lhXOUNCBG7Gjp/3QlsIxZvb+DxqiU9HYM6
	3Yr8rUGsDPirkp39+yDNYXXF4NFF8pI9O609DlPC3g9UNsNPWobZbzM3ou2xDrDB8aaagAmaScxfj
	L70hlcc75LZI8y4jNj6PxRNXocyP67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2Rkz-0006Z2-Tv; Tue, 27 Aug 2019 03:02:53 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Rkw-0006YJ-M4
 for kexec@lists.infradead.org; Tue, 27 Aug 2019 03:02:52 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so11044143plr.1
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 20:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=ftoGiq3xK+pQxUGAJR7kxnUXFgdZwJFU6Ox1JMGKAXw=;
 b=H0ygqP0vpOBEcqE1x8oCLF2z0FRkylvUL/nDmV/LzbdyTYXJor/eeeYEQZ8LAprEN5
 E/rRAxQYnQCXzI9V3dZl/AQH8n8PwdSR6Kvgz7MAmP7rNhrKEUp+Qwg6RppyuP2WOPfR
 lgSv1tmDLjEKDl56baL975w3ttShcxiBbV65H9Y163qlkUdE9R/AtVVzMACC5UOjgoJB
 ShczzaFDLHN+yS0Jna6PtHcIRysXNFVI9D6osQ49g9/FYj6v2zzKik1JQU6iLzmTwWYL
 aPYch0r6nso2LHuQbldKEMph1Mpriqy/dkxpwOZ7lep7+ppF0HfilUestOHPVmjw/uku
 BQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ftoGiq3xK+pQxUGAJR7kxnUXFgdZwJFU6Ox1JMGKAXw=;
 b=j7WCGFsIc0sg1tTNDJ7ryH5n9vIUMvYm7bQgPfinXjpoJEaHzWIIQRxKYGoEuBdGIK
 fjY6dVtCm0nZ61+evAtzGE1gQgrY3g6FD7ZBX8MqepTl2SsYDPy+/PtN7XAX6xWrZP6F
 IQiRN8oO08znfej5wJRGbqs4cEa2rAjjJWU2aE5ErcjEztnrQ02IYRZC+yK+0q/NvelO
 2DGBSYVHDNTI2uyGS4TEZjDtLmYxy7SKCou7QVAOCxrrEvwtGYct/eA89nE3CB/w8byw
 +ULejykRVVQwjQ975+1gSfulLyJeDDEvjhOiazMbuJbSKVjlF+D4pRvnOv2k4RazuXTl
 IpFw==
X-Gm-Message-State: APjAAAVUE6nc4uu5ya+/G04s7/utgDpsDHW1hNtEuUMOyukOuNLrcpMG
 k0/fGs/GvDrBoZWgy49MrQ==
X-Google-Smtp-Source: APXvYqwrwu7Afilzmnk9LI5uLA8Jdsl36xS0kpWP1Xm839jwbTCh2QYc5W1rWMov4fdEOfngS+Fyjg==
X-Received: by 2002:a17:902:6842:: with SMTP id
 f2mr22747658pln.39.1566874968466; 
 Mon, 26 Aug 2019 20:02:48 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s24sm11696535pgm.3.2019.08.26.20.02.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 20:02:47 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCHv2 0/4] x86/mce: protect nr_cpus from rebooting by broadcast mce
Date: Tue, 27 Aug 2019 11:02:19 +0800
Message-Id: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_200250_772368_AAC479A4 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

v1 -> v2: fix compile warning and error on x86_32


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
