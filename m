Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B77FF107736
	for <lists+kexec@lfdr.de>; Fri, 22 Nov 2019 19:22:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SQ8w825iKWzTZSGjPPmLa8Jsdoii0pD/yXvU8ykkcp8=; b=Qdn
	shMpE4hxvLQfBrjVmaWXsn74inIsvM1CuncU8843zgbdC/UkSTM46EZKknf1QqzVIDvbwJI8BETqv
	4fiac6yY6kTNqgnqkGOfPNTtaSEmOs43KRJitP2/xbW7/V75G5SqS6TI7QhhrlAHWi3BjcfaLnM2L
	E2zWUazO/PCQ8bi3GOoDH/TA/QSN7QhWh1GE557aNnRbDWwTbkOt8hqUyM2oBfwZ5CXs4ugoweOwP
	dac3owFgJZBpa3ycGXxkWGRNEoDqWZupPWlMPSItfAfa72zTeZRC5MT079elldBYmDqn+eNhcigbD
	Oz8Va/+Iq9BkMcIOjREn8d017rEgqCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYDZF-0007H6-Iw; Fri, 22 Nov 2019 18:22:05 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYDZ7-0007Gi-5h
 for kexec@lists.infradead.org; Fri, 22 Nov 2019 18:21:59 +0000
Received: by mail-yw1-xc44.google.com with SMTP id g77so2716058ywb.10
 for <kexec@lists.infradead.org>; Fri, 22 Nov 2019 10:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id;
 bh=QPiSRimoGyyl9vtfh4vUcgqZC8EZ9fo2lheKdMoYbnk=;
 b=PkayuhnQ8bgpDLx8e1OjkwzXGGYVlSmDAwOsERf1dmZNzyXdBHwRKWKDF4ZzQbiJMJ
 Z3xbdf1PN17CHLMcyvZROd9pZdRGS7bV/IlpwNQzp94lkql8K5O34dBLbDqE7PkHpwlb
 wIDre7REgjUiHNUByio1jFNWLe1VV9DcOJPzS1mwl+bCn2yFYnYs+uA6Gk+LNlmcm4yQ
 EBt2nVchz7Sd1j1AYNsjGRe4TVNTv+j6RIdYAqMLmlBtOBuX7vD+CfSoeFNqF0E/TX68
 2Wt2F9rVwjv0KNT2aazxpr6tWIFLK6j2047qYyQ2nbIZQIVuDW5L+BsNzz8w3cW4hwUD
 mvlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
 bh=QPiSRimoGyyl9vtfh4vUcgqZC8EZ9fo2lheKdMoYbnk=;
 b=fwAQgU4A69jQz3Wat2SpCZaVzCeq83PdtD5SPxQ8U+0mVQayY88dT90qE9s0Mcr+X6
 88SaBjXUDW9ETf+aO0bM2UHWqKQyPQV90N4fQffuL5ShL+oe859PecUPuMRAQayX/Mx1
 eaJDZulGvUOR0Fd1NbEtrIuB/aCkfUXxhECRuGzH8xhd6QX82C3EgvtyUOgU7OOFovWY
 j756C1Nt+fSnLlblIpvSFO3bPnhmHMOkcWOkQZYGtKkBhC3sgZtsmdI1cVFkJn/3cCnz
 0dKCMBCMllGDNcQ8/MpawJIQc7PeAIi8ZvGYuqv8A6EdAGDiU6UJ/as2h9Z/ZbssP1Ie
 oFLA==
X-Gm-Message-State: APjAAAWSUHCsclf3jQKoIEqnmqf7x0IbwhXTzeNor1lnfdH5P/HsJwWr
 tKsNrNcA7PQXu5mY92+u5w==
X-Google-Smtp-Source: APXvYqxXV/usJSEGZCjag//9I9PjIo2cacoQrlevslbDftpqzmFuIGJScuyiFlPnHjL8FBjKBzFQZw==
X-Received: by 2002:a81:3c55:: with SMTP id j82mr10687661ywa.163.1574446915355; 
 Fri, 22 Nov 2019 10:21:55 -0800 (PST)
Received: from serve.minyard.net ([47.184.136.59])
 by smtp.gmail.com with ESMTPSA id u68sm370523ywf.18.2019.11.22.10.21.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 10:21:54 -0800 (PST)
Received: from t560.mvista.com (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPA id 955D8180059;
 Fri, 22 Nov 2019 18:21:53 +0000 (UTC)
From: minyard@acm.org
To: kexec@lists.infradead.org, Dave Young <dyoung@redhat.com>,
 Baoquan He <bhe@redhat.com>, Vivek Goyal <vgoyal@redhat.com>,
 linuxppc-dev@lists.ozlabs.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>
Subject: [PATCH] powerpc: Fix issue with missing registers in kdump
Date: Fri, 22 Nov 2019 12:21:44 -0600
Message-Id: <20191122182144.20633-1-minyard@acm.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_102157_214842_9E136537 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Corey Minyard <cminyard@mvista.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

From: Corey Minyard <cminyard@mvista.com>

When powerpc saved the registers on an SMP system, it was doing so
correctly.  But after the crash, the register information was blank.
The issue was that the data was still in the CPU caches on the
CPUs, but once the jump to the crash kernel was done, the data was
never flushed to main memory, so that data was lost.

Add a cache flush after the CPU register notes are saved to fix
the issue.

Signed-off-by: Corey Minyard <cminyard@mvista.com>
---
I found this problem on an older (3.10) kernel on a Freescale
T1042D4RDB system, and I couldn't find any discussion or change that
dealt with anything like this.  It appears to still be an issue,
though I'm not sure and I'm not sure this is the right way to fix the
problem.

I've tried reproducing on end of tree, but I've run into a couple of
issues.  The file
 /proc/device-tree/soc@ffe000000/fman@400000/fman-firmware/fsl,firmware
will only return 4096 bytes at a time (apparently it didn't in 3.10),
but the kexec command tries to read it in one big read in
kexec/arch/ppc/fs2dt.c:

       if (read(fd, dt, len) != len)
                die("unrecoverable error: could not read \"%s\": %s\n",
                    pathname, strerror(errno));

I hacked around that and now it hangs before printing anything in the
new kernel.  Since the above was broken, I doubt this has been tested
in a while, so no surprise, I guess.  

So I can't test this out on a current kernel, and I'm not sure what to
do at this point.  I have it fixed for our current use, but getting a
fix upstream would be good.

 arch/powerpc/kernel/crash.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/powerpc/kernel/crash.c b/arch/powerpc/kernel/crash.c
index d488311efab1..f6e345b8c33d 100644
--- a/arch/powerpc/kernel/crash.c
+++ b/arch/powerpc/kernel/crash.c
@@ -24,6 +24,7 @@
 #include <asm/smp.h>
 #include <asm/setjmp.h>
 #include <asm/debug.h>
+#include <asm/cacheflush.h>
 
 /*
  * The primary CPU waits a while for all secondary CPUs to enter. This is to
@@ -75,8 +76,21 @@ void crash_ipi_callback(struct pt_regs *regs)
 
 	hard_irq_disable();
 	if (!cpumask_test_cpu(cpu, &cpus_state_saved)) {
+		char *buf;
+
 		crash_save_cpu(regs, cpu);
 		cpumask_set_cpu(cpu, &cpus_state_saved);
+
+		/*
+		 * Flush the crash note region data, otherwise the
+		 * data gets left in the CPU cache and then
+		 * invalidated, so the crashing cpu will never see it
+		 * in the new kernel.
+		 */
+		buf = (char *) per_cpu_ptr(crash_notes, cpu);
+		if (buf)
+			flush_dcache_range((unsigned long) buf,
+				(unsigned long) buf + sizeof(note_buf_t));
 	}
 
 	atomic_inc(&cpus_in_crash);
-- 
2.17.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
