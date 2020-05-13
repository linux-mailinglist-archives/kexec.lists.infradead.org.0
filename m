Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE301D1E0B
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 20:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zupa8ER8Nk6f7GFXveoNc2mWALYWxhvdQTv97Q93/ro=; b=Vxf8zr26/bF+wmJEpjOYmULDQF
	FzIbpVMWOuV6d4E9hq2MT56FQYad2SS2gp/x9lgztqgUgCaA22MesTsinx8Tb17k/os4lTz72zjQ0
	LlEGtPiYyC3PeWT+rerLlQQeBEMjEMPFVeVqKW6YZO2PncOP1DhkKKT96OV0yn5b7TgzDmDDiEPGt
	crjP5bhfcOKYHclwLIDuwvLE2mGRrNXu6pgrsjjQleA9l9P89ZZCAJqboJ3HA7xqaSjzOIsaUic7L
	p0R/u0GzxzblwzmSjUxNxTdkRQKtsT9gERayWT1aJfMIXzY00yzurPSWXN7rKl6qK2aDXSeTL9hZs
	xISll2rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwVO-0003jm-IN; Wed, 13 May 2020 18:53:22 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwUs-0003Ie-DW
 for kexec@lists.infradead.org; Wed, 13 May 2020 18:52:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589395969;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:in-reply-to:in-reply-to:
 references:references; bh=wHSBbB5/QZT/EwoeOOweY77s6h/009zkbzY0iSlBYP8=;
 b=Kjzl99JgmvDj3e7gKysnl7Uexkhj35o7HppVufr3BeMqm3IA7uXtwzupw5Kk0Hv9VyAsF5
 rfgVPllsVQXsrTLxpyTZhWsYU8Zf249D8GYJIkIip/7FE2GmA9fFyb/NrMNT22L6zu7QVr
 ikU53rx7O7DvKF4hLvSJnfKEYRiCJk4=
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-512-gPzKrsvtMd2O2skOGbogNw-1; Wed, 13 May 2020 14:52:47 -0400
X-MC-Unique: gPzKrsvtMd2O2skOGbogNw-1
Received: by mail-pf1-f197.google.com with SMTP id 126so488460pfd.10
 for <kexec@lists.infradead.org>; Wed, 13 May 2020 11:52:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wHSBbB5/QZT/EwoeOOweY77s6h/009zkbzY0iSlBYP8=;
 b=maPdf3f96KOeZSfcEHivsELeb0pTWnXi0Sxvq2F6/VqagKGiIOcWEG747uRn4B0n/2
 x2zFHD1bjCjUH2Ig1tuD4tjhE96ZCHpHYJ5RSfZSzFlLxAHkYByLFN2IyXX5nqQmfHol
 g++JNYO6RLfw7hfVeo4CB8qTiRG9C2BtyyM+nCj2uBlDiEr9eVn6cq53KulWVxn5n88j
 fclOqL4ZFsKExYR12g2POsMJ3UY/YV8LvsGMUW4rS6mgaOjqSzDpbeXc88FPxNs3/RJ4
 Dm6WLMe5MKT9oreBYPTvqh/2sxnUkV69oaf/6ahYSB9dsDJz1InjcLMk685v3sM2DaP1
 DzHg==
X-Gm-Message-State: AOAM532Uj8NFAc7QEMNK7BJu/Av9vYZBKr0hS3Ol8Gpf4Fo2Q5tTJiq9
 KtWJvuJeS5lcy3ngMk8ujbDadL/6h5ijThe2yp6S0pRVz4DEsdNi9F8jjOdvMrY6WHN9fLwwxij
 9s1yp7q3MwGNCHKdGuABF
X-Received: by 2002:aa7:82d4:: with SMTP id f20mr638955pfn.253.1589395964833; 
 Wed, 13 May 2020 11:52:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz5Sglv3QSN2AQ8L8vX+EbHi2Jv4mN3LxBZJj8ZVFGF26HEK+cSiLoq/r1EcEne4FxQ9u0lwQ==
X-Received: by 2002:aa7:82d4:: with SMTP id f20mr638933pfn.253.1589395964561; 
 Wed, 13 May 2020 11:52:44 -0700 (PDT)
Received: from localhost ([122.177.166.225])
 by smtp.gmail.com with ESMTPSA id d2sm230168pfa.164.2020.05.13.11.52.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 11:52:43 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	x86@kernel.org
Subject: [PATCH v6 1/2] crash_core,
 vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
Date: Thu, 14 May 2020 00:22:36 +0530
Message-Id: <1589395957-24628-2-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_115250_523836_87A93C60 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Michael Ellerman <mpe@ellerman.id.au>, bhsharma@redhat.com,
 kexec@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Boris Petkov <bp@alien8.de>,
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

While at it also update vmcoreinfo documentation for 'MAX_PHYSMEM_BITS'
variable being added to vmcoreinfo.

'MAX_PHYSMEM_BITS' defines the maximum supported physical address
space memory.

Cc: Boris Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
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
Tested-by: John Donnelly <john.p.donnelly@oracle.com>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/admin-guide/kdump/vmcoreinfo.rst | 5 +++++
 kernel/crash_core.c                            | 1 +
 2 files changed, 6 insertions(+)

diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
index e4ee8b2db604..2a632020f809 100644
--- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
+++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
@@ -93,6 +93,11 @@ It exists in the sparse memory mapping model, and it is also somewhat
 similar to the mem_map variable, both of them are used to translate an
 address.
 
+MAX_PHYSMEM_BITS
+----------------
+
+Defines the maximum supported physical address space memory.
+
 page
 ----
 
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
