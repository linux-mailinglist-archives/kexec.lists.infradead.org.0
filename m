Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EE662AC7
	for <lists+kexec@lfdr.de>; Mon,  8 Jul 2019 23:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OmDw41vUQaPBtXlvmwVPlyUaSLpLgyCWyoEgGH7j/Gw=; b=WvhLxAr47RThF/
	Dj9DEZqTbcW1njRx1T+UymkKskl147xPiPrJMXZu8OpBCykfycbu6ZJNKLdz2E/OcoaK5PiUDvPep
	XUZSoN5SGUzy5RUGPJLScm7JLOiE+mF1ptdadjaQ1vwzQe/6Cq0BL9ieOJJDqRLrQPaqVdIUUmhSB
	mNEu9e0sJuiwBiD1EnDGXptDhwiDWH6w2cBwSDj36f1Uc2UlxVmvMvEabmXQedzUvvkpKUVkImOKD
	aPvCaqB1iii9aw3quUGjx5mTTv8ONwc8nEFrSAEtZ/wzPUHx6+KKIwWn3S1j8A8TUs40JSyAmGPK3
	8I5Wu2rB0s4xIK+wCzwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkazG-0001Yy-H6; Mon, 08 Jul 2019 21:15:50 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkayz-0001MT-Da
 for kexec@lists.infradead.org; Mon, 08 Jul 2019 21:15:35 +0000
Received: by mail-qk1-x743.google.com with SMTP id v22so14444732qkj.8
 for <kexec@lists.infradead.org>; Mon, 08 Jul 2019 14:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9LBn+IrpD1vlilot1sDuhm5JaXmsdy7FeGQpNbYaEeU=;
 b=FJLVGEkBkaIWGq+BYeDm49b/d/5s8UkKFjcHQ3Pj9CIeR9WqFVBFK83oylM3vbGySY
 a/yz6JrxbrlxhkRBTTrMs0C2J/W6nlJ1vQjELf2Bdegk1pBajKXLyTOo73BGyhhwmgCp
 hpSOTkjSZ/m5LO73UP1Taf9WGt0Yjjcdf1SdEKLTO8Y9GwUwaOY9BZsOvoYDKw0JDWcj
 fPVVkLf6OQU8ckKMzR+Is03XGjLfH5O8FgfInnivtbaF6/BRHFciiuGjsy5dJM/sQZBZ
 zekQZpRlJY9hAgDxbXYaBw7Kc+lfhEPpvhBlKGrW2AWK3kgug85CfDgVzblJ1cXVS5Ot
 BVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9LBn+IrpD1vlilot1sDuhm5JaXmsdy7FeGQpNbYaEeU=;
 b=dIl5FJiN1T4/TcU4s9wHpQmxEjqJMykBgxcLHWj52lwIHVKwyqdPx6ecUV5gvNO+mT
 MhzV1WjuGWvjAsfcAj27C1VGecIFOQ8ct88p8R5RF0oUWyPD4Lselbqs/OMhqYRgWrjf
 TWCxn5ZH8v5Wh3MuL3Fug5VMaX7alGck4n6dowpo2Johp6KPUBFxjLNkogWjoQbLTTOZ
 JetBEWa3O1W4QpFbRHky7EUWtCYu/cynjtZx+Ue/1p5C95vh6jQobNstO3P3YpTWIcuc
 WN2Z8WHhR8XqmtO+VjV0MzOox06/hEEBuqjxI7XaI8w4fo//TjbH801e4PutlNgMXhPr
 A5kQ==
X-Gm-Message-State: APjAAAXRy7Ki0gQFRA8Ho8+247WGMdqQzxGO9vYqPIH4Eotpui6raHer
 UAPJ58+IPFpaGXAUbwvq2gRgUcd5xyM=
X-Google-Smtp-Source: APXvYqyjmTZLx8/N9MAAgH+1T1Fmph8LQJ2u9QiscaRxh3JxBlx4HZGFN/j+WzZn5c0D7KSK12erkQ==
X-Received: by 2002:a37:bac2:: with SMTP id
 k185mr15419295qkf.211.1562620531230; 
 Mon, 08 Jul 2019 14:15:31 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id b67sm8335620qkd.82.2019.07.08.14.15.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 08 Jul 2019 14:15:30 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [v1 0/5] allow to reserve memory for normal kexec kernel
Date: Mon,  8 Jul 2019 17:15:23 -0400
Message-Id: <20190708211528.12392-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_141533_645480_9182C14F 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
