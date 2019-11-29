Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CB610DA44
	for <lists+kexec@lfdr.de>; Fri, 29 Nov 2019 20:59:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=etd3+OKj+gavILjAMVKcTGyaPiIw5zCSdHOvJ1egijE=; b=Rc/
	fW43RG54x+oHjzDmLxTzLLMkG6Au2evLCg10JgOagEUG9oP9ZLWfQoJ8bUz0adCwZTNXgbE872OmN
	92RK+ZwcnB3UKLgyWDlXO2ZFQtz38F7FvL68wet149lwEHwLKpx/JicD7hxk0QWJog3OKTH07xkTS
	au3PJrE+liIwd4DCJP+XH10PZJR4opKV2OE/ULO5Sqr6NZ+X7sAB64Z2rxibL/Zx+dleaoFXvi+0d
	eIGgsXfZpNlRtoVYHgyTqOL2mbzJxSllPyoYFwtJdcmyhq7r1JIB+dMDGszqs4wmt5n6fBf2dmFRP
	buo8bgzPOXCdcEEZSPd9+2WfNbZf5Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamQV-00074F-Sh; Fri, 29 Nov 2019 19:59:39 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamQS-00073U-B9
 for kexec@lists.infradead.org; Fri, 29 Nov 2019 19:59:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057574;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=PGjdyVBK0NO+k94paV7/u4ZDFA/aVBH6mgmJUwldOho=;
 b=EULtTY0rCCJyppwfezZNt4URfB2u1K8fWfC1SChVZvywhTvso6ninA+w2j0iVhaJ4CwWtU
 hok65mORdwUzwPyDFZ7JxV5bLlQM4+RErb4Mg1CFpub9i/hP0p1C43pmWs2eXYKmCA54dk
 YhjFbg6EAN3u9C05PfvT0SwtT3cqo2c=
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-100-tt1XWEuMMcmO7E_q_mzPvg-1; Fri, 29 Nov 2019 14:59:32 -0500
Received: by mail-pg1-f197.google.com with SMTP id r2so6593171pgl.4
 for <kexec@lists.infradead.org>; Fri, 29 Nov 2019 11:59:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=XYOfM9R2XBKHHSS98VDt4f7vGAptvryNwXrf29d+FoM=;
 b=sHaGMtb+cvD251Cz4f405EDXqw1gbspVYcnPTJ5VdNEhWeRJTkhjuWyR202hBnmvmo
 bWj1K6ARj0vetUAb9dT6s+CsA3ZVRvuNExLwetnGxxBJseL24KAJ6f3ZZQtu5t62R0hW
 uN5W3zdpB36WoCgfA0Y/bWG8PepQANttmf7615JyD9Omd+n3TKINOq1kqvRiSQ09j7Xa
 4ko60af6/i98remTfDYF9KHrWojX5NC7sOz5TQw2dpifuB7ehrrdxhJBL1ypPKOb2MUl
 0jq0PdCO5K1ard8HuMFHQZTid057QY7Jeyr3NHAh5D6d/6TSar00cv9kOVQRk9pURrgG
 nJ9g==
X-Gm-Message-State: APjAAAUfSnAffOc3N9o+o7lcMcjo2Zh0GdEN+LH7bp/PoieA0Zo8IpWl
 58V9ro+zAZST1sSFCPP+Qa7we5yP1E9XJeTfThJEjbnm38qV/unvO+2iPzolPjHaxVE1xPPWkvM
 ImyCWJFbof4Y6zQwNVnTW
X-Received: by 2002:a17:902:8306:: with SMTP id
 bd6mr16507175plb.44.1575057571080; 
 Fri, 29 Nov 2019 11:59:31 -0800 (PST)
X-Google-Smtp-Source: APXvYqyljUzyA3KtTRKkGnKvsWK+K41PljOh/OKc7B2V7ONz/6y4bL+GDxj1bPx+laskD1hlt3BGRA==
X-Received: by 2002:a17:902:8306:: with SMTP id
 bd6mr16507151plb.44.1575057570720; 
 Fri, 29 Nov 2019 11:59:30 -0800 (PST)
Received: from localhost ([122.177.85.74])
 by smtp.gmail.com with ESMTPSA id s7sm10138820pfe.22.2019.11.29.11.59.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 29 Nov 2019 11:59:29 -0800 (PST)
From: Bhupesh Sharma <bhsharma@redhat.com>
To: linux-kernel@vger.kernel.org
Subject: [RESEND PATCH v5 0/5] Append new variables to vmcoreinfo
 (TCR_EL1.T1SZ for arm64 and MAX_PHYSMEM_BITS for all archs)
Date: Sat, 30 Nov 2019 01:29:14 +0530
Message-Id: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
X-Mailer: git-send-email 2.7.4
X-MC-Unique: tt1XWEuMMcmO7E_q_mzPvg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_115936_460360_2F9C057D 
X-CRM114-Status: GOOD (  15.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
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
  with my 'msmtp' settings which seems to be now fixed. Please ignore
  all previous v5 versions.

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
