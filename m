Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D309DBD3
	for <lists+kexec@lfdr.de>; Tue, 27 Aug 2019 05:03:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8DIIYjtlkaXyB+BzHhFamtwVZNOFwhEeunKmrmWP/zE=; b=j2AS2FbR+gtm/cz989fH8dSbRC
	5UNAf+G9Qmc4A01k8VsReuw5bR3J6v5IB/q88Ro1b3BaITb2gx3P8b2K1pMpRDo3gYQCV50bS7BgG
	eKn0lWdQZWflhfsuPwPxhwpp7BffsrzpP0Q1IX4vMfFA8C1y+3sAXux0dq4IFVH6ghuKdhygMqStB
	pd8IHkx7GnV0wWi2b6AvC/Dgv2f4vUyAVuxbxYl75lXeYHTiAFRgOn+fc/m+KgTqo5W6Dg7rAbS5O
	FcV84DibK4XDP4/4XCxrvDmzJDUSzPcyWOCBH+mpwemoijFlYsUpTnYbuakAs2+6Msj2+tF/0HfAQ
	LpsShdqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2RlT-0006n4-Ns; Tue, 27 Aug 2019 03:03:23 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2RlQ-0006lq-3k
 for kexec@lists.infradead.org; Tue, 27 Aug 2019 03:03:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id l21so11776438pgm.3
 for <kexec@lists.infradead.org>; Mon, 26 Aug 2019 20:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yrnQxlRs86i/s4KE8dmXp4rew3gb/2U7+nHFO3UAIAU=;
 b=F2Jm01hw78AjHW7i1ufTsmGtC7C6ScZRJovECfz4/aVtX0gTeoJjAIYvCBolKqFWXo
 YXqIDJGDTC5sNF6HiDLNrx7Wy0l2EAx8QcFWfM4xscQt9flKeN6JWqa22xrd2Qgj3oaw
 woE4OrOgmn8bIMwJ0zG8XWxYUY+Qwe2b/Eqj2DqYbaziI+vSGIO+aoYknTs7DYF+YRtT
 K6rHo6GsQgWiBarBmWCAGUKU1OiOFZB+Fy2H+Rmh2VaK/stWZ/1NyrB56V1l4ZjXq7uz
 Hqg7Zhlj+5o2ZZUA8KPfK7quAikFYFxRIhbXbY4r/Q6LTLWd6oa3oexYP5tnP5XHGpYY
 qCEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yrnQxlRs86i/s4KE8dmXp4rew3gb/2U7+nHFO3UAIAU=;
 b=cxMlsTJ6PneT2Al6nyRPSvj4hSWJ19vz7sXIrEP+nmhJ7eSLVvVquwdh8mowRJ/pN8
 9X46sXLwMmnZ9MeXVKjfJiMgubI1JxfoRVW3qpA27eQlx3q9eNK4zV/TUD5D06M3A51x
 Ge2s4QcjPZ4T2xErIy+xbpwfgFR/9zwE0lUQlzgxmpSZdlRUXWQEa47AKdf21MrlvNXA
 TWYlx3uam7/63H8f5Jp+7HNmQPD2Z+M5VEfeW8PXm10sQR8eMA7W1UypFjkm0+8Q2Cvq
 rZR9++gn4t79OYqFFnxHQkelKrVmLe50oX5KO9leXXsVPqNr2y18WvVcwU91E5bYLxF8
 RKWw==
X-Gm-Message-State: APjAAAVpy+Y1EtL8L4DvR4jrL+0vwzYuX0cELdOObb7Pkw4S5Z5kgEbv
 COnsmEwr6RED8zhWoWhvgA==
X-Google-Smtp-Source: APXvYqwJ0X06Cu4Kq1ZWHNntMxm0v1/Tf5DqZWvem13GzmH6hfsYQE01S2exvWHzd4aO7oykLksU9g==
X-Received: by 2002:a17:90a:b104:: with SMTP id
 z4mr23213301pjq.120.1566874999420; 
 Mon, 26 Aug 2019 20:03:19 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id s24sm11696535pgm.3.2019.08.26.20.03.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Aug 2019 20:03:18 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCHv2 4/4] x86/smp: disallow MCE handler on rebooting AP
Date: Tue, 27 Aug 2019 11:02:23 +0800
Message-Id: <1566874943-4449-5-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
References: <1566874943-4449-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_200320_162530_B0E1271E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

"kexec -l" sends the rest cpu to halt state with local apic disabled. But
they can still respond to MCE.  Meanwhile the execution of MCE handler
relies on the 1st kernel's page table and text, which may be cracked during
the 2nd kernel bootup. Hence Before sending SIPI to AP in 2nd kernel, an
MCE event makes AP take the risk of running in weird context.

Heavily suppress it by disallowing MCE handler on rebooting AP.

Note: after this patch, "kexec -l" still has a little window vulnerable to
weird context, despite AP uses tlb cache and icache.  Consider the
scenario: The 1st kernel code native_halt() in stop_this_cpu() is modified
during the 2nd kernel bootup. Then AP is waken up by MCE after the
modification, and will continue in a weired context. This needs extra
effort.

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
 arch/x86/kernel/smp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/x86/kernel/smp.c b/arch/x86/kernel/smp.c
index 96421f9..55b0f11 100644
--- a/arch/x86/kernel/smp.c
+++ b/arch/x86/kernel/smp.c
@@ -157,11 +157,15 @@ void native_send_call_func_ipi(const struct cpumask *mask)
 
 static int smp_stop_nmi_callback(unsigned int val, struct pt_regs *regs)
 {
+	struct desc_ptr null_ptr = { 0 };
+
 	/* We are registered on stopping cpu too, avoid spurious NMI */
 	if (raw_smp_processor_id() == atomic_read(&stopping_cpu))
 		return NMI_HANDLED;
 
 	cpu_emergency_vmxoff();
+	/* prevent from dispatching MCE handler */
+	load_idt(&null_ptr);
 	stop_this_cpu(NULL);
 
 	return NMI_HANDLED;
@@ -173,8 +177,12 @@ static int smp_stop_nmi_callback(unsigned int val, struct pt_regs *regs)
 
 asmlinkage __visible void smp_reboot_interrupt(void)
 {
+	struct desc_ptr null_ptr = { 0 };
+
 	ipi_entering_ack_irq();
 	cpu_emergency_vmxoff();
+	/* prevent from dispatching MCE handler */
+	load_idt(&null_ptr);
 	stop_this_cpu(NULL);
 	irq_exit();
 }
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
