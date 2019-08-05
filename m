Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5422814A5
	for <lists+kexec@lfdr.de>; Mon,  5 Aug 2019 11:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8DIIYjtlkaXyB+BzHhFamtwVZNOFwhEeunKmrmWP/zE=; b=mE2ayo1TCkqijyGJJDUugeXJML
	euCEoMglLhq6E2+vtxzy2mzZfr+FWLxRzcc1jMaFDGXTna4tdQKAJYV/R90g8FvaQkbkUJ2CPUaOx
	XHHOliXM86xqU9z7tYdn4VUORiyOlFv6Kwk2p3qCtQZj45fseRU0B8Mb1Cby53mu2G/cJXLTbF0Cw
	XHifWN9PE4V0F3yZJvZf865tOG5rnifa8hwdtRtE2cqv/kZXp/Ske0yqXVRw+d/08JJ9pwHsw0C4w
	gPdeHeXSlbSQPK/gwkWhAU6hFYWeEsoiJqZj5PXnPpjbZ+E9u/9nPf3feH0wzzs/lRAKLQjEioUG6
	78XfmwzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huYri-0008PN-5O; Mon, 05 Aug 2019 09:01:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huYqe-0007XR-Ox
 for kexec@lists.infradead.org; Mon, 05 Aug 2019 09:00:10 +0000
Received: by mail-pf1-x443.google.com with SMTP id c3so16163515pfa.13
 for <kexec@lists.infradead.org>; Mon, 05 Aug 2019 02:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=yrnQxlRs86i/s4KE8dmXp4rew3gb/2U7+nHFO3UAIAU=;
 b=YTtXpqdDSYYeaNITy7XsD8iR7ZgskBmOA1WBxDvRBb3yVMeJiI0oGdriP33zo4GGeE
 gBfJovanLHCJCybpRKO+Tvzh5Fo8z/3G3zOFyPT2bDHh/slnmqugxoubiYMjTXBPD3do
 LOZVlaq99pbiGiw/ui0ndBi1Wd71GdkfKgsKqFdRvftrD/IWJ5j59cJXDieiBaRQJkSL
 MPd0ZTre8SSheXHRVTAF0Z3TEbLabs3aVdon9C73YrkjEhvXOLxXWZrhzY0wotHVd9Mq
 bc0sxirXX8K6xbYYrEHILTHYRuc7ixp8/TIOkrCNKwwDfKsFZj3gbCJP8eSb6XvgzTs7
 aJrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=yrnQxlRs86i/s4KE8dmXp4rew3gb/2U7+nHFO3UAIAU=;
 b=BLCLI5gb4HngBnUo8FpkSEJ70VaTy+Nr1LXZoQOuenBs1e6SFU7R0cgzemz1NUHJpd
 XeimWM37N7rDlRUzlCE6UUnHJ1QqNx/koVRjCj+mlVQ0NPFjX8An33Y/ePcPgjQ/GYyj
 t6b1y6w5uxrqQcXQJyt6BTfQAJGiROGONsla37Bj30IMUzkTpUQJbDidGBE8EZ6yd54y
 tsIHXpvx+6S6Wp0tgwa3CVfsxpJjtCPyqfDfdVQJhiPQTaG4vufjr5td7L+JnPKvLdsR
 dcvkbJ8uhirJ825VJt6JoaMwvKiYJUOgb/6jhaLcrJHag4ENW/IBXW1wkZWA5CALYcCQ
 634A==
X-Gm-Message-State: APjAAAUNdMWAlUUTNhcyBd6Dn3uzBLhNi8JbB6lJc1OH9jr69ALim60h
 2XRO5yIxiZ957QYtW3pJMQ==
X-Google-Smtp-Source: APXvYqyA34k9Zp5VsqStjLYj3/HI2hkkXQqwAuHbB63n3I5E8GSIslztvvucJugEmaWWT5mRkt7uLQ==
X-Received: by 2002:a62:e71a:: with SMTP id s26mr69685451pfh.89.1564995608247; 
 Mon, 05 Aug 2019 02:00:08 -0700 (PDT)
Received: from mylaptop.redhat.com ([209.132.188.80])
 by smtp.gmail.com with ESMTPSA id v184sm82428375pfb.82.2019.08.05.02.00.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 02:00:07 -0700 (PDT)
From: Pingfan Liu <kernelfans@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>, Andy Lutomirski <luto@kernel.org>,
 x86@kernel.org
Subject: [PATCH 4/4] x86/smp: disallow MCE handler on rebooting AP
Date: Mon,  5 Aug 2019 16:58:59 +0800
Message-Id: <1564995539-29609-5-git-send-email-kernelfans@gmail.com>
X-Mailer: git-send-email 2.7.5
In-Reply-To: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
References: <1564995539-29609-1-git-send-email-kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_020008_860174_4E62B2A3 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
