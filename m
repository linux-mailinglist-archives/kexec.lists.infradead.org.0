Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD5F10CF29
	for <lists+kexec@lfdr.de>; Thu, 28 Nov 2019 21:24:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xJAJasA33sq5SMmMzgkUHKHzferWsFPLo0JuJ6e+BJQ=; b=MHNmrryFtOOWC4EsfzJp4RuSlo
	5GxeNjg3HsfoKWvPsY7h9Y1KlrjpeQhIq+7Bcp3YNPQaPFj4tlEAgzWTHPHrPR4Xkq+agMr/BX0rf
	iFA9YBJJlYYBp1O4miGKcAQymc4IX99cEH/L9PQ88hzeZOpkpnQ3P6sePO5VWyF4CWnWAr+9PPrPV
	hgUh/bYlQVMmMq5b8cKvjkULAKZvAFCuSmQAKd8BRwF7q5zgAT0bqgdBzNsHVYv/VfU0wW8KsERle
	kHnqUvwuijhFrX1Qap2xpo+lbaTT2mEJgD3hRfjKsNg4/nc7HaoHV/QVv4HBpE5fkbQmdz86nhJeN
	pKxZUrKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaQKs-0005aj-Pi; Thu, 28 Nov 2019 20:24:22 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaQKZ-0005Ly-Gp
 for kexec@lists.infradead.org; Thu, 28 Nov 2019 20:24:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574972642;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/y8p7TWJ4+9dx0qZYntYI0vqqca78jHSFlqFEn+6Y9I=;
 b=NoPHs0nVqVT2vIW5IAWqZBKK2klCypyJPAPhTP5UEAgwknUDea59W6bWHIgUpjQqCmn7oP
 ytPvz1WAN1lsjoy5OuClb1hc1gC0l+EnLzrdx8LIRl6AmMiE88qiYi8V9qlFF55cyCRGzx
 L2RbK7G2V3GV126/UTes0hpwaooil1E=
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com
 [209.85.214.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-itDppnOWO3W7sFsC6iLuTA-1; Thu, 28 Nov 2019 15:24:00 -0500
Received: by mail-pl1-f200.google.com with SMTP id p2so11699893plr.20
 for <kexec@lists.infradead.org>; Thu, 28 Nov 2019 12:24:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D7Q1sNAJK7KGCeC1/osi4u/yd8LMbojW2DcAg7eyhwk=;
 b=VSvyQoTmcW9UcmcIC57Ftyf3COWfqOg1pi5cTuCyMnHSwu4VKJx/KLBjPbZ4pfQnBY
 FuVrUHzxYP7VrdFHKc2o6dIfl7wou1zkHw9b8BeKHmWvm7quKj6t0TzQPmL49nbxk4bx
 ixeA0k2NfNnXvf5BekMqXuj48rfPvGHA1lESg/tBKco6RnmC+3+puaqfQU1YMxAu8GlL
 Wodzc7O00g1TpEThS1x59hkhuHRcCDwvz7fcEhaoQ/xJCAcdN7Zd/r26F4HI7lle/+ms
 y3fD46FCFGxVwNh+pEIoobqYKOfdYOTbyzQI08wceFYHS62dyzYsManwTdOKIzNfL0GP
 tl4A==
X-Gm-Message-State: APjAAAWlob7qoF3bzA3C1HykZ1bpZ8X5M3vMlP7hZ1ZoW1sBsih0BufH
 M/2koHY7AEmMMgdIKcaCPAyymyITU7BKijQjnzsjJdZDyc1JZjsqMgRSmk8ACDVXIJbornucewT
 o3ZcqNjFfVIRI7MG9z4Sd
X-Received: by 2002:a17:90a:3663:: with SMTP id
 s90mr14556226pjb.1.1574972639196; 
 Thu, 28 Nov 2019 12:23:59 -0800 (PST)
X-Google-Smtp-Source: APXvYqwEBnny8bOGZ2sOhQL9nLkTVF0UqIXllrctdH9WVSgwdhpBSy3J7AMOGgxRJJki+CNRMtBZ+Q==
X-Received: by 2002:a17:90a:3663:: with SMTP id
 s90mr14556206pjb.1.1574972638976; 
 Thu, 28 Nov 2019 12:23:58 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id s66sm22322578pfb.38.2019.11.28.12.23.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 28 Nov 2019 12:23:58 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/5] crash_core,
 vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
Date: Fri, 29 Nov 2019 01:53:37 +0530
Message-Id: <1574972621-25750-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
References: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: itDppnOWO3W7sFsC6iLuTA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_122403_641690_2EB0FDF7 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, bhsharma@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, Dave Anderson <anderson@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Boris Petkov <bp@alien8.de>, Michael Ellerman <mpe@ellerman.id.au>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Steve Capper <steve.capper@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Right now user-space tools like 'makedumpfile' and 'crash' need to rely
on a best-guess method of determining value of 'MAX_PHYSMEM_BITS'
supported by underlying kernel.

This value is used in user-space code to calculate the bit-space
required to store a section for SPARESMEM (similar to the existing
calculation method used in the kernel implementation):

  #define SECTIONS_SHIFT    (MAX_PHYSMEM_BITS - SECTION_SIZE_BITS)

Now, regressions have been reported in user-space utilities
like 'makedumpfile' and 'crash' on arm64, with the recently added
kernel support for 52-bit physical address space, as there is
no clear method of determining this value in user-space
(other than reading kernel CONFIG flags).

As per suggestion from makedumpfile maintainer (Kazu), it makes more
sense to append 'MAX_PHYSMEM_BITS' to vmcoreinfo in the core code itself
rather than in arch-specific code, so that the user-space code for other
archs can also benefit from this addition to the vmcoreinfo and use it
as a standard way of determining 'SECTIONS_SHIFT' value in user-land.

A reference 'makedumpfile' implementation which reads the
'MAX_PHYSMEM_BITS' value from vmcoreinfo in a arch-independent fashion
is available here:

[0]. https://github.com/bhupesh-sharma/makedumpfile/blob/remove-max-phys-mem-bit-v1/arch/ppc64.c#L471

Cc: Boris Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: x86@kernel.org
Cc: linuxppc-dev@lists.ozlabs.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 kernel/crash_core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/crash_core.c b/kernel/crash_core.c
index 9f1557b98468..18175687133a 100644
--- a/kernel/crash_core.c
+++ b/kernel/crash_core.c
@@ -413,6 +413,7 @@ static int __init crash_save_vmcoreinfo_init(void)
 	VMCOREINFO_LENGTH(mem_section, NR_SECTION_ROOTS);
 	VMCOREINFO_STRUCT_SIZE(mem_section);
 	VMCOREINFO_OFFSET(mem_section, section_mem_map);
+	VMCOREINFO_NUMBER(MAX_PHYSMEM_BITS);
 #endif
 	VMCOREINFO_STRUCT_SIZE(page);
 	VMCOREINFO_STRUCT_SIZE(pglist_data);
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
