Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA0D6AD2E
	for <lists+kexec@lfdr.de>; Tue, 16 Jul 2019 18:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dky+qzuuKHN9yEnWFaECC6lJY4qmZ9zMXK9nTdXxvdI=; b=k00tgITW9REmfI
	tZptBSt4J4tHz6YFvJ/J/gRPLFshFCG9N+BUkJY3Hux3B7vwBneV9qoDbiquS4jG7G1VUU/iS6U6G
	IXEKb64k7eXN+7zEB1knhLxfZOLw8Or5SwLRDD/rAHO7JRuG4chvEib3USI3jg5zyfktUzdQjcDk8
	eJGjiqamSLTT6hgKgbV6Xt64tRFq9mpS6C35ML4++s5EG2f4LuudbmNBQQnJeidj5YfxxjkkdgAeJ
	LxtCjv1Z/EcMRSaYkYJU90jFYWjJwB3DXVoWDwxOMTciePUaJgGPQgocRqMsvQMqlezIBAfDGL4mF
	MY6Thez4h1diZZDS8TjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQl0-000555-LZ; Tue, 16 Jul 2019 16:56:50 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQku-00052K-UU
 for kexec@lists.infradead.org; Tue, 16 Jul 2019 16:56:46 +0000
Received: by mail-qk1-x744.google.com with SMTP id w190so15147834qkc.6
 for <kexec@lists.infradead.org>; Tue, 16 Jul 2019 09:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6Lzzb/85EG5OgOgZivNuRXqXu1x2wo0l3U6fbMwd+XY=;
 b=lh1neXWXugGNV0dD3EYhMNUpg7DZEDvz1t0tPOAnKx+unFKLPJPHDaTqfhAhJrO1ZH
 mNDj0YIw9TasLeLCzxrWbrrpvlNFANnKcnhW+RYEYFz1veXLvn464WK7Uldc+ROkhHU6
 gdElKf2YCz/I9fx4lW976vyQZemYOJOs0W/FJt9XWP/+Uk3iHkG2NaYBcvmDvF9L/Gcb
 lylbDHe/GsntFtMCjRbO98XFP4ShcUE2rJZKzH53KEv7x85o17zAKq89GXy3kTt5A9Lb
 K4rqNY0m41+yBjl4R+5BymQAPQSDBNeOFvlftEQZd4uTQfNuhWaPVVfcdvQzOPmWX6Lg
 POrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6Lzzb/85EG5OgOgZivNuRXqXu1x2wo0l3U6fbMwd+XY=;
 b=rOepgVQY7mfmkCOSeVa1cnZ0TpHkR3I6U4nMeGo1x11iZPqEevKnLb9C9bNjOl9dvB
 IQrWC/2CQc6fFAXViOWL8qnGrpdbZTy/QQ9C6Gng05pt0brejOiZXtSWmJ3C4S1qGVEF
 X7bwmZai7OC8Bc2DEJ/dcQiNR48OHF9VCmHOaZngqL8G18lK9FRawhhPS/M/XYc3H1OW
 2CkSokmTSG36hgCV4ZDfEMl2Z12+PeSv95a0GQ6qIiMOjfp79iSIWfgxDwyozZmVJW5F
 TH7JF/jWHRSyUnLJ57DYedkr2KTujhNHud70IvrienSOFXc2MKeWjvVzy79utMHn6Tub
 LYsw==
X-Gm-Message-State: APjAAAVYxkEj9D5YuuDu3U3Etdjgs1ytk5yJ3ugh00u7T2qxksC62i5p
 KpH4L4y0E+8+517i+HQOtlU=
X-Google-Smtp-Source: APXvYqz9+3MPpBLc2mmfXv0e2ASGs2pqg3VhykHLyEYnWb9ZZDcdSJoSxY9+HqM4r5uxzR7M4+5VFA==
X-Received: by 2002:a37:c20a:: with SMTP id i10mr20823361qkm.76.1563296202999; 
 Tue, 16 Jul 2019 09:56:42 -0700 (PDT)
Received: from localhost.localdomain (c-73-69-118-222.hsd1.nh.comcast.net.
 [73.69.118.222])
 by smtp.gmail.com with ESMTPSA id f20sm8519538qkh.15.2019.07.16.09.56.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 09:56:42 -0700 (PDT)
From: Pavel Tatashin <pasha.tatashin@soleen.com>
To: pasha.tatashin@soleen.com, jmorris@namei.org, sashal@kernel.org,
 ebiederm@xmission.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, corbet@lwn.net, catalin.marinas@arm.com,
 will@kernel.org, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [RFC v1 0/4] arm64: MMU enabled kexec kernel relocation
Date: Tue, 16 Jul 2019 12:56:37 -0400
Message-Id: <20190716165641.6990-1-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_095645_170569_D9568098 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Added identity mapped page table, and keep MMU enabled while
kernel is being relocated from sparse pages to the final
destination during kexec.

More description about the problem I am trying to solve here, can be
found here:
https://lore.kernel.org/lkml/20190709182014.16052-1-pasha.tatashin@soleen.com/

This patch series works in terms, that I can kexec-reboot both in QEMU
and on a physical machine. However, I do not see performance improvement
during relocation. The performance is just as slow as before with disabled
caches.

Am I missing something? Perhaps, there is some flag that I should also
enable in page table? Please provide me with any suggestions.

Pavel Tatashin (4):
  arm64, mm: identity mapped page table
  arm64, kexec: interface preparation for mmu enabled kexec
  arm64, kexec: add kexec's own identity page table
  arm64: Keep MMU on while kernel is being relocated

 arch/arm64/include/asm/ident_map.h  |  26 ++++++
 arch/arm64/include/asm/kexec.h      |   5 +-
 arch/arm64/kernel/cpu-reset.S       |   8 --
 arch/arm64/kernel/cpu-reset.h       |   7 +-
 arch/arm64/kernel/machine_kexec.c   | 128 +++++++++++++++++++++-------
 arch/arm64/kernel/relocate_kernel.S |  36 +++++---
 arch/arm64/mm/Makefile              |   1 +
 arch/arm64/mm/ident_map.c           |  99 +++++++++++++++++++++
 8 files changed, 255 insertions(+), 55 deletions(-)
 create mode 100644 arch/arm64/include/asm/ident_map.h
 create mode 100644 arch/arm64/mm/ident_map.c

-- 
2.22.0


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
