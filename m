Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D774C814A3
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 11:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x4lX0FVZ60y7njrwL/UTLPQM0Jv09oC+7L/OnLd5oLc=; b=iUdwj7cF4m1L0hJsENba2BsJrE
	s7t15rL7/UydxUBiUD+7BunfuxLdFj4fnT3azwkTCaBjsZbBt4wZTiJ6cmQJse3kqhGY/obr3QnEZ
	vCbETYmGT1KyCfKnBwGCqfyYvEzMnCsJpBVjm5U0v/WgDhPGWyy3paklG/RswEqHR68enEKA8V+wB
	wycKV1ISFKwn+5O9nhW1QSmeZCpvxvpOGNn284ReIL7pZOfYlPL7qeiHOYwRxAe2XJC1tsbtdz1jN
	9M1llOaTOsY3Wzl2WATi5VKt3Bt7br0qHn7173XMMea8f8HNoiJGhza/xu8xpl+mVsnvpibViDUG2
	/Eu+ndGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYrZ-0008Jt-Sg; Mon, 05 Aug 2019 09:01:06 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYqQ-0006Rc-4m
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 08:59:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id p184so39296742pfp.7
 for <kexec@lists.infradead.org>; Mon, 05 Aug 2019 01:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FIbiHcGDYSov0UE7VA5uO1KbDNgvOwrKf/S6d4sgUvg=;
 b=EDZTk6FnPwJnYHzVY2dB6l0getqsLnh2GZ70TOet6d1NN2FYg19k31wxZpmVhbRZOI
 OmmLeqAxuSFO2qg8o1gRqMoQHjRH1oL3WLUvTsIInFb+tFJBPhg7aww5pW5UR+tGIIrH
 Ti7W2MfJmUfw84YYcaLBHWFjgwPDjmKpU9t8gwKnE+vmQ+FMzEfbfLpuxIxWtBYTW6S8
 loMM9VHYGN2EnX6cU7IAa6PW80sSdWwGlaR2KXZvoL2g/OeHgADcZm7CuH1EHavNLYaq
 73cssw1P7SLpKmsMNMcv1tcq5sEblqYjlfhOaOXAqH3NLAtYJ8+0RLf0Z65LEa9ajLDY
 ++HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FIbiHcGDYSov0UE7VA5uO1KbDNgvOwrKf/S6d4sgUvg=;
 b=t7EPlTUqRcmWSJ5baYfwvvYGs1u6sGqWCo/TIif0cXBnyPLGom/z86S3eetwvvbqd7
 u/m+e8Jsbm8OlyyA7y/ThIPApyW/lcW2odxQsCtunxk0tommrWVtf+iFMFsKLq3muQDG
 m615FehOkZmLsuCSfNDPRmqZB4zNRB2GjDuRqZytFSQ+cC9AlIoa9QTbpmghoRE1p9wr
 3Be/vtMLUSGYf18LdPJc9Z1eeZwmBsed6UV9AoAiC0gOl05hiv4Aw+GoK3uKQDXiW5pK
 QjXaG3RXR7GymGzl9+SPNCfFeGwqtXKTZk/yQAOomoBAmPYp+r17XAyJf8+MYJwILegb
 Xlkw==
X-Gm-Message-State: APjAAAXGy/LnPQGJgq3SWNjprQ9oGyscSjfU83BtcyfdtmbXu8mrFj7X
 BI+sNZYERrh/hRUt8I01kw==
X-Google-Smtp-Source: APXvYqxzK4bknrl6FhPLuz+tGHkR7LApM/9uwty0Ya3DxRCeJxpJA+oBwJ1i6hIMnyWrfDw/J0Ki0w==
X-Received: by 2002:a63:6f81:: with SMTP id
 k123mr138151417pgc.12.1564995593254; 
 Mon, 05 Aug 2019 01:59:53 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v184sm82428375pfb.82.2019.08.05.01.59.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 01:59:52 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCH 2/4] x86/apic: record capped cpu in generic_processor_info()
Date: Mon,  5 Aug 2019 16:58:57 +0800
Message-Id: <1564995539-29609-3-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_015954_293445_C8FC0FF6 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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

No matter the cpu is capped by nr_cpus option, recording the mapping
between all cpus' id and apic id

Later this mapping will be used by BSP to sent SIPI to bring capped cpu to
stable state

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
 arch/x86/include/asm/smp.h   |  2 ++
 arch/x86/kernel/apic/apic.c  | 21 +++++++++++++++------
 arch/x86/kernel/cpu/common.c |  4 ++++
 3 files changed, 21 insertions(+), 6 deletions(-)

diff --git a/arch/x86/include/asm/smp.h b/arch/x86/include/asm/smp.h
index e1356a3..5f63399 100644
--- a/arch/x86/include/asm/smp.h
+++ b/arch/x86/include/asm/smp.h
@@ -196,5 +196,7 @@ extern void nmi_selftest(void);
 #define nmi_selftest() do { } while (0)
 #endif
 
+extern struct cpumask *cpu_capped_mask;
+
 #endif /* __ASSEMBLY__ */
 #endif /* _ASM_X86_SMP_H */
diff --git a/arch/x86/kernel/apic/apic.c b/arch/x86/kernel/apic/apic.c
index f4f603a..6a57bad3 100644
--- a/arch/x86/kernel/apic/apic.c
+++ b/arch/x86/kernel/apic/apic.c
@@ -2296,9 +2296,10 @@ static int allocate_logical_cpuid(int apicid)
 
 int generic_processor_info(int apicid, int version)
 {
-	int cpu, max = nr_cpu_ids;
+	int thiscpu, cpu, max = nr_cpu_ids;
 	bool boot_cpu_detected = physid_isset(boot_cpu_physical_apicid,
 				phys_cpu_present_map);
+	bool capped = false;
 
 	/*
 	 * boot_cpu_physical_apicid is designed to have the apicid
@@ -2322,7 +2323,7 @@ int generic_processor_info(int apicid, int version)
 	if (disabled_cpu_apicid != BAD_APICID &&
 	    disabled_cpu_apicid != read_apic_id() &&
 	    disabled_cpu_apicid == apicid) {
-		int thiscpu = num_processors + disabled_cpus;
+		thiscpu = num_processors + disabled_cpus;
 
 		pr_warning("APIC: Disabling requested cpu."
 			   " Processor %d/0x%x ignored.\n",
@@ -2338,7 +2339,7 @@ int generic_processor_info(int apicid, int version)
 	 */
 	if (!boot_cpu_detected && num_processors >= nr_cpu_ids - 1 &&
 	    apicid != boot_cpu_physical_apicid) {
-		int thiscpu = max + disabled_cpus - 1;
+		thiscpu = max + disabled_cpus - 1;
 
 		pr_warning(
 			"APIC: NR_CPUS/possible_cpus limit of %i almost"
@@ -2346,20 +2347,28 @@ int generic_processor_info(int apicid, int version)
 			"  Processor %d/0x%x ignored.\n", max, thiscpu, apicid);
 
 		disabled_cpus++;
-		return -EINVAL;
+		capped = true;
 	}
 
 	if (num_processors >= nr_cpu_ids) {
-		int thiscpu = max + disabled_cpus;
+		thiscpu = max + disabled_cpus;
 
 		pr_warning("APIC: NR_CPUS/possible_cpus limit of %i "
 			   "reached. Processor %d/0x%x ignored.\n",
 			   max, thiscpu, apicid);
 
 		disabled_cpus++;
-		return -EINVAL;
+		capped = true;
 	}
 
+	if (capped) {
+		/* record the mapping between capped cpu and apicid */
+		if (thiscpu < NR_CPUS && cpu_capped_mask != NULL) {
+			cpuid_to_apicid[thiscpu] = apicid;
+			cpumask_set_cpu(thiscpu, cpu_capped_mask);
+		}
+		return -EINVAL;
+	}
 	if (apicid == boot_cpu_physical_apicid) {
 		/*
 		 * x86_bios_cpu_apicid is required to have processors listed
diff --git a/arch/x86/kernel/cpu/common.c b/arch/x86/kernel/cpu/common.c
index 1147217..4d87df5 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -66,6 +66,9 @@ u32 elf_hwcap2 __read_mostly;
 cpumask_var_t cpu_initialized_mask;
 cpumask_var_t cpu_callout_mask;
 cpumask_var_t cpu_callin_mask;
+/* size of NR_CPUS is required. */
+struct cpumask __cpu_capped_mask __initdata;
+struct cpumask *cpu_capped_mask;
 
 /* representing cpus for which sibling maps can be computed */
 cpumask_var_t cpu_sibling_setup_mask;
@@ -84,6 +87,7 @@ void __init setup_cpu_local_masks(void)
 	alloc_bootmem_cpumask_var(&cpu_callin_mask);
 	alloc_bootmem_cpumask_var(&cpu_callout_mask);
 	alloc_bootmem_cpumask_var(&cpu_sibling_setup_mask);
+	cpu_capped_mask = &__cpu_capped_mask;
 }
 
 static void default_init(struct cpuinfo_x86 *c)
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
