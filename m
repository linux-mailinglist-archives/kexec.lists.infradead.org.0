Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67607ADE78
	for <lists+kexec@lfdr.de>; Mon,  9 Sep 2019 20:12:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U4v4viiBu0TEHqnAwWF7jKj1nxM0yOBINlmDc8TRPfQ=; b=jejlH8ByYm4scF
	+4mMplhqVV/IQsJ6crk7OQSUXGP8ktFct31PZMNTXOt3Ckkj3GNovF9h2qvWx4FoPHXIZzNBtpH+O
	IHTjwzEpbPwAua4gkRZ0YYu8yMrr9yJj3BtRsWrf3M98W0ZQgddFDzQGq0y+dyxoe6AP+CEUSuLSk
	3SoNkdPA5OwLzAXDZZtBkR6FC5l7csYlihPG9+wZ2zSryECp1LYwkoloFEn//B6xXMeRI17vhuURV
	C5bvX8b0O7JNloliAnhDsyVxvHSrVM9HIAiVJhYE5CGjVt4LQ+MAaM+0xoH6vjW87+RaHmRUN70XU
	ta1j9Sgmr0qTVBW33rIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7O9g-0000Bj-My; Mon, 09 Sep 2019 18:12:48 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7O9J-0008H0-QE
 for kexec@lists.infradead.org; Mon, 09 Sep 2019 18:12:27 +0000
Received: by mail-qt1-x841.google.com with SMTP id j10so17239339qtp.8
 for <kexec@lists.infradead.org>; Mon, 09 Sep 2019 11:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bHW6yWQ7UW+zE64/WnOR0Njpl5GgnEnN/6DGhYBHVKU=;
 b=JU3sdhxLJfxvSVBs3bFdU2e4zLi8oAmSQDOExSf/O4iwr/3/8XkTrTYiJAME9KMSqq
 g95sXFHrej2UYw7bd0AxF56vJamNB+gtzsZnv0LaU8Wr325f811eQzeQCAEiut+kvxiL
 83v4KQgVt6omgbqgIQ3ocINWrA9ndgIQGDQO4c5bZOWVbJ+ek7o/OgNS37zB8aTjiGQw
 aWOsWdhwbkR30CynP/7acBvWe6RzMFhmYU2QfKX/uWYIjwOzp4BW7WcfaV8c+DQ8pK2K
 5EImhK5mvI4RBh+A1rWDEFtE3zROb4tT5Dm473Zeal2lS0t0rltfiOcLtNMqp0v5bHWB
 IGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bHW6yWQ7UW+zE64/WnOR0Njpl5GgnEnN/6DGhYBHVKU=;
 b=JiFHnmc1+/z/FVM8B2K1DYVu4SNxf4ub9F3VpFBDZSmAXk8g0bkotCagSb6GtqNoTW
 PIGUK/wP9tZUKjSbO433L3wIZPDRUosJb7WwJ7MQMGwD2X4rEdLhLhADtq2ofI3BFNYS
 ZYAS1yMcft8497sMFER4Y82f2uMndzM6EArDZH4s5QK7tg3hRa/NJrIttMcU20S9YjE2
 pxQRmgNpFovQa2RsfpaxfugU9pXTLCD9yFV6nVWx6qkqBXHhf3UkiF5RMKS9fO85p8fH
 JDEbJ9qs0Io7I5w2MOYN6iYfKT7GYk4pd4AU/10Cco6XbqcPTw50o8dwH2PL4MN3Kk64
 rUzg==
X-Gm-Message-State: APjAAAU8IxIRi/sMzQEipJNtLHLiu0WDVN6KUCPECLubIpKkIt3xy2pD
 72aaN9esDemww/Oefvf49b4DZA==
X-Google-Smtp-Source: APXvYqxG+TIFdHDE4E3CtIW89ZhOmN9Ul0/qBQpcK8s8bWc+75DnjRjIbii0jaXyV2uFOZAwnh6oJQ==
X-Received: by 2002:ac8:6684:: with SMTP id d4mr24552690qtp.286.1568052744047; 
 Mon, 09 Sep 2019 11:12:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id q8sm5611310qtj.76.2019.09.09.11.12.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 11:12:23 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org,
 marc.zyngier@arm.com, james.morse@arm.com, vladimir.murzin@arm.com,
 matthias.bgg@gmail.com, bhsharma@redhat.com, linux-mm@kvack.org,
 mark.rutland@arm.com
Subject: [PATCH v4 00/17] arm64: MMU enabled kexec relocation
Date: Mon,  9 Sep 2019 14:12:04 -0400
Message-Id: <20190909181221.309510-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_111226_261784_CC5F6341 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Changelog:
v4:
	- Addressed comments from James Morse.
	- Split "check pgd table allocation" into two patches, and moved to
	  the beginning of series  for simpler backport of the fixes.
	  Added "Fixes:" tags to commit logs.
	- Changed "arm64, hibernate:" to "arm64: hibernate:"
	- Added Reviewed-by's
	- Moved "add PUD_SECT_RDONLY" earlier in series to be with other
	  clean-ups
	- Added "Derived from:" to arch/arm64/mm/trans_pgd.c
	- Removed "flags" from trans_info
	- Changed .trans_alloc_page assumption to return zeroed page.
	- Simplify changes to trans_pgd_map_page(), by keeping the old
	  code.
	- Simplify changes to trans_pgd_create_copy, by keeping the old
	  code.
	- Removed: "add trans_pgd_create_empty"
	- replace init_mm with NULL, and keep using non "__" version of
	  populate functions.
v3:
	- Split changes to create_safe_exec_page() into several patches for
	  easier review as request by Mark Rutland. This is why this series
	  has 3 more patches.
	- Renamed trans_table to tans_pgd as agreed with Mark. The header
	  comment in trans_pgd.c explains that trans stands for
	  transitional page tables. Meaning they are used in transition
	  between two kernels.
v2:
	- Fixed hibernate bug reported by James Morse
	- Addressed comments from James Morse:
	  * More incremental changes to trans_table
	  * Removed TRANS_FORCEMAP
	  * Added kexec reboot data for image with 380M in size.

Enable MMU during kexec relocation in order to improve reboot performance.

If kexec functionality is used for a fast system update, with a minimal
downtime, the relocation of kernel + initramfs takes a significant portion
of reboot.

The reason for slow relocation is because it is done without MMU, and thus
not benefiting from D-Cache.

Performance data
----------------
For this experiment, the size of kernel plus initramfs is small, only 25M.
If initramfs was larger, than the improvements would be greater, as time
spent in relocation is proportional to the size of relocation.

Previously:
kernel shutdown	0.022131328s
relocation	0.440510736s
kernel startup	0.294706768s

Relocation was taking: 58.2% of reboot time

Now:
kernel shutdown	0.032066576s
relocation	0.022158152s
kernel startup	0.296055880s

Now: Relocation takes 6.3% of reboot time

Total reboot is x2.16 times faster.

With bigger userland (fitImage 380M), the reboot time is improved by 3.57s,
and is reduced from 3.9s down to 0.33s

Previous approaches and discussions
-----------------------------------
https://lore.kernel.org/lkml/20190821183204.23576-1-pasha.tatashin@soleen.com/
version 3 of this series

https://lore.kernel.org/lkml/20190817024629.26611-1-pasha.tatashin@soleen.com
version 2 of this series

https://lore.kernel.org/lkml/20190801152439.11363-1-pasha.tatashin@soleen.com
version 1 of this series

https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com
reserve space for kexec to avoid relocation, involves changes to generic code
to optimize a problem that exists on arm64 only:

https://lore.kernel.org/lkml/20190716165641.6990-1-pasha.tatashin@soleen.com
The first attempt to enable MMU, some bugs that prevented performance
improvement. The page tables unnecessary configured idmap for the whole
physical space.

https://lore.kernel.org/lkml/20190731153857.4045-1-pasha.tatashin@soleen.com
No linear copy, bug with EL2 reboots.

Pavel Tatashin (17):
  kexec: quiet down kexec reboot
  arm64: hibernate: pass the allocated pgdp to ttbr0
  arm64: hibernate: check pgd table allocation
  arm64: hibernate: use get_safe_page directly
  arm64: hibernate: remove gotos in create_safe_exec_page
  arm64: hibernate: rename dst to page in create_safe_exec_page
  arm64: hibernate: add PUD_SECT_RDONLY
  arm64: hibernate: add trans_pgd public functions
  arm64: hibernate: move page handling function to new trans_pgd.c
  arm64: trans_pgd: make trans_pgd_map_page generic
  arm64: trans_pgd: pass allocator trans_pgd_create_copy
  arm64: trans_pgd: pass NULL instead of init_mm to *_populate functions
  kexec: add machine_kexec_post_load()
  arm64: kexec: move relocation function setup and clean up
  arm64: kexec: add expandable argument to relocation function
  arm64: kexec: configure trans_pgd page table for kexec
  arm64: kexec: enable MMU during kexec relocation

 arch/arm64/Kconfig                     |   4 +
 arch/arm64/include/asm/kexec.h         |  51 +++++-
 arch/arm64/include/asm/pgtable-hwdef.h |   1 +
 arch/arm64/include/asm/trans_pgd.h     |  43 +++++
 arch/arm64/kernel/asm-offsets.c        |  14 ++
 arch/arm64/kernel/cpu-reset.S          |   4 +-
 arch/arm64/kernel/cpu-reset.h          |   8 +-
 arch/arm64/kernel/hibernate.c          | 239 ++++---------------------
 arch/arm64/kernel/machine_kexec.c      | 195 ++++++++++++++++----
 arch/arm64/kernel/relocate_kernel.S    | 196 ++++++++++----------
 arch/arm64/mm/Makefile                 |   1 +
 arch/arm64/mm/trans_pgd.c              | 225 +++++++++++++++++++++++
 kernel/kexec.c                         |   4 +
 kernel/kexec_core.c                    |   8 +-
 kernel/kexec_file.c                    |   4 +
 kernel/kexec_internal.h                |   2 +
 16 files changed, 658 insertions(+), 341 deletions(-)
 create mode 100644 arch/arm64/include/asm/trans_pgd.h
 create mode 100644 arch/arm64/mm/trans_pgd.c

-- 
2.23.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
