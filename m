Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E0410DA21
	for <lists+kexec@lfdr.de>; Fri, 29 Nov 2019 20:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=l2mgg284CTzNXgOpXuaALWrW97M8ttx4gGMZ0KHmkuA=; b=MTb
	qAfhykFE4DHJtjE5WecNv9HWD3FPR7em/FlMqdwaF7r5BxtwEuccmx6a4uzVCdsWNVYkEFC/GaDP6
	PHLtowhIGJv5IdD7bC0FxUmqKUGo0LDZfxG1+KL7BCHvUF2KibisoPRWtQZVlRRJJM1LR0nNzblqu
	Mb/WlEku/a4PxwYE7S56xb+TQpKBYfCX2CWvUh60r07bOH4df6ZCQoPxxaVHHnAoJhlYarzzRO1SO
	xaEJDeqbJwc3k44BnQGFTwndFFYwdhLBSLMWKq4jSKhEvxPgiCt+57L8QS2CK/JEmV3h0IHfAe6MO
	+Tm+MF1pG8hcHDy3fF/hJ6g9BrHpvOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ialxU-0005x1-1M; Fri, 29 Nov 2019 19:29:40 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ialx9-0005iC-KD
 for kexec@lists.infradead.org; Fri, 29 Nov 2019 19:29:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575055758;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=A1Y9WHtaAY4UzSoPOoSv2m/ifwl+YEceF+RKR3CTCTk=;
 b=di36S6sZkIMSqYe6kbB+yesVYU5gdM4s+Nw3MRV7VWTLU/Y3TuodO/tqAXTc8K8mPoBgP3
 Y1SHwMisw6kevD82U9DgZlsVvIPUxkPeuAXt+QBIL3i9ZmQLLrCfk4MPtBYRIkiTnn3x4M
 nvmH+npVvGyiqcaMMF1fKzViSgPSS6s=
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com
 [209.85.214.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-310-UrTh7xMVOzKyoZxey3J6ww-1; Fri, 29 Nov 2019 14:29:13 -0500
Received: by mail-pl1-f199.google.com with SMTP id k8so13216318plt.7
 for <kexec@lists.infradead.org>; Fri, 29 Nov 2019 11:29:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=+RGhDPWZi/m+uC+dFG9W5dCj6ubdgxgz1OjCUZFmMIs=;
 b=dKLGclGAK5JMTkzMHDTNJf9STSnT2YNg2ROFEjG1NFmMeKEOL0ntp+s20hso6Sozar
 HFAdoK6/qSMcGjBXoeYMe+pgalonK2s8+y04hrNDcHEUShoJYjHlhVAdgdEMkpl2PtcR
 0TKb1v9yzLtdQaHxp6aBGPa5th5tjvPEBkwAZRBnv81NBiFROPQr4lBrSHtxm67H3m54
 0grcSuEN/V38AMZp0HRg21S7AlJzTFFEATOBjQfbC6JEExO9WFYwxw67fIw+VXDytnZA
 jkDeKrXX+hHZARLKQHXvi8FeGTddmX/F+lko47U3SxV1+WlAz7ifIbbObrmZZUGgoQso
 9kNA==
X-Gm-Message-State: APjAAAUJH6P2l672LvfExfq65Epz2Iqh7UeWAp/KiNAlWkd3HcyRR816
 LQt/dfpj+qyCSTn1dOvqdPepqCiMKD6vA1IK/16uy0p/7+YWmO0QMI9iVENu2ar+gXRPPWx6LjW
 DyjpsRRcjUtopjggqY8bn
X-Received: by 2002:a17:90a:b38c:: with SMTP id
 e12mr20373944pjr.89.1575055752560; 
 Fri, 29 Nov 2019 11:29:12 -0800 (PST)
X-Google-Smtp-Source: APXvYqxbsJq68B0VFjsjCP+XCq0F6XFF9siQwhdXf0KacvnZ7i830WNBU2oxnas4e3iBnGfWl5c1rw==
X-Received: by 2002:a17:90a:b38c:: with SMTP id
 e12mr20373930pjr.89.1575055752286; 
 Fri, 29 Nov 2019 11:29:12 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id k10sm14560656pjs.31.2019.11.29.11.29.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Nov 2019 11:29:11 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 0/5] Append new variables to vmcoreinfo
 (TCR_EL1.T1SZ for arm64 and MAX_PHYSMEM_BITS for all archs)
Date: Sat, 30 Nov 2019 00:58:41 +0530
Message-Id: <1575055726-23464-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: UrTh7xMVOzKyoZxey3J6ww-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_112919_736771_A5391EBB 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-doc@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, bhsharma@redhat.com,
 Paul Mackerras <paulus@samba.org>, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>, Dave Anderson <anderson@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, bhupesh.linux@gmail.com,
 linux-arm-kernel@lists.infradead.org, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Steve Capper <steve.capper@arm.com>, kexec@lists.infradead.org,
 James Morse <james.morse@arm.com>, Boris Petkov <bp@alien8.de>,
 linuxppc-dev@lists.ozlabs.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

- Resending the v5 version as Will Deacon reported that the patchset was
  split into two seperate threads while sending out. It was an issue
  with my 'msmtp' settings which is now fixed.

Changes since v4:
----------------
- v4 can be seen here:
  http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
- Addressed comments from Dave and added patches for documenting
  new variables appended to vmcoreinfo documentation.
- Added testing report shared by Akashi for PATCH 2/5.

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

Bhupesh Sharma (5):
  crash_core, vmcoreinfo: Append 'MAX_PHYSMEM_BITS' to vmcoreinfo
  arm64/crash_core: Export TCR_EL1.T1SZ in vmcoreinfo
  Documentation/arm64: Fix a simple typo in memory.rst
  Documentation/vmcoreinfo: Add documentation for 'MAX_PHYSMEM_BITS'
  Documentation/vmcoreinfo: Add documentation for 'TCR_EL1.T1SZ'

 Documentation/admin-guide/kdump/vmcoreinfo.rst | 11 +++++++++++
 Documentation/arm64/memory.rst                 |  2 +-
 arch/arm64/include/asm/pgtable-hwdef.h         |  1 +
 arch/arm64/kernel/crash_core.c                 |  9 +++++++++
 kernel/crash_core.c                            |  1 +
 5 files changed, 23 insertions(+), 1 deletion(-)

-- 
2.7.4


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
