Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E13AF1D1E13
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 20:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uxw5yCdO0d6J2qVu31ovNdfdCHcFR+/QK8mBHwrtyys=; b=TUnPJVcUjL1+xQ1rjDlc+b+PKL
	PB5ls/VnNIquAY0eR2YxlAsotkf79Q8RJ/PYpb/lvbwt940AVxmd9g9MKH176DB2MpqZdfh70P421
	sit8VOZZvmuc1hwVLfe9mfYbxriP4jWouLRsQhidUU1X4fTyOGLQdR96RFTcCPE72w1DaUM0Y6oyz
	CWLmwx/C+lsbnYVXvTykreolMS8aTuc/zfBC2CaGQSEyv5ewLTKDq6ngG+Fs3gj3grBOUzcOpPMW0
	rvsdkpbROULYfVjRwvwaIiLWfh0iLAHjbvjVBrQBqr7BsXwtkqp8oCJnlGW85EZFh38LiGNliYbfT
	YkrELhfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYwVj-00043N-7b; Wed, 13 May 2020 18:53:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYwUt-0003Iy-Gl
 for kexec@lists.infradead.org; Wed, 13 May 2020 18:52:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589395970;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:in-reply-to:in-reply-to:
 references:references; bh=izj75eA8qUg9h4nL2GwzYuH/rvKXm4fOWTZ49lsEjYs=;
 b=ChEhcTBI/O9rlnwWugSWVxsslYzwA4HFc/8ewMwaCz4stIHmLuXJZeDvjQ7Z3rgyvAcOQH
 /NHP/FS/Giv7bMtUYJ7HGZoAjkF7+QUM1b9VFvPBSvV8Mcw9zxmKR/2f+FvwbyzRggoW6V
 IWOT61R6PmYKaJE3KO1vrJcBfL8CRxQ=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-VZAxclqKOHGFaxFMj0gt-g-1; Wed, 13 May 2020 14:52:48 -0400
X-MC-Unique: VZAxclqKOHGFaxFMj0gt-g-1
Received: by mail-pg1-f198.google.com with SMTP id v6so302641pgh.16
 for <kexec@lists.infradead.org>; Wed, 13 May 2020 11:52:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=izj75eA8qUg9h4nL2GwzYuH/rvKXm4fOWTZ49lsEjYs=;
 b=CEmTdNup0cMpu7jkCDD7KQufs3mUM40ZTOasuSybmNetuM/rW8g0E4YTd7fkJTua9C
 NS9roxedVrRNAmZLaygrMqsJ44MkkFQ6yzt5HguFGSBiBv/N2+AYrpGfR+P+Iy7o5qe2
 hRkZL84vWg4m+T9weQ7ySUysl2PD0rWPEl71eKU1G6yRBcNENYAW2J+4UVLrBMtusKJI
 dMxvLUnttSN6Ya9v4VGZTCrFxQv1nX+beVvoq5mkbaaHpSq/aSq1ztPVTWhjcnul+Fbm
 n+BCWghMR4qhBOqEk6tGatg8dpJmH69JOGCLtjGandjwxiuqVlDM/FBJKG394bso26oa
 LESw==
X-Gm-Message-State: AGi0PubR/42AOlQ1c8atZYZQIWea0nQedoWOKA9nVl8t+ZPq/EHP4y/U
 LU3m4MMTac30HwtNkTCejsPhNtSRE5nl6o4ldeViV/hoYigRopFqSRMGJDqKjKqh5ShI2phrTBC
 K1BvZj+/jPMLkAZQtIRI4
X-Received: by 2002:a17:90b:957:: with SMTP id
 dw23mr36889996pjb.101.1589395967883; 
 Wed, 13 May 2020 11:52:47 -0700 (PDT)
X-Google-Smtp-Source: APiQypIUoH47tRnLfSqut0ZmslcTFLWt4zJqrM5AJrrszLhn3W9AzXL/43kjytAFi2CPzyIbgMCYKQ==
X-Received: by 2002:a17:90b:957:: with SMTP id
 dw23mr36889975pjb.101.1589395967645; 
 Wed, 13 May 2020 11:52:47 -0700 (PDT)
Received: from localhost ([122.177.166.225])
 by smtp.gmail.com with ESMTPSA id h5sm15945895pjv.4.2020.05.13.11.52.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 11:52:47 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-arm-kernel@lists.infradead.org,
	x86@kernel.org
Subject: [PATCH v6 2/2] arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
Date: Thu, 14 May 2020 00:22:37 +0530
Message-Id: <1589395957-24628-3-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
References: <1589395957-24628-1-git-send-email-bhsharma@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_115251_634178_C61D9753 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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
 Steve Capper <steve.capper@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 bhsharma@redhat.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 James Morse <james.morse@arm.com>, Dave Anderson <anderson@redhat.com>,
 bhupesh.linux@gmail.com, Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

vabits_actual variable on arm64 indicates the actual VA space size,
and allows a single binary to support both 48-bit and 52-bit VA
spaces.

If the ARMv8.2-LVA optional feature is present, and we are running
with a 64KB page size; then it is possible to use 52-bits of address
space for both userspace and kernel addresses. However, any kernel
binary that supports 52-bit must also be able to fall back to 48-bit
at early boot time if the hardware feature is not present.

Since TCR_EL1.T1SZ indicates the size offset of the memory region
addressed by TTBR1_EL1 (and hence can be used for determining the
vabits_actual value) it makes more sense to export the same in
vmcoreinfo rather than vabits_actual variable, as the name of the
variable can change in future kernel versions, but the architectural
constructs like TCR_EL1.T1SZ can be used better to indicate intended
specific fields to user-space.

User-space utilities like makedumpfile and crash-utility, need to
read this value from vmcoreinfo for determining if a virtual
address lies in the linear map range.

While at it also add documentation for TCR_EL1.T1SZ variable being
added to vmcoreinfo.

It indicates the size offset of the memory region addressed by TTBR1_EL1

Cc: James Morse <james.morse@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Anderson <anderson@redhat.com>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: kexec@lists.infradead.org
Tested-by: John Donnelly <john.p.donnelly@oracle.com>
Signed-off-by: Bhupesh Sharma <bhsharma@redhat.com>
---
 Documentation/admin-guide/kdump/vmcoreinfo.rst | 11 +++++++++++
 arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
 arch/arm64/kernel/crash_core.c                 | 10 ++++++++++
 3 files changed, 22 insertions(+)

diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
index 2a632020f809..2baad0bfb09d 100644
--- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
+++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
@@ -404,6 +404,17 @@ KERNELPACMASK
 The mask to extract the Pointer Authentication Code from a kernel virtual
 address.
 
+TCR_EL1.T1SZ
+------------
+
+Indicates the size offset of the memory region addressed by TTBR1_EL1.
+The region size is 2^(64-T1SZ) bytes.
+
+TTBR1_EL1 is the table base address register specified by ARMv8-A
+architecture which is used to lookup the page-tables for the Virtual
+addresses in the higher VA range (refer to ARMv8 ARM document for
+more details).
+
 arm
 ===
 
diff --git a/arch/arm64/include/asm/pgtable-hwdef.h b/arch/arm64/include/asm/pgtable-hwdef.h
index 6bf5e650da78..a1861af97ac9 100644
--- a/arch/arm64/include/asm/pgtable-hwdef.h
+++ b/arch/arm64/include/asm/pgtable-hwdef.h
@@ -216,6 +216,7 @@
 #define TCR_TxSZ(x)		(TCR_T0SZ(x) | TCR_T1SZ(x))
 #define TCR_TxSZ_WIDTH		6
 #define TCR_T0SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) << TCR_T0SZ_OFFSET)
+#define TCR_T1SZ_MASK		(((UL(1) << TCR_TxSZ_WIDTH) - 1) << TCR_T1SZ_OFFSET)
 
 #define TCR_EPD0_SHIFT		7
 #define TCR_EPD0_MASK		(UL(1) << TCR_EPD0_SHIFT)
diff --git a/arch/arm64/kernel/crash_core.c b/arch/arm64/kernel/crash_core.c
index 1f646b07e3e9..314391a156ee 100644
--- a/arch/arm64/kernel/crash_core.c
+++ b/arch/arm64/kernel/crash_core.c
@@ -7,6 +7,14 @@
 #include <linux/crash_core.h>
 #include <asm/cpufeature.h>
 #include <asm/memory.h>
+#include <asm/pgtable-hwdef.h>
+
+static inline u64 get_tcr_el1_t1sz(void);
+
+static inline u64 get_tcr_el1_t1sz(void)
+{
+	return (read_sysreg(tcr_el1) & TCR_T1SZ_MASK) >> TCR_T1SZ_OFFSET;
+}
 
 void arch_crash_save_vmcoreinfo(void)
 {
@@ -16,6 +24,8 @@ void arch_crash_save_vmcoreinfo(void)
 						kimage_voffset);
 	vmcoreinfo_append_str("NUMBER(PHYS_OFFSET)=0x%llx\n",
 						PHYS_OFFSET);
+	vmcoreinfo_append_str("NUMBER(TCR_EL1_T1SZ)=0x%llx\n",
+						get_tcr_el1_t1sz());
 	vmcoreinfo_append_str("KERNELOFFSET=%lx\n", kaslr_offset());
 	vmcoreinfo_append_str("NUMBER(KERNELPACMASK)=0x%llx\n",
 						system_supports_address_auth() ?
-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
