Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A08A4F6F5A
	for <lists+kexec@lfdr.de>; Mon, 11 Nov 2019 09:04:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6++/uK3RRILjP174pLctmEOwLt/hBzCbCGuz+SMyGgY=; b=CZJ
	7QTPi0me0x3j0CyZILoMMDYzXCQpvIDv2IG2O+6KszpXDNa+mXvjgJV03x0a33LlW6ensB2pQmSwq
	i7jNVtSw45GLEy/7sr7zMbxFuMBIX6Gqm2NF0pBrIHBwEe3LGB8C/8kfH1hkRIu87VyH/1ARpUMcL
	xPllFbIbRb47pi2IFNq6aoZ7EUZjwMnnG9jCqjkmT16224n0DACebHwWQTsjaiz8YFlP74WZlwZDd
	4uiOeSKlaUPmQbjeyWhGYgXxxylEG5Zo2zA/CtwBI7klXbZ59oUH+sVRaJ8uIpcj52hopn1NSZ+eb
	kKfBDZZpQ8z/1U5OC6HsgM0dyzDPMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4gM-0003mq-Ri; Mon, 11 Nov 2019 08:04:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4g7-0003bS-9d
 for kexec@lists.infradead.org; Mon, 11 Nov 2019 08:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573459441;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=OpacTWmtO+iXMlkdZbS1mGwj9+49jp5N3bMgW5F1YzI=;
 b=BPE1E75RiHfFPnCE8VOSBh2XJV8nGUPdUbKhFOZYHTj8PDMhQ62xxGiRFhnR+fwuw/rms8
 yhB2AaSII1DdWKh59hc37FZCQUAwOF0OMXKqiJYO16ywQoqf6cu3kkBSfLS1msrjdqNuGO
 n+944KxYmBbrQ8qwuvNa9MPcb6RnoUM=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-JJ1M1ZnJMNOpBjgieOpDgA-1; Mon, 11 Nov 2019 03:01:37 -0500
Received: by mail-pl1-f199.google.com with SMTP id x9so10126242plv.2
 for <kexec@lists.infradead.org>; Mon, 11 Nov 2019 00:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F5//BPblZoTPMZJjED7koP1nkziC7XQdUgBg/9snEjY=;
 b=tiqs8z5Qouv3sS6/O6LgHjul6yulJyVqeruh9GaugMKB8ZdtxSxdXRRKH3u3e+9Wl3
 6h5LiCXpfEXA3SzSUJDgnk4k63KGl8DXn57w6VfzitbjtQT81Z71JkZFSzglQhbFx2yC
 a1RDPatgUOqAS34lyccKiBBvWAQFL600LFTzlHxgJSUUsMFo37zvC/Oo+QDf/4hElf8O
 Je1+pLa4knC6pNDjbFEoPnhpkttCZ7LZLdnupB5vqX01YZ9T8YzErjGTeMkUo/czDjzJ
 rPC02HLyXFofLTzGBJoYl7Z42RAOs5S3nCtDH3RiLHOt/SoD9hk/61G0XLu7cm8NoKXv
 JmIw==
X-Gm-Message-State: APjAAAW+xW/ZsAFTHepLMDD3FVxCPhyf0MUUEck2yEL2OZAX+7sb3GkA
 kC1DqtMhoXWozh952f17c013jlztbHGdHtJLw9rYXmGhidf6VuHgqKLZqUvC3W9jpngId+uaPz2
 uQ67pAe1Krl/9Wbw5y1S4
X-Received: by 2002:a17:90b:d93:: with SMTP id
 bg19mr32020982pjb.81.1573459295880; 
 Mon, 11 Nov 2019 00:01:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqw8usKKEjYAYwE1du2nBk2kWvDHi2IvPtGckrHHcwJEKDXcLeUgfkse/tWZ8nOIlyzPDEk0gQ==
X-Received: by 2002:a17:90b:d93:: with SMTP id
 bg19mr32020851pjb.81.1573459294770; 
 Mon, 11 Nov 2019 00:01:34 -0800 (PST)
Received: from localhost ([122.177.0.15])
 by smtp.gmail.com with ESMTPSA id e17sm14079598pgg.5.2019.11.11.00.01.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 11 Nov 2019 00:01:33 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/3] Append new variables to vmcoreinfo (TCR_EL1.T1SZ for
 arm64 and MAX_PHYSMEM_BITS for all archs)
Date: Mon, 11 Nov 2019 13:31:19 +0530
Message-Id: <1573459282-26989-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: JJ1M1ZnJMNOpBjgieOpDgA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_000403_433599_3A15C29E 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, bhsharma@redhat.com,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Boris Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, bhupesh.linux@gmail.com,
 linux-arm-kernel@lists.infradead.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>, kexec@lists.infradead.org,
 James Morse <james.morse@arm.com>, Dave Anderson <anderson@redhat.com>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changes since v3:
----------------
- v3 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-March/022590.html
- Addressed comments from James and exported TCR_EL1.T1SZ in vmcoreinfo
  instead of PTRS_PER_PGD.
- Added a new patch (via [PATCH 3/3]), which fixes a simple typo in
  'Documentation/arm64/memory.rst'

Changes since v2:
----------------
- v2 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-March/022531.html
- Protected 'MAX_PHYSMEM_BITS' vmcoreinfo variable under CONFIG_SPARSEMEM
  ifdef sections, as suggested by Kazu.
- Updated vmcoreinfo documentation to add description about
  'MAX_PHYSMEM_BITS' variable (via [PATCH 3/3]).

Changes since v1:
----------------
- v1 was sent out as a single patch which can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-February/022411.html

- v2 breaks the single patch into two independent patches:
  [PATCH 1/2] appends 'PTRS_PER_PGD' to vmcoreinfo for arm64 arch, whereas
  [PATCH 2/2] appends 'MAX_PHYSMEM_BITS' to vmcoreinfo in core kernel code (all archs)

This patchset primarily fixes the regression reported in user-space
utilities like 'makedumpfile' and 'crash-utility' on arm64 architecture
with the availability of 52-bit address space feature in underlying
kernel. These regressions have been reported both on CPUs which don't
support ARMv8.2 extensions (i.e. LVA, LPA) and are running newer kernels
and also on prototype platforms (like ARMv8 FVP simulator model) which
support ARMv8.2 extensions and are running newer kernels.

The reason for these regressions is that right now user-space tools
have no direct access to these values (since these are not exported
from the kernel) and hence need to rely on a best-guess method of
determining value of 'vabits_actual' and 'MAX_PHYSMEM_BITS' supported
by underlying kernel.

Exporting these values via vmcoreinfo will help user-land in such cases.
In addition, as per suggestion from makedumpfile maintainer (Kazu),
it makes more sense to append 'MAX_PHYSMEM_BITS' to
vmcoreinfo in the core code itself rather than in arm64 arch-specific
code, so that the user-space code for other archs can also benefit from
this addition to the vmcoreinfo and use it as a standard way of
determining 'SECTIONS_SHIFT' value in user-land.

Cc: Boris Petkov <bp@alien8.de>
Cc: Ingo Molnar <mingo@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Jonathan Corbet <corbet@lwn.net>
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
Cc: linux-doc@vger.kernel.org
Cc: kexec@lists.infradead.org

Bhupesh Sharma (3):
  crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
  arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
  Documentation/arm64: Fix a simple typo in memory.rst

 Documentation/arm64/memory.rst         | 2 +-
 arch/arm64/include/asm/pgtable-hwdef.h | 1 +
 arch/arm64/kernel/crash_core.c         | 9 +++++++++
 kernel/crash_core.c                    | 1 +
 4 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
