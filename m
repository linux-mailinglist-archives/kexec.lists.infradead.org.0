Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3293F6F59
	for <lists+kexec@lfdr.de>; Mon, 11 Nov 2019 09:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xJAJasA33sq5SMmMzgkUHKHzferWsFPLo0JuJ6e+BJQ=; b=uhSOP57Pw6hLeoFygTxzdBPrjL
	0Qiwas7hP4gYuKpDuhY2VGMKqi3AMCZsF5CwVNPqoEd02Ji3DU3kuY3PDFMPbdOhoee5XdL1dnxEf
	PWLEiEMQCUq0XCFKA0F5YhkzQeQAtTm1Mx1tej/r97V3yFmLHWhHWN4I9Ol7405gCF637d9dTgEhX
	kMzWxz1clail30Ki0H91vTBi1wJEX0kb+qEOa5rDFDQGuulunENFbboW9cSvEYBrj8bfatrdSeL4+
	5JSxxlWJyO2I/3DLMRQt7hFHGJQkEYI2ql6vSlmcRgILc/74k7cXv7B0V0KLHmRFzUcjL7//t6dYO
	taSEbOWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4gF-0003dH-06; Mon, 11 Nov 2019 08:04:11 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4g7-0003bQ-3Z
 for kexec@lists.infradead.org; Mon, 11 Nov 2019 08:04:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573459441;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/y8p7TWJ4+9dx0qZYntYI0vqqca78jHSFlqFEn+6Y9I=;
 b=Ae2bnJsvuVP6avUPrVQ0dOl6YqAitaPPcAWAwEWRr3EfehY0J/D3Fz4OBVCEZ9BskGWArl
 wAE3ycLB0Z2vKndVaDrRRjUIer7HhfzRdueUueZNyRlM2fvyFWvcjhlp8G0zx6nNH752ky
 YOJBqZk7766T31j2divPgzXncdujEB8=
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com
 [209.85.215.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-HoQKyXlhPlOgDhCLgZp4pw-1; Mon, 11 Nov 2019 03:01:45 -0500
Received: by mail-pg1-f199.google.com with SMTP id 11so11345593pgm.23
 for <kexec@lists.infradead.org>; Mon, 11 Nov 2019 00:01:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D7Q1sNAJK7KGCeC1/osi4u/yd8LMbojW2DcAg7eyhwk=;
 b=Er9zYuFWqLvz2cob1PVgfOrTkHVmqtEvIQd0C94ttpA55y5eVE/zXQ5vERmIThJO5G
 humID3H+uCuRLWPCakDpFm5gnONzgisFiwY1zn3eUZsN+7HbIzXnvFuqsDQKBKnv5PGc
 K0lunzb6nFi5LGkKWEthWjZ61vzOejX2wUAGycnwfSTfe6IFOwmh9NHIIDdn3J6WHHlk
 sEFHvblV5TSct6J67kVW3Wcf9PBNyL6oFkinzBmno9wzrJGLsOr1tXMzOpRddhBoUOp9
 8hmfRBSFHH6CRjbyKO1mxmLdq4wXfglfdVgf2nL+5qchNlU+JO995p2ESguQaujXWXX8
 n/FA==
X-Gm-Message-State: APjAAAVEhPaifGumd+LoRoJPKYbFliszBezsFaXcsMesbvkicKOYV9Ok
 CGx+srP1qcXFEG+aZsscKpcWNA9KEC8WNqWlqiImBdsnIAtgW1o7w7xHZ9kUI7bU3svzjUwWhJf
 yGV6rq1l6Bgn7EtFGsrbK
X-Received: by 2002:a62:fcd2:: with SMTP id e201mr404513pfh.52.1573459301445; 
 Mon, 11 Nov 2019 00:01:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqw/PM/uE1YEEDp1OQcYhDW64ur/c96jF9ficCBtta087Mx43bjXxmhjovhzV8sTDdZdS3kXpw==
X-Received: by 2002:a62:fcd2:: with SMTP id e201mr404459pfh.52.1573459301055; 
 Mon, 11 Nov 2019 00:01:41 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id r33sm12736180pjb.5.2019.11.11.00.01.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 00:01:39 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/3] crash_core,
 vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
Date: Mon, 11 Nov 2019 13:31:20 +0530
Message-Id: <1573459282-26989-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
References: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
X-MC-Unique: HoQKyXlhPlOgDhCLgZp4pw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_000403_227464_FC7DBF18 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 bhsharma@redhat.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec@lists.infradead.org, x86@kernel.org, linuxppc-dev@lists.ozlabs.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Michael Ellerman <mpe@ellerman.id.au>, Boris Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, bhupesh.linux@gmail.com,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Paul Mackerras <paulus@samba.org>, Dave Anderson <anderson@redhat.com>
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
