Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC8E9DBD1
	for <lists+kexec@lfdr.de>; Tue, 27 Aug 2019 05:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jLeabWAX860dV+WdCXz3l2Ht2l/y0j7AKu49dkMlW0k=; b=R7gkAQIe9UsonRxOp1U6X/Rdwn
	6NPJQDwN3SoPhrDcWWecsvVX3bMA3iBYEw35/kbFuH+UUMliKguJ+RSkZdHZt95aPF4iRLKVzbQ/T
	cbxfw8qLIOfxfoWbHA1ii+Rd1OKRLdQbqMApdYgrC7NG8blh6TDKEre8Oy78Y5Ks1hv6nS+uWK++y
	KttQIO43xJvRgPbGqRaXtTk7GiAfsYGHUiynWfaxFQBTS3uShODm6hYKPiqamAaMYbgE2BwOQN9pn
	aeZt4FyUMgtVYNIvrhxfOlu3nEj1VzePQfJctAYepbSLkxBUjRSDRl09vv+mgs9r0oIx8OywSMhcy
	76otbOwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2RlD-0006et-Rv; Tue, 27 Aug 2019 03:03:07 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2RlB-0006e3-0c
 for kexec@lists.infradead.org; Tue, 27 Aug 2019 03:03:06 +0000
Received: by mail-pg1-x541.google.com with SMTP id d1so11779433pgp.4
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 20:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=skmsHZOHc0GUvyBJg6E9lWxbDB6kRwoBkgWBhnFqhKs=;
 b=Ck9vOoT9JhqS3AHBlUZ9u9RSyK9vbHUCmGHooclQYjszZjwRFyklKNdV2qJgyCfdRf
 FOECFz4w0Vi2b+NUAIxtdI2NuNYIRxGNtCM/WyOS0xDV6n/3yT2bV4abrTUj093LKKz9
 cVrWsaxjikv5aOu2UvIbGTOKJ+J8si1JWFYaJiFImR6FdtIe0KgY068hDHD94t66E5iU
 dZZip3ohNQF4alhU4GDjJ5cH7OHEnsJGePk8pi4ReV7gr+XymUQlEwdvLbVYtT2oFSiQ
 iHaQT0UHK6s9wYlUiC4ZT2titktU0QiLYsuwXKFdDSX3cRaVEu5xaGn3G6Y88uIi5xOe
 CGpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=skmsHZOHc0GUvyBJg6E9lWxbDB6kRwoBkgWBhnFqhKs=;
 b=HqS0KM6K4k8byFu+2epOiA+8+WBAxene7c/ry5UUtJvE8nly8gs2bmi1ePdXXfRsOx
 dhJcXRuH8talIlbRcSVAY5JNYgTUCN6Rm8VD+i+AeImUpe5I38MX3B5mYZsA3rrZnha+
 U5FB3FyZqeZDlx+m+O5mTKswOjHCNBHaMzIhXwQGFud1h1+oRoG6PBA2N2V/N205SKHp
 F4nJtLOVoBYIFnTlwmw/D+/Gh5lT5fpKLzg6QRoyyRbXpVkqfF/LOogUa5qL+S64QWBi
 aJ5Y7fS3/nctWggv/N5HMipHu4bni3GZmKRb2GWYqKwzOxGYEFKtOIIrOOFW0fa6gEaG
 hFsA==
X-Gm-Message-State: APjAAAXr5JRWaLp8cuH86Qojpz3JcAJplHaJTOeeGN8UvfwVPa7MuE54
 B79Glqgw+xUwJ3xltsWw7w==
X-Google-Smtp-Source: APXvYqzwfdPZ9oie+DoxTzkjELxMDqe6MH132qvK0r9T52mfvMxBA6NdMQUyFFPPAdqCY8dSCPIkFQ==
X-Received: by 2002:a17:90a:c08f:: with SMTP id
 o15mr23593215pjs.31.1566874984302; 
 Mon, 26 Aug 2019 20:03:04 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s24sm11696535pgm.3.2019.08.26.20.02.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 20:03:03 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCHv2 2/4] x86/apic: record capped cpu in generic_processor_info()
Date: Tue, 27 Aug 2019 11:02:21 +0800
Message-Id: <1566874943-4449-3-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
References: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_200305_076614_335C59B8 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
index 1147217..b95721e 100644
--- a/arch/x86/kernel/cpu/common.c
+++ b/arch/x86/kernel/cpu/common.c
@@ -66,6 +66,9 @@ u32 elf_hwcap2 __read_mostly;
 cpumask_var_t cpu_initialized_mask;
 cpumask_var_t cpu_callout_mask;
 cpumask_var_t cpu_callin_mask;
+/* size of NR_CPUS is required. */
+static struct cpumask __cpu_capped_mask __initdata;
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
