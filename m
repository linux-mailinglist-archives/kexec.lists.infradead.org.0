Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A8363AA8
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 20:20:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IYQ+R4UczWBEDSzm6T2BVxvKTIAokopYOugL6q/a8OM=; b=N8PKXQxWlAp77D
	7ZOePrHMV1LvUFit8iys1OqfeIJt3YauBhFX92Ncwg25wzrFRkl2BUgn2E+lfpsPUrFGY21IFDeT3
	2ZwofFFUB5ZdpU3UFdIS63fW+kvbWOPk90cUWPrFIF6mDWbe6FquxOmerzd0mfRlhWJr+TjrNvQhG
	FRJD1XUH+MUMk+19nKVOGYTfLRra9nrlynqrvC3473faNBknaZGGp2sYeU6PWQS8syB8cRWE5zvRh
	fCqKI6wlAicD+RztJ+6VVu1af62HI1JtgUhfM5lahgaqAsFVY2Q56eH7yEl+PijkPfMoIwCRNbotI
	c9baPxUnxZl+Y25eXJsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkuj0-0008D9-Fn; Tue, 09 Jul 2019 18:20:22 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkuiw-0008AU-04
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 18:20:19 +0000
Received: by mail-qk1-x744.google.com with SMTP id d79so12459653qke.11
 for <kexec@lists.infradead.org>; Tue, 09 Jul 2019 11:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=07lbMtNvRAMyX/POjVIPF1YJUTpi61TvrSJ6roJeVPs=;
 b=nsdWBt1+R1ve8tCsDIWPrNy0y/NCDmw+8vDsI/xQ0qqlV/ZxUzX4XqCrlGrImpvaxv
 bpKrt+60Fa3kB29M/KXQjapzKaDStgaZ7nQXw/WldmvXgddhp8rPPpJae/df0oZGQy4h
 gVHsFN7crraEJnzfrq/y9JWg5aTPEv1/kkAx1s6m3jHG5VIGRQWfIODhRs8AkBKyXXso
 fX4ZYxnGYoaxXW254flFRzCTVyUMDsXyUQPsr7UTYZJ683KQ/nPgb2LwR0NlJgTrhleL
 OVQ+4zEfOSArBal5dVyMakYw9h0xf4hFLt0LnHZ7Wi9shjUez3sbBFm0jzjbMZlB9NNl
 0NCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=07lbMtNvRAMyX/POjVIPF1YJUTpi61TvrSJ6roJeVPs=;
 b=lX/A1bjIsu73scIE8g6cN+KkPJMQWVF/IFj75+DvMi7xMYgpdVHpa9H805Pswwvaho
 L46Zyk7zETXxizoVv6et0HMMlioZXY6uzFV2ppHI3CE3u98nMrQr/oqub5AYOAwKds/k
 rjPhSzu6Ta1XaK+YBUB/iC1m5IErUh5nuwWQOKlaZshEhY5WO3qcrI6grz50sy/sdNHo
 YZVOwJUM+yyBpwJZ7OjXH6KRlBgM4PPVvq2P3uMGNknFwIdjeXCzQvk0Q4RBbzN5mUjA
 sys2YvB+4sCOayTc706i6pOIY/+xXRqEw5ozwz0c8aAp9RdpZ+oJ5U/WC1wBcvNrw2NH
 HOZA==
X-Gm-Message-State: APjAAAU94Ds0IvzkIcY7O9LRXyNKg6NH8X/xmJMbDCF5AMvgGyPzsIQI
 yk3kRMR4CtAuEnUcGnMyTN8EDA==
X-Google-Smtp-Source: APXvYqwZyzZlJCfnfaRBNAPrTgjGG/pRCaQYSyhIHt8cn7HXaH8O6U0lFii9rAJ8o1Oxephvp24BSQ==
X-Received: by 2002:a37:bf07:: with SMTP id p7mr19214845qkf.315.1562696416701; 
 Tue, 09 Jul 2019 11:20:16 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id k123sm9113056qkf.13.2019.07.09.11.20.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:20:15 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v2 0/5] arm64: allow to reserve memory for normal kexec kernel
Date: Tue,  9 Jul 2019 14:20:09 -0400
Message-Id: <20190709182014.16052-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_112018_455775_41C16C35 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Changelog
v1 - v2
	- No changes to patches, addressed suggestion from James Morse
	  to add "arm64" tag to cover letter.
	- Improved cover letter information based on discussion.

Currently, it is only allowed to reserve memory for crash kernel, because
it is a requirement in order to be able to boot into crash kernel without
touching memory of crashed kernel is to have memory reserved.

The second benefit for having memory reserved for kexec kernel is
that it does not require a relocation after segments are loaded into
memory.

If kexec functionality is used for a fast system update, with a minimal
downtime, the relocation of kernel + initramfs might take a significant
portion of reboot.

In fact, on the machine that we are using, that has ARM64 processor
it takes 0.35s to relocate during kexec, thus taking 52% of kernel reboot
time:

kernel shutdown	0.03s
relocation	0.35s
kernel startup	0.29s

Image: 13M and initramfs is 24M. If initramfs increases, the relocation
time increases proportionally.

While, it is possible to add 'kexeckernel=' parameters support to other
architectures by modifying reserve_crashkernel(), in this series this is
done for arm64 only.

The reason it is so slow on arm64 to relocate kernel is because the code
that does relocation does this with MMU disabled, and thus D-Cache and
I-Cache must also be disabled.

Alternative solution is more complicated: Setup a temporary page table
for relocation_routine and also for code from cpu_soft_restart. Perform
relocation with MMU enabled, do cpu_soft_restart where MMU and caching
are disabled, jump to purgatory. A similar approach was suggested for
purgatory and was rejected due to making purgatory too complicated.
On, the other hand hibernate does something similar already, but there
MMU never needs to be disabled, and also by the time machine_kexec()
is called, allocator is not available, as we can't fail to do reboot,
so page table must be pre-allocated during kernel load time.

Note: the above time is relocation time only. Purgatory usually also
computes checksum, but that is skipped, because --no-check is used when
kernel image is loaded via kexec.

Pavel Tatashin (5):
  kexec: quiet down kexec reboot
  kexec: add resource for normal kexec region
  kexec: export common crashkernel/kexeckernel parser
  kexec: use reserved memory for normal kexec reboot
  arm64, kexec: reserve kexeckernel region

 .../admin-guide/kernel-parameters.txt         |  7 ++
 arch/arm64/kernel/setup.c                     |  5 ++
 arch/arm64/mm/init.c                          | 83 ++++++++++++-------
 include/linux/crash_core.h                    |  6 ++
 include/linux/ioport.h                        |  1 +
 include/linux/kexec.h                         |  6 +-
 kernel/crash_core.c                           | 27 +++---
 kernel/kexec_core.c                           | 50 +++++++----
 8 files changed, 127 insertions(+), 58 deletions(-)

-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
